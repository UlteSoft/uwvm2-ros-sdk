/** @file
 * @brief Owning canonical wire helpers for C++98 through C++17 profiles.
 * @details Counts and fixed-width scalars use little-endian ABI v1 bytes, with
 * no native structure padding. Unless a function explicitly returns a view,
 * outputs own their storage. Inputs are borrowed only during the synchronous
 * call. Separate values can be used concurrently; serialize access to shared
 * mutable vectors and readers. No helper calls the host or grants permission.
 * Allocation failures follow the selected standard library's exception or
 * termination policy; a false/empty result describes validation failure, not
 * an allocation-failure recovery guarantee. Empty vectors returned by encoding
 * wrappers are failure sentinels; a valid empty String/array has a length prefix.
 * @see roswasmcpp::Codec
 * @see roswasmc_reader_init
 */
#pragma once
#include <platform/ros/cpp/roswasm/detail/portable_values.hpp>
#include <limits>

namespace roswasmcpp
{
    namespace wire
    {
        /** @brief Append one unsigned 32-bit little-endian scalar.
         * @details Adds exactly four bytes without applying a message-size limit.
         * @param[in,out] out Owning destination; reallocation can invalidate its views.
         * @param[in] value Full unsigned 32-bit domain, with no implied physical unit.
         * @see reader::u32
         */
        inline void append_u32(bytes& out, uint32_t value)
        {
            unsigned char encoded[4];
            uwvm_ros_store_u32(encoded, value);
            out.insert(out.end(), encoded, encoded + 4);
        }

        /** @brief Append one unsigned 64-bit little-endian scalar.
         * @details Adds exactly eight bytes; operation-specific ID/time rules are left
         * to the enclosing codec or resource operation.
         * @param[in,out] out Owning destination; reallocation can invalidate its views.
         * @param[in] value Full unsigned 64-bit domain.
         * @see reader::integer
         */
        inline void append_u64(bytes& out, uint64_t value)
        {
            unsigned char encoded[8];
            size_t used = 0;
            roswasmc_encode_u64(value, encoded, sizeof encoded, &used);
            out.insert(out.end(), encoded, encoded + 8);
        }

        /** @brief Append a counted byte String to an owning buffer.
         * @details Writes a four-byte length and the exact bytes, including embedded
         * NULs. This structural helper does not validate UTF-8. The resulting buffer
         * must fit 4193786 bytes; the input must not alias storage invalidated by append.
         * @param[in,out] out Destination, unchanged on false.
         * @param[in] value Borrowed bytes; a nonempty range requires a live pointer.
         * @return True after the complete append; false for bad storage or size bounds.
         * @see roswasmcpp::Codec<roswasmcpp::msg::String>
         */
        inline bool append_string(bytes& out, StringView value)
        {
            size_t n = out.size();
            if(!::roswasmcpp::detail::sized(n, 4) || !::roswasmcpp::detail::sized(n, value.size()) || (!value.data() && value.size()))
            {
                return false;
            }
            bytes next(4 + value.size());
            roswasmc_writer w = roswasmc_writer_init(buffer_data(next), next.size());
            if(!roswasmc_write_string(&w, ::roswasmcpp::detail::text(value)))
            {
                return false;
            }
            out.insert(out.end(), next.begin(), next.end());
            return true;
        }

        /** @brief Produce a counted String without text validation.
         * @details Encodes a four-byte length followed by up to 4193782 input bytes.
         * Use the message Codec when UTF-8 and embedded-NUL validation is required.
         * @param[in] value Borrowed input for this call; null is valid only when empty.
         * @return Owning bytes, or an empty vector on a structural/size error.
         * @see append_string
         */
        inline bytes string(StringView value)
        {
            bytes out;
            if(!append_string(out, value))
            {
                out.clear();
            }
            return out;
        }

        /** @brief Encode a Bool topic value as one byte.
         * @details False maps to 0 and true to 1, independently of native bool layout.
         * @param[in] value Boolean value.
         * @return One owning canonical byte.
         * @see decode_boolean
         */
        inline bytes boolean(bool value)
        {
            return ParameterCodec<bool>::encode(value);
        }

        /** @brief Encode a scalar Boolean parameter.
         * @details Produces the same 0/1 byte representation as a Bool topic payload;
         * the host alias separately determines the parameter's type and write rights.
         * @param[in] value Boolean value.
         * @return One owning canonical byte.
         * @see decode_parameter_bool
         */
        inline bytes parameter_bool(bool value)
        {
            return ParameterCodec<bool>::encode(value);
        }

        /** @brief Encode a signed 32-bit parameter scalar.
         * @details Preserves two's-complement bits in four little-endian bytes.
         * @param[in] value Full int32_t range; no unit conversion is performed.
         * @return Four owning bytes.
         * @see decode_parameter_int32
         */
        inline bytes parameter_int32(int32_t value)
        {
            return ParameterCodec<int32_t>::encode(value);
        }

        /** @brief Encode a signed 64-bit parameter scalar.
         * @details Preserves two's-complement bits in eight little-endian bytes.
         * @param[in] value Full int64_t range; host parameter constraints are separate.
         * @return Eight owning bytes.
         * @see decode_parameter_int64
         */
        inline bytes parameter_int64(int64_t value)
        {
            return ParameterCodec<int64_t>::encode(value);
        }

        /** @brief Encode a finite binary64 parameter scalar.
         * @details Uses the canonical C floating-point codec, rejecting infinities,
         * NaNs and an unsupported native double representation.
         * @param[in] value Finite value in the parameter's application-defined units.
         * @return Eight owning bytes, or an empty vector on invalid representation.
         * @see decode_parameter_float64
         */
        inline bytes parameter_float64(double value)
        {
            return ParameterCodec<double>::encode(value);
        }

        /** @brief Stateful cursor over borrowed canonical bytes.
         * @details The input must remain alive and unchanged until the reader and all
         * returned subviews are finished. Reads are synchronous and never allocate
         * except when producing owning strings/blobs. Failed reads may advance or
         * invalidate the cursor; discard the reader after false. Output arguments are
         * committed only after their individual read succeeds. Serialize cursor use.
         * @see reader::done
         */
        class reader
        {
            roswasmc_reader value_;

        public:
            /** @brief Begin reading at byte offset zero.
             * @details Retains the input pointer without copying or validating a whole
             * message. A null nonempty range becomes an invalid C reader.
             * @param[in] input Borrowed immutable byte range for this reader's lifetime.
             * @see reader::integer
             */
            explicit reader(ByteView input) : value_(roswasmc_reader_init(input.data(), input.size()))
            {
            }

            /** @brief Read an unsigned little-endian scalar of a selected width.
             * @details Accepts widths 1..8 bytes, checks the remaining extent, and
             * advances by width on success. Zero width is invalid in the C codec;
             * failed cursor state is not rolled back.
             * @param[out] value Scalar destination, unchanged on false.
             * @param[in] width Encoded byte width in 1..8.
             * @return True for one complete scalar; false for width/storage/cursor errors.
             * @see roswasmc_read_integer
             */
            bool integer(uint64_t& value, unsigned width)
            {
                return roswasmc_read_integer(&value_, &value, width) != 0;
            }

            /** @brief Read exactly four little-endian bytes as uint32_t.
             * @details Advances by four bytes on success; does not require end of input.
             * @param[out] value Destination, unchanged on false.
             * @return Whether a complete 32-bit scalar was available.
             * @see reader::integer
             */
            bool u32(uint32_t& value)
            {
                uint64_t next;
                if(!integer(next, 4))
                {
                    return false;
                }
                value = static_cast<uint32_t>(next);
                return true;
            }

            /** @brief Copy a counted String into caller-owned text.
             * @details Reads a uint32 length and that many bytes, without UTF-8/NUL
             * validation. The length must not exceed maximum; failure can consume the
             * prefix. A successful string is independent of the reader's input.
             * @param[out] value Owning destination, unchanged on false.
             * @param[in] maximum Maximum content bytes, default UINT32_MAX.
             * @return True after copying the complete accepted String.
             * @see reader::blob_view
             */
            bool text(std::string& value, size_t maximum = (std::numeric_limits<uint32_t>::max)())
            {
                roswasmc_string next;
                if(!roswasmc_read_string(&value_, &next) || next.size > maximum)
                {
                    return false;
                }
                std::string owned = ::roswasmcpp::detail::own(next);
                value.swap(owned);
                return true;
            }

            /** @brief Read eight bytes into a native double bit pattern.
             * @details Requires sizeof(double)==8 and copies bits without finite-value
             * validation. Prefer decode_parameter_float64 for canonical finite scalars.
             * @param[out] value Destination, unchanged on false.
             * @return True for a complete eight-byte value; false for size/cursor failure.
             * @see decode_parameter_float64
             */
            bool real(double& value)
            {
                uint64_t bits;
                if(sizeof(double) != 8 || !integer(bits, 8))
                {
                    return false;
                }
                roswasmc_copy_object(&value, &bits, 8);
                return true;
            }

            /** @brief Borrow a length-prefixed byte blob from the input.
             * @details Reads a uint32 count and advances over its payload. The result
             * remains valid only while the original input stays alive and unchanged.
             * Failed bounds checks may consume the prefix.
             * @param[out] output Borrowed destination view, unchanged on false.
             * @param[in] maximum Maximum blob bytes, default UINT32_MAX.
             * @return True when the full bounded blob is present.
             * @see reader::blob
             */
            bool blob_view(ByteView& output, size_t maximum = (std::numeric_limits<uint32_t>::max)())
            {
                uint64_t size;
                if(!integer(size, 4) || size > maximum || size > value_.size - value_.position)
                {
                    return false;
                }
                output = ByteView(value_.data + value_.position, static_cast<size_t>(size));
                value_.position += static_cast<size_t>(size);
                return true;
            }

            /** @brief Copy a counted blob into an owning byte vector.
             * @details Uses blob_view for framing, then copies before committing. The
             * destination must not own the reader's still-needed backing storage.
             * @param[out] output Owning destination, unchanged on false.
             * @param[in] maximum Maximum payload bytes, default UINT32_MAX.
             * @return True after copying all bytes; false for invalid/truncated framing.
             * @see reader::blob_view
             */
            bool blob(bytes& output, size_t maximum = (std::numeric_limits<uint32_t>::max)())
            {
                ByteView value;
                if(!blob_view(value, maximum))
                {
                    return false;
                }
                bytes next;
                if(value.size())
                {
                    next.assign(value.data(), value.data() + value.size());
                }
                output.swap(next);
                return true;
            }

            /** @brief Test C cursor validity and exact end position.
             * @details Does not consume bytes. A wrapper-level maximum check can fail
             * after the C reader consumed a field without invalidating its cursor;
             * inspect every read result rather than using done as failure history.
             * @return Whether the underlying C cursor is valid and positioned at end.
             * @see decode_string
             */
            bool done() const
            {
                return roswasmc_reader_done(&value_) != 0;
            }
        };

        /** @brief Decode one exact counted String into owning text.
         * @details Rejects truncation and trailing bytes, but preserves arbitrary
         * content bytes. Use Codec<msg::String> for UTF-8 and NUL validation.
         * @param[in] value Borrowed complete String encoding.
         * @param[out] output Owning destination, unchanged on false.
         * @return True after the whole input has been consumed and copied.
         * @see reader::text
         */
        inline bool decode_string(ByteView value, std::string& output)
        {
            reader input(value);
            std::string next;
            if(!input.text(next) || !input.done())
            {
                return false;
            }
            output.swap(next);
            return true;
        }

        /** @brief Decode an exact canonical Bool topic byte.
         * @details Accepts only one byte equal to 0 or 1; rejects all other framing.
         * @param[in] value Borrowed complete payload.
         * @param[out] output Destination, unchanged on false.
         * @return True for a canonical Boolean value.
         * @see boolean
         */
        inline bool decode_boolean(ByteView value, bool& output)
        {
            return ParameterCodec<bool>::decode(value, output);
        }

        /** @brief Decode one scalar Boolean parameter.
         * @details Accepts exactly one 0/1 byte without any host operation.
         * @param[in] value Borrowed complete parameter bytes.
         * @param[out] output Destination, unchanged on false.
         * @return True for the exact canonical representation.
         * @see parameter_bool
         */
        inline bool decode_parameter_bool(ByteView value, bool& output)
        {
            return ParameterCodec<bool>::decode(value, output);
        }

        /** @brief Decode a signed 32-bit parameter bit pattern.
         * @details Requires exactly four little-endian bytes and preserves signed bits.
         * @param[in] value Borrowed complete scalar bytes.
         * @param[out] output Destination, unchanged on false.
         * @return True for valid framing and readable storage.
         * @see parameter_int32
         */
        inline bool decode_parameter_int32(ByteView value, int32_t& output)
        {
            return ParameterCodec<int32_t>::decode(value, output);
        }

        /** @brief Decode a signed 64-bit parameter bit pattern.
         * @details Requires exactly eight little-endian bytes and preserves signed bits.
         * @param[in] value Borrowed complete scalar bytes.
         * @param[out] output Destination, unchanged on false.
         * @return True for valid framing and readable storage.
         * @see parameter_int64
         */
        inline bool decode_parameter_int64(ByteView value, int64_t& output)
        {
            return ParameterCodec<int64_t>::decode(value, output);
        }

        /** @brief Decode a finite binary64 parameter scalar.
         * @details Rejects nonfinite bit patterns, unsupported double representation,
         * truncation and trailing bytes through the canonical C codec.
         * @param[in] value Borrowed exact eight-byte encoding.
         * @param[out] output Destination in the encoded application's units; unchanged
         * on validation failure.
         * @return True for a complete finite scalar.
         * @see parameter_float64
         */
        inline bool decode_parameter_float64(ByteView value, double& output)
        {
            return ParameterCodec<double>::decode(value, output);
        }

        namespace parameter_array_detail
        {
            /** @brief Canonical array bounds shared with the C parameter codec.
             * @details Counts apply to elements; the byte limit includes the count prefix.
             * @see roswasmc_decode_parameter
             */
            enum
            {
                /** @brief Maximum array element count.
                 * @details 1048576 elements; the encoded-byte limit can impose a lower count.
                 * @see maximum_bytes
                 */
                maximum_elements = 1048576,
                /** @brief Maximum complete encoded parameter size in bytes.
                 * @details 4193786 bytes including all count/length prefixes.
                 * @see maximum_elements
                 */
                maximum_bytes = 4193786
            };

            /** @brief Validate UTF-8 for parameter-array text.
             * @details Performs a bounded borrowed read and rejects overlong sequences,
             * surrogates and invalid code points. The default rejects embedded NULs.
             * @param[in] value Live borrowed content bytes, null only when empty.
             * @param[in] nul Whether U+0000 is permitted within the String.
             * @return True for a well-formed String under the selected NUL policy.
             * @see roswasmc_utf8
             */
            inline bool text_valid(StringView value, bool nul = false)
            {
                return roswasmc_utf8(::roswasmcpp::detail::text(value), nul ? 1 : 0) != 0;
            }

            /** @brief Inspect an unsigned integer at a byte offset.
             * @details Internal array helper; it returns zero for an invalid offset/read,
             * which is indistinguishable from a successfully decoded zero.
             * @param[in] bytes Borrowed range containing the field.
             * @param[in] position Zero-based byte offset, at most bytes.size().
             * @param[in] width Little-endian field width in 1..8 bytes.
             * @return Decoded bits, or zero on failure; no cursor is retained.
             * @see reader::integer
             */
            inline uint64_t integer(ByteView bytes, size_t position, unsigned width)
            {
                if(position > bytes.size())
                {
                    return 0;
                }
                roswasmc_reader r = roswasmc_reader_init(bytes.data() + position, bytes.size() - position);
                uint64_t n = 0;
                roswasmc_read_integer(&r, &n, width);
                return n;
            }
        }  // namespace parameter_array_detail

        /** @brief Encode a bounded array of canonical scalar parameter elements.
         * @details Supports uint8_t, int32_t, int64_t and double through their element
         * codecs. Writes a uint32 count and little-endian elements; double elements
         * must be finite. At most 1048576 elements and 4193786 total bytes are allowed.
         * @tparam T Supported scalar element type, not bool or an arbitrary record.
         * @param[in] values Borrowed elements for this call; nonempty storage must live.
         * @param[out] output Owning destination, unchanged on false.
         * @return True for a complete encoding, including a valid zero-element array.
         * @see roswasmcpp::ParameterCodec
         */
        template <class T>
        bool encode_array(ArrayView<T const> values, bytes& output)
        {
            if(values.size() > 1048576u || values.size() > (4193786u - 4) / ::roswasmcpp::detail::ParameterElement<T>::width ||
               (!values.data() && values.size()))
            {
                return false;
            }
            std::vector<T> owning;
            if(values.size())
            {
                owning.assign(values.data(), values.data() + values.size());
            }
            bytes next = ParameterCodec<std::vector<T> >::encode(owning);
            if(next.empty())
            {
                return false;
            }
            output.swap(next);
            return true;
        }

        /** @brief Encode a bounded UTF-8 String parameter array.
         * @details Includes a uint32 array count and one length prefix per String.
         * Rejects embedded NULs, invalid UTF-8, more than 1048576 elements, and an
         * aggregate encoding larger than 4193786 bytes.
         * @param[in] values Borrowed owning Strings, read only during this call.
         * @param[out] output Owning encoded bytes, unchanged on false.
         * @return True after the complete array has been validated and encoded.
         * @see decode_parameter_string_array
         */
        template <>
        inline bool encode_array<std::string>(ArrayView<std::string const> values, bytes& output)
        {
            if(values.size() > 1048576u || (!values.data() && values.size()))
            {
                return false;
            }
            size_t bound = 4;
            for(size_t i = 0; i < values.size(); ++i)
            {
                if(!::roswasmcpp::detail::sized(bound, 4) || !::roswasmcpp::detail::sized(bound, values[i].size()))
                {
                    return false;
                }
            }
            std::vector<std::string> owning;
            if(values.size())
            {
                owning.assign(values.data(), values.data() + values.size());
            }
            bytes next = ParameterCodec<std::vector<std::string> >::encode(owning);
            if(next.empty())
            {
                return false;
            }
            output.swap(next);
            return true;
        }

        /** @brief Encode a Boolean array from byte-valued elements.
         * @details Every element must be 0 or 1. Encodes a four-byte count followed by
         * the bytes, with at most 1048576 elements and 4193786 total bytes.
         * @param[in] values Borrowed bytes; nonempty storage must be live.
         * @param[out] output Owning destination, unchanged on false.
         * @return True for a valid complete Boolean array.
         * @see decode_parameter_bool_array
         */
        inline bool encode_parameter_bool_array(ArrayView<uint8_t const> values, bytes& output)
        {
            if(values.size() > 1048576u || (!values.data() && values.size()))
            {
                return false;
            }
            BooleanArray owning;
            if(values.size())
            {
                owning.values.assign(values.data(), values.data() + values.size());
            }
            bytes next = ParameterCodec<BooleanArray>::encode(owning);
            if(next.empty())
            {
                return false;
            }
            output.swap(next);
            return true;
        }

        /** @brief Decode an exact bounded Boolean array into owning bytes.
         * @details Validates the count, 0/1 elements, byte bound and exact input extent.
         * @param[in] bytes Borrowed complete array encoding.
         * @param[out] output Owning 0/1 elements, unchanged on false.
         * @return True for a complete canonical Boolean array, including count zero.
         * @see encode_parameter_bool_array
         */
        inline bool decode_parameter_bool_array(ByteView bytes, std::vector<uint8_t>& output)
        {
            BooleanArray next;
            if(!ParameterCodec<BooleanArray>::decode(bytes, next))
            {
                return false;
            }
            output.swap(next.values);
            return true;
        }

        /** @brief Encode an array of unrestricted unsigned bytes.
         * @details Unlike Boolean arrays, all element values 0..255 are admitted.
         * The uint32 count is bounded by 1048576 elements and 4193786 encoded bytes.
         * @param[in] value Borrowed elements, null only when empty.
         * @param[out] out Owning destination, unchanged on false.
         * @return True after complete encoding.
         * @see decode_parameter_byte_array
         */
        inline bool encode_parameter_byte_array(ArrayView<uint8_t const> value, bytes& out)
        {
            return encode_array<uint8_t>(value, out);
        }

        /** @brief Decode a counted byte parameter array.
         * @details Requires exact framing and canonical array bounds; copies all bytes.
         * @param[in] value Borrowed complete encoded array.
         * @param[out] out Owning elements in 0..255, unchanged on false.
         * @return True for a valid array, including an empty one.
         * @see encode_parameter_byte_array
         */
        inline bool decode_parameter_byte_array(ByteView value, std::vector<uint8_t>& out)
        {
            return ParameterCodec<std::vector<uint8_t> >::decode(value, out);
        }

        /** @brief Encode signed 32-bit array elements without changing their bits.
         * @details Writes a four-byte count and four little-endian bytes per element.
         * At most 1048576 elements and 4193786 total encoded bytes are allowed.
         * @param[in] value Borrowed signed values, read only for this call.
         * @param[out] out Owning destination, unchanged on false.
         * @return True for a complete bounded encoding.
         * @see decode_parameter_int32_array
         */
        inline bool encode_parameter_int32_array(ArrayView<int32_t const> value, bytes& out)
        {
            return encode_array<int32_t>(value, out);
        }

        /** @brief Decode a bounded signed 32-bit array.
         * @details Requires exact count/extent agreement and preserves signed bits.
         * @param[in] value Borrowed count-prefixed little-endian encoding.
         * @param[out] out Owning int32_t elements, unchanged on false.
         * @return True for an exact canonical array.
         * @see encode_parameter_int32_array
         */
        inline bool decode_parameter_int32_array(ByteView value, std::vector<int32_t>& out)
        {
            return ParameterCodec<std::vector<int32_t> >::decode(value, out);
        }

        /** @brief Encode signed 64-bit parameter-array elements.
         * @details Stores a four-byte count and eight little-endian bytes per element;
         * the 4193786-byte bound is stricter than the 1048576-element bound here.
         * @param[in] value Borrowed int64_t elements for this call.
         * @param[out] out Owning destination, unchanged on false.
         * @return True for a complete encoding that satisfies both bounds.
         * @see decode_parameter_int64_array
         */
        inline bool encode_parameter_int64_array(ArrayView<int64_t const> value, bytes& out)
        {
            return encode_array<int64_t>(value, out);
        }

        /** @brief Decode a bounded signed 64-bit array.
         * @details Validates the canonical count and exact little-endian payload size.
         * @param[in] value Borrowed complete encoded array.
         * @param[out] out Owning int64_t elements, unchanged on false.
         * @return True after validating and copying every element.
         * @see encode_parameter_int64_array
         */
        inline bool decode_parameter_int64_array(ByteView value, std::vector<int64_t>& out)
        {
            return ParameterCodec<std::vector<int64_t> >::decode(value, out);
        }

        /** @brief Encode a finite binary64 parameter array.
         * @details Rejects any NaN/infinity or unsupported double representation.
         * Both the 1048576-element and 4193786-byte bounds apply, including the count.
         * @param[in] value Borrowed finite doubles in application-defined units.
         * @param[out] out Owning destination, unchanged on false.
         * @return True for a complete validated array.
         * @see decode_parameter_float64_array
         */
        inline bool encode_parameter_float64_array(ArrayView<double const> value, bytes& out)
        {
            return encode_array<double>(value, out);
        }

        /** @brief Decode a bounded array of finite binary64 values.
         * @details Rejects nonfinite elements, invalid counts, truncation and trailing
         * bytes before committing the complete vector.
         * @param[in] value Borrowed little-endian count-prefixed encoding.
         * @param[out] out Owning doubles in the encoded units, unchanged on false.
         * @return True for a canonical finite array.
         * @see encode_parameter_float64_array
         */
        inline bool decode_parameter_float64_array(ByteView value, std::vector<double>& out)
        {
            return ParameterCodec<std::vector<double> >::decode(value, out);
        }

        /** @brief Encode a parameter array of UTF-8 Strings.
         * @details Enforces each String's UTF-8/no-NUL rule and the aggregate count/byte
         * bounds documented by the String specialization of encode_array.
         * @param[in] value Borrowed Strings for this call.
         * @param[out] out Owning destination, unchanged on false.
         * @return True for a complete bounded encoding.
         * @see encode_array
         */
        inline bool encode_parameter_string_array(ArrayView<std::string const> value, bytes& out)
        {
            return encode_array<std::string>(value, out);
        }

        /** @brief Decode a bounded UTF-8 String parameter array.
         * @details Validates count/length prefixes, exact extent, UTF-8 and no embedded
         * NULs, then copies every element into independent owning Strings.
         * @param[in] value Borrowed complete encoded array.
         * @param[out] out Owning destination, unchanged on false.
         * @return True after complete validation and copying.
         * @see encode_parameter_string_array
         */
        inline bool decode_parameter_string_array(ByteView value, std::vector<std::string>& out)
        {
            return ParameterCodec<std::vector<std::string> >::decode(value, out);
        }

        /** @brief Return an owning encoding of 0/1 Boolean-array bytes.
         * @details Uses the same bounded validation as encode_parameter_bool_array.
         * @param[in] value Borrowed Boolean elements for this call.
         * @return Complete count-prefixed bytes, or an empty vector on invalid values
         * or bounds; a valid empty array produces four bytes.
         * @see encode_parameter_bool_array
         */
        inline bytes parameter_bool_array(ArrayView<uint8_t const> value)
        {
            bytes out;
            encode_parameter_bool_array(value, out);
            return out;
        }

        /** @brief Return an owning encoding of unsigned byte-array elements.
         * @details Values 0..255 are valid; count and byte bounds still apply.
         * @param[in] value Borrowed elements for this call.
         * @return Complete count-prefixed bytes, or empty on invalid storage/bounds.
         * @see encode_parameter_byte_array
         */
        inline bytes parameter_byte_array(ArrayView<uint8_t const> value)
        {
            bytes out;
            encode_parameter_byte_array(value, out);
            return out;
        }

        /** @brief Return an owning signed 32-bit array encoding.
         * @details Preserves each element's signed bits in canonical little-endian form.
         * @param[in] value Borrowed elements, with the canonical count/byte bounds.
         * @return Complete bytes, or empty when encode_parameter_int32_array fails.
         * @see encode_parameter_int32_array
         */
        inline bytes parameter_int32_array(ArrayView<int32_t const> value)
        {
            bytes out;
            encode_parameter_int32_array(value, out);
            return out;
        }

        /** @brief Return an owning signed 64-bit array encoding.
         * @details Includes a four-byte count and eight bytes per accepted element.
         * @param[in] value Borrowed elements satisfying the encoded-byte bound.
         * @return Complete bytes, or empty when encode_parameter_int64_array fails.
         * @see encode_parameter_int64_array
         */
        inline bytes parameter_int64_array(ArrayView<int64_t const> value)
        {
            bytes out;
            encode_parameter_int64_array(value, out);
            return out;
        }

        /** @brief Return an owning finite binary64 array encoding.
         * @details Rejects nonfinite elements and the same bounds as the Boolean-result
         * encoder; it never normalizes or changes physical units.
         * @param[in] value Borrowed finite doubles for this call.
         * @return Complete bytes, or empty when encode_parameter_float64_array fails.
         * @see encode_parameter_float64_array
         */
        inline bytes parameter_float64_array(ArrayView<double const> value)
        {
            bytes out;
            encode_parameter_float64_array(value, out);
            return out;
        }

        /** @brief Return an owning UTF-8 String-array encoding.
         * @details Validates every no-NUL String and the aggregate canonical bounds.
         * @param[in] value Borrowed Strings for this call.
         * @return Complete bytes, or empty when encode_parameter_string_array fails.
         * @see encode_parameter_string_array
         */
        inline bytes parameter_string_array(ArrayView<std::string const> value)
        {
            bytes out;
            encode_parameter_string_array(value, out);
            return out;
        }

        /** @brief Encode linear XYZ and angular XYZ as a canonical Twist.
         * @details Six finite binary64 values occupy 48 bytes. Linear components use
         * metres/second; angular components use radians/second. Physical limits and
         * motion authority are checked separately by the host operation.
         * @param[in] value Linear elements 0..2 followed by angular elements 3..5.
         * @return Owning 48-byte encoding, or empty for invalid floating-point values.
         * @see decode_twist
         */
        inline bytes twist(FixedArray<double, 6> const& value)
        {
            msg::Twist message;
            for(unsigned i = 0; i < 3; ++i)
            {
                message.linear[i] = value[i];
                message.angular[i] = value[i + 3];
            }
            bytes out;
            Codec<msg::Twist>::encode(message, out);
            return out;
        }

        /** @brief Decode an exact canonical Twist into six ordered components.
         * @details Uses the C finite-binary64 checks; commits only after all six fields
         * decode. The result is independent of the source buffer.
         * @param[in] bytes Borrowed exact 48-byte payload.
         * @param[out] out Linear XYZ in metres/second then angular XYZ in radians/second;
         * unchanged on false.
         * @return True for the complete supported Twist representation.
         * @see twist
         */
        inline bool decode_twist(ByteView bytes, FixedArray<double, 6>& out)
        {
            msg::Twist next;
            if(!Codec<msg::Twist>::decode(bytes, next))
            {
                return false;
            }
            for(unsigned i = 0; i < 3; ++i)
            {
                out[i] = next.linear[i];
                out[i + 3] = next.angular[i];
            }
            return true;
        }

        /** @brief Encode all canonical Image fields into owning bytes.
         * @details Delegates to Codec<image>; preserves sequence, timestamp, frame,
         * dimensions, encoding, endian flag, row step and complete pixel bytes. Does
         * not infer an encoding or transform pixels. The complete byte bound applies.
         * @param[in] value Complete owning image, borrowed only during this call.
         * @return Canonical bytes, or empty when the codec rejects size/fields.
         * @see roswasmcpp::Codec<roswasmcpp::msg::Image>
         */
        inline bytes encode(image const& value)
        {
            bytes out;
            Codec<image>::encode(value, out);
            return out;
        }

        /** @brief Decode a complete canonical Image into independent storage.
         * @details Uses Codec<image>'s exact framing checks and copies frame/encoding
         * strings and all pixel bytes before committing the owning destination.
         * @param[in] value Borrowed complete Image encoding.
         * @param[out] out Owning destination, unchanged on false.
         * @return True after successful complete decoding.
         * @see roswasmcpp::Codec<roswasmcpp::msg::Image>
         */
        inline bool decode(ByteView value, image& out)
        {
            return Codec<image>::decode(value, out);
        }

        /** @brief Encode a complete timestamped transform.
         * @details Preserves both frame names, sequence, timestamp, translation in
         * metres and XYZW quaternion. Numeric representation is checked by the codec;
         * frame authority and permitted transforms remain host policy decisions.
         * @param[in] value Owning transform, borrowed during this call.
         * @return Canonical bytes, or empty on invalid representation/size.
         * @see roswasmcpp::Codec<roswasmcpp::msg::Transform>
         */
        inline bytes encode(transform const& value)
        {
            bytes out;
            Codec<transform>::encode(value, out);
            return out;
        }

        /** @brief Decode a timestamped transform without retaining its wire buffer.
         * @details Uses the complete canonical codec, including all seven doubles and
         * frame Strings; decoding does not authorize publication or frame mutation.
         * @param[in] value Borrowed complete transform encoding.
         * @param[out] out Owning destination, unchanged on false.
         * @return True for an exact supported transform.
         * @see roswasmcpp::Codec<roswasmcpp::msg::Transform>
         */
        inline bool decode(ByteView value, transform& out)
        {
            return Codec<transform>::decode(value, out);
        }

        /** @brief Encode the nanosecond timestamp used by transform lookup.
         * @details Writes the complete uint64 value without contacting a clock. Zero
         * is the lookup protocol's latest-time selector; nonzero interpretation is
         * fixed by the selected host clock/transform service.
         * @param[in] value Nanoseconds, default zero for latest.
         * @return Exactly eight owning little-endian bytes.
         * @see decode_nanoseconds
         */
        inline bytes lookup_time(uint64_t value = 0)
        {
            bytes out(8);
            size_t used = 0;
            roswasmc_encode_u64(value, buffer_data(out), out.size(), &used);
            return out;
        }

        /** @brief Encode an unsigned nanosecond count.
         * @details This is a byte conversion, with no clock read, epoch conversion,
         * waiting or overflow arithmetic on the supplied uint64 value.
         * @param[in] value Count in nanoseconds, full uint64_t domain.
         * @return Exactly eight owning little-endian bytes.
         * @see decode_nanoseconds
         */
        inline bytes nanoseconds(uint64_t value)
        {
            return lookup_time(value);
        }

        /** @brief Decode an exact unsigned nanosecond count.
         * @details Requires eight readable bytes and preserves the full uint64 range.
         * Zero is accepted; any operation-specific meaning is left to its caller.
         * @param[in] value Borrowed exact eight-byte payload.
         * @param[out] out Nanoseconds, unchanged on false.
         * @return True for exact length and readable storage.
         * @see nanoseconds
         */
        inline bool decode_nanoseconds(ByteView value, uint64_t& out)
        {
            if(value.size() != 8 || !value.data())
            {
                return false;
            }
            out = uwvm_ros_load_u64(value.data());
            return true;
        }

        /** @brief Encode the signed order field of a Fibonacci action goal.
         * @details Writes four little-endian bytes for any int32_t. Algorithm/order
         * bounds and permission to send a goal are checked by the action endpoint.
         * @param[in] value Requested order as a signed 32-bit integer.
         * @return Exactly four owning bytes.
         * @see roswasmcpp::ParameterCodec<int32_t>
         */
        inline bytes fibonacci_goal(int32_t value)
        {
            return ParameterCodec<int32_t>::encode(value);
        }

        /** @brief Encode a 64-bit action goal identifier.
         * @details Preserves the value in eight bytes; zero is encoded here even though
         * action operations normally require a live nonzero correlated goal ID.
         * @param[in] value Identifier bits, not a pointer or authority token.
         * @return Exactly eight owning little-endian bytes.
         * @see incoming_goal
         */
        inline bytes goal_id(uint64_t value)
        {
            return lookup_time(value);
        }

        /** @brief Encode correlated Fibonacci feedback or a marked result.
         * @details Requires a nonzero goal and at most 48 int32 elements. Includes the
         * goal, optional one-byte kind, uint32 count and exact signed element bits.
         * With terminal=true the codec accepts kind 1..4 (1 feedback, 2..4 terminal
         * outcomes); the flag controls wire framing rather than enforcing finality.
         * @param[in] value Complete correlated sequence.
         * @param[in] terminal Whether to include the kind byte; default true.
         * @return Owning complete bytes, or empty on invalid ID/count/kind.
         * @see roswasmc_encode_action_sequence
         */
        inline bytes encode(action_sequence const& value, bool terminal = true)
        {
            if(!value.goal || value.values.size() > 48)
            {
                return bytes();
            }
            bytes values(value.values.size() * 4);
            roswasmc_writer w = roswasmc_writer_init(buffer_data(values), values.size());
            for(size_t i = 0; i < value.values.size(); ++i)
            {
                ::roswasmcpp::detail::ParameterElement<int32_t>::write(&w, value.values[i]);
            }
            roswasmc_action_sequence raw;
            raw.goal = value.goal;
            raw.kind = value.kind;
            raw.count = static_cast<uint32_t>(value.values.size());
            raw.values_le = buffer_data(values);
            bytes out(12 + (terminal ? 1 : 0) + values.size());
            size_t used = 0;
            if(roswasmc_encode_action_sequence(&raw, terminal ? 1 : 0, buffer_data(out), out.size(), &used))
            {
                return bytes();
            }
            out.resize(used);
            return out;
        }

        /** @brief Decode a complete correlated Fibonacci sequence.
         * @details Requires a nonzero goal, at most 48 elements and exact remaining
         * extent. When terminal is false no kind is read and the result's kind is zero;
         * when true the encoded kind must be 1..4. Copies all signed elements.
         * @param[in] value Borrowed complete sequence bytes.
         * @param[out] out Owning destination, unchanged on false.
         * @param[in] terminal Whether the input includes a kind byte; default true.
         * @return True for the selected framing and complete canonical sequence.
         * @see roswasmc_decode_action_sequence
         */
        inline bool decode(ByteView value, action_sequence& out, bool terminal = true)
        {
            roswasmc_action_sequence raw;
            if(roswasmc_decode_action_sequence(value.data(), value.size(), terminal ? 1 : 0, &raw))
            {
                return false;
            }
            action_sequence next;
            next.goal = raw.goal;
            next.kind = raw.kind;
            next.values.resize(raw.count);
            roswasmc_reader r = roswasmc_reader_init(raw.values_le, static_cast<size_t>(raw.count) * 4);
            for(size_t i = 0; i < next.values.size(); ++i)
            {
                if(!::roswasmcpp::detail::ParameterElement<int32_t>::read(&r, next.values[i]))
                {
                    return false;
                }
            }
            out = next;
            return true;
        }

        /** @brief Encode the legacy String-valued parameter-event envelope.
         * @details Preserves timestamp, event kind, node, parameter name and String
         * value through the canonical codec. Encoding itself performs no mutation.
         * @param[in] value Complete owning event under the legacy String contract.
         * @return Complete bytes, or empty on codec validation/size failure.
         * @see roswasmcpp::Codec<roswasmcpp::msg::ParameterEvent>
         */
        inline bytes encode(parameter_event const& value)
        {
            bytes out;
            Codec<parameter_event>::encode(value, out);
            return out;
        }

        /** @brief Decode a complete legacy String parameter event.
         * @details Copies all String fields and checks exact canonical framing through
         * Codec<parameter_event>; no input pointer is retained on success.
         * @param[in] value Borrowed complete event encoding.
         * @param[out] out Owning destination, unchanged on false.
         * @return True for a complete supported legacy event.
         * @see roswasmcpp::Codec<roswasmcpp::msg::ParameterEvent>
         */
        inline bool decode(ByteView value, parameter_event& out)
        {
            return Codec<parameter_event>::decode(value, out);
        }

        /** @brief Validate a node or parameter name for typed event framing.
         * @details Node names are absolute slash-separated ASCII identifiers, 2..1024
         * bytes. Parameter names are dot-separated identifiers, 1..255 bytes. Each
         * segment begins with a letter or underscore, followed by those or digits;
         * empty segments and trailing separators are rejected. No registry is queried.
         * @param[in] name Borrowed exact name bytes for this call.
         * @param[in] node True selects node grammar; false selects parameter grammar.
         * @return Whether the name satisfies the selected canonical grammar.
         * @see roswasmc_parameter_name
         */
        inline bool valid_parameter_event_name(StringView name, bool node)
        {
            return roswasmc_parameter_name(::roswasmcpp::detail::text(name), node ? 1 : 0) != 0;
        }

        /** @brief Encode a fully typed or deletion-only parameter event.
         * @details Checks canonical time/name/kind/tag bounds and encodes only the field
         * selected by the tag. Deletion kind 3 has no value payload. Complete event
         * size is bounded by 4193786 bytes; host mutation authority is separate.
         * @param[in] value Complete owning event with its selected payload initialized.
         * @param[out] out Owning destination, unchanged on false.
         * @return True after complete validation and encoding.
         * @see roswasmcpp::Codec<roswasmcpp::msg::TypedParameterEvent>
         */
        inline bool encode_typed_parameter_event(typed_parameter_event const& value, bytes& out)
        {
            return Codec<typed_parameter_event>::encode(value, out);
        }

        /** @brief Return an owning typed parameter-event encoding.
         * @details Uses the same validation and selected-payload rules as the explicit
         * Boolean-result encoder; no capability or parameter operation is performed.
         * @param[in] value Complete typed/deletion event for this call.
         * @return Canonical bytes, or empty on validation/size failure.
         * @see encode_typed_parameter_event
         */
        inline bytes encode(typed_parameter_event const& value)
        {
            bytes out;
            encode_typed_parameter_event(value, out);
            return out;
        }

        /** @brief Decode an exact typed parameter event into owning fields.
         * @details Validates time, names, event kind, tag and the complete selected
         * scalar/array payload before committing. Unselected fields keep defaults.
         * @param[in] value Borrowed complete event encoding.
         * @param[out] out Owning destination, unchanged on false.
         * @return True for a complete canonical typed or deletion-only event.
         * @see roswasmcpp::Codec<roswasmcpp::msg::TypedParameterEvent>
         */
        inline bool decode_typed_parameter_event(ByteView value, typed_parameter_event& out)
        {
            return Codec<typed_parameter_event>::decode(value, out);
        }

        /** @brief Decode the typed parameter-event overload.
         * @details Forwards to decode_typed_parameter_event with identical validation,
         * owning-output and failure-preservation semantics.
         * @param[in] value Borrowed complete typed-event bytes.
         * @param[out] out Owning destination, unchanged on false.
         * @return True after complete canonical decoding.
         * @see decode_typed_parameter_event
         */
        inline bool decode(ByteView value, typed_parameter_event& out)
        {
            return decode_typed_parameter_event(value, out);
        }

        /** @brief Encode a Trigger/SetBool success flag and response message.
         * @details Uses the canonical Bool-plus-String response codec. This is a body
         * only; it contains no service request correlation identifier.
         * @param[in] value Complete owning response body.
         * @return Canonical bytes, or empty on invalid text/size.
         * @see service_reply
         */
        inline bytes encode(service_response const& value)
        {
            bytes out;
            Codec<service_response>::encode(value, out);
            return out;
        }

        /** @brief Decode a complete Bool-plus-String service response body.
         * @details Copies the String and rejects invalid Boolean/text/framing through
         * Codec<service_response>; no service ticket is completed by local decoding.
         * @param[in] value Borrowed complete response body.
         * @param[out] out Owning destination, unchanged on false.
         * @return True for a complete canonical body.
         * @see roswasmcpp::Codec<roswasmcpp::wire::service_response>
         */
        inline bool decode(ByteView value, service_response& out)
        {
            return Codec<service_response>::decode(value, out);
        }

        /** @brief Prefix a service payload with a nonzero correlation ID.
         * @details Writes an eight-byte ID and the unmodified payload. Payload is
         * opaque here and may be empty, but cannot exceed 4193778 bytes.
         * @param[in] value Nonzero request ID and owning body for this call.
         * @return Complete envelope bytes, or empty for zero ID/oversized payload.
         * @see service_reply
         */
        inline bytes encode(service_envelope const& value)
        {
            if(!value.request_id || value.payload.size() > 4193778u)
            {
                return bytes();
            }
            bytes out(value.payload.size() + 8);
            roswasmc_bytes raw = {buffer_data(value.payload), value.payload.size()};
            size_t used = 0;
            if(roswasmc_encode_service_envelope(value.request_id, raw, buffer_data(out), out.size(), &used))
            {
                return bytes();
            }
            out.resize(used);
            return out;
        }

        /** @brief Decode a service correlation envelope with an opaque owning body.
         * @details Requires 8..4193786 bytes and a nonzero uint64 ID. Remaining bytes
         * are copied without interpreting their service-specific representation.
         * @param[in] value Borrowed complete envelope.
         * @param[out] out Owning destination, unchanged on false.
         * @return True after exact structural validation and body copying.
         * @see service_envelope
         */
        inline bool decode(ByteView value, service_envelope& out)
        {
            if(value.size() < 8 || value.size() > 4193786u || !value.data())
            {
                return false;
            }
            service_envelope next;
            next.request_id = uwvm_ros_load_u64(value.data());
            if(!next.request_id)
            {
                return false;
            }
            if(value.size() > 8)
            {
                next.payload.assign(value.data() + 8, value.data() + value.size());
            }
            out = next;
            return true;
        }

        /** @brief Encode a correlated Trigger/SetBool server reply.
         * @details Encodes the response body, then prefixes its nonzero request ID.
         * Constructing bytes does not send a response or consume a host request.
         * @param[in] id Nonzero request correlation ID from the matching service poll.
         * @param[in] response Owning Bool-plus-String body for this call.
         * @return Complete owning reply bytes, or empty on ID/body/size failure.
         * @see service_envelope
         */
        inline bytes service_reply(uint64_t id, service_response const& response)
        {
            service_envelope next;
            next.request_id = id;
            if(!Codec<service_response>::encode(response, next.payload))
            {
                return bytes();
            }
            return encode(next);
        }

        /** @brief Encode an incoming Fibonacci goal's ID and signed order.
         * @details Requires a nonzero ID and writes exactly twelve bytes. The full
         * int32 order domain is representable; host action limits remain separate.
         * @param[in] value Complete incoming goal fields for this call.
         * @return Twelve owning bytes, or empty when the goal ID is zero.
         * @see fibonacci_goal
         */
        inline bytes encode(incoming_goal const& value)
        {
            if(!value.goal_id)
            {
                return bytes();
            }
            bytes out = lookup_time(value.goal_id), order = fibonacci_goal(value.order);
            out.insert(out.end(), order.begin(), order.end());
            return out;
        }

        /** @brief Decode the exact incoming Fibonacci goal envelope.
         * @details Requires twelve bytes, a nonzero uint64 ID and a signed 32-bit
         * order. Does not accept, reject or otherwise respond to the goal.
         * @param[in] value Borrowed complete incoming-goal bytes.
         * @param[out] out Complete value destination, unchanged on false.
         * @return True for exact canonical framing and a nonzero ID.
         * @see incoming_goal
         */
        inline bool decode(ByteView value, incoming_goal& out)
        {
            if(value.size() != 12 || !value.data())
            {
                return false;
            }
            incoming_goal next;
            next.goal_id = uwvm_ros_load_u64(value.data());
            if(!next.goal_id || !ParameterCodec<int32_t>::decode(ByteView(value.data() + 8, 4), next.order))
            {
                return false;
            }
            out = next;
            return true;
        }

        /** @brief Encode a ROS2 lifecycle state ID and owning label.
         * @details Writes one ID byte and a UTF-8 counted String. Embedded NULs are
         * accepted by the C scalar-String contract; total size must fit 4193786 bytes.
         * Encoding a state does not request or authorize a lifecycle transition.
         * @param[in] value State byte and complete label, borrowed during this call.
         * @return Complete bytes, or empty on invalid UTF-8/size.
         * @see roswasmc_encode_lifecycle_state
         */
        inline bytes encode(lifecycle_state const& value)
        {
            size_t n = 5, used = 0;
            if(!::roswasmcpp::detail::sized(n, value.label.size()))
            {
                return bytes();
            }
            bytes out(n);
            roswasmc_lifecycle_state raw;
            raw.id = value.id;
            raw.label = ::roswasmcpp::detail::text(value.label);
            if(roswasmc_encode_lifecycle_state(raw, buffer_data(out), out.size(), &used))
            {
                return bytes();
            }
            out.resize(used);
            return out;
        }

        /** @brief Decode a complete lifecycle state and copy its label.
         * @details Requires exact canonical ID-plus-String framing through the C codec.
         * Decoding remains local and does not emulate unsupported lifecycle endpoints.
         * @param[in] value Borrowed complete state bytes.
         * @param[out] out Owning state/label, unchanged on false.
         * @return True for the supported state representation.
         * @see roswasmc_decode_lifecycle_state
         */
        inline bool decode(ByteView value, lifecycle_state& out)
        {
            roswasmc_lifecycle_state raw;
            if(roswasmc_decode_lifecycle_state(value.data(), value.size(), &raw))
            {
                return false;
            }
            lifecycle_state next;
            next.id = raw.id;
            next.label = ::roswasmcpp::detail::own(raw.label);
            out = next;
            return true;
        }
    }  // namespace wire
}  // namespace roswasmcpp
