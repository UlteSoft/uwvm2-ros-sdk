/**
 * @file bounded_records.h
 * @brief Bounded canonical C values and codecs for the complete original Array dependency graph.
 * @details The operator supplies matching native products and explicit per-module deployment authority. Source
 * metadata alone does not qualify execution, GPU access or NITROS.
 */
#ifndef UWVM_ROS_BOUNDED_RECORDS_DFB4EC0F1DC498D2A40658BEA4D143D897D837A31BA9F13586E51F894219C731
#define UWVM_ROS_BOUNDED_RECORDS_DFB4EC0F1DC498D2A40658BEA4D143D897D837A31BA9F13586E51F894219C731
#include <stdint.h>
#include <stddef.h>
#include <float.h>
#include <limits.h>
#ifndef UWVM_ROS_BOUNDED_CODEC_HELPERS
#define UWVM_ROS_BOUNDED_CODEC_HELPERS
#define UWVM_BOUNDED_INVALID 22u
#define UWVM_BOUNDED_TOO_LARGE 90u
#if defined(__cplusplus) && __cplusplus >= 201103L
#define UWVM_BOUNDED_ASSERT(x) static_assert(x, "canonical representation required")
#elif defined(__cplusplus)
#define UWVM_BOUNDED_ASSERT(x) typedef char uwvm_bounded_representation_required[(x) ? 1 : -1]
#else
#define UWVM_BOUNDED_ASSERT(x) _Static_assert(x, "canonical representation required")
#endif
UWVM_BOUNDED_ASSERT(CHAR_BIT == 8 && sizeof(float) == 4 && sizeof(double) == 8 && FLT_RADIX == 2 &&
                    FLT_MANT_DIG == 24 && DBL_MANT_DIG == 53 && FLT_MAX_EXP == 128 && DBL_MAX_EXP == 1024);

/**
 * @brief Copy an already checked primitive or string byte extent.
 * @details The source and destination cover n valid nonoverlapping bytes. This internal helper performs no
 * capacity or pointer validation.
 * @param out Caller-owned output storage, disjoint from the borrowed input.
 * @param in Borrowed source covering the requested readable byte extent.
 * @param n Exact checked extent or integer byte width for this helper.
 */
inline static void uwvm_bounded_copy(void* out, void const* in, size_t n)
{
#if defined(__GNUC__) || defined(__clang__)
    __builtin_memcpy(out, in, n);
#else
    size_t i;
    for (i = 0; i < n; ++i)
    {
        ((unsigned char*)out)[i] = ((unsigned char const*)in)[i];
    }
#endif
}

/**
 * @brief Read an unsigned little-endian integer without native alignment assumptions.
 * @details n is a byte width from zero through eight. The caller has already checked that p covers n readable
 * bytes; width zero returns zero.
 * @param p Borrowed canonical byte extent; the direction follows the read/write helper.
 * @param n Exact checked extent or integer byte width for this helper.
 */
inline static uint64_t uwvm_bounded_get(unsigned char const* p, unsigned n)
{
    uint64_t v = 0;
    unsigned i;
    for (i = 0; i < n; ++i)
    {
        v |= (uint64_t)p[i] << (8 * i);
    }
    return v;
}

/**
 * @brief Write the low n integer bytes in little-endian order.
 * @details n is from zero through eight and p covers n writable bytes. Capacity and overlap checks belong to the
 * enclosing encoder.
 * @param p Borrowed canonical byte extent; the direction follows the read/write helper.
 * @param v Unsigned source value; only the requested low bytes are written.
 * @param n Exact checked extent or integer byte width for this helper.
 */
inline static void uwvm_bounded_put(unsigned char* p, uint64_t v, unsigned n)
{
    unsigned i;
    for (i = 0; i < n; ++i)
    {
        p[i] = (unsigned char)(v >> (8 * i));
    }
}

/**
 * @brief Check a complete UTF-8 prefix without accepting embedded NUL.
 * @details Returns nonzero for valid scalar UTF-8, including an empty prefix; rejects truncation, overlong
 * forms, surrogates and values above U+10FFFF. No terminator is read and no allocation occurs.
 * @param p Borrowed canonical byte extent; the direction follows the read/write helper.
 * @param n Exact checked extent or integer byte width for this helper.
 */
inline static int uwvm_bounded_utf8(unsigned char const* p, size_t n)
{
    size_t i = 0;
    while (i < n)
    {
        unsigned b = p[i++], k, code, minimum;
        if (!b)
        {
            return 0;
        }
        if (b < 128)
        {
            continue;
        }
        if (b >= 194 && b <= 223)
        {
            k = 1;
            code = b & 31;
            minimum = 128;
        }
        else if (b >= 224 && b <= 239)
        {
            k = 2;
            code = b & 15;
            minimum = 2048;
        }
        else if (b >= 240 && b <= 244)
        {
            k = 3;
            code = b & 7;
            minimum = 65536;
        }
        else
        {
            return 0;
        }
        if (k > n - i)
        {
            return 0;
        }
        while (k--)
        {
            b = p[i++];
            if ((b & 192) != 128)
            {
                return 0;
            }
            code = (code << 6) | (b & 63);
        }
        if (code < minimum || code > 1114111 || (code >= 55296 && code <= 57343))
        {
            return 0;
        }
    }
    return 1;
}

/**
 * @brief Compare two caller-provided numeric address intervals.
 * @details Returns nonzero when two nonempty intervals overlap. An empty interval never overlaps. No address is
 * dereferenced and this predicate does not attest allocation validity.
 * @param a First interval start.
 * @param an First interval extent in bytes.
 * @param b Second interval start.
 * @param bn Second interval extent in bytes.
 */
inline static int uwvm_bounded_overlap(void const* a, size_t an, void const* b, size_t bn)
{
    uintptr_t x = (uintptr_t)a, y = (uintptr_t)b;
    if ((an && !a) || (bn && !b) || an > UINTPTR_MAX - x || bn > UINTPTR_MAX - y)
    {
        return 1;
    }
    return an && bn && x < y + bn && y < x + an;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_TIME)
#if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_TIME_0 != 0xffcb5c2fUL ||                        \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_TIME_1 != 0x16a0b462UL ||                        \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_TIME_2 != 0xe5ff7accUL ||                        \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_TIME_3 != 0x9e860f18UL ||                        \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_TIME_4 != 0xf49d572aUL ||                        \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_TIME_5 != 0x4b3f9a38UL ||                        \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_TIME_6 != 0x0d8a974dUL ||                        \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_TIME_7 != 0x4b7e70c9UL
#error "Conflicting same-name bounded record/interface ABI profiles"
#endif
#else
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_TIME 1
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_TIME_0 0xffcb5c2fUL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_TIME_1 0x16a0b462UL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_TIME_2 0xe5ff7accUL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_TIME_3 0x9e860f18UL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_TIME_4 0xf49d572aUL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_TIME_5 0x4b3f9a38UL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_TIME_6 0x0d8a974dUL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_TIME_7 0x4b7e70c9UL

/**
 * @brief Complete bounded canonical Time value.
 * @details Signed seconds plus nanoseconds in [0, 1000000000), preserving negative ROS time values. This inline
 * C value owns its active bytes; the canonical payload is little-endian field data, not CDR or a native struct
 * image.
 */
typedef struct roswasmc_bounded_2_builtin_interfaces_msg_Time
{
    /** @brief Signed seconds component in the original ROS time convention. */
    int32_t sec;
    /** @brief Nanoseconds added to sec; strictly less than 1000000000. */
    uint32_t nanosec;
} roswasmc_bounded_2_builtin_interfaces_msg_Time;

#define ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_TIME_MAX_WIRE_BYTES 8u
#define ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_TIME_MIN_WIRE_BYTES 8u
#define ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_TIME_CODEC_IDENTITY                                                  \
    "UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7"

/**
 * @brief Check all active fields of Time without allocation.
 * @details @return Nonzero only for a non-NULL value satisfying every nested scalar, UTF-8 and length
 * constraint. No output is modified and no ROS authority is acquired.
 * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
 */
inline static int
roswasmc_bounded_2_builtin_interfaces_msg_Time_valid(roswasmc_bounded_2_builtin_interfaces_msg_Time const* value)
{
    if (!value)
    {
        return 0;
    }
    if (value->nanosec >= 1000000000)
    {
        return 0;
    }
    return 1;
}

/**
 * @brief Measure the active Time canonical payload.
 * @details @pre value must already pass the matching valid function; this low-level routine performs no
 * validation. @return Exact active byte count without unused capacity, native padding or CDR framing.
 * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
 */
inline static size_t
roswasmc_bounded_2_builtin_interfaces_msg_Time_wire_size(roswasmc_bounded_2_builtin_interfaces_msg_Time const* value)
{
    size_t n = 0;
    n += 4;
    n += 4;
    return n;
}

/**
 * @brief Append every Time field in canonical order.
 * @details @pre The caller has validated value, measured sufficient remaining capacity and checked disjoint
 * storage. This internal composition helper performs no capacity checks and advances offset.
 * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
 * @param p Borrowed canonical byte extent; the direction follows the read/write helper.
 * @param offset Caller-owned current byte position; advanced as fields are consumed or written.
 */
inline static void roswasmc_bounded_2_builtin_interfaces_msg_Time_write_fields(
    roswasmc_bounded_2_builtin_interfaces_msg_Time const* value, unsigned char* p, size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->sec, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, (uint64_t)value->nanosec, 4);
    *offset += 4;
}

/**
 * @brief Parse all Time fields from a bounded canonical prefix.
 * @details @return Nonzero after all fields pass; zero on truncation or invalid data. This internal helper can
 * change offset and value on refusal; the public decode wrapper uses a private temporary and rejects trailing
 * bytes.
 * @param p Borrowed canonical byte extent; the direction follows the read/write helper.
 * @param n Exact checked extent or integer byte width for this helper.
 * @param offset Caller-owned current byte position; advanced as fields are consumed or written.
 * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
 */
inline static int roswasmc_bounded_2_builtin_interfaces_msg_Time_read_fields(
    unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_2_builtin_interfaces_msg_Time* value)
{
    if (*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->sec, &bits, 4);
    }
    *offset += 4;
    if (*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->nanosec, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_2_builtin_interfaces_msg_Time_valid(value);
}

/**
 * @brief Encode the complete active Time value transactionally.
 * @details @return Zero on success, UWVM_BOUNDED_INVALID for invalid values/pointers/overlap, or
 * UWVM_BOUNDED_TOO_LARGE for insufficient capacity. All checks precede writes; refusal preserves output and
 * length. capacity may exceed the active length. The payload is canonical little-endian field data, not CDR.
 * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
 * @param output Caller-owned writable byte destination, disjoint from value and length.
 * @param capacity Available destination extent in bytes.
 * @param length Exact input length, or caller-owned written extent on encode success.
 */
inline static uint32_t roswasmc_bounded_2_builtin_interfaces_msg_Time_encode(
    roswasmc_bounded_2_builtin_interfaces_msg_Time const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if (!length || !roswasmc_bounded_2_builtin_interfaces_msg_Time_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_builtin_interfaces_msg_Time_wire_size(value);
    if (capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if ((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) ||
        uwvm_bounded_overlap(length, sizeof *length, output, n) ||
        uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_builtin_interfaces_msg_Time_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/**
 * @brief Decode one exact complete Time payload into owned storage.
 * @details @return Zero on success; UWVM_BOUNDED_INVALID for malformed fields, missing storage, overlap or a
 * length mismatch. Refusal preserves value. All nested fields are retained without allocation or ROS access.
 * @param input Borrowed canonical payload bytes, disjoint from the output value.
 * @param length Exact input length, or caller-owned written extent on encode success.
 * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
 */
inline static uint32_t roswasmc_bounded_2_builtin_interfaces_msg_Time_decode(
    void const* input, size_t length, roswasmc_bounded_2_builtin_interfaces_msg_Time* value)
{
    roswasmc_bounded_2_builtin_interfaces_msg_Time next = {0};
    size_t offset = 0;
    if (!value || (length && !input) || length < 8u || length > 8u ||
        uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if (!roswasmc_bounded_2_builtin_interfaces_msg_Time_read_fields(
            (unsigned char const*)input, length, &offset, &next) ||
        offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER)
#if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_0 != 0x646c8e5fUL ||                                \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_1 != 0x7e9fca1eUL ||                                \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_2 != 0xcc4ebeadUL ||                                \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_3 != 0x341f6393UL ||                                \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_4 != 0xb867275bUL ||                                \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_5 != 0xe643e407UL ||                                \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_6 != 0xeb557c14UL ||                                \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_7 != 0xf32f584bUL
#error "Conflicting same-name bounded record/interface ABI profiles"
#endif
#else
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER 1
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_0 0x646c8e5fUL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_1 0x7e9fca1eUL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_2 0xcc4ebeadUL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_3 0x341f6393UL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_4 0xb867275bUL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_5 0xe643e407UL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_6 0xeb557c14UL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_7 0xf32f584bUL

/**
 * @brief Caller-owned UTF-8 active prefix with 64-byte inline capacity.
 * @details size excludes a terminator. Empty strings are valid; the codec rejects embedded NUL, overlong UTF-8,
 * surrogates and invalid Unicode scalars.
 */
typedef struct
{
    /** @brief Active UTF-8 byte count, at most 64; no terminator is counted. */
    uint32_t size;
    /** @brief Inline owned storage; only the first size entries are active. */
    unsigned char data[64];
} roswasmc_bounded_2_std_msgs_msg_Header_frame_id_text;

/**
 * @brief Complete bounded canonical Header value.
 * @details Original timestamp and up to 64 UTF-8 frame-id bytes. No timestamp freshness or frame lookup is
 * checked. This inline C value owns its active bytes; the canonical payload is little-endian field data, not CDR
 * or a native struct image.
 */
typedef struct roswasmc_bounded_2_std_msgs_msg_Header
{
    /** @brief Original timestamp value; inspecting it requests no host clock access. */
    roswasmc_bounded_2_builtin_interfaces_msg_Time stamp;
    /** @brief UTF-8 coordinate-frame identifier with a 64-byte active-prefix bound. */
    roswasmc_bounded_2_std_msgs_msg_Header_frame_id_text frame_id;
} roswasmc_bounded_2_std_msgs_msg_Header;

#define ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_MAX_WIRE_BYTES 76u
#define ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_MIN_WIRE_BYTES 12u
#define ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_CODEC_IDENTITY                                                          \
    "UWVMROS1_afba9e74be3c5e3321750c1c4c30ba2925269f75b9da43a6d5c1e93d293d7396"

/**
 * @brief Check all active fields of Header without allocation.
 * @details @return Nonzero only for a non-NULL value satisfying every nested scalar, UTF-8 and length
 * constraint. No output is modified and no ROS authority is acquired.
 * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
 */
inline static int roswasmc_bounded_2_std_msgs_msg_Header_valid(roswasmc_bounded_2_std_msgs_msg_Header const* value)
{
    if (!value)
    {
        return 0;
    }
    if (!roswasmc_bounded_2_builtin_interfaces_msg_Time_valid(&value->stamp))
    {
        return 0;
    }
    if (value->frame_id.size > 64u || !uwvm_bounded_utf8(value->frame_id.data, value->frame_id.size))
    {
        return 0;
    }
    return 1;
}

/**
 * @brief Measure the active Header canonical payload.
 * @details @pre value must already pass the matching valid function; this low-level routine performs no
 * validation. @return Exact active byte count without unused capacity, native padding or CDR framing.
 * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
 */
inline static size_t
roswasmc_bounded_2_std_msgs_msg_Header_wire_size(roswasmc_bounded_2_std_msgs_msg_Header const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_builtin_interfaces_msg_Time_wire_size(&value->stamp);
    n += 4 + value->frame_id.size;
    return n;
}

/**
 * @brief Append every Header field in canonical order.
 * @details @pre The caller has validated value, measured sufficient remaining capacity and checked disjoint
 * storage. This internal composition helper performs no capacity checks and advances offset.
 * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
 * @param p Borrowed canonical byte extent; the direction follows the read/write helper.
 * @param offset Caller-owned current byte position; advanced as fields are consumed or written.
 */
inline static void roswasmc_bounded_2_std_msgs_msg_Header_write_fields(
    roswasmc_bounded_2_std_msgs_msg_Header const* value, unsigned char* p, size_t* offset)
{
    roswasmc_bounded_2_builtin_interfaces_msg_Time_write_fields(&value->stamp, p, offset);
    uwvm_bounded_put(p + *offset, value->frame_id.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->frame_id.data, value->frame_id.size);
    *offset += value->frame_id.size;
}

/**
 * @brief Parse all Header fields from a bounded canonical prefix.
 * @details @return Nonzero after all fields pass; zero on truncation or invalid data. This internal helper can
 * change offset and value on refusal; the public decode wrapper uses a private temporary and rejects trailing
 * bytes.
 * @param p Borrowed canonical byte extent; the direction follows the read/write helper.
 * @param n Exact checked extent or integer byte width for this helper.
 * @param offset Caller-owned current byte position; advanced as fields are consumed or written.
 * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
 */
inline static int roswasmc_bounded_2_std_msgs_msg_Header_read_fields(unsigned char const* p,
                                                                     size_t n,
                                                                     size_t* offset,
                                                                     roswasmc_bounded_2_std_msgs_msg_Header* value)
{
    if (!roswasmc_bounded_2_builtin_interfaces_msg_Time_read_fields(p, n, offset, &value->stamp))
    {
        return 0;
    }
    if (*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->frame_id.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if (value->frame_id.size > 64u || value->frame_id.size > n - *offset)
    {
        return 0;
    }
    uwvm_bounded_copy(value->frame_id.data, p + *offset, value->frame_id.size);
    *offset += value->frame_id.size;
    return roswasmc_bounded_2_std_msgs_msg_Header_valid(value);
}

/**
 * @brief Encode the complete active Header value transactionally.
 * @details @return Zero on success, UWVM_BOUNDED_INVALID for invalid values/pointers/overlap, or
 * UWVM_BOUNDED_TOO_LARGE for insufficient capacity. All checks precede writes; refusal preserves output and
 * length. capacity may exceed the active length. The payload is canonical little-endian field data, not CDR.
 * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
 * @param output Caller-owned writable byte destination, disjoint from value and length.
 * @param capacity Available destination extent in bytes.
 * @param length Exact input length, or caller-owned written extent on encode success.
 */
inline static uint32_t roswasmc_bounded_2_std_msgs_msg_Header_encode(
    roswasmc_bounded_2_std_msgs_msg_Header const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if (!length || !roswasmc_bounded_2_std_msgs_msg_Header_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_std_msgs_msg_Header_wire_size(value);
    if (capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if ((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) ||
        uwvm_bounded_overlap(length, sizeof *length, output, n) ||
        uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_std_msgs_msg_Header_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/**
 * @brief Decode one exact complete Header payload into owned storage.
 * @details @return Zero on success; UWVM_BOUNDED_INVALID for malformed fields, missing storage, overlap or a
 * length mismatch. Refusal preserves value. All nested fields are retained without allocation or ROS access.
 * @param input Borrowed canonical payload bytes, disjoint from the output value.
 * @param length Exact input length, or caller-owned written extent on encode success.
 * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
 */
inline static uint32_t roswasmc_bounded_2_std_msgs_msg_Header_decode(void const* input,
                                                                     size_t length,
                                                                     roswasmc_bounded_2_std_msgs_msg_Header* value)
{
    roswasmc_bounded_2_std_msgs_msg_Header next = {0};
    size_t offset = 0;
    if (!value || (length && !input) || length < 12u || length > 76u ||
        uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if (!roswasmc_bounded_2_std_msgs_msg_Header_read_fields((unsigned char const*)input, length, &offset, &next) ||
        offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POINT)
#if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POINT_0 != 0x39d7b370UL ||                            \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POINT_1 != 0x31242309UL ||                            \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POINT_2 != 0x1eb2c965UL ||                            \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POINT_3 != 0xf04c7f7eUL ||                            \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POINT_4 != 0x741217e4UL ||                            \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POINT_5 != 0xed7f2d12UL ||                            \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POINT_6 != 0x10c7a933UL ||                            \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POINT_7 != 0xcf5d7f80UL
#error "Conflicting same-name bounded record/interface ABI profiles"
#endif
#else
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POINT 1
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POINT_0 0x39d7b370UL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POINT_1 0x31242309UL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POINT_2 0x1eb2c965UL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POINT_3 0xf04c7f7eUL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POINT_4 0x741217e4UL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POINT_5 0xed7f2d12UL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POINT_6 0x10c7a933UL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POINT_7 0xcf5d7f80UL

/**
 * @brief Complete bounded canonical Point value.
 * @details Three finite binary64 components in the containing message frame. This inline C value owns its active
 * bytes; the canonical payload is little-endian field data, not CDR or a native struct image.
 */
typedef struct roswasmc_bounded_2_geometry_msgs_msg_Point
{
    /** @brief Finite binary64 x component, retained in original field order. */
    double x;
    /** @brief Finite binary64 y component, retained in original field order. */
    double y;
    /** @brief Finite binary64 z component, retained in original field order. */
    double z;
} roswasmc_bounded_2_geometry_msgs_msg_Point;

#define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POINT_MAX_WIRE_BYTES 24u
#define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POINT_MIN_WIRE_BYTES 24u
#define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POINT_CODEC_IDENTITY                                                      \
    "UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616"

/**
 * @brief Check all active fields of Point without allocation.
 * @details @return Nonzero only for a non-NULL value satisfying every nested scalar, UTF-8 and length
 * constraint. No output is modified and no ROS authority is acquired.
 * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
 */
inline static int
roswasmc_bounded_2_geometry_msgs_msg_Point_valid(roswasmc_bounded_2_geometry_msgs_msg_Point const* value)
{
    if (!value)
    {
        return 0;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->x, 8);
        if ((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
        {
            return 0;
        }
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->y, 8);
        if ((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
        {
            return 0;
        }
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->z, 8);
        if ((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
        {
            return 0;
        }
    }
    return 1;
}

/**
 * @brief Measure the active Point canonical payload.
 * @details @pre value must already pass the matching valid function; this low-level routine performs no
 * validation. @return Exact active byte count without unused capacity, native padding or CDR framing.
 * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
 */
inline static size_t
roswasmc_bounded_2_geometry_msgs_msg_Point_wire_size(roswasmc_bounded_2_geometry_msgs_msg_Point const* value)
{
    size_t n = 0;
    n += 8;
    n += 8;
    n += 8;
    return n;
}

/**
 * @brief Append every Point field in canonical order.
 * @details @pre The caller has validated value, measured sufficient remaining capacity and checked disjoint
 * storage. This internal composition helper performs no capacity checks and advances offset.
 * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
 * @param p Borrowed canonical byte extent; the direction follows the read/write helper.
 * @param offset Caller-owned current byte position; advanced as fields are consumed or written.
 */
inline static void roswasmc_bounded_2_geometry_msgs_msg_Point_write_fields(
    roswasmc_bounded_2_geometry_msgs_msg_Point const* value, unsigned char* p, size_t* offset)
{
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->x, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->y, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->z, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
}

/**
 * @brief Parse all Point fields from a bounded canonical prefix.
 * @details @return Nonzero after all fields pass; zero on truncation or invalid data. This internal helper can
 * change offset and value on refusal; the public decode wrapper uses a private temporary and rejects trailing
 * bytes.
 * @param p Borrowed canonical byte extent; the direction follows the read/write helper.
 * @param n Exact checked extent or integer byte width for this helper.
 * @param offset Caller-owned current byte position; advanced as fields are consumed or written.
 * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
 */
inline static int roswasmc_bounded_2_geometry_msgs_msg_Point_read_fields(
    unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_2_geometry_msgs_msg_Point* value)
{
    if (*offset > n || n - *offset < 8)
    {
        return 0;
    }
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->x, &bits, 8);
    }
    *offset += 8;
    if (*offset > n || n - *offset < 8)
    {
        return 0;
    }
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->y, &bits, 8);
    }
    *offset += 8;
    if (*offset > n || n - *offset < 8)
    {
        return 0;
    }
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->z, &bits, 8);
    }
    *offset += 8;
    return roswasmc_bounded_2_geometry_msgs_msg_Point_valid(value);
}

/**
 * @brief Encode the complete active Point value transactionally.
 * @details @return Zero on success, UWVM_BOUNDED_INVALID for invalid values/pointers/overlap, or
 * UWVM_BOUNDED_TOO_LARGE for insufficient capacity. All checks precede writes; refusal preserves output and
 * length. capacity may exceed the active length. The payload is canonical little-endian field data, not CDR.
 * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
 * @param output Caller-owned writable byte destination, disjoint from value and length.
 * @param capacity Available destination extent in bytes.
 * @param length Exact input length, or caller-owned written extent on encode success.
 */
inline static uint32_t roswasmc_bounded_2_geometry_msgs_msg_Point_encode(
    roswasmc_bounded_2_geometry_msgs_msg_Point const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if (!length || !roswasmc_bounded_2_geometry_msgs_msg_Point_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_geometry_msgs_msg_Point_wire_size(value);
    if (capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if ((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) ||
        uwvm_bounded_overlap(length, sizeof *length, output, n) ||
        uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_geometry_msgs_msg_Point_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/**
 * @brief Decode one exact complete Point payload into owned storage.
 * @details @return Zero on success; UWVM_BOUNDED_INVALID for malformed fields, missing storage, overlap or a
 * length mismatch. Refusal preserves value. All nested fields are retained without allocation or ROS access.
 * @param input Borrowed canonical payload bytes, disjoint from the output value.
 * @param length Exact input length, or caller-owned written extent on encode success.
 * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
 */
inline static uint32_t roswasmc_bounded_2_geometry_msgs_msg_Point_decode(
    void const* input, size_t length, roswasmc_bounded_2_geometry_msgs_msg_Point* value)
{
    roswasmc_bounded_2_geometry_msgs_msg_Point next = {0};
    size_t offset = 0;
    if (!value || (length && !input) || length < 24u || length > 24u ||
        uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if (!roswasmc_bounded_2_geometry_msgs_msg_Point_read_fields((unsigned char const*)input, length, &offset, &next) ||
        offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_QUATERNION)
#if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_QUATERNION_0 != 0xe179dfb0UL ||                       \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_QUATERNION_1 != 0x514ca86aUL ||                       \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_QUATERNION_2 != 0xa4848bb0UL ||                       \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_QUATERNION_3 != 0xf41e39d5UL ||                       \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_QUATERNION_4 != 0xbf2b5e9eUL ||                       \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_QUATERNION_5 != 0x42328063UL ||                       \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_QUATERNION_6 != 0xf006c690UL ||                       \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_QUATERNION_7 != 0xb1961fa8UL
#error "Conflicting same-name bounded record/interface ABI profiles"
#endif
#else
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_QUATERNION 1
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_QUATERNION_0 0xe179dfb0UL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_QUATERNION_1 0x514ca86aUL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_QUATERNION_2 0xa4848bb0UL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_QUATERNION_3 0xf41e39d5UL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_QUATERNION_4 0xbf2b5e9eUL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_QUATERNION_5 0x42328063UL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_QUATERNION_6 0xf006c690UL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_QUATERNION_7 0xb1961fa8UL

/**
 * @brief Complete bounded canonical Quaternion value.
 * @details Four finite binary64 components. The explicit default initializer sets w=1 and x=y=z=0; validation
 * does not normalize or enforce unit length. This inline C value owns its active bytes; the canonical payload is
 * little-endian field data, not CDR or a native struct image.
 */
typedef struct roswasmc_bounded_2_geometry_msgs_msg_Quaternion
{
    /** @brief Finite binary64 x component, retained in original field order. */
    double x;
    /** @brief Finite binary64 y component, retained in original field order. */
    double y;
    /** @brief Finite binary64 z component, retained in original field order. */
    double z;
    /** @brief Finite binary64 w component, retained in original field order. */
    double w;
} roswasmc_bounded_2_geometry_msgs_msg_Quaternion;

#define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_QUATERNION_MAX_WIRE_BYTES 32u
#define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_QUATERNION_MIN_WIRE_BYTES 32u
#define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_QUATERNION_CODEC_IDENTITY                                                 \
    "UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672"

/**
 * @brief Initialize Quaternion with its original nested declared defaults.
 * @details @return Zero on success or UWVM_BOUNDED_INVALID for NULL. A private zero-initialized value receives
 * all declared defaults, including Quaternion.w=1, before assignment.
 * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
 */
inline static uint32_t
roswasmc_bounded_2_geometry_msgs_msg_Quaternion_default(roswasmc_bounded_2_geometry_msgs_msg_Quaternion* value)
{
    roswasmc_bounded_2_geometry_msgs_msg_Quaternion next = {0};
    if (!value)
    {
        return UWVM_BOUNDED_INVALID;
    }
    next.x = 0.0;
    next.y = 0.0;
    next.z = 0.0;
    next.w = 1.0;
    *value = next;
    return 0;
}

/**
 * @brief Check all active fields of Quaternion without allocation.
 * @details @return Nonzero only for a non-NULL value satisfying every nested scalar, UTF-8 and length
 * constraint. No output is modified and no ROS authority is acquired.
 * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
 */
inline static int
roswasmc_bounded_2_geometry_msgs_msg_Quaternion_valid(roswasmc_bounded_2_geometry_msgs_msg_Quaternion const* value)
{
    if (!value)
    {
        return 0;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->x, 8);
        if ((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
        {
            return 0;
        }
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->y, 8);
        if ((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
        {
            return 0;
        }
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->z, 8);
        if ((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
        {
            return 0;
        }
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->w, 8);
        if ((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
        {
            return 0;
        }
    }
    return 1;
}

/**
 * @brief Measure the active Quaternion canonical payload.
 * @details @pre value must already pass the matching valid function; this low-level routine performs no
 * validation. @return Exact active byte count without unused capacity, native padding or CDR framing.
 * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
 */
inline static size_t
roswasmc_bounded_2_geometry_msgs_msg_Quaternion_wire_size(roswasmc_bounded_2_geometry_msgs_msg_Quaternion const* value)
{
    size_t n = 0;
    n += 8;
    n += 8;
    n += 8;
    n += 8;
    return n;
}

/**
 * @brief Append every Quaternion field in canonical order.
 * @details @pre The caller has validated value, measured sufficient remaining capacity and checked disjoint
 * storage. This internal composition helper performs no capacity checks and advances offset.
 * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
 * @param p Borrowed canonical byte extent; the direction follows the read/write helper.
 * @param offset Caller-owned current byte position; advanced as fields are consumed or written.
 */
inline static void roswasmc_bounded_2_geometry_msgs_msg_Quaternion_write_fields(
    roswasmc_bounded_2_geometry_msgs_msg_Quaternion const* value, unsigned char* p, size_t* offset)
{
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->x, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->y, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->z, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->w, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
}

/**
 * @brief Parse all Quaternion fields from a bounded canonical prefix.
 * @details @return Nonzero after all fields pass; zero on truncation or invalid data. This internal helper can
 * change offset and value on refusal; the public decode wrapper uses a private temporary and rejects trailing
 * bytes.
 * @param p Borrowed canonical byte extent; the direction follows the read/write helper.
 * @param n Exact checked extent or integer byte width for this helper.
 * @param offset Caller-owned current byte position; advanced as fields are consumed or written.
 * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
 */
inline static int roswasmc_bounded_2_geometry_msgs_msg_Quaternion_read_fields(
    unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_2_geometry_msgs_msg_Quaternion* value)
{
    if (*offset > n || n - *offset < 8)
    {
        return 0;
    }
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->x, &bits, 8);
    }
    *offset += 8;
    if (*offset > n || n - *offset < 8)
    {
        return 0;
    }
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->y, &bits, 8);
    }
    *offset += 8;
    if (*offset > n || n - *offset < 8)
    {
        return 0;
    }
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->z, &bits, 8);
    }
    *offset += 8;
    if (*offset > n || n - *offset < 8)
    {
        return 0;
    }
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->w, &bits, 8);
    }
    *offset += 8;
    return roswasmc_bounded_2_geometry_msgs_msg_Quaternion_valid(value);
}

/**
 * @brief Encode the complete active Quaternion value transactionally.
 * @details @return Zero on success, UWVM_BOUNDED_INVALID for invalid values/pointers/overlap, or
 * UWVM_BOUNDED_TOO_LARGE for insufficient capacity. All checks precede writes; refusal preserves output and
 * length. capacity may exceed the active length. The payload is canonical little-endian field data, not CDR.
 * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
 * @param output Caller-owned writable byte destination, disjoint from value and length.
 * @param capacity Available destination extent in bytes.
 * @param length Exact input length, or caller-owned written extent on encode success.
 */
inline static uint32_t roswasmc_bounded_2_geometry_msgs_msg_Quaternion_encode(
    roswasmc_bounded_2_geometry_msgs_msg_Quaternion const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if (!length || !roswasmc_bounded_2_geometry_msgs_msg_Quaternion_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_geometry_msgs_msg_Quaternion_wire_size(value);
    if (capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if ((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) ||
        uwvm_bounded_overlap(length, sizeof *length, output, n) ||
        uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_geometry_msgs_msg_Quaternion_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/**
 * @brief Decode one exact complete Quaternion payload into owned storage.
 * @details @return Zero on success; UWVM_BOUNDED_INVALID for malformed fields, missing storage, overlap or a
 * length mismatch. Refusal preserves value. All nested fields are retained without allocation or ROS access.
 * @param input Borrowed canonical payload bytes, disjoint from the output value.
 * @param length Exact input length, or caller-owned written extent on encode success.
 * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
 */
inline static uint32_t roswasmc_bounded_2_geometry_msgs_msg_Quaternion_decode(
    void const* input, size_t length, roswasmc_bounded_2_geometry_msgs_msg_Quaternion* value)
{
    roswasmc_bounded_2_geometry_msgs_msg_Quaternion next = {0};
    size_t offset = 0;
    if (!value || (length && !input) || length < 32u || length > 32u ||
        uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if (!roswasmc_bounded_2_geometry_msgs_msg_Quaternion_read_fields(
            (unsigned char const*)input, length, &offset, &next) ||
        offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSE)
#if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSE_0 != 0x13151f5aUL ||                             \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSE_1 != 0xc6c0cab9UL ||                             \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSE_2 != 0xb4b7d4b2UL ||                             \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSE_3 != 0x795317d0UL ||                             \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSE_4 != 0xe1711a61UL ||                             \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSE_5 != 0xf2c7fa13UL ||                             \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSE_6 != 0x3f2ff6dbUL ||                             \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSE_7 != 0x2dd28310UL
#error "Conflicting same-name bounded record/interface ABI profiles"
#endif
#else
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSE 1
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSE_0 0x13151f5aUL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSE_1 0xc6c0cab9UL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSE_2 0xb4b7d4b2UL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSE_3 0x795317d0UL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSE_4 0xe1711a61UL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSE_5 0xf2c7fa13UL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSE_6 0x3f2ff6dbUL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSE_7 0x2dd28310UL

/**
 * @brief Complete bounded canonical Pose value.
 * @details Complete position and quaternion; nested declared defaults require the explicit default initializer.
 * This inline C value owns its active bytes; the canonical payload is little-endian field data, not CDR or a
 * native struct image.
 */
typedef struct roswasmc_bounded_2_geometry_msgs_msg_Pose
{
    /** @brief Complete three-component position in the containing pose frame. */
    roswasmc_bounded_2_geometry_msgs_msg_Point position;
    /** @brief All quaternion components; no normalization is performed. */
    roswasmc_bounded_2_geometry_msgs_msg_Quaternion orientation;
} roswasmc_bounded_2_geometry_msgs_msg_Pose;

#define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSE_MAX_WIRE_BYTES 56u
#define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSE_MIN_WIRE_BYTES 56u
#define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSE_CODEC_IDENTITY                                                       \
    "UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777"

/**
 * @brief Initialize Pose with its original nested declared defaults.
 * @details @return Zero on success or UWVM_BOUNDED_INVALID for NULL. A private zero-initialized value receives
 * all declared defaults, including Quaternion.w=1, before assignment.
 * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
 */
inline static uint32_t
roswasmc_bounded_2_geometry_msgs_msg_Pose_default(roswasmc_bounded_2_geometry_msgs_msg_Pose* value)
{
    roswasmc_bounded_2_geometry_msgs_msg_Pose next = {0};
    if (!value)
    {
        return UWVM_BOUNDED_INVALID;
    }
    (void)roswasmc_bounded_2_geometry_msgs_msg_Quaternion_default(&next.orientation);
    *value = next;
    return 0;
}

/**
 * @brief Check all active fields of Pose without allocation.
 * @details @return Nonzero only for a non-NULL value satisfying every nested scalar, UTF-8 and length
 * constraint. No output is modified and no ROS authority is acquired.
 * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
 */
inline static int
roswasmc_bounded_2_geometry_msgs_msg_Pose_valid(roswasmc_bounded_2_geometry_msgs_msg_Pose const* value)
{
    if (!value)
    {
        return 0;
    }
    if (!roswasmc_bounded_2_geometry_msgs_msg_Point_valid(&value->position))
    {
        return 0;
    }
    if (!roswasmc_bounded_2_geometry_msgs_msg_Quaternion_valid(&value->orientation))
    {
        return 0;
    }
    return 1;
}

/**
 * @brief Measure the active Pose canonical payload.
 * @details @pre value must already pass the matching valid function; this low-level routine performs no
 * validation. @return Exact active byte count without unused capacity, native padding or CDR framing.
 * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
 */
inline static size_t
roswasmc_bounded_2_geometry_msgs_msg_Pose_wire_size(roswasmc_bounded_2_geometry_msgs_msg_Pose const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_geometry_msgs_msg_Point_wire_size(&value->position);
    n += roswasmc_bounded_2_geometry_msgs_msg_Quaternion_wire_size(&value->orientation);
    return n;
}

/**
 * @brief Append every Pose field in canonical order.
 * @details @pre The caller has validated value, measured sufficient remaining capacity and checked disjoint
 * storage. This internal composition helper performs no capacity checks and advances offset.
 * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
 * @param p Borrowed canonical byte extent; the direction follows the read/write helper.
 * @param offset Caller-owned current byte position; advanced as fields are consumed or written.
 */
inline static void roswasmc_bounded_2_geometry_msgs_msg_Pose_write_fields(
    roswasmc_bounded_2_geometry_msgs_msg_Pose const* value, unsigned char* p, size_t* offset)
{
    roswasmc_bounded_2_geometry_msgs_msg_Point_write_fields(&value->position, p, offset);
    roswasmc_bounded_2_geometry_msgs_msg_Quaternion_write_fields(&value->orientation, p, offset);
}

/**
 * @brief Parse all Pose fields from a bounded canonical prefix.
 * @details @return Nonzero after all fields pass; zero on truncation or invalid data. This internal helper can
 * change offset and value on refusal; the public decode wrapper uses a private temporary and rejects trailing
 * bytes.
 * @param p Borrowed canonical byte extent; the direction follows the read/write helper.
 * @param n Exact checked extent or integer byte width for this helper.
 * @param offset Caller-owned current byte position; advanced as fields are consumed or written.
 * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
 */
inline static int roswasmc_bounded_2_geometry_msgs_msg_Pose_read_fields(
    unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_2_geometry_msgs_msg_Pose* value)
{
    if (!roswasmc_bounded_2_geometry_msgs_msg_Point_read_fields(p, n, offset, &value->position))
    {
        return 0;
    }
    if (!roswasmc_bounded_2_geometry_msgs_msg_Quaternion_read_fields(p, n, offset, &value->orientation))
    {
        return 0;
    }
    return roswasmc_bounded_2_geometry_msgs_msg_Pose_valid(value);
}

/**
 * @brief Encode the complete active Pose value transactionally.
 * @details @return Zero on success, UWVM_BOUNDED_INVALID for invalid values/pointers/overlap, or
 * UWVM_BOUNDED_TOO_LARGE for insufficient capacity. All checks precede writes; refusal preserves output and
 * length. capacity may exceed the active length. The payload is canonical little-endian field data, not CDR.
 * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
 * @param output Caller-owned writable byte destination, disjoint from value and length.
 * @param capacity Available destination extent in bytes.
 * @param length Exact input length, or caller-owned written extent on encode success.
 */
inline static uint32_t roswasmc_bounded_2_geometry_msgs_msg_Pose_encode(
    roswasmc_bounded_2_geometry_msgs_msg_Pose const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if (!length || !roswasmc_bounded_2_geometry_msgs_msg_Pose_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_geometry_msgs_msg_Pose_wire_size(value);
    if (capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if ((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) ||
        uwvm_bounded_overlap(length, sizeof *length, output, n) ||
        uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_geometry_msgs_msg_Pose_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/**
 * @brief Decode one exact complete Pose payload into owned storage.
 * @details @return Zero on success; UWVM_BOUNDED_INVALID for malformed fields, missing storage, overlap or a
 * length mismatch. Refusal preserves value. All nested fields are retained without allocation or ROS access.
 * @param input Borrowed canonical payload bytes, disjoint from the output value.
 * @param length Exact input length, or caller-owned written extent on encode success.
 * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
 */
inline static uint32_t roswasmc_bounded_2_geometry_msgs_msg_Pose_decode(
    void const* input, size_t length, roswasmc_bounded_2_geometry_msgs_msg_Pose* value)
{
    roswasmc_bounded_2_geometry_msgs_msg_Pose next = {0};
    size_t offset = 0;
    if (!value || (length && !input) || length < 56u || length > 56u ||
        uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if (!roswasmc_bounded_2_geometry_msgs_msg_Pose_read_fields((unsigned char const*)input, length, &offset, &next) ||
        offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSEWITHCOVARIANCE)
#if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSEWITHCOVARIANCE_0 != 0x566ff627UL ||               \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSEWITHCOVARIANCE_1 != 0x4a003113UL ||               \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSEWITHCOVARIANCE_2 != 0x77b87316UL ||               \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSEWITHCOVARIANCE_3 != 0x52001ea7UL ||               \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSEWITHCOVARIANCE_4 != 0x1761cd8fUL ||               \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSEWITHCOVARIANCE_5 != 0x68b4ebefUL ||               \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSEWITHCOVARIANCE_6 != 0xdf584acfUL ||               \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSEWITHCOVARIANCE_7 != 0x8bf5ee0bUL
#error "Conflicting same-name bounded record/interface ABI profiles"
#endif
#else
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSEWITHCOVARIANCE 1
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSEWITHCOVARIANCE_0 0x566ff627UL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSEWITHCOVARIANCE_1 0x4a003113UL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSEWITHCOVARIANCE_2 0x77b87316UL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSEWITHCOVARIANCE_3 0x52001ea7UL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSEWITHCOVARIANCE_4 0x1761cd8fUL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSEWITHCOVARIANCE_5 0x68b4ebefUL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSEWITHCOVARIANCE_6 0xdf584acfUL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSEWITHCOVARIANCE_7 0x8bf5ee0bUL

/**
 * @brief Complete bounded canonical PoseWithCovariance value.
 * @details Complete pose and all 36 row-major covariance entries. No element is removed or normalized. This
 * inline C value owns its active bytes; the canonical payload is little-endian field data, not CDR or a native
 * struct image.
 */
typedef struct roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance
{
    /** @brief Complete nested pose, retaining the covariance/header required by its declared type. */
    roswasmc_bounded_2_geometry_msgs_msg_Pose pose;
    /** @brief All 36 finite entries of the original row-major 6-by-6 covariance matrix. */
    double covariance[36];
} roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance;

#define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSEWITHCOVARIANCE_MAX_WIRE_BYTES 344u
#define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSEWITHCOVARIANCE_MIN_WIRE_BYTES 344u
#define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSEWITHCOVARIANCE_CODEC_IDENTITY                                         \
    "UWVMROS1_8eb3e25c45769eb29691011c05315ed50f2b97eff488f9e8ee2dc70bddab4dc2"

/**
 * @brief Initialize PoseWithCovariance with its original nested declared defaults.
 * @details @return Zero on success or UWVM_BOUNDED_INVALID for NULL. A private zero-initialized value receives
 * all declared defaults, including Quaternion.w=1, before assignment.
 * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
 */
inline static uint32_t roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance_default(
    roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance* value)
{
    roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance next = {0};
    if (!value)
    {
        return UWVM_BOUNDED_INVALID;
    }
    (void)roswasmc_bounded_2_geometry_msgs_msg_Pose_default(&next.pose);
    *value = next;
    return 0;
}

/**
 * @brief Check all active fields of PoseWithCovariance without allocation.
 * @details @return Nonzero only for a non-NULL value satisfying every nested scalar, UTF-8 and length
 * constraint. No output is modified and no ROS authority is acquired.
 * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
 */
inline static int roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance_valid(
    roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance const* value)
{
    if (!value)
    {
        return 0;
    }
    if (!roswasmc_bounded_2_geometry_msgs_msg_Pose_valid(&value->pose))
    {
        return 0;
    }
    {
        size_t i;
        for (i = 0; i < 36u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->covariance[i], 8);
                if ((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                {
                    return 0;
                }
            }
        }
    }
    return 1;
}

/**
 * @brief Measure the active PoseWithCovariance canonical payload.
 * @details @pre value must already pass the matching valid function; this low-level routine performs no
 * validation. @return Exact active byte count without unused capacity, native padding or CDR framing.
 * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
 */
inline static size_t roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance_wire_size(
    roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_geometry_msgs_msg_Pose_wire_size(&value->pose);
    {
        size_t i;
        for (i = 0; i < 36u; ++i)
        {
            n += 8;
        }
    }
    return n;
}

/**
 * @brief Append every PoseWithCovariance field in canonical order.
 * @details @pre The caller has validated value, measured sufficient remaining capacity and checked disjoint
 * storage. This internal composition helper performs no capacity checks and advances offset.
 * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
 * @param p Borrowed canonical byte extent; the direction follows the read/write helper.
 * @param offset Caller-owned current byte position; advanced as fields are consumed or written.
 */
inline static void roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance_write_fields(
    roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance const* value, unsigned char* p, size_t* offset)
{
    roswasmc_bounded_2_geometry_msgs_msg_Pose_write_fields(&value->pose, p, offset);
    {
        size_t i;
        for (i = 0; i < 36u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->covariance[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
}

/**
 * @brief Parse all PoseWithCovariance fields from a bounded canonical prefix.
 * @details @return Nonzero after all fields pass; zero on truncation or invalid data. This internal helper can
 * change offset and value on refusal; the public decode wrapper uses a private temporary and rejects trailing
 * bytes.
 * @param p Borrowed canonical byte extent; the direction follows the read/write helper.
 * @param n Exact checked extent or integer byte width for this helper.
 * @param offset Caller-owned current byte position; advanced as fields are consumed or written.
 * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
 */
inline static int roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance_read_fields(
    unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance* value)
{
    if (!roswasmc_bounded_2_geometry_msgs_msg_Pose_read_fields(p, n, offset, &value->pose))
    {
        return 0;
    }
    {
        size_t i;
        for (i = 0; i < 36u; ++i)
        {
            if (*offset > n || n - *offset < 8)
            {
                return 0;
            }
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->covariance[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    return roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance_valid(value);
}

/**
 * @brief Encode the complete active PoseWithCovariance value transactionally.
 * @details @return Zero on success, UWVM_BOUNDED_INVALID for invalid values/pointers/overlap, or
 * UWVM_BOUNDED_TOO_LARGE for insufficient capacity. All checks precede writes; refusal preserves output and
 * length. capacity may exceed the active length. The payload is canonical little-endian field data, not CDR.
 * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
 * @param output Caller-owned writable byte destination, disjoint from value and length.
 * @param capacity Available destination extent in bytes.
 * @param length Exact input length, or caller-owned written extent on encode success.
 */
inline static uint32_t roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance_encode(
    roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if (!length || !roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance_wire_size(value);
    if (capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if ((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) ||
        uwvm_bounded_overlap(length, sizeof *length, output, n) ||
        uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/**
 * @brief Decode one exact complete PoseWithCovariance payload into owned storage.
 * @details @return Zero on success; UWVM_BOUNDED_INVALID for malformed fields, missing storage, overlap or a
 * length mismatch. Refusal preserves value. All nested fields are retained without allocation or ROS access.
 * @param input Borrowed canonical payload bytes, disjoint from the output value.
 * @param length Exact input length, or caller-owned written extent on encode success.
 * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
 */
inline static uint32_t roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance_decode(
    void const* input, size_t length, roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance* value)
{
    roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance next = {0};
    size_t offset = 0;
    if (!value || (length && !input) || length < 344u || length > 344u ||
        uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if (!roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance_read_fields(
            (unsigned char const*)input, length, &offset, &next) ||
        offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSEWITHCOVARIANCESTAMPED)
#if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSEWITHCOVARIANCESTAMPED_0 != 0x449d199fUL ||        \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSEWITHCOVARIANCESTAMPED_1 != 0x22403029UL ||        \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSEWITHCOVARIANCESTAMPED_2 != 0x9d576fc2UL ||        \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSEWITHCOVARIANCESTAMPED_3 != 0x26375e6cUL ||        \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSEWITHCOVARIANCESTAMPED_4 != 0xb85b5cb4UL ||        \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSEWITHCOVARIANCESTAMPED_5 != 0xf2977d3cUL ||        \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSEWITHCOVARIANCESTAMPED_6 != 0x4f1abfa5UL ||        \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSEWITHCOVARIANCESTAMPED_7 != 0x1dfbb0a6UL
#error "Conflicting same-name bounded record/interface ABI profiles"
#endif
#else
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSEWITHCOVARIANCESTAMPED 1
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSEWITHCOVARIANCESTAMPED_0 0x449d199fUL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSEWITHCOVARIANCESTAMPED_1 0x22403029UL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSEWITHCOVARIANCESTAMPED_2 0x9d576fc2UL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSEWITHCOVARIANCESTAMPED_3 0x26375e6cUL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSEWITHCOVARIANCESTAMPED_4 0xb85b5cb4UL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSEWITHCOVARIANCESTAMPED_5 0xf2977d3cUL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSEWITHCOVARIANCESTAMPED_6 0x4f1abfa5UL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSEWITHCOVARIANCESTAMPED_7 0x1dfbb0a6UL

/**
 * @brief Complete bounded canonical PoseWithCovarianceStamped value.
 * @details Original header plus complete nested pose and covariance, including its frame identifier. This inline
 * C value owns its active bytes; the canonical payload is little-endian field data, not CDR or a native struct
 * image.
 */
typedef struct roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovarianceStamped
{
    /** @brief Original timestamp and frame identifier for this complete payload. */
    roswasmc_bounded_2_std_msgs_msg_Header header;
    /** @brief Complete nested pose, retaining the covariance/header required by its declared type. */
    roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance pose;
} roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovarianceStamped;

#define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSEWITHCOVARIANCESTAMPED_MAX_WIRE_BYTES 420u
#define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSEWITHCOVARIANCESTAMPED_MIN_WIRE_BYTES 356u
#define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSEWITHCOVARIANCESTAMPED_CODEC_IDENTITY                                  \
    "UWVMROS1_ea380172cde0ee5fef319aff50d92a80c314510e3d12efec45e9ae1f74974af3"

/**
 * @brief Initialize PoseWithCovarianceStamped with its original nested declared defaults.
 * @details @return Zero on success or UWVM_BOUNDED_INVALID for NULL. A private zero-initialized value receives
 * all declared defaults, including Quaternion.w=1, before assignment.
 * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
 */
inline static uint32_t roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovarianceStamped_default(
    roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovarianceStamped* value)
{
    roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovarianceStamped next = {0};
    if (!value)
    {
        return UWVM_BOUNDED_INVALID;
    }
    (void)roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance_default(&next.pose);
    *value = next;
    return 0;
}

/**
 * @brief Check all active fields of PoseWithCovarianceStamped without allocation.
 * @details @return Nonzero only for a non-NULL value satisfying every nested scalar, UTF-8 and length
 * constraint. No output is modified and no ROS authority is acquired.
 * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
 */
inline static int roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovarianceStamped_valid(
    roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovarianceStamped const* value)
{
    if (!value)
    {
        return 0;
    }
    if (!roswasmc_bounded_2_std_msgs_msg_Header_valid(&value->header))
    {
        return 0;
    }
    if (!roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance_valid(&value->pose))
    {
        return 0;
    }
    return 1;
}

/**
 * @brief Measure the active PoseWithCovarianceStamped canonical payload.
 * @details @pre value must already pass the matching valid function; this low-level routine performs no
 * validation. @return Exact active byte count without unused capacity, native padding or CDR framing.
 * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
 */
inline static size_t roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovarianceStamped_wire_size(
    roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovarianceStamped const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_std_msgs_msg_Header_wire_size(&value->header);
    n += roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance_wire_size(&value->pose);
    return n;
}

/**
 * @brief Append every PoseWithCovarianceStamped field in canonical order.
 * @details @pre The caller has validated value, measured sufficient remaining capacity and checked disjoint
 * storage. This internal composition helper performs no capacity checks and advances offset.
 * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
 * @param p Borrowed canonical byte extent; the direction follows the read/write helper.
 * @param offset Caller-owned current byte position; advanced as fields are consumed or written.
 */
inline static void roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovarianceStamped_write_fields(
    roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovarianceStamped const* value, unsigned char* p, size_t* offset)
{
    roswasmc_bounded_2_std_msgs_msg_Header_write_fields(&value->header, p, offset);
    roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance_write_fields(&value->pose, p, offset);
}

/**
 * @brief Parse all PoseWithCovarianceStamped fields from a bounded canonical prefix.
 * @details @return Nonzero after all fields pass; zero on truncation or invalid data. This internal helper can
 * change offset and value on refusal; the public decode wrapper uses a private temporary and rejects trailing
 * bytes.
 * @param p Borrowed canonical byte extent; the direction follows the read/write helper.
 * @param n Exact checked extent or integer byte width for this helper.
 * @param offset Caller-owned current byte position; advanced as fields are consumed or written.
 * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
 */
inline static int roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovarianceStamped_read_fields(
    unsigned char const* p,
    size_t n,
    size_t* offset,
    roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovarianceStamped* value)
{
    if (!roswasmc_bounded_2_std_msgs_msg_Header_read_fields(p, n, offset, &value->header))
    {
        return 0;
    }
    if (!roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance_read_fields(p, n, offset, &value->pose))
    {
        return 0;
    }
    return roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovarianceStamped_valid(value);
}

/**
 * @brief Encode the complete active PoseWithCovarianceStamped value transactionally.
 * @details @return Zero on success, UWVM_BOUNDED_INVALID for invalid values/pointers/overlap, or
 * UWVM_BOUNDED_TOO_LARGE for insufficient capacity. All checks precede writes; refusal preserves output and
 * length. capacity may exceed the active length. The payload is canonical little-endian field data, not CDR.
 * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
 * @param output Caller-owned writable byte destination, disjoint from value and length.
 * @param capacity Available destination extent in bytes.
 * @param length Exact input length, or caller-owned written extent on encode success.
 */
inline static uint32_t roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovarianceStamped_encode(
    roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovarianceStamped const* value,
    void* output,
    size_t capacity,
    size_t* length)
{
    size_t n, offset = 0;
    if (!length || !roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovarianceStamped_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovarianceStamped_wire_size(value);
    if (capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if ((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) ||
        uwvm_bounded_overlap(length, sizeof *length, output, n) ||
        uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovarianceStamped_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/**
 * @brief Decode one exact complete PoseWithCovarianceStamped payload into owned storage.
 * @details @return Zero on success; UWVM_BOUNDED_INVALID for malformed fields, missing storage, overlap or a
 * length mismatch. Refusal preserves value. All nested fields are retained without allocation or ROS access.
 * @param input Borrowed canonical payload bytes, disjoint from the output value.
 * @param length Exact input length, or caller-owned written extent on encode success.
 * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
 */
inline static uint32_t roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovarianceStamped_decode(
    void const* input, size_t length, roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovarianceStamped* value)
{
    roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovarianceStamped next = {0};
    size_t offset = 0;
    if (!value || (length && !input) || length < 356u || length > 420u ||
        uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if (!roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovarianceStamped_read_fields(
            (unsigned char const*)input, length, &offset, &next) ||
        offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_ISAAC_ROS_APRILTAG_INTERFACES_MSG_APRILTAGDETECTION)
#if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_ISAAC_ROS_APRILTAG_INTERFACES_MSG_APRILTAGDETECTION_0 !=                \
        0x44ba46edUL ||                                                                                                \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_ISAAC_ROS_APRILTAG_INTERFACES_MSG_APRILTAGDETECTION_1 !=                \
        0x23300d90UL ||                                                                                                \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_ISAAC_ROS_APRILTAG_INTERFACES_MSG_APRILTAGDETECTION_2 !=                \
        0xf23a84a7UL ||                                                                                                \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_ISAAC_ROS_APRILTAG_INTERFACES_MSG_APRILTAGDETECTION_3 !=                \
        0x3a9ed3f9UL ||                                                                                                \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_ISAAC_ROS_APRILTAG_INTERFACES_MSG_APRILTAGDETECTION_4 !=                \
        0x3951a4efUL ||                                                                                                \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_ISAAC_ROS_APRILTAG_INTERFACES_MSG_APRILTAGDETECTION_5 !=                \
        0x766169d9UL ||                                                                                                \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_ISAAC_ROS_APRILTAG_INTERFACES_MSG_APRILTAGDETECTION_6 !=                \
        0xda0d299bUL ||                                                                                                \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_ISAAC_ROS_APRILTAG_INTERFACES_MSG_APRILTAGDETECTION_7 != 0x7aadd594UL
#error "Conflicting same-name bounded record/interface ABI profiles"
#endif
#else
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_ISAAC_ROS_APRILTAG_INTERFACES_MSG_APRILTAGDETECTION 1
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_ISAAC_ROS_APRILTAG_INTERFACES_MSG_APRILTAGDETECTION_0 0x44ba46edUL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_ISAAC_ROS_APRILTAG_INTERFACES_MSG_APRILTAGDETECTION_1 0x23300d90UL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_ISAAC_ROS_APRILTAG_INTERFACES_MSG_APRILTAGDETECTION_2 0xf23a84a7UL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_ISAAC_ROS_APRILTAG_INTERFACES_MSG_APRILTAGDETECTION_3 0x3a9ed3f9UL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_ISAAC_ROS_APRILTAG_INTERFACES_MSG_APRILTAGDETECTION_4 0x3951a4efUL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_ISAAC_ROS_APRILTAG_INTERFACES_MSG_APRILTAGDETECTION_5 0x766169d9UL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_ISAAC_ROS_APRILTAG_INTERFACES_MSG_APRILTAGDETECTION_6 0xda0d299bUL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_ISAAC_ROS_APRILTAG_INTERFACES_MSG_APRILTAGDETECTION_7 0x7aadd594UL

/**
 * @brief Caller-owned UTF-8 active prefix with 64-byte inline capacity.
 * @details size excludes a terminator. Empty strings are valid; the codec rejects embedded NUL, overlong UTF-8,
 * surrogates and invalid Unicode scalars.
 */
typedef struct
{
    /** @brief Active UTF-8 byte count, at most 64; no terminator is counted. */
    uint32_t size;
    /** @brief Inline owned storage; only the first size entries are active. */
    unsigned char data[64];
} roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetection_family_text;

/**
 * @brief Complete bounded canonical AprilTagDetection value.
 * @details Original family, signed id, three-component center, four complete corners and stamped
 * pose/covariance. Family is bounded to 64 UTF-8 bytes. This inline C value owns its active bytes; the canonical
 * payload is little-endian field data, not CDR or a native struct image.
 */
typedef struct roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetection
{
    /** @brief UTF-8 tag-family name, at most 64 active bytes without embedded NUL. */
    roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetection_family_text family;
    /** @brief Original signed 32-bit tag identifier, including negative values. */
    int32_t id;
    /** @brief All three center coordinates, including the original z component. */
    roswasmc_bounded_2_geometry_msgs_msg_Point center;
    /** @brief Exactly four original Point values in order, retaining each z component. */
    roswasmc_bounded_2_geometry_msgs_msg_Point corners[4];
    /** @brief Complete nested pose, retaining the covariance/header required by its declared type. */
    roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovarianceStamped pose;
} roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetection;

#define ROSWASMC_BOUNDED_2_ISAAC_ROS_APRILTAG_INTERFACES_MSG_APRILTAGDETECTION_MAX_WIRE_BYTES 612u
#define ROSWASMC_BOUNDED_2_ISAAC_ROS_APRILTAG_INTERFACES_MSG_APRILTAGDETECTION_MIN_WIRE_BYTES 484u
#define ROSWASMC_BOUNDED_2_ISAAC_ROS_APRILTAG_INTERFACES_MSG_APRILTAGDETECTION_CODEC_IDENTITY                          \
    "UWVMROS1_5d840f0d9239a948ce5d17bbee6e248db8151ff31070667e506e9c1647ac6fe7"

/**
 * @brief Initialize AprilTagDetection with its original nested declared defaults.
 * @details @return Zero on success or UWVM_BOUNDED_INVALID for NULL. A private zero-initialized value receives
 * all declared defaults, including Quaternion.w=1, before assignment.
 * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
 */
inline static uint32_t roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetection_default(
    roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetection* value)
{
    roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetection next = {0};
    if (!value)
    {
        return UWVM_BOUNDED_INVALID;
    }
    (void)roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovarianceStamped_default(&next.pose);
    *value = next;
    return 0;
}

/**
 * @brief Check all active fields of AprilTagDetection without allocation.
 * @details @return Nonzero only for a non-NULL value satisfying every nested scalar, UTF-8 and length
 * constraint. No output is modified and no ROS authority is acquired.
 * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
 */
inline static int roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetection_valid(
    roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetection const* value)
{
    if (!value)
    {
        return 0;
    }
    if (value->family.size > 64u || !uwvm_bounded_utf8(value->family.data, value->family.size))
    {
        return 0;
    }
    if (!roswasmc_bounded_2_geometry_msgs_msg_Point_valid(&value->center))
    {
        return 0;
    }
    {
        size_t i;
        for (i = 0; i < 4u; ++i)
        {
            if (!roswasmc_bounded_2_geometry_msgs_msg_Point_valid(&value->corners[i]))
            {
                return 0;
            }
        }
    }
    if (!roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovarianceStamped_valid(&value->pose))
    {
        return 0;
    }
    return 1;
}

/**
 * @brief Measure the active AprilTagDetection canonical payload.
 * @details @pre value must already pass the matching valid function; this low-level routine performs no
 * validation. @return Exact active byte count without unused capacity, native padding or CDR framing.
 * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
 */
inline static size_t roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetection_wire_size(
    roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetection const* value)
{
    size_t n = 0;
    n += 4 + value->family.size;
    n += 4;
    n += roswasmc_bounded_2_geometry_msgs_msg_Point_wire_size(&value->center);
    {
        size_t i;
        for (i = 0; i < 4u; ++i)
        {
            n += roswasmc_bounded_2_geometry_msgs_msg_Point_wire_size(&value->corners[i]);
        }
    }
    n += roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovarianceStamped_wire_size(&value->pose);
    return n;
}

/**
 * @brief Append every AprilTagDetection field in canonical order.
 * @details @pre The caller has validated value, measured sufficient remaining capacity and checked disjoint
 * storage. This internal composition helper performs no capacity checks and advances offset.
 * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
 * @param p Borrowed canonical byte extent; the direction follows the read/write helper.
 * @param offset Caller-owned current byte position; advanced as fields are consumed or written.
 */
inline static void roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetection_write_fields(
    roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetection const* value,
    unsigned char* p,
    size_t* offset)
{
    uwvm_bounded_put(p + *offset, value->family.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->family.data, value->family.size);
    *offset += value->family.size;
    uwvm_bounded_put(p + *offset, (uint64_t)value->id, 4);
    *offset += 4;
    roswasmc_bounded_2_geometry_msgs_msg_Point_write_fields(&value->center, p, offset);
    {
        size_t i;
        for (i = 0; i < 4u; ++i)
        {
            roswasmc_bounded_2_geometry_msgs_msg_Point_write_fields(&value->corners[i], p, offset);
        }
    }
    roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovarianceStamped_write_fields(&value->pose, p, offset);
}

/**
 * @brief Parse all AprilTagDetection fields from a bounded canonical prefix.
 * @details @return Nonzero after all fields pass; zero on truncation or invalid data. This internal helper can
 * change offset and value on refusal; the public decode wrapper uses a private temporary and rejects trailing
 * bytes.
 * @param p Borrowed canonical byte extent; the direction follows the read/write helper.
 * @param n Exact checked extent or integer byte width for this helper.
 * @param offset Caller-owned current byte position; advanced as fields are consumed or written.
 * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
 */
inline static int roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetection_read_fields(
    unsigned char const* p,
    size_t n,
    size_t* offset,
    roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetection* value)
{
    if (*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->family.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if (value->family.size > 64u || value->family.size > n - *offset)
    {
        return 0;
    }
    uwvm_bounded_copy(value->family.data, p + *offset, value->family.size);
    *offset += value->family.size;
    if (*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->id, &bits, 4);
    }
    *offset += 4;
    if (!roswasmc_bounded_2_geometry_msgs_msg_Point_read_fields(p, n, offset, &value->center))
    {
        return 0;
    }
    {
        size_t i;
        for (i = 0; i < 4u; ++i)
        {
            if (!roswasmc_bounded_2_geometry_msgs_msg_Point_read_fields(p, n, offset, &value->corners[i]))
            {
                return 0;
            }
        }
    }
    if (!roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovarianceStamped_read_fields(p, n, offset, &value->pose))
    {
        return 0;
    }
    return roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetection_valid(value);
}

/**
 * @brief Encode the complete active AprilTagDetection value transactionally.
 * @details @return Zero on success, UWVM_BOUNDED_INVALID for invalid values/pointers/overlap, or
 * UWVM_BOUNDED_TOO_LARGE for insufficient capacity. All checks precede writes; refusal preserves output and
 * length. capacity may exceed the active length. The payload is canonical little-endian field data, not CDR.
 * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
 * @param output Caller-owned writable byte destination, disjoint from value and length.
 * @param capacity Available destination extent in bytes.
 * @param length Exact input length, or caller-owned written extent on encode success.
 */
inline static uint32_t roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetection_encode(
    roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetection const* value,
    void* output,
    size_t capacity,
    size_t* length)
{
    size_t n, offset = 0;
    if (!length || !roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetection_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetection_wire_size(value);
    if (capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if ((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) ||
        uwvm_bounded_overlap(length, sizeof *length, output, n) ||
        uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetection_write_fields(
        value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/**
 * @brief Decode one exact complete AprilTagDetection payload into owned storage.
 * @details @return Zero on success; UWVM_BOUNDED_INVALID for malformed fields, missing storage, overlap or a
 * length mismatch. Refusal preserves value. All nested fields are retained without allocation or ROS access.
 * @param input Borrowed canonical payload bytes, disjoint from the output value.
 * @param length Exact input length, or caller-owned written extent on encode success.
 * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
 */
inline static uint32_t roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetection_decode(
    void const* input, size_t length, roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetection* value)
{
    roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetection next = {0};
    size_t offset = 0;
    if (!value || (length && !input) || length < 484u || length > 612u ||
        uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if (!roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetection_read_fields(
            (unsigned char const*)input, length, &offset, &next) ||
        offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_ISAAC_ROS_APRILTAG_INTERFACES_MSG_APRILTAGDETECTIONARRAY)
#if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_ISAAC_ROS_APRILTAG_INTERFACES_MSG_APRILTAGDETECTIONARRAY_0 !=           \
        0xd7826e1dUL ||                                                                                                \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_ISAAC_ROS_APRILTAG_INTERFACES_MSG_APRILTAGDETECTIONARRAY_1 !=           \
        0x6efbe3cfUL ||                                                                                                \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_ISAAC_ROS_APRILTAG_INTERFACES_MSG_APRILTAGDETECTIONARRAY_2 !=           \
        0x4bb51e4aUL ||                                                                                                \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_ISAAC_ROS_APRILTAG_INTERFACES_MSG_APRILTAGDETECTIONARRAY_3 !=           \
        0xc8cc1edaUL ||                                                                                                \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_ISAAC_ROS_APRILTAG_INTERFACES_MSG_APRILTAGDETECTIONARRAY_4 !=           \
        0x605d30adUL ||                                                                                                \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_ISAAC_ROS_APRILTAG_INTERFACES_MSG_APRILTAGDETECTIONARRAY_5 !=           \
        0x4dcc5d02UL ||                                                                                                \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_ISAAC_ROS_APRILTAG_INTERFACES_MSG_APRILTAGDETECTIONARRAY_6 !=           \
        0x550afe6dUL ||                                                                                                \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_ISAAC_ROS_APRILTAG_INTERFACES_MSG_APRILTAGDETECTIONARRAY_7 !=           \
        0x7e341d19UL
#error "Conflicting same-name bounded record/interface ABI profiles"
#endif
#else
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_ISAAC_ROS_APRILTAG_INTERFACES_MSG_APRILTAGDETECTIONARRAY 1
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_ISAAC_ROS_APRILTAG_INTERFACES_MSG_APRILTAGDETECTIONARRAY_0          \
    0xd7826e1dUL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_ISAAC_ROS_APRILTAG_INTERFACES_MSG_APRILTAGDETECTIONARRAY_1          \
    0x6efbe3cfUL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_ISAAC_ROS_APRILTAG_INTERFACES_MSG_APRILTAGDETECTIONARRAY_2          \
    0x4bb51e4aUL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_ISAAC_ROS_APRILTAG_INTERFACES_MSG_APRILTAGDETECTIONARRAY_3          \
    0xc8cc1edaUL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_ISAAC_ROS_APRILTAG_INTERFACES_MSG_APRILTAGDETECTIONARRAY_4          \
    0x605d30adUL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_ISAAC_ROS_APRILTAG_INTERFACES_MSG_APRILTAGDETECTIONARRAY_5          \
    0x4dcc5d02UL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_ISAAC_ROS_APRILTAG_INTERFACES_MSG_APRILTAGDETECTIONARRAY_6          \
    0x550afe6dUL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_ISAAC_ROS_APRILTAG_INTERFACES_MSG_APRILTAGDETECTIONARRAY_7          \
    0x7e341d19UL

/**
 * @brief Caller-owned active prefix of at most 16 complete detections.
 * @details Initialize every element below size; unused capacity is not serialized and no heap allocation occurs.
 */
typedef struct
{
    /** @brief Active detection count, at most 16. */
    uint32_t size;
    /** @brief Inline owned storage; only the first size entries are active. */
    roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetection data[16];
} roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray_detections_sequence;

/**
 * @brief Complete bounded canonical AprilTagDetectionArray value.
 * @details Original header and up to 16 complete detections; each retains four corners and all 36 covariance
 * entries. This inline C value owns its active bytes; the canonical payload is little-endian field data, not CDR
 * or a native struct image.
 */
typedef struct roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray
{
    /** @brief Original timestamp and frame identifier for this complete payload. */
    roswasmc_bounded_2_std_msgs_msg_Header header;
    /** @brief Active prefix of complete detections; unused capacity is not serialized. */
    roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray_detections_sequence detections;
} roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray;

#define ROSWASMC_BOUNDED_2_ISAAC_ROS_APRILTAG_INTERFACES_MSG_APRILTAGDETECTIONARRAY_MAX_WIRE_BYTES 9872u
#define ROSWASMC_BOUNDED_2_ISAAC_ROS_APRILTAG_INTERFACES_MSG_APRILTAGDETECTIONARRAY_MIN_WIRE_BYTES 16u
#define ROSWASMC_BOUNDED_2_ISAAC_ROS_APRILTAG_INTERFACES_MSG_APRILTAGDETECTIONARRAY_CODEC_IDENTITY                     \
    "UWVMROS1_60359e405aedd2a627e60bc35e849989fe5ed1d426afb2a884036aef93bfe0a5"

/**
 * @brief Initialize AprilTagDetectionArray with its original nested declared defaults.
 * @details @return Zero on success or UWVM_BOUNDED_INVALID for NULL. A private zero-initialized value receives
 * all declared defaults, including Quaternion.w=1, before assignment.
 * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
 */
inline static uint32_t roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray_default(
    roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray* value)
{
    roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray next = {0};
    if (!value)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}

/**
 * @brief Check all active fields of AprilTagDetectionArray without allocation.
 * @details @return Nonzero only for a non-NULL value satisfying every nested scalar, UTF-8 and length
 * constraint. No output is modified and no ROS authority is acquired.
 * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
 */
inline static int roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray_valid(
    roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray const* value)
{
    if (!value)
    {
        return 0;
    }
    if (!roswasmc_bounded_2_std_msgs_msg_Header_valid(&value->header))
    {
        return 0;
    }
    if (value->detections.size > 16u)
    {
        return 0;
    }
    {
        size_t i;
        for (i = 0; i < value->detections.size; ++i)
        {
            if (!roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetection_valid(
                    &value->detections.data[i]))
            {
                return 0;
            }
        }
    }
    return 1;
}

/**
 * @brief Measure the active AprilTagDetectionArray canonical payload.
 * @details @pre value must already pass the matching valid function; this low-level routine performs no
 * validation. @return Exact active byte count without unused capacity, native padding or CDR framing.
 * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
 */
inline static size_t roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray_wire_size(
    roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_std_msgs_msg_Header_wire_size(&value->header);
    n += 4;
    if (value->detections.size > 16u)
    {
        return 0;
    }
    {
        size_t i;
        for (i = 0; i < value->detections.size; ++i)
        {
            n += roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetection_wire_size(
                &value->detections.data[i]);
        }
    }
    return n;
}

/**
 * @brief Append every AprilTagDetectionArray field in canonical order.
 * @details @pre The caller has validated value, measured sufficient remaining capacity and checked disjoint
 * storage. This internal composition helper performs no capacity checks and advances offset.
 * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
 * @param p Borrowed canonical byte extent; the direction follows the read/write helper.
 * @param offset Caller-owned current byte position; advanced as fields are consumed or written.
 */
inline static void roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray_write_fields(
    roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray const* value,
    unsigned char* p,
    size_t* offset)
{
    roswasmc_bounded_2_std_msgs_msg_Header_write_fields(&value->header, p, offset);
    uwvm_bounded_put(p + *offset, value->detections.size, 4);
    *offset += 4;
    {
        size_t i;
        for (i = 0; i < value->detections.size; ++i)
        {
            roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetection_write_fields(
                &value->detections.data[i], p, offset);
        }
    }
}

/**
 * @brief Parse all AprilTagDetectionArray fields from a bounded canonical prefix.
 * @details @return Nonzero after all fields pass; zero on truncation or invalid data. This internal helper can
 * change offset and value on refusal; the public decode wrapper uses a private temporary and rejects trailing
 * bytes.
 * @param p Borrowed canonical byte extent; the direction follows the read/write helper.
 * @param n Exact checked extent or integer byte width for this helper.
 * @param offset Caller-owned current byte position; advanced as fields are consumed or written.
 * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
 */
inline static int roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray_read_fields(
    unsigned char const* p,
    size_t n,
    size_t* offset,
    roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray* value)
{
    if (!roswasmc_bounded_2_std_msgs_msg_Header_read_fields(p, n, offset, &value->header))
    {
        return 0;
    }
    if (*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->detections.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if (value->detections.size > 16u)
    {
        return 0;
    }
    {
        size_t i;
        for (i = 0; i < value->detections.size; ++i)
        {
            if (!roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetection_read_fields(
                    p, n, offset, &value->detections.data[i]))
            {
                return 0;
            }
        }
    }
    return roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray_valid(value);
}

/**
 * @brief Encode the complete active AprilTagDetectionArray value transactionally.
 * @details @return Zero on success, UWVM_BOUNDED_INVALID for invalid values/pointers/overlap, or
 * UWVM_BOUNDED_TOO_LARGE for insufficient capacity. All checks precede writes; refusal preserves output and
 * length. capacity may exceed the active length. The payload is canonical little-endian field data, not CDR.
 * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
 * @param output Caller-owned writable byte destination, disjoint from value and length.
 * @param capacity Available destination extent in bytes.
 * @param length Exact input length, or caller-owned written extent on encode success.
 */
inline static uint32_t roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray_encode(
    roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray const* value,
    void* output,
    size_t capacity,
    size_t* length)
{
    size_t n, offset = 0;
    if (!length || !roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray_wire_size(value);
    if (capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if ((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) ||
        uwvm_bounded_overlap(length, sizeof *length, output, n) ||
        uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray_write_fields(
        value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/**
 * @brief Decode one exact complete AprilTagDetectionArray payload into owned storage.
 * @details @return Zero on success; UWVM_BOUNDED_INVALID for malformed fields, missing storage, overlap or a
 * length mismatch. Refusal preserves value. All nested fields are retained without allocation or ROS access.
 * @param input Borrowed canonical payload bytes, disjoint from the output value.
 * @param length Exact input length, or caller-owned written extent on encode success.
 * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
 */
inline static uint32_t roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray_decode(
    void const* input,
    size_t length,
    roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray* value)
{
    roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray next = {0};
    size_t offset = 0;
    if (!value || (length && !input) || length < 16u || length > 9872u ||
        uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if (!roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray_read_fields(
            (unsigned char const*)input, length, &offset, &next) ||
        offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#undef UWVM_BOUNDED_ASSERT
#endif
