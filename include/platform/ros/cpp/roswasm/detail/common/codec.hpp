/** @file
 * @brief Canonical ABI v1 values and wire helpers for the selected C++ profile.
 * @details Definitions below use C++20 or newer. Earlier profiles select the
 * portable wire namespace and its separately documented helper signatures.
 * Counts and fixed-width fields are little-endian; native C++ structure padding
 * is never serialized. Structural helpers preserve bytes without replacing
 * typed validation or host identity, permission, quota and semantic admission.
 * Inputs are borrowed during synchronous calls; owning outputs retain no source
 * views. Serialize mutation of shared vectors/readers. No helper starts I/O,
 * threads, retries or authority. Allocation exceptions/termination follow the
 * standard library; false/empty validation results are not allocation recovery.
 * @see roswasmcpp::Codec
 * @see uwvm_ros::reader
 */
#pragma once
#include <platform/ros/cpp/roswasm/cpp_profile.hpp>
#if ROSWASM_CPP_LEGACY || ROSWASM_CPP_STANDARD < 20
# include <platform/ros/cpp/roswasm/detail/portable_values.hpp>
# ifndef ROSWASM_CPP_PORTABLE_WIRE_NAMESPACE_ALIAS
/** @brief Internal guard recording publication of the portable wire alias.
 * @details Value 1 prevents duplicate alias declarations when selected headers
 * include one another; it is not a host capability or runtime version selector.
 * @see roswasmcpp::wire
 */
#  define ROSWASM_CPP_PORTABLE_WIRE_NAMESPACE_ALIAS 1
/** @brief Old-profile namespace alias to the portable canonical wire helpers.
 * @details Refers to the same types/functions without extra storage or I/O.
 * @see roswasmcpp::wire
 */
namespace uwvm_ros = ::roswasmcpp::wire;
# endif
#else
# include <bit>
# include <array>
# include <cstdint>
# include <span>
# include <string>
# include <string_view>
# include <vector>
# include <limits>
# include <cmath>
# include <type_traits>

/** @brief Local canonical values and synchronous structural conversions.
 * @details Native endpoint/type authority remains with explicitly granted host
 * aliases; creating bytes cannot authorize their publication or mutation.
 * @see roswasmcpp::Codec
 */
namespace uwvm_ros
{
    /** @brief Owning vector containing complete canonical octets.
     * @details Container ownership is independent of message type or permission;
     * reallocation invalidates pointers/spans into its elements.
     * @see uwvm_ros::reader
     */
    using bytes = std::vector<unsigned char>;

    /** @brief Append four little-endian bytes to the owning buffer.
     * @details Applies no complete-message byte bound. Individual push operations
     * can allocate; an allocation exception can leave a partial append.
     * @param[in,out] out Owning destination, with views invalidated by reallocation.
     * @param[in] value Full uint32 domain with no implied physical unit.
     * @see reader::u32
     */
    inline void append_u32(bytes& out, std::uint32_t value)
    {
        for(unsigned i = 0; i != 4; ++i)
        {
            out.push_back(static_cast<unsigned char>(value >> (i * 8)));
        }
    }

    /** @brief Append eight little-endian bytes to the owning buffer.
     * @details Applies no ID/time policy or whole-message size admission. Allocation
     * follows standard-library policy and can leave partial appended bytes.
     * @param[in,out] out Owning destination, possibly reallocated by append.
     * @param[in] value Full uint64 domain, preserved without interpretation.
     * @see reader::integer
     */
    inline void append_u64(bytes& out, std::uint64_t value)
    {
        for(unsigned i = 0; i != 8; ++i)
        {
            out.push_back(static_cast<unsigned char>(value >> (i * 8)));
        }
    }

    /** @brief Append u32 length and raw String bytes; an excessive u32 length is refused before mutation.
     * @details Does not validate UTF-8, embedded NULs or complete host message quota.
     * Input must not alias storage invalidated while appending. Validation false
     * preserves out; allocation failure is not reported as false and can occur
     * after the prefix append.
     * @param[in,out] out Owning destination for prefix and exact content bytes.
     * @param[in] value Borrowed live content, at most UINT32_MAX bytes.
     * @return True for complete append, false for excessive content length.
     * @see roswasmcpp::Codec<roswasmcpp::msg::String>
     */
    inline bool append_string(bytes& out, std::string_view value)
    {
        if(value.size() > std::numeric_limits<std::uint32_t>::max())
        {
            return false;
        }
        append_u32(out, static_cast<std::uint32_t>(value.size()));
        out.insert(out.end(), value.begin(), value.end());
        return true;
    }

    /** @brief Pack a u32-length String without UTF-8 admission checks; scalar String wire can include NUL.
     * @details Empty text encodes as four bytes. Typed Codec<msg::String> adds UTF-8
     * and its own byte bound; this structural helper preserves arbitrary content.
     * @param[in] value Borrowed live content bytes for this call.
     * @return Complete owning bytes, or empty when uint32 length framing fails.
     * @see append_string
     */
    inline bytes string(std::string_view value)
    {
        bytes out;
        if(!append_string(out, value))
        {
            out.clear();
        }
        return out;
    }

    /** @brief Encode exactly one canonical Bool byte (0 or1).
     * @details Native bool object layout is never copied.
     * @param[in] value Complete Boolean topic value.
     * @return One owning byte equal to 0 or 1.
     * @see decode_boolean
     */
    inline bytes boolean(bool value)
    {
        return {static_cast<unsigned char>(value)};
    }

    /** @brief Encode one canonical Bool parameter byte.
     * @details Same canonical representation as a Bool topic, with host parameter
     * type/write authority independently selected by its operation alias.
     * @param[in] value Complete Boolean scalar.
     * @return One owning byte equal to 0 or 1.
     * @see decode_parameter_bool
     */
    inline bytes parameter_bool(bool value)
    {
        return boolean(value);
    }

    /** @brief Encode four two's-complement LE bytes for a ROS1 scalar parameter.
     * @details Local conversion preserves signed bits without unit conversion or
     * native backend type/permission admission.
     * @param[in] value Full signed int32 value in application-defined units.
     * @return Exactly four owning bytes.
     * @see decode_parameter_int32
     */
    inline bytes parameter_int32(std::int32_t value)
    {
        bytes out;
        append_u32(out, std::bit_cast<std::uint32_t>(value));
        return out;
    }

    /** @brief Encode eight two's-complement LE bytes for a ROS2 scalar parameter.
     * @details Local conversion preserves the complete int64 bit pattern.
     * @param[in] value Full signed int64 scalar in application-defined units.
     * @return Exactly eight owning bytes.
     * @see decode_parameter_int64
     */
    inline bytes parameter_int64(std::int64_t value)
    {
        bytes out;
        append_u64(out, std::bit_cast<std::uint64_t>(value));
        return out;
    }

    /** @brief Encode finite IEEE754 binary64; NaN/infinity return an empty buffer.
     * @details Native double must be eight-byte IEC559, checked at compile time.
     * Finite signed zeros retain their bits; no physical-unit conversion occurs.
     * @param[in] value Finite scalar in application-defined units.
     * @return Eight owning bytes, or empty for a nonfinite value.
     * @see decode_parameter_float64
     */
    inline bytes parameter_float64(double value)
    {
        static_assert(sizeof(double) == 8 && std::numeric_limits<double>::is_iec559);
        if(!std::isfinite(value))
        {
            return {};
        }
        bytes out;
        append_u64(out, std::bit_cast<std::uint64_t>(value));
        return out;
    }

    /** @brief Pack linear XYZ/angular XYZ double bits; low-level packing does not enforce finite/bound rules.
     * @details Stores six eight-byte bit patterns in canonical order. Use the
     * typed Twist Codec when finite-number checks are required before publication.
     * @param[in] value Linear XYZ metres/second followed by angular XYZ radians/second.
     * @return Exactly 48 owning bytes, preserving supplied floating-point bits.
     * @see roswasmcpp::Codec<roswasmcpp::msg::Twist>
     */
    inline bytes twist(std::array<double, 6> const& value)
    {
        bytes out;
        out.reserve(48);
        for(auto field: value)
        {
            append_u64(out, std::bit_cast<std::uint64_t>(field));
        }
        return out;
    }

    /** @brief Stateful C++20 cursor over borrowed immutable canonical bytes.
     * @details Backing storage must stay alive and unchanged through reader/subview
     * use. Reads are synchronous and caller-serialized. A failed composite read can
     * consume its prefix; failure is not latched and done() checks position only.
     * Discard the reader after false, or explicitly manage the partial cursor state.
     * Only owning String/blob results allocate, under standard-library policy.
     * @see reader::done
     */
    class reader
    {
        std::span<unsigned char const> value_;
        std::size_t position_{};

    public:
        /** @brief Begin reading an exact borrowed range at byte offset zero.
         * @details Valid span storage is a caller precondition. Construction copies
         * no bytes and performs no framing, UTF-8 or host admission check.
         * @param[in] value Live immutable input range for this reader's lifetime.
         * @see reader::integer
         */
        explicit reader(std::span<unsigned char const> value) : value_(value)
        {
        }

        /** @brief Read an unsigned little-endian field with explicit byte width.
         * @details Width 0 yields zero without consuming input; actual ABI fields
         * normally use widths 1..8. Bounds failure preserves cursor/output.
         * @param[out] value Full decoded bits, unchanged on false.
         * @param[in] width Width in bytes, 0..8, chosen by the enclosing codec.
         * @return True after a complete read, false for width/remaining-extent failure.
         * @see reader::u32
         */
        bool integer(std::uint64_t& value, unsigned width)
        {
            if(width > 8 || width > value_.size() - position_)
            {
                return false;
            }
            value = 0;
            for(unsigned i = 0; i != width; ++i)
            {
                value |= std::uint64_t(value_[position_++]) << (8 * i);
            }
            return true;
        }

        /** @brief Read exactly four little-endian bytes as uint32.
         * @details Advances by four only after remaining-extent validation.
         * @param[out] value Destination, unchanged on false.
         * @return Whether four complete bytes were available.
         * @see reader::integer
         */
        bool u32(std::uint32_t& value)
        {
            std::uint64_t n{};
            if(!integer(n, 4))
            {
                return false;
            }
            value = static_cast<std::uint32_t>(n);
            return true;
        }

        /** @brief Copy one counted String after structural length/bound checks.
         * @details Does not validate UTF-8 or NULs. A rejected count can consume its
         * four-byte prefix; a successful String owns content independently of input.
         * @param[out] value Owning text destination, unchanged on false.
         * @param[in] maximum Maximum content bytes, default UINT32_MAX.
         * @return True for the complete bounded String, false for framing/size failure.
         * @see reader::blob_view
         */
        bool text(std::string& value, std::size_t maximum = std::numeric_limits<std::uint32_t>::max())
        {
            std::uint32_t n{};
            if(!u32(n) || n > maximum || n > value_.size() - position_)
            {
                return false;
            }
            value.assign(reinterpret_cast<char const*>(value_.data() + position_), n);
            position_ += n;
            return true;
        }

        /** @brief Read eight bytes into a native double bit pattern.
         * @details Requires a same-size double representation for bit_cast and
         * does not reject NaN/infinity. Typed scalar codecs add finite validation.
         * @param[out] value Destination bit pattern, unchanged on false.
         * @return Whether the complete eight-byte pattern was available.
         * @see decode_parameter_float64
         */
        bool real(double& value)
        {
            std::uint64_t n{};
            if(!integer(n, 8))
            {
                return false;
            }
            value = std::bit_cast<double>(n);
            return true;
        }

        /** @brief Copy a uint32-length blob into independent owning bytes.
         * @details Failure can consume the length prefix. Destination must not own
         * or mutate the reader's backing storage while that input is borrowed.
         * @param[out] value Owning destination, unchanged on false.
         * @param[in] maximum Maximum payload bytes, default UINT32_MAX.
         * @return True for a complete bounded blob, false for framing/size failure.
         * @see reader::blob_view
         */
        bool blob(bytes& value, std::size_t maximum = std::numeric_limits<std::uint32_t>::max())
        {
            std::uint32_t n{};
            if(!u32(n) || n > maximum || n > value_.size() - position_)
            {
                return false;
            }
            value.assign(value_.begin() + position_, value_.begin() + position_ + n);
            position_ += n;
            return true;
        }

        /** @brief Borrow one counted blob subspan without copying its payload.
         * @details Prefix can be consumed before a bound failure. Successful span
         * remains valid only while the original input is alive and unchanged.
         * @param[out] value Borrowed destination view, unchanged on false.
         * @param[in] maximum Maximum payload bytes, default UINT32_MAX.
         * @return True for the complete bounded subspan.
         * @see reader::blob
         */
        bool blob_view(std::span<unsigned char const>& value, std::size_t maximum = std::numeric_limits<std::uint32_t>::max())
        {
            std::uint32_t n{};
            if(!u32(n) || n > maximum || n > value_.size() - position_)
            {
                return false;
            }
            value = value_.subspan(position_, n);
            position_ += n;
            return true;
        }

        /** @brief Test exact end position without consuming bytes.
         * @details Does not remember prior failures. A failed length/bound read may
         * have consumed its prefix and still leave the cursor at end; callers must
         * check every individual read result as well as done().
         * @return Whether position equals the original input byte count.
         * @see decode_string
         */
        bool done() const noexcept
        {
            return position_ == value_.size();
        }
    };

    /** @brief Decode an exact u32-length String structurally; UTF-8 admission remains a separate check.
     * @details Copies arbitrary String content, including NUL/invalid UTF-8 bytes;
     * rejects truncation and trailing bytes before committing owning output.
     * @param[in] value Borrowed complete counted String payload.
     * @param[out] out Owning text destination, unchanged on false.
     * @return True for exact structural String framing.
     * @see roswasmcpp::Codec<roswasmcpp::msg::String>
     */
    inline bool decode_string(std::span<unsigned char const> value, std::string& out)
    {
        reader in{value};
        std::string next;
        if(!in.text(next) || !in.done())
        {
            return false;
        }
        out = std::move(next);
        return true;
    }

    /** @brief Decode exactly one canonical Bool byte and preserve the destination on failure.
     * @details Only byte 0 or 1 with exact length one is admitted.
     * @param[in] value Borrowed complete Boolean payload.
     * @param[out] out Value destination, unchanged on false.
     * @return True for an exact canonical Boolean.
     * @see boolean
     */
    inline bool decode_boolean(std::span<unsigned char const> value, bool& out)
    {
        if(value.size() != 1 || value[0] > 1)
        {
            return false;
        }
        out = value[0] != 0;
        return true;
    }

    /** @brief Decode exact bool fields; refusal preserves the supplied destination.
     * @details Parameter Boolean uses the same exact one-byte 0/1 representation
     * as a Bool topic without implying parameter read/write permission.
     * @param[in] value Borrowed complete scalar payload.
     * @param[out] out Boolean destination, unchanged on false.
     * @return True for exact canonical Boolean framing/value.
     * @see parameter_bool
     */
    inline bool decode_parameter_bool(std::span<unsigned char const> value, bool& out)
    {
        return decode_boolean(value, out);
    }

    /** @brief Decode exact int32 fields; refusal preserves the supplied destination.
     * @details Requires exactly four little-endian bytes and bit-casts the full
     * signed representation, without unit or host-type conversion.
     * @param[in] value Borrowed complete scalar payload.
     * @param[out] out Signed destination, unchanged on false.
     * @return True for exact signed 32-bit framing.
     * @see parameter_int32
     */
    inline bool decode_parameter_int32(std::span<unsigned char const> value, std::int32_t& out)
    {
        if(value.size() != 4)
        {
            return false;
        }
        reader in{value};
        std::uint32_t bits{};
        if(!in.u32(bits) || !in.done())
        {
            return false;
        }
        out = std::bit_cast<std::int32_t>(bits);
        return true;
    }

    /** @brief Decode exact int64 fields; refusal preserves the supplied destination.
     * @details Requires exactly eight little-endian bytes and preserves signed bits.
     * @param[in] value Borrowed complete scalar payload.
     * @param[out] out Signed destination, unchanged on false.
     * @return True for exact signed 64-bit framing.
     * @see parameter_int64
     */
    inline bool decode_parameter_int64(std::span<unsigned char const> value, std::int64_t& out)
    {
        if(value.size() != 8)
        {
            return false;
        }
        reader in{value};
        std::uint64_t bits{};
        if(!in.integer(bits, 8) || !in.done())
        {
            return false;
        }
        out = std::bit_cast<std::int64_t>(bits);
        return true;
    }

    /** @brief Decode one finite binary64 value transactionally.
     * @details Requires eight bytes and a finite decoded value; never substitutes
     * a default numeric value for a malformed scalar.
     * @param[in] value Borrowed complete little-endian scalar payload.
     * @param[out] out Double in the encoded units, unchanged on false.
     * @return True for exact finite binary64 representation.
     * @see parameter_float64
     */
    inline bool decode_parameter_float64(std::span<unsigned char const> value, double& out)
    {
        if(value.size() != 8)
        {
            return false;
        }
        reader in{value};
        double next{};
        if(!in.real(next) || !in.done() || !std::isfinite(next))
        {
            return false;
        }
        out = next;
        return true;
    }

    namespace parameter_array_detail
    {
        /** @brief Maximum complete parameter-array element count.
         * @details 1048576 elements; encoded-byte bounds can impose a lower count for
         * wider elements. This constant cannot enlarge a host alias's quota.
         * @see maximum_bytes
         */
        inline constexpr std::size_t maximum_elements = 1048576;
        /** @brief Maximum complete encoded parameter size in bytes.
         * @details 4193786 bytes includes count and every nested String length prefix.
         * @see maximum_elements
         */
        inline constexpr std::size_t maximum_bytes = 4193786;

        /** @brief Validate bounded UTF-8 scalar sequences for parameter text.
         * @details Rejects malformed/overlong encodings, surrogates and out-of-range
         * code points; default policy rejects embedded U+0000 for array elements.
         * @param[in] value Borrowed live content bytes for this synchronous read.
         * @param[in] allow_nul True admits embedded U+0000, default false.
         * @return Whether text is well-formed under the selected NUL policy.
         * @see encode_parameter_string_array
         */
        inline bool text_valid(std::string_view value, bool allow_nul = false)
        {
            std::size_t position{};
            while(position < value.size())
            {
                auto lead = static_cast<unsigned char>(value[position++]);
                if(lead < 128)
                {
                    if(!lead && !allow_nul)
                    {
                        return false;
                    }
                    continue;
                }
                unsigned continuation{};
                std::uint32_t codepoint{}, minimum{};
                if(lead >= 0xc2 && lead <= 0xdf)
                {
                    continuation = 1;
                    codepoint = lead & 31;
                    minimum = 128;
                }
                else if(lead >= 0xe0 && lead <= 0xef)
                {
                    continuation = 2;
                    codepoint = lead & 15;
                    minimum = 2048;
                }
                else if(lead >= 0xf0 && lead <= 0xf4)
                {
                    continuation = 3;
                    codepoint = lead & 7;
                    minimum = 65536;
                }
                else
                {
                    return false;
                }
                if(continuation > value.size() - position)
                {
                    return false;
                }
                while(continuation--)
                {
                    auto byte = static_cast<unsigned char>(value[position++]);
                    if((byte & 0xc0) != 0x80)
                    {
                        return false;
                    }
                    codepoint = (codepoint << 6) | (byte & 63);
                }
                if(codepoint < minimum || codepoint > 0x10ffff || (codepoint >= 0xd800 && codepoint <= 0xdfff))
                {
                    return false;
                }
            }
            return true;
        }

        /** @brief Inspect unsigned bits at a prevalidated array byte offset.
         * @details Internal helper performs no bounds check. Enclosing decoders must
         * prove the entire range readable before calling; width zero returns zero.
         * @param[in] value Borrowed complete storage containing the selected field.
         * @param[in] position Zero-based offset with position+width within value.size().
         * @param[in] width Little-endian field width in 0..8 bytes.
         * @return Decoded unsigned bits without retaining a cursor or input pointer.
         * @see reader::integer
         */
        inline std::uint64_t integer(std::span<unsigned char const> value, std::size_t position, unsigned width)
        {
            std::uint64_t result{};
            for(unsigned i = 0; i != width; ++i)
            {
                result |= std::uint64_t(value[position + i]) << (8 * i);
            }
            return result;
        }

        /** @brief Encode a supported fixed-width parameter array after complete validation.
         * @details Internal scalar-array template checks count/byte bounds and, when
         * selected, 0/1 or finite-double element rules before committing owning bytes.
         * @tparam T Supported uint8_t, int32_t, int64_t or double element type.
         * @tparam Width Matching canonical byte width 1, 4 or 8; arbitrary combinations
         * are outside this internal template's supported contract.
         * @tparam Boolean True only for 0/1 uint8_t arrays, default false.
         * @param[in] values Borrowed live element storage for this call.
         * @param[out] out Owning destination, unchanged on false.
         * @return True for a complete bounded array, false for count/size/value failure.
         * @see decode_fixed
         */
        template <class T, unsigned Width, bool Boolean = false>
        inline bool encode_fixed(std::span<T const> values, bytes& out)
        {
            if(values.size() > maximum_elements || values.size() > (maximum_bytes - 4) / Width)
            {
                return false;
            }
            for(auto value: values)
            {
                if constexpr(Boolean)
                {
                    if(value > 1)
                    {
                        return false;
                    }
                }
                if constexpr(std::is_same_v<T, double>)
                {
                    if(!std::isfinite(value))
                    {
                        return false;
                    }
                }
            }
            bytes next;
            next.reserve(4 + values.size() * Width);
            append_u32(next, static_cast<std::uint32_t>(values.size()));
            for(auto value: values)
            {
                if constexpr(Width == 1)
                {
                    next.push_back(value);
                }
                else if constexpr(Width == 4)
                {
                    append_u32(next, std::bit_cast<std::uint32_t>(value));
                }
                else
                {
                    append_u64(next, std::bit_cast<std::uint64_t>(value));
                }
            }
            out = std::move(next);
            return true;
        }

        /** @brief Decode a complete supported fixed-width parameter array.
         * @details Checks count, exact extent, aggregate bounds and selected element
         * rules before allocating/copying every element and committing the vector.
         * @tparam T Supported uint8_t, int32_t, int64_t or double element type.
         * @tparam Width Matching canonical element width 1, 4 or 8 bytes.
         * @tparam Boolean True only for 0/1 uint8_t arrays, default false.
         * @param[in] value Borrowed complete count-prefixed array bytes.
         * @param[out] out Owning typed destination, unchanged on false.
         * @return True for an exact bounded canonical array.
         * @see encode_fixed
         */
        template <class T, unsigned Width, bool Boolean = false>
        inline bool decode_fixed(std::span<unsigned char const> value, std::vector<T>& out)
        {
            if(value.size() < 4 || value.size() > maximum_bytes)
            {
                return false;
            }
            auto count = integer(value, 0, 4);
            if(count > (value.size() - 4) / Width || count * Width != value.size() - 4)
            {
                return false;
            }
            for(std::size_t position = 4; position < value.size(); position += Width)
            {
                if constexpr(Boolean)
                {
                    if(value[position] > 1)
                    {
                        return false;
                    }
                }
                if constexpr(std::is_same_v<T, double>)
                {
                    if(!std::isfinite(std::bit_cast<double>(integer(value, position, 8))))
                    {
                        return false;
                    }
                }
            }
            if(count > maximum_elements)
            {
                return false;
            }
            std::vector<T> next;
            next.reserve(static_cast<std::size_t>(count));
            for(std::size_t position = 4; position < value.size(); position += Width)
            {
                if constexpr(Width == 1)
                {
                    next.push_back(value[position]);
                }
                else if constexpr(Width == 4)
                {
                    next.push_back(std::bit_cast<T>(static_cast<std::uint32_t>(integer(value, position, 4))));
                }
                else
                {
                    next.push_back(std::bit_cast<T>(integer(value, position, 8)));
                }
            }
            out = std::move(next);
            return true;
        }
    }  // namespace parameter_array_detail

    /** @brief Validate and encode bool array; refusal preserves the supplied owning output.
     * @details Requires 0/1 byte elements, at most 1048576 elements and 4193786
     * complete encoded bytes. A valid empty array still has a four-byte count.
     * @param[in] value Borrowed live Boolean bytes for this call.
     * @param[out] out Owning complete encoding, unchanged on false.
     * @return True for all valid elements/bounds, false otherwise.
     * @see decode_parameter_bool_array
     */
    inline bool encode_parameter_bool_array(std::span<std::uint8_t const> value, bytes& out)
    {
        return parameter_array_detail::encode_fixed<std::uint8_t, 1, true>(value, out);
    }

    /** @brief Decode exact bool array fields; refusal preserves the supplied destination.
     * @details Validates exact count/extent, canonical bounds and every 0/1 byte
     * before committing complete owning elements.
     * @param[in] value Borrowed complete count-prefixed encoding.
     * @param[out] out Owning Boolean-byte destination, unchanged on false.
     * @return True for a complete canonical Boolean array.
     * @see encode_parameter_bool_array
     */
    inline bool decode_parameter_bool_array(std::span<unsigned char const> value, std::vector<std::uint8_t>& out)
    {
        return parameter_array_detail::decode_fixed<std::uint8_t, 1, true>(value, out);
    }

    /** @brief Validate and encode byte array; refusal preserves the supplied owning output.
     * @details All elements 0..255 are valid; count is at most 1048576 and complete
     * encoding at most 4193786 bytes including its four-byte prefix.
     * @param[in] value Borrowed live unsigned-byte elements for this call.
     * @param[out] out Owning encoding, unchanged on false.
     * @return True for a complete bounded array.
     * @see decode_parameter_byte_array
     */
    inline bool encode_parameter_byte_array(std::span<std::uint8_t const> value, bytes& out)
    {
        return parameter_array_detail::encode_fixed<std::uint8_t, 1>(value, out);
    }

    /** @brief Decode exact byte array fields; refusal preserves the supplied destination.
     * @details Requires count/extent agreement and canonical element/byte bounds,
     * without Boolean restrictions on the copied element values.
     * @param[in] value Borrowed complete count-prefixed encoding.
     * @param[out] out Owning unsigned bytes, unchanged on false.
     * @return True for an exact complete array.
     * @see encode_parameter_byte_array
     */
    inline bool decode_parameter_byte_array(std::span<unsigned char const> value, std::vector<std::uint8_t>& out)
    {
        return parameter_array_detail::decode_fixed<std::uint8_t, 1>(value, out);
    }

    /** @brief Validate and encode int32 array; refusal preserves the supplied owning output.
     * @details Preserves signed bits in four little-endian bytes per element,
     * bounded by 1048576 elements and 4193786 total encoded bytes.
     * @param[in] value Borrowed signed elements in application-defined units.
     * @param[out] out Owning encoding, unchanged on false.
     * @return True for a complete array satisfying both bounds.
     * @see decode_parameter_int32_array
     */
    inline bool encode_parameter_int32_array(std::span<std::int32_t const> value, bytes& out)
    {
        return parameter_array_detail::encode_fixed<std::int32_t, 4>(value, out);
    }

    /** @brief Decode exact int32 array fields; refusal preserves the supplied destination.
     * @details Validates count, four-byte element extent and canonical bounds before
     * copying exact signed bits into the complete vector.
     * @param[in] value Borrowed complete little-endian array payload.
     * @param[out] out Owning signed elements, unchanged on false.
     * @return True for an exact bounded array.
     * @see encode_parameter_int32_array
     */
    inline bool decode_parameter_int32_array(std::span<unsigned char const> value, std::vector<std::int32_t>& out)
    {
        return parameter_array_detail::decode_fixed<std::int32_t, 4>(value, out);
    }

    /** @brief Validate and encode int64 array; refusal preserves the supplied owning output.
     * @details Preserves signed bits in eight little-endian bytes per element;
     * total 4193786-byte bound can be stricter than the 1048576-element bound.
     * @param[in] value Borrowed signed elements in application-defined units.
     * @param[out] out Owning encoding, unchanged on false.
     * @return True for a complete array within both canonical bounds.
     * @see decode_parameter_int64_array
     */
    inline bool encode_parameter_int64_array(std::span<std::int64_t const> value, bytes& out)
    {
        return parameter_array_detail::encode_fixed<std::int64_t, 8>(value, out);
    }

    /** @brief Decode exact int64 array fields; refusal preserves the supplied destination.
     * @details Validates count and exact eight-byte element framing before
     * committing complete signed values; rejects trailing/truncated payload.
     * @param[in] value Borrowed complete count-prefixed encoding.
     * @param[out] out Owning signed elements, unchanged on false.
     * @return True for an exact bounded signed 64-bit array.
     * @see encode_parameter_int64_array
     */
    inline bool decode_parameter_int64_array(std::span<unsigned char const> value, std::vector<std::int64_t>& out)
    {
        return parameter_array_detail::decode_fixed<std::int64_t, 8>(value, out);
    }

    /** @brief Validate and encode float64 array; refusal preserves the supplied owning output.
     * @details Requires finite double elements, at most 1048576 elements and
     * 4193786 complete encoded bytes, with no unit conversion or normalization.
     * @param[in] value Borrowed finite binary64 elements in application-defined units.
     * @param[out] out Owning encoding, unchanged on false.
     * @return True for complete valid elements/bounds.
     * @see decode_parameter_float64_array
     */
    inline bool encode_parameter_float64_array(std::span<double const> value, bytes& out)
    {
        return parameter_array_detail::encode_fixed<double, 8>(value, out);
    }

    /** @brief Decode exact float64 array fields; refusal preserves the supplied destination.
     * @details Checks every finite binary64 element and complete canonical count/
     * byte framing before allocating and committing the owning vector.
     * @param[in] value Borrowed complete little-endian array payload.
     * @param[out] out Owning finite doubles in encoded units, unchanged on false.
     * @return True for an exact bounded finite array.
     * @see encode_parameter_float64_array
     */
    inline bool decode_parameter_float64_array(std::span<unsigned char const> value, std::vector<double>& out)
    {
        return parameter_array_detail::decode_fixed<double, 8>(value, out);
    }

    /** @brief Validate and encode string array; refusal preserves the supplied owning output.
     * @details Requires UTF-8 without NULs in each element, count at most 1048576,
     * and at most 4193786 bytes including all count/length prefixes.
     * @param[in] values Borrowed complete owning String elements for this call.
     * @param[out] out Owning complete array bytes, unchanged on false.
     * @return True after all text/bounds checks and encoding.
     * @see decode_parameter_string_array
     */
    inline bool encode_parameter_string_array(std::span<std::string const> values, bytes& out)
    {
        if(values.size() > parameter_array_detail::maximum_elements)
        {
            return false;
        }
        std::size_t size = 4;
        for(auto const& value: values)
        {
            if(parameter_array_detail::maximum_bytes - size < 4 || value.size() > parameter_array_detail::maximum_bytes - size - 4 ||
               !parameter_array_detail::text_valid(value))
            {
                return false;
            }
            size += 4 + value.size();
        }
        bytes next;
        next.reserve(size);
        append_u32(next, static_cast<std::uint32_t>(values.size()));
        for(auto const& value: values)
        {
            append_string(next, value);
        }
        out = std::move(next);
        return true;
    }

    /** @brief Decode exact string array fields; refusal preserves the supplied destination.
     * @details Validates every prefix, UTF-8/no-NUL element, canonical count/byte
     * bounds and final extent before copying independent owning Strings.
     * @param[in] value Borrowed complete count-prefixed encoding.
     * @param[out] out Owning complete String vector, unchanged on false.
     * @return True for an exact bounded UTF-8 String array.
     * @see encode_parameter_string_array
     */
    inline bool decode_parameter_string_array(std::span<unsigned char const> value, std::vector<std::string>& out)
    {
        if(value.size() < 4 || value.size() > parameter_array_detail::maximum_bytes)
        {
            return false;
        }
        auto count = parameter_array_detail::integer(value, 0, 4);
        if(count > (value.size() - 4) / 4)
        {
            return false;
        }
        std::size_t position = 4;
        for(std::uint64_t i = 0; i != count; ++i)
        {
            if(value.size() - position < 4)
            {
                return false;
            }
            auto length = parameter_array_detail::integer(value, position, 4);
            position += 4;
            if(length > value.size() - position ||
               !parameter_array_detail::text_valid({reinterpret_cast<char const*>(value.data() + position), static_cast<std::size_t>(length)}))
            {
                return false;
            }
            position += static_cast<std::size_t>(length);
        }
        if(position != value.size() || count > parameter_array_detail::maximum_elements)
        {
            return false;
        }
        std::vector<std::string> next;
        next.reserve(static_cast<std::size_t>(count));
        position = 4;
        for(std::uint64_t i = 0; i != count; ++i)
        {
            auto length = parameter_array_detail::integer(value, position, 4);
            position += 4;
            next.emplace_back(reinterpret_cast<char const*>(value.data() + position), static_cast<std::size_t>(length));
            position += static_cast<std::size_t>(length);
        }
        out = std::move(next);
        return true;
    }

    /** @brief Encode bool array with canonical count prefix for arrays.
     * @details Uses the bounded 0/1 element validation of the explicit encoder.
     * @param[in] value Borrowed Boolean bytes for this call.
     * @return Complete owning count-prefixed bytes, or empty on validation failure;
     * a valid zero-element array produces four bytes.
     * @see encode_parameter_bool_array
     */
    inline bytes parameter_bool_array(std::span<std::uint8_t const> value)
    {
        bytes out;
        encode_parameter_bool_array(value, out);
        return out;
    }

    /** @brief Encode byte array with canonical count prefix for arrays.
     * @details All values 0..255 are admitted within canonical count/byte bounds.
     * @param[in] value Borrowed unsigned-byte elements for this call.
     * @return Complete owning bytes, or empty on bounds failure.
     * @see encode_parameter_byte_array
     */
    inline bytes parameter_byte_array(std::span<std::uint8_t const> value)
    {
        bytes out;
        encode_parameter_byte_array(value, out);
        return out;
    }

    /** @brief Encode int32 array with canonical count prefix for arrays.
     * @details Preserves complete signed bits in four bytes per accepted element.
     * @param[in] value Borrowed signed elements within canonical array bounds.
     * @return Complete owning bytes, or empty on bounds failure.
     * @see encode_parameter_int32_array
     */
    inline bytes parameter_int32_array(std::span<std::int32_t const> value)
    {
        bytes out;
        encode_parameter_int32_array(value, out);
        return out;
    }

    /** @brief Encode int64 array with canonical count prefix for arrays.
     * @details Preserves signed bits in eight bytes per element, including the
     * explicit encoder's stricter aggregate byte bound.
     * @param[in] value Borrowed signed elements for this call.
     * @return Complete owning bytes, or empty on bounds failure.
     * @see encode_parameter_int64_array
     */
    inline bytes parameter_int64_array(std::span<std::int64_t const> value)
    {
        bytes out;
        encode_parameter_int64_array(value, out);
        return out;
    }

    /** @brief Encode float64 array with canonical count prefix for arrays.
     * @details Uses finite-element, count and aggregate-byte validation.
     * @param[in] value Borrowed finite doubles in application-defined units.
     * @return Complete owning bytes, or empty on element/bounds failure.
     * @see encode_parameter_float64_array
     */
    inline bytes parameter_float64_array(std::span<double const> value)
    {
        bytes out;
        encode_parameter_float64_array(value, out);
        return out;
    }

    /** @brief Encode string array with canonical count prefix for arrays.
     * @details Validates each no-NUL UTF-8 String and all aggregate bounds.
     * @param[in] value Borrowed owning String elements for this call.
     * @return Complete owning bytes, or empty on text/bounds failure.
     * @see encode_parameter_string_array
     */
    inline bytes parameter_string_array(std::span<std::string const> value)
    {
        bytes out;
        encode_parameter_string_array(value, out);
        return out;
    }

    /** @brief Decode six exact double fields transactionally; this low-level helper does not reject NaN/infinity.
     * @details Requires exactly 48 bytes. Typed Twist Codec adds finite-number
     * checks before publishing or exposing a supported typed message.
     * @param[in] value Borrowed complete canonical six-component payload.
     * @param[out] out Linear XYZ metres/second then angular XYZ radians/second;
     * unchanged on false, with supplied floating-point bits retained on success.
     * @return True for exact structural framing.
     * @see roswasmcpp::Codec<roswasmcpp::msg::Twist>
     */
    inline bool decode_twist(std::span<unsigned char const> value, std::array<double, 6>& out)
    {
        reader in{value};
        std::array<double, 6> next{};
        for(auto& field: next)
        {
            if(!in.real(field))
            {
                return false;
            }
        }
        if(!in.done())
        {
            return false;
        }
        out = next;
        return true;
    }

    /** @brief Complete owning canonical Image metadata and pixel storage.
     * @details Retains sequence even for ROS2's sequence-free native Header. No
     * pixel format, clock normalization or host frame/encoding admission is inferred.
     * @see roswasmcpp::Codec<roswasmcpp::msg::Image>
     */
    struct image
    {
        /** @brief Canonical unsigned Header sequence, initially zero.
         * @details Native backend projection is separate from stored wire bits.
         * @see image::seconds
         */
        std::uint32_t sequence{};
        /** @brief Timestamp seconds in the selected source clock domain.
         * @details Native timestamp range/normalization remains host admission.
         * @see image::nanoseconds
         */
        std::uint32_t seconds{};
        /** @brief Timestamp fractional nanoseconds, initially zero.
         * @details Supply normalized ROS time; structural packing preserves bits.
         * @see image::seconds
         */
        std::uint32_t nanoseconds{};
        /** @brief Image row count in pixels.
         * @details Caller supplies dimensions consistent with encoding/stride/data.
         * @see image::width
         */
        std::uint32_t height{};
        /** @brief Image column count in pixels.
         * @details Pixel width is independent of row stride in bytes.
         * @see image::step
         */
        std::uint32_t width{};
        /** @brief Complete row stride in bytes, including padding.
         * @details Structural conversion never repacks pixel rows.
         * @see image::data
         */
        std::uint32_t step{};
        /** @brief Owning coordinate-frame name.
         * @details Exact String bytes are preserved without local frame permission.
         * @see image::encoding
         */
        std::string frame_id;
        /** @brief Owning native pixel encoding name.
         * @details Neither encoder nor decoder guesses or converts this format.
         * @see image::data
         */
        std::string encoding;
        /** @brief Whether pixel scalar bytes use big-endian order.
         * @details Independent of canonical framing's little-endian metadata.
         * @see image::encoding
         */
        bool bigendian{};
        /** @brief Complete owning pixel/row-padding bytes.
         * @details Host quota and encoding/stride semantics govern actual admission.
         * @see image::step
         */
        bytes data;
    };

    /** @brief Pack complete Image fields; native stride/encoding/timestamp admission remains a host check.
     * @details Preserves all metadata and pixel bytes. Checks String/blob lengths
     * against uint32 but applies no extra UTF-8, image-model or host-total quota rule.
     * @param[in] value Complete owning Image read only for this call.
     * @return Complete owning encoding, or empty on uint32 length failure.
     * @see decode(std::span<unsigned char const>, image&)
     */
    inline bytes encode(image const& value)
    {
        bytes out;
        append_u32(out, value.sequence);
        append_u32(out, value.seconds);
        append_u32(out, value.nanoseconds);
        if(!append_string(out, value.frame_id))
        {
            return {};
        }
        append_u32(out, value.height);
        append_u32(out, value.width);
        if(!append_string(out, value.encoding))
        {
            return {};
        }
        out.push_back(static_cast<unsigned char>(value.bigendian));
        append_u32(out, value.step);
        if(value.data.size() > std::numeric_limits<std::uint32_t>::max())
        {
            return {};
        }
        append_u32(out, static_cast<std::uint32_t>(value.data.size()));
        out.insert(out.end(), value.data.begin(), value.data.end());
        return out;
    }

    /** @brief Decode the complete image wire transactionally, rejecting truncation/trailing bytes.
     * @details Requires exact field framing and a 0/1 endian byte. Copies both
     * Strings and all pixel bytes without adding native metadata/UTF-8 admission.
     * @param[in] value Borrowed complete canonical Image payload.
     * @param[out] out Owning complete destination, unchanged on false.
     * @return True for exact structural framing and a valid Boolean flag.
     * @see image
     */
    inline bool decode(std::span<unsigned char const> value, image& out)
    {
        reader in{value};
        image next;
        std::uint64_t boolean{};
        if(!in.u32(next.sequence) || !in.u32(next.seconds) || !in.u32(next.nanoseconds) || !in.text(next.frame_id) || !in.u32(next.height) ||
           !in.u32(next.width) || !in.text(next.encoding) || !in.integer(boolean, 1) || boolean > 1 || !in.u32(next.step) || !in.blob(next.data) || !in.done())
        {
            return false;
        }
        next.bigendian = boolean != 0;
        out = std::move(next);
        return true;
    }

    /** @brief Complete owning timestamped parent-to-child transform.
     * @details Translation uses metres and orientation XYZW order. Structural
     * helpers preserve bits; the typed Codec adds finite checks and host policy
     * separately admits frames, physical bounds and quaternion norm.
     * @see roswasmcpp::Codec<roswasmcpp::msg::Transform>
     */
    struct transform
    {
        /** @brief Canonical unsigned Header sequence, initially zero.
         * @details Stored independently of native backend Header projection.
         * @see transform::seconds
         */
        std::uint32_t sequence{};
        /** @brief Timestamp seconds in the selected transform clock domain.
         * @details Structural conversion performs no clock query or normalization.
         * @see transform::nanoseconds
         */
        std::uint32_t seconds{};
        /** @brief Fractional timestamp in nanoseconds.
         * @details Callers supply normalized time for their host/backend contract.
         * @see transform::seconds
         */
        std::uint32_t nanoseconds{};
        /** @brief Owning parent frame name.
         * @details Exact allowed frame pair is fixed by host alias policy.
         * @see transform::child_frame
         */
        std::string parent_frame;
        /** @brief Owning child frame name.
         * @details Creating the name does not mutate or query a frame graph.
         * @see transform::parent_frame
         */
        std::string child_frame;
        /** @brief XYZ translation in metres, initially zero.
         * @details Typed conversion checks finite values without applying physical limits.
         * @see transform::quaternion
         */
        std::array<double, 3> translation{};
        /** @brief XYZW quaternion, initially (0,0,0,1).
         * @details No normalization is performed by local structural helpers.
         * @see transform::translation
         */
        std::array<double, 4> quaternion{
            {0, 0, 0, 1}
        };
    };

    /** @brief Pack complete TransformStamped fields; low-level packing does not enforce finite/frame/bound rules.
     * @details Preserves complete time/frame Strings and all seven double bit
     * patterns, including nonfinite values. Frame lengths must fit uint32.
     * @param[in] value Complete owning transform read only for this call.
     * @return Owning structural bytes, or empty on String length failure.
     * @see roswasmcpp::Codec<roswasmcpp::msg::Transform>
     */
    inline bytes encode(transform const& value)
    {
        bytes out;
        append_u32(out, value.sequence);
        append_u32(out, value.seconds);
        append_u32(out, value.nanoseconds);
        if(!append_string(out, value.parent_frame) || !append_string(out, value.child_frame))
        {
            return {};
        }
        for(auto field: value.translation)
        {
            append_u64(out, std::bit_cast<std::uint64_t>(field));
        }
        for(auto field: value.quaternion)
        {
            append_u64(out, std::bit_cast<std::uint64_t>(field));
        }
        return out;
    }

    /** @brief Decode the complete transform wire transactionally, rejecting truncation/trailing bytes.
     * @details Copies both frame Strings and seven double bit patterns without
     * finite-number, normalization or host frame-admission checks.
     * @param[in] value Borrowed complete canonical transform payload.
     * @param[out] out Owning destination, unchanged on false.
     * @return True for exact structural framing.
     * @see roswasmcpp::Codec<roswasmcpp::msg::Transform>
     */
    inline bool decode(std::span<unsigned char const> value, transform& out)
    {
        reader in{value};
        transform next;
        if(!in.u32(next.sequence) || !in.u32(next.seconds) || !in.u32(next.nanoseconds) || !in.text(next.parent_frame) || !in.text(next.child_frame))
        {
            return false;
        }
        for(auto& field: next.translation)
        {
            if(!in.real(field))
            {
                return false;
            }
        }
        for(auto& field: next.quaternion)
        {
            if(!in.real(field))
            {
                return false;
            }
        }
        if(!in.done())
        {
            return false;
        }
        out = std::move(next);
        return true;
    }

    /** @brief Encode u64 nanoseconds for TF lookup; zero selects latest under a separately granted alias.
     * @details Performs no clock query, epoch conversion, lookup or permission check.
     * @param[in] nanoseconds Lookup-domain timestamp, default zero for latest.
     * @return Exactly eight owning little-endian bytes.
     * @see roswasmcpp::TF::lookup
     */
    inline bytes lookup_time(std::uint64_t nanoseconds = 0)
    {
        bytes out;
        append_u64(out, nanoseconds);
        return out;
    }

    /** @brief Pack signed i32 order bits; allowed order/quota remains a host-policy check.
     * @details Local packing accepts the full int32 domain without algorithm limits.
     * @param[in] order Signed requested Fibonacci order.
     * @return Exactly four owning little-endian bytes.
     * @see roswasmcpp::ActionClient::send_goal
     */
    inline bytes fibonacci_goal(std::int32_t order)
    {
        bytes out;
        append_u32(out, std::bit_cast<std::uint32_t>(order));
        return out;
    }

    /** @brief Pack a u64 goal ID; nonzero/ownership rules depend on the operation.
     * @details Zero is preserved here; only the explicit cancel-any all-goals
     * operation assigns it that special protocol meaning.
     * @param[in] goal Full identifier bit domain, not a capability or pointer.
     * @return Exactly eight owning little-endian bytes.
     * @see roswasmcpp::ActionClient::cancel_all
     */
    inline bytes goal_id(std::uint64_t goal)
    {
        bytes out;
        append_u64(out, goal);
        return out;
    }

    /** @brief Complete owning correlated Fibonacci feedback/result sequence.
     * @details Canonical messages require a nonzero goal and at most 48 elements.
     * Marker framing differs between server responses and feedback receives;
     * callers select the codec's framing argument explicitly.
     * @see roswasmcpp::ActionServer::respond
     */
    struct action_sequence
    {
        /** @brief Host-correlated goal identifier, initially invalid zero.
         * @details An ID value does not establish host goal ownership/response rights.
         * @see action_sequence::kind
         */
        std::uint64_t goal{};
        /** @brief Marker 1 feedback or terminal outcome 2..4 when present.
         * @details Unmarked feedback decoding assigns zero; structural encode does
         * not validate this byte by itself.
         * @see action_sequence::goal
         */
        unsigned char kind{};
        /** @brief Complete owning signed 32-bit sequence elements.
         * @details Encoding/decoding bounds the count to 0..48.
         * @see action_sequence::kind
         */
        std::vector<std::int32_t> values;
    };

    /** @brief Pack an ID/count/i32 sequence with at most48 elements and optional kind byte.
     * @details Only the count is validated here; zero goal or arbitrary kind bits
     * are preserved. Typed action owners check those fields before import. Server
     * responses always include kind; unmarked framing is for feedback reception.
     * @param[in] value Complete owning sequence read only for this call.
     * @param[in] include_kind Whether to encode the marker byte, default true.
     * @return Complete owning bytes, or empty for more than 48 elements.
     * @see roswasmcpp::ActionServer::respond
     */
    inline bytes encode(action_sequence const& value, bool include_kind = true)
    {
        if(value.values.size() > 48)
        {
            return {};
        }
        auto out = goal_id(value.goal);
        if(include_kind)
        {
            out.push_back(value.kind);
        }
        append_u32(out, static_cast<std::uint32_t>(value.values.size()));
        for(auto number: value.values)
        {
            append_u32(out, std::bit_cast<std::uint32_t>(number));
        }
        return out;
    }

    /** @brief Decode the complete action sequence wire transactionally, rejecting truncation/trailing bytes.
     * @details Requires nonzero goal, count 0..48 and exact field extent. Marked
     * payloads admit kind 1..4; typed result receivers further require 2..4. Unmarked
     * feedback assigns kind zero and copies all signed element bits.
     * @param[in] value Borrowed complete canonical sequence payload.
     * @param[out] out Owning destination, unchanged on false.
     * @param[in] has_kind Whether the input carries a marker byte, default true.
     * @return True for complete framing and selected marker/ID/count checks.
     * @see roswasmcpp::ActionClient::receive
     */
    inline bool decode(std::span<unsigned char const> value, action_sequence& out, bool has_kind = true)
    {
        reader in{value};
        action_sequence next;
        std::uint64_t kind{};
        std::uint32_t count{};
        if(!in.integer(next.goal, 8) || !next.goal || (has_kind && (!in.integer(kind, 1) || kind < 1 || kind > 4)) || !in.u32(count) || count > 48)
        {
            return false;
        }
        next.kind = static_cast<unsigned char>(kind);
        for(std::uint32_t i = 0; i != count; ++i)
        {
            std::uint32_t bits{};
            if(!in.u32(bits))
            {
                return false;
            }
            next.values.push_back(std::bit_cast<std::int32_t>(bits));
        }
        if(!in.done())
        {
            return false;
        }
        out = std::move(next);
        return true;
    }

    /** @brief Complete owning legacy String-valued parameter event.
     * @details Preserves timestamp, kind, node/name and String value. Structural
     * decoding does not apply typed-event name/time rules or UTF-8 admission.
     * @see roswasmcpp::msg::ParameterEvent
     */
    struct parameter_event
    {
        /** @brief Event timestamp seconds in the selected source clock domain.
         * @details Legacy structural conversion preserves the full uint32 field.
         * @see parameter_event::nanoseconds
         */
        std::uint32_t seconds{};
        /** @brief Event timestamp fractional nanoseconds.
         * @details Supply normalized ROS time; structural conversion does not normalize.
         * @see parameter_event::seconds
         */
        std::uint32_t nanoseconds{};
        /** @brief Event kind 1 added, 2 changed or 3 deleted.
         * @details Initial zero is invalid for a complete encoded event.
         * @see parameter_event::value
         */
        unsigned char kind{};
        /** @brief Owning source node name.
         * @details Visibility and expected name grammar come from the host event source.
         * @see parameter_event::name
         */
        std::string node;
        /** @brief Owning parameter name fixed by the granted event source.
         * @details Possessing metadata does not authorize parameter mutation.
         * @see parameter_event::node
         */
        std::string name;
        /** @brief Owning legacy String parameter value.
         * @details Encoder requires an empty String for deletion kind3.
         * @see typed_parameter_event
         */
        std::string value;
    };

    /** @brief Decode the complete parameter event wire transactionally, rejecting truncation/trailing bytes.
     * @details Checks kind1..3 and all field lengths/extents, then owns String
     * bytes. Does not add UTF-8, normalized time, deletion-value or typed-name checks.
     * @param[in] value Borrowed complete legacy event encoding.
     * @param[out] out Complete owning destination, unchanged on false.
     * @return True for exact supported structural framing.
     * @see roswasmcpp::Codec<roswasmcpp::msg::ParameterEvent>
     */
    inline bool decode(std::span<unsigned char const> value, parameter_event& out)
    {
        reader in{value};
        parameter_event next;
        std::uint64_t kind{};
        if(!in.u32(next.seconds) || !in.u32(next.nanoseconds) || !in.integer(kind, 1) || kind < 1 || kind > 3 || !in.text(next.node) || !in.text(next.name) ||
           !in.text(next.value) || !in.done())
        {
            return false;
        }
        next.kind = static_cast<unsigned char>(kind);
        out = std::move(next);
        return true;
    }
    /** @brief Exact one-byte typed parameter-event discriminants 0..9.
     * @details Tags select one payload for event kinds1/2. Kind3 deletion carries
     * no payload; tag0 is permitted only with that kind. Numeric values are stable.
     * @see typed_parameter_event::tag
     */
    enum class parameter_event_value_tag : unsigned char
    {
        /** @brief Tag0 indicating deletion-only metadata.
         * @details Admitted only for kind3 and carries no value payload.
         * @see typed_parameter_event::kind
         */
        deletion = 0,
        /** @brief Tag1 selecting one canonical Boolean.
         * @details Payload is one byte equal to 0 or 1 for nondeletions.
         * @see typed_parameter_event::bool_value
         */
        boolean = 1,
        /** @brief Tag2 selecting signed 64-bit integer bits.
         * @details Payload is eight little-endian bytes for nondeletions.
         * @see typed_parameter_event::integer_value
         */
        integer = 2,
        /** @brief Tag3 selecting one finite binary64 scalar.
         * @details Nonfinite values are invalid when the payload is present.
         * @see typed_parameter_event::double_value
         */
        float64 = 3,
        /** @brief Tag4 selecting a scalar UTF-8 String.
         * @details Scalar text permits embedded U+0000.
         * @see typed_parameter_event::string_value
         */
        string = 4,
        /** @brief Tag5 selecting unrestricted unsigned-byte array elements.
         * @details Every element value 0..255 is valid within array bounds.
         * @see typed_parameter_event::byte_array_value
         */
        byte_array = 5,
        /** @brief Tag6 selecting Boolean-array bytes.
         * @details Each payload byte element must be at most1.
         * @see typed_parameter_event::bool_array_value
         */
        boolean_array = 6,
        /** @brief Tag7 selecting signed 64-bit array elements.
         * @details Uses complete canonical count-prefixed array framing.
         * @see typed_parameter_event::integer_array_value
         */
        integer_array = 7,
        /** @brief Tag8 selecting finite binary64 array elements.
         * @details Every selected element must be finite.
         * @see typed_parameter_event::double_array_value
         */
        float64_array = 8,
        /** @brief Tag9 selecting UTF-8 String-array elements.
         * @details Array text rejects embedded NULs and obeys aggregate byte bounds.
         * @see typed_parameter_event::string_array_value
         */
        string_array = 9
    };

    /** @brief Complete owning typed/deletion-only parameter event.
     * @details Kind1 adds and kind2 changes the selected tag's complete value.
     * Kind3 carries no payload while retaining a valid tag as metadata. Unselected
     * fields are ignored by encode and defaulted by decode. Defaults alone are not
     * a valid event because kind and source names still require initialization.
     * @see encode_typed_parameter_event
     */
    struct typed_parameter_event
    {
        /** @brief Event seconds, bounded to 0..2147483647.
         * @details Typed framing uses the canonical nonnegative signed-time range.
         * @see typed_parameter_event::nanoseconds
         */
        std::uint32_t seconds{};
        /** @brief Fractional event time in 0..999999999 nanoseconds.
         * @details No implicit timestamp normalization is performed.
         * @see typed_parameter_event::seconds
         */
        std::uint32_t nanoseconds{};
        /** @brief Event kind1 added,2 changed or3 deleted.
         * @details Initial zero is invalid; deletion suppresses all value payloads.
         * @see typed_parameter_event::tag
         */
        unsigned char kind{};
        /** @brief Owning absolute slash-separated node name.
         * @details Canonical grammar admits 2..1024 ASCII identifier bytes.
         * @see valid_parameter_event_name
         */
        std::string node;
        /** @brief Owning dot-separated parameter name.
         * @details Canonical grammar admits 1..255 ASCII identifier bytes.
         * @see valid_parameter_event_name
         */
        std::string name;
        /** @brief Exact value discriminant, initially Boolean tag1.
         * @details Selects payload only for nondeletions; tag0 is valid only for kind3.
         * @see parameter_event_value_tag
         */
        parameter_event_value_tag tag{parameter_event_value_tag::boolean};
        /** @brief Boolean scalar selected by tag1, initially false.
         * @details Ignored for other selected tags or deletion kind3.
         * @see parameter_event_value_tag::boolean
         */
        bool bool_value{};
        /** @brief Signed 64-bit scalar selected by tag2.
         * @details Full signed bit domain is preserved in application-defined units.
         * @see parameter_event_value_tag::integer
         */
        std::int64_t integer_value{};
        /** @brief Finite binary64 scalar selected by tag3.
         * @details Initial zero is finite; selected NaN/infinity is rejected.
         * @see parameter_event_value_tag::float64
         */
        double double_value{};
        /** @brief Owning scalar UTF-8 text selected by tag4.
         * @details Embedded U+0000 follows the scalar-String contract.
         * @see parameter_event_value_tag::string
         */
        std::string string_value;
        /** @brief Owning unsigned-byte elements selected by tag5.
         * @details All values 0..255 are valid within canonical array bounds.
         * @see parameter_event_value_tag::byte_array
         */
        std::vector<std::uint8_t> byte_array_value;
        /** @brief Owning 0/1 byte elements selected by tag6.
         * @details Explicit byte representation avoids vector<bool> proxies.
         * @see parameter_event_value_tag::boolean_array
         */
        std::vector<std::uint8_t> bool_array_value;
        /** @brief Owning signed 64-bit elements selected by tag7.
         * @details Exact signed bits and array count/aggregate bounds are preserved.
         * @see parameter_event_value_tag::integer_array
         */
        std::vector<std::int64_t> integer_array_value;
        /** @brief Owning finite binary64 elements selected by tag8.
         * @details Each selected element must be finite; no unit conversion occurs.
         * @see parameter_event_value_tag::float64_array
         */
        std::vector<double> double_array_value;
        /** @brief Owning UTF-8 String elements selected by tag9.
         * @details No element may contain NUL; all prefixes count against byte bounds.
         * @see parameter_event_value_tag::string_array
         */
        std::vector<std::string> string_array_value;
    };

    /** @brief Validate supported ROS2 exact node/parameter name syntax.
     * @details Segments begin with ASCII letter/underscore, followed by those or
     * digits. Node names are absolute slash-separated identifiers in 2..1024 bytes;
     * parameter names are dot-separated identifiers in 1..255 bytes. Empty segments
     * and trailing separators are rejected; no host registry or permission is queried.
     * @param[in] name Borrowed exact name bytes for this call.
     * @param[in] node True selects node grammar, false selects parameter grammar.
     * @return Whether the complete name satisfies the selected canonical grammar.
     * @see typed_parameter_event
     */
    inline bool valid_parameter_event_name(std::string_view name, bool node)
    {
        if(name.empty() || name.size() > (node ? 1024u : 255u) || (node && (name.size() < 2 || name.front() != '/')))
        {
            return false;
        }
        bool first = true;
        for(std::size_t i = node ? 1u : 0u; i < name.size(); ++i)
        {
            char c = name[i];
            if(c == (node ? '/' : '.'))
            {
                if(first)
                {
                    return false;
                }
                first = true;
                continue;
            }
            bool alpha = (c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z') || c == '_';
            if(!alpha && !(c >= '0' && c <= '9' && !first))
            {
                return false;
            }
            first = false;
        }
        return !first;
    }

    /** @brief Validate and transactionally encode the complete event-v2 envelope and selected value.
     * @details Validates timestamp, names, kind/tag and the selected complete scalar/
     * array payload, with at most4193786 total bytes. Deletion kind3 retains tag
     * metadata but carries no value payload. Unselected fields are ignored and no
     * host parameter mutation/visibility grant is created by local encoding.
     * @param[in] value Complete owning event with its selected value initialized.
     * @param[out] out Owning encoding, unchanged on false.
     * @return True after complete canonical validation and encoding.
     * @see decode_typed_parameter_event
     */
    inline bool encode_typed_parameter_event(typed_parameter_event const& value, bytes& out)
    {
        auto tag = static_cast<unsigned char>(value.tag);
        if(value.seconds > 2147483647u || value.nanoseconds >= 1000000000u || value.kind < 1 || value.kind > 3 || tag > 9 || (tag == 0 && value.kind != 3) ||
           !valid_parameter_event_name(value.node, true) || !valid_parameter_event_name(value.name, false))
        {
            return false;
        }
        // Account for the complete envelope before allocating the final wire.
        auto available = parameter_array_detail::maximum_bytes - 23 - value.node.size() - value.name.size();
        std::size_t payload_size{};
        if(value.kind != 3)
        {
            switch(value.tag)
            {
                case parameter_event_value_tag::boolean: payload_size = 1; break;
                case parameter_event_value_tag::integer: payload_size = 8; break;
                case parameter_event_value_tag::float64:
                    payload_size = 8;
                    if(!std::isfinite(value.double_value))
                    {
                        return false;
                    }
                    break;
                case parameter_event_value_tag::string:
                    if(available < 4 || value.string_value.size() > available - 4 || !parameter_array_detail::text_valid(value.string_value, true))
                    {
                        return false;
                    }
                    payload_size = 4 + value.string_value.size();
                    break;
                case parameter_event_value_tag::string_array:
                    if(value.string_array_value.size() > parameter_array_detail::maximum_elements || available < 4)
                    {
                        return false;
                    }
                    payload_size = 4;
                    for(auto const& text: value.string_array_value)
                    {
                        if(available - payload_size < 4 || text.size() > available - payload_size - 4 || !parameter_array_detail::text_valid(text))
                        {
                            return false;
                        }
                        payload_size += 4 + text.size();
                    }
                    break;
                default:
                {
                    auto count = tag == 5   ? value.byte_array_value.size()
                                 : tag == 6 ? value.bool_array_value.size()
                                 : tag == 7 ? value.integer_array_value.size()
                                            : value.double_array_value.size();
                    auto width = tag <= 6 ? 1u : 8u;
                    if(available < 4 || count > parameter_array_detail::maximum_elements || count > (available - 4) / width)
                    {
                        return false;
                    }
                    payload_size = 4 + count * width;
                    if(tag == 6)
                    {
                        for(auto item: value.bool_array_value)
                        {
                            if(item > 1)
                            {
                                return false;
                            }
                        }
                    }
                    if(tag == 8)
                    {
                        for(auto item: value.double_array_value)
                        {
                            if(!std::isfinite(item))
                            {
                                return false;
                            }
                        }
                    }
                    break;
                }
            }
            if(payload_size > available)
            {
                return false;
            }
        }
        bytes next;
        next.reserve(23 + value.node.size() + value.name.size() + payload_size);
        append_u32(next, value.seconds);
        append_u32(next, value.nanoseconds);
        next.push_back(value.kind);
        next.push_back(2);
        next.push_back(tag);
        if(!append_string(next, value.node) || !append_string(next, value.name))
        {
            return false;
        }
        append_u32(next, static_cast<std::uint32_t>(payload_size));
        if(value.kind != 3)
        {
            // Preflight above fixes the exact size and validates every value. Append
            // directly to the final wire without an owning intermediate payload.
            switch(value.tag)
            {
                case parameter_event_value_tag::boolean: next.push_back(static_cast<unsigned char>(value.bool_value)); break;
                case parameter_event_value_tag::integer: append_u64(next, std::bit_cast<std::uint64_t>(value.integer_value)); break;
                case parameter_event_value_tag::float64: append_u64(next, std::bit_cast<std::uint64_t>(value.double_value)); break;
                case parameter_event_value_tag::string: append_string(next, value.string_value); break;
                case parameter_event_value_tag::byte_array:
                    append_u32(next, static_cast<std::uint32_t>(value.byte_array_value.size()));
                    next.insert(next.end(), value.byte_array_value.begin(), value.byte_array_value.end());
                    break;
                case parameter_event_value_tag::boolean_array:
                    append_u32(next, static_cast<std::uint32_t>(value.bool_array_value.size()));
                    next.insert(next.end(), value.bool_array_value.begin(), value.bool_array_value.end());
                    break;
                case parameter_event_value_tag::integer_array:
                    append_u32(next, static_cast<std::uint32_t>(value.integer_array_value.size()));
                    for(auto item: value.integer_array_value)
                    {
                        append_u64(next, std::bit_cast<std::uint64_t>(item));
                    }
                    break;
                case parameter_event_value_tag::float64_array:
                    append_u32(next, static_cast<std::uint32_t>(value.double_array_value.size()));
                    for(auto item: value.double_array_value)
                    {
                        append_u64(next, std::bit_cast<std::uint64_t>(item));
                    }
                    break;
                case parameter_event_value_tag::string_array:
                    append_u32(next, static_cast<std::uint32_t>(value.string_array_value.size()));
                    for(auto const& text: value.string_array_value)
                    {
                        append_string(next, text);
                    }
                    break;
                case parameter_event_value_tag::deletion: return false;
            }
        }
        out = std::move(next);
        return true;
    }

    /** @brief Encode a validated complete event-v2 value; refusal returns an empty buffer.
     * @details Applies the same time/name/kind/tag/selected-payload checks and
     * complete 4193786-byte bound as the Boolean-result encoder.
     * @param[in] value Complete owning event read only for this call.
     * @return Complete owning bytes, or empty on validation/size failure.
     * @see encode_typed_parameter_event
     */
    inline bytes encode(typed_parameter_event const& value)
    {
        bytes out;
        if(!encode_typed_parameter_event(value, out))
        {
            return {};
        }
        return out;
    }

    /** @brief Validate and transactionally decode event-v2 timestamps, exact names, tags and selected payload.
     * @details Requires version2, normalized nonnegative time, canonical name
     * grammar, kind/tag rules, exact extent and complete selected scalar/array
     * validation within 4193786 bytes. Deletions require an empty payload. Every
     * exposed field owns its storage and unselected values keep defaults.
     * @param[in] value Borrowed complete typed/deletion event encoding.
     * @param[out] out Complete owning destination, unchanged on false.
     * @return True after full canonical validation and copying.
     * @see encode_typed_parameter_event
     */
    inline bool decode_typed_parameter_event(std::span<unsigned char const> value, typed_parameter_event& out)
    {
        if(value.size() < 23 || value.size() > 4193786u)
        {
            return false;
        }
        reader in{value};
        typed_parameter_event next;
        std::uint64_t kind{}, version{}, tag{};
        std::span<unsigned char const> payload;
        if(!in.u32(next.seconds) || next.seconds > 2147483647u || !in.u32(next.nanoseconds) || next.nanoseconds >= 1000000000u || !in.integer(kind, 1) ||
           kind < 1 || kind > 3 || !in.integer(version, 1) || version != 2 || !in.integer(tag, 1) || tag > 9 || (tag == 0 && kind != 3) ||
           !in.text(next.node, 1024) || !in.text(next.name, 255) || !in.blob_view(payload, parameter_array_detail::maximum_bytes) || !in.done() ||
           !valid_parameter_event_name(next.node, true) || !valid_parameter_event_name(next.name, false))
        {
            return false;
        }
        next.kind = static_cast<unsigned char>(kind);
        next.tag = static_cast<parameter_event_value_tag>(tag);
        if(kind == 3)
        {
            if(!payload.empty())
            {
                return false;
            }
        }
        else
        {
            switch(next.tag)
            {
                case parameter_event_value_tag::boolean:
                    if(!decode_parameter_bool(payload, next.bool_value))
                    {
                        return false;
                    }
                    break;
                case parameter_event_value_tag::integer:
                    if(!decode_parameter_int64(payload, next.integer_value))
                    {
                        return false;
                    }
                    break;
                case parameter_event_value_tag::float64:
                    if(!decode_parameter_float64(payload, next.double_value))
                    {
                        return false;
                    }
                    break;
                case parameter_event_value_tag::string:
                    if(!decode_string(payload, next.string_value) || !parameter_array_detail::text_valid(next.string_value, true))
                    {
                        return false;
                    }
                    break;
                case parameter_event_value_tag::byte_array:
                    if(!decode_parameter_byte_array(payload, next.byte_array_value))
                    {
                        return false;
                    }
                    break;
                case parameter_event_value_tag::boolean_array:
                    if(!decode_parameter_bool_array(payload, next.bool_array_value))
                    {
                        return false;
                    }
                    break;
                case parameter_event_value_tag::integer_array:
                    if(!decode_parameter_int64_array(payload, next.integer_array_value))
                    {
                        return false;
                    }
                    break;
                case parameter_event_value_tag::float64_array:
                    if(!decode_parameter_float64_array(payload, next.double_array_value))
                    {
                        return false;
                    }
                    break;
                case parameter_event_value_tag::string_array:
                    if(!decode_parameter_string_array(payload, next.string_array_value))
                    {
                        return false;
                    }
                    break;
                case parameter_event_value_tag::deletion: return false;
            }
        }
        out = std::move(next);
        return true;
    }

    /** @brief Decode the complete typed parameter event wire transactionally, rejecting truncation/trailing bytes.
     * @details Forwards the full checked event-v2 decoder with identical owning
     * output and destination-preservation semantics.
     * @param[in] value Borrowed complete event payload.
     * @param[out] out Owning destination, unchanged on false.
     * @return True for a complete canonical typed/deletion event.
     * @see decode_typed_parameter_event
     */
    inline bool decode(std::span<unsigned char const> value, typed_parameter_event& out)
    {
        return decode_typed_parameter_event(value, out);
    }

    /** @brief Complete owning Trigger/SetBool response body without correlation ID.
     * @details Contains a Boolean and String. Structural helpers preserve arbitrary
     * String bytes; typed service code/host policy separately validates text/quotas.
     * @see roswasmcpp::ServiceClient
     */
    struct service_response
    {
        /** @brief Application success Boolean, initially false.
         * @details Distinct from an SDK/transport error code.
         * @see service_response::message
         */
        bool success{};
        /** @brief Complete owning response explanation String.
         * @details Expected UTF-8 under typed/host admission, with scalar NUL policy;
         * raw structural conversion itself performs no UTF-8 check.
         * @see service_response::success
         */
        std::string message;
    };

    /** @brief Pack Bool plus response String; host independently validates text and quotas.
     * @details Writes one success byte and a uint32 String byte count/content.
     * No request ID, UTF-8 validation or total host-quota check is added here.
     * @param[in] value Complete owning body read only during this call.
     * @return Complete owning bytes, or empty on uint32 String length failure.
     * @see service_reply
     */
    inline bytes encode(service_response const& value)
    {
        auto out = boolean(value.success);
        if(!append_string(out, value.message))
        {
            return {};
        }
        return out;
    }

    /** @brief Decode the complete service response wire transactionally, rejecting truncation/trailing bytes.
     * @details Requires one 0/1 success byte and exact counted String framing.
     * Does not add UTF-8 admission or consume a host service request/ticket.
     * @param[in] value Borrowed complete response body, without an ID prefix.
     * @param[out] out Owning destination, unchanged on false.
     * @return True for exact supported structural framing.
     * @see roswasmcpp::ServiceClient::call
     */
    inline bool decode(std::span<unsigned char const> value, service_response& out)
    {
        reader in{value};
        service_response next;
        std::uint64_t success{};
        if(!in.integer(success, 1) || success > 1 || !in.text(next.message) || !in.done())
        {
            return false;
        }
        next.success = success != 0;
        out = std::move(next);
        return true;
    }

    /** @brief Prefix the gateway-owned request ID to the canonical Trigger/SetBool response.
     * @details Structural helper preserves supplied ID bits without nonzero/host
     * correlation admission. Caller must supply a response with representable
     * String length: this helper appends encode(response)'s bytes without exposing
     * its failure separately, so an unrepresentable body would leave only the ID.
     * Typed servers validate their body and host response grant independently.
     * @param[in] request_id Matching nonzero gateway request ID for a valid reply.
     * @param[in] response Complete owning success/message body for this call.
     * @return Owning ID prefix plus the structural body bytes; no response is sent.
     * @see roswasmcpp::ServiceServer::poll_once
     */
    inline bytes service_reply(std::uint64_t request_id, service_response const& response)
    {
        bytes out;
        append_u64(out, request_id);
        auto payload = encode(response);
        out.insert(out.end(), payload.begin(), payload.end());
        return out;
    }
}  // namespace uwvm_ros
#endif  // selected portable/modern canonical wire implementation
