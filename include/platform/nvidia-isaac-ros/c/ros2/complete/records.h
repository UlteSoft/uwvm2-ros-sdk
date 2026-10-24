/** @file Generated bounded-v2 canonical values; no native ROS serialization or authority.
 * Every dynamic field has inline caller-owned capacity. Encode validates and measures
 * the full value before writes; decode commits one temporary only after full validation.
 * Supply distinct record, byte and size-output storage; overlap is explicitly refused.
 * Empty Service/Action components use a C layout dummy that is never a wire field. */
#ifndef UWVM_NVIDIA_ISAAC_ROS_COMPLETE_RECORDS_CE1FE5E1CB933B72E447E503A0E4356FA52A2344C10126DC0993CB564F1A23C2
#define UWVM_NVIDIA_ISAAC_ROS_COMPLETE_RECORDS_CE1FE5E1CB933B72E447E503A0E4356FA52A2344C10126DC0993CB564F1A23C2
#include <float.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>
#ifndef UWVM_ROS_BOUNDED_CODEC_HELPERS
#define UWVM_ROS_BOUNDED_CODEC_HELPERS
#define UWVM_BOUNDED_INVALID 22u
#define UWVM_BOUNDED_TOO_LARGE 90u
/** @brief Initialize every aggregate field without language-specific partial-initializer warnings. */
#ifdef __cplusplus
#define UWVM_BOUNDED_ZERO_VALUE(Type) Type()
#else
#define UWVM_BOUNDED_ZERO_VALUE(Type) {0}
#endif
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
static inline void uwvm_bounded_copy(void* out, void const* in, size_t n)
{
#if defined(__GNUC__) || defined(__clang__)
    __builtin_memcpy(out, in, n);
#else
    size_t i;
    for (i = 0; i < n; ++i)
        ((unsigned char*)out)[i] = ((unsigned char const*)in)[i];
#endif
}

/**
 * @brief Read an unsigned little-endian integer without native alignment assumptions.
 * @details n is a byte width from zero through eight. The caller has already checked that p covers n readable
 * bytes; width zero returns zero.
 * @param p Borrowed canonical byte extent; the direction follows the read/write helper.
 * @param n Exact checked extent or integer byte width for this helper.
 */
static inline uint64_t uwvm_bounded_get(unsigned char const* p, unsigned n)
{
    uint64_t v = 0;
    unsigned i;
    for (i = 0; i < n; ++i)
        v |= (uint64_t)p[i] << (8 * i);
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
static inline void uwvm_bounded_put(unsigned char* p, uint64_t v, unsigned n)
{
    unsigned i;
    for (i = 0; i < n; ++i)
        p[i] = (unsigned char)(v >> (8 * i));
}

/**
 * @brief Check a complete UTF-8 prefix without accepting embedded NUL.
 * @details Returns nonzero for valid scalar UTF-8, including an empty prefix; rejects truncation, overlong
 * forms, surrogates and values above U+10FFFF. No terminator is read and no allocation occurs.
 * @param p Borrowed canonical byte extent; the direction follows the read/write helper.
 * @param n Exact checked extent or integer byte width for this helper.
 */
static inline int uwvm_bounded_utf8(unsigned char const* p, size_t n)
{
    size_t i = 0;
    while (i < n)
    {
        unsigned b = p[i++], k, code, minimum;
        if (!b)
            return 0;
        if (b < 128)
            continue;
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
            return 0;
        if (k > n - i)
            return 0;
        while (k--)
        {
            b = p[i++];
            if ((b & 192) != 128)
                return 0;
            code = (code << 6) | (b & 63);
        }
        if (code < minimum || code > 1114111 || (code >= 55296 && code <= 57343))
            return 0;
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
static inline int uwvm_bounded_overlap(void const* a, size_t an, void const* b, size_t bn)
{
    uintptr_t x = (uintptr_t)a, y = (uintptr_t)b;
    if ((an && !a) || (bn && !b) || an > UINTPTR_MAX - x || bn > UINTPTR_MAX - y)
        return 1;
    return an && bn && x < y + bn && y < x + an;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_TIME)
#if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_TIME_0 != 0xb03318a2UL ||                        \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_TIME_1 != 0x94e6ce2cUL ||                        \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_TIME_2 != 0xea538a13UL ||                        \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_TIME_3 != 0x716b9ef9UL ||                        \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_TIME_4 != 0xab978f08UL ||                        \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_TIME_5 != 0xf6305c24UL ||                        \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_TIME_6 != 0x1c187455UL ||                        \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_TIME_7 != 0x11fa68ebUL
#error "Conflicting same-name bounded record/interface ABI profiles"
#endif
#else
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_TIME 1
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_TIME_0 0xb03318a2UL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_TIME_1 0x94e6ce2cUL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_TIME_2 0xea538a13UL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_TIME_3 0x716b9ef9UL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_TIME_4 0xab978f08UL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_TIME_5 0xf6305c24UL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_TIME_6 0x1c187455UL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_TIME_7 0x11fa68ebUL

/**
 * @brief Complete bounded canonical Time value.
 * @details Signed seconds plus nanoseconds in [0, 1000000000), preserving negative ROS time values. This inline
 * C value owns its active bytes; the canonical payload is little-endian field data, not CDR or a native struct
 * image.
 */
typedef struct roswasmc_bounded_2_builtin_interfaces_msg_Time
{
    /** @brief Declared field sec; canonical capacity is part of CODEC_IDENTITY. */
    int32_t sec;
    /** @brief Declared field nanosec; canonical capacity is part of CODEC_IDENTITY. */
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
static inline int
roswasmc_bounded_2_builtin_interfaces_msg_Time_valid(roswasmc_bounded_2_builtin_interfaces_msg_Time const* value)
{
    if (!value)
        return 0;
    if (value->nanosec >= 1000000000)
        return 0;
    return 1;
}

/**
 * @brief Measure the active Time canonical payload.
 * @details @pre value must already pass the matching valid function; this low-level routine performs no
 * validation. @return Exact active byte count without unused capacity, native padding or CDR framing.
 * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
 */
static inline size_t
roswasmc_bounded_2_builtin_interfaces_msg_Time_wire_size(roswasmc_bounded_2_builtin_interfaces_msg_Time const* value)
{
    size_t n = 0;
    (void)value;
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
static inline void roswasmc_bounded_2_builtin_interfaces_msg_Time_write_fields(
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
static inline int roswasmc_bounded_2_builtin_interfaces_msg_Time_read_fields(
    unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_2_builtin_interfaces_msg_Time* value)
{
    if (*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->sec, &bits, 4);
    }
    *offset += 4;
    if (*offset > n || n - *offset < 4)
        return 0;
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
static inline uint32_t roswasmc_bounded_2_builtin_interfaces_msg_Time_encode(
    roswasmc_bounded_2_builtin_interfaces_msg_Time const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if (!length || !roswasmc_bounded_2_builtin_interfaces_msg_Time_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_builtin_interfaces_msg_Time_wire_size(value);
    if (capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if ((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) ||
        uwvm_bounded_overlap(length, sizeof *length, output, n) ||
        uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
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
static inline uint32_t roswasmc_bounded_2_builtin_interfaces_msg_Time_decode(
    void const* input, size_t length, roswasmc_bounded_2_builtin_interfaces_msg_Time* value)
{
    roswasmc_bounded_2_builtin_interfaces_msg_Time next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_builtin_interfaces_msg_Time);
    size_t offset = 0;
    if (!value || (length && !input) || length < 8u || length > 8u ||
        uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if (!roswasmc_bounded_2_builtin_interfaces_msg_Time_read_fields(
            (unsigned char const*)input, length, &offset, &next) ||
        offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER)
#if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_0 != 0xa16a262aUL ||                                \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_1 != 0x1e4d1269UL ||                                \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_2 != 0x24a0bfefUL ||                                \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_3 != 0x8eb4c810UL ||                                \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_4 != 0xd7e7d5bbUL ||                                \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_5 != 0x2fdb6b25UL ||                                \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_6 != 0xbe6c47b3UL ||                                \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_7 != 0x0daf9e91UL
#error "Conflicting same-name bounded record/interface ABI profiles"
#endif
#else
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER 1
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_0 0xa16a262aUL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_1 0x1e4d1269UL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_2 0x24a0bfefUL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_3 0x8eb4c810UL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_4 0xd7e7d5bbUL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_5 0x2fdb6b25UL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_6 0xbe6c47b3UL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_7 0x0daf9e91UL

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
    /** @brief Declared field stamp; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_builtin_interfaces_msg_Time stamp;
    /** @brief Declared field frame_id; canonical capacity is part of CODEC_IDENTITY. */
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
static inline int roswasmc_bounded_2_std_msgs_msg_Header_valid(roswasmc_bounded_2_std_msgs_msg_Header const* value)
{
    if (!value)
        return 0;
    if (!roswasmc_bounded_2_builtin_interfaces_msg_Time_valid(&value->stamp))
        return 0;
    if (value->frame_id.size > 64u || !uwvm_bounded_utf8(value->frame_id.data, value->frame_id.size))
        return 0;
    return 1;
}

/**
 * @brief Measure the active Header canonical payload.
 * @details @pre value must already pass the matching valid function; this low-level routine performs no
 * validation. @return Exact active byte count without unused capacity, native padding or CDR framing.
 * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
 */
static inline size_t
roswasmc_bounded_2_std_msgs_msg_Header_wire_size(roswasmc_bounded_2_std_msgs_msg_Header const* value)
{
    size_t n = 0;
    (void)value;
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
static inline void roswasmc_bounded_2_std_msgs_msg_Header_write_fields(
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
static inline int roswasmc_bounded_2_std_msgs_msg_Header_read_fields(unsigned char const* p,
                                                                     size_t n,
                                                                     size_t* offset,
                                                                     roswasmc_bounded_2_std_msgs_msg_Header* value)
{
    if (!roswasmc_bounded_2_builtin_interfaces_msg_Time_read_fields(p, n, offset, &value->stamp))
        return 0;
    if (*offset > n || n - *offset < 4)
        return 0;
    value->frame_id.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if (value->frame_id.size > 64u || value->frame_id.size > n - *offset)
        return 0;
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
static inline uint32_t roswasmc_bounded_2_std_msgs_msg_Header_encode(
    roswasmc_bounded_2_std_msgs_msg_Header const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if (!length || !roswasmc_bounded_2_std_msgs_msg_Header_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_std_msgs_msg_Header_wire_size(value);
    if (capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if ((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) ||
        uwvm_bounded_overlap(length, sizeof *length, output, n) ||
        uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
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
static inline uint32_t roswasmc_bounded_2_std_msgs_msg_Header_decode(void const* input,
                                                                     size_t length,
                                                                     roswasmc_bounded_2_std_msgs_msg_Header* value)
{
    roswasmc_bounded_2_std_msgs_msg_Header next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_std_msgs_msg_Header);
    size_t offset = 0;
    if (!value || (length && !input) || length < 12u || length > 76u ||
        uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if (!roswasmc_bounded_2_std_msgs_msg_Header_read_fields((unsigned char const*)input, length, &offset, &next) ||
        offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POINT)
#if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POINT_0 != 0x8b3c6967UL ||                            \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POINT_1 != 0xc3fea7ebUL ||                            \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POINT_2 != 0x123f800eUL ||                            \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POINT_3 != 0x30251b26UL ||                            \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POINT_4 != 0xa9ce9fc2UL ||                            \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POINT_5 != 0xcf8f0eefUL ||                            \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POINT_6 != 0x2689966bUL ||                            \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POINT_7 != 0x16c3767bUL
#error "Conflicting same-name bounded record/interface ABI profiles"
#endif
#else
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POINT 1
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POINT_0 0x8b3c6967UL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POINT_1 0xc3fea7ebUL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POINT_2 0x123f800eUL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POINT_3 0x30251b26UL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POINT_4 0xa9ce9fc2UL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POINT_5 0xcf8f0eefUL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POINT_6 0x2689966bUL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POINT_7 0x16c3767bUL

/**
 * @brief Complete bounded canonical Point value.
 * @details Three finite binary64 components in the containing message frame. This inline C value owns its active
 * bytes; the canonical payload is little-endian field data, not CDR or a native struct image.
 */
typedef struct roswasmc_bounded_2_geometry_msgs_msg_Point
{
    /** @brief Declared field x; canonical capacity is part of CODEC_IDENTITY. */
    double x;
    /** @brief Declared field y; canonical capacity is part of CODEC_IDENTITY. */
    double y;
    /** @brief Declared field z; canonical capacity is part of CODEC_IDENTITY. */
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
static inline int
roswasmc_bounded_2_geometry_msgs_msg_Point_valid(roswasmc_bounded_2_geometry_msgs_msg_Point const* value)
{
    if (!value)
        return 0;
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->x, 8);
        if ((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
            return 0;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->y, 8);
        if ((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
            return 0;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->z, 8);
        if ((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
            return 0;
    }
    return 1;
}

/**
 * @brief Measure the active Point canonical payload.
 * @details @pre value must already pass the matching valid function; this low-level routine performs no
 * validation. @return Exact active byte count without unused capacity, native padding or CDR framing.
 * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
 */
static inline size_t
roswasmc_bounded_2_geometry_msgs_msg_Point_wire_size(roswasmc_bounded_2_geometry_msgs_msg_Point const* value)
{
    size_t n = 0;
    (void)value;
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
static inline void roswasmc_bounded_2_geometry_msgs_msg_Point_write_fields(
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
static inline int roswasmc_bounded_2_geometry_msgs_msg_Point_read_fields(
    unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_2_geometry_msgs_msg_Point* value)
{
    if (*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->x, &bits, 8);
    }
    *offset += 8;
    if (*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->y, &bits, 8);
    }
    *offset += 8;
    if (*offset > n || n - *offset < 8)
        return 0;
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
static inline uint32_t roswasmc_bounded_2_geometry_msgs_msg_Point_encode(
    roswasmc_bounded_2_geometry_msgs_msg_Point const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if (!length || !roswasmc_bounded_2_geometry_msgs_msg_Point_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_geometry_msgs_msg_Point_wire_size(value);
    if (capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if ((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) ||
        uwvm_bounded_overlap(length, sizeof *length, output, n) ||
        uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
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
static inline uint32_t roswasmc_bounded_2_geometry_msgs_msg_Point_decode(
    void const* input, size_t length, roswasmc_bounded_2_geometry_msgs_msg_Point* value)
{
    roswasmc_bounded_2_geometry_msgs_msg_Point next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_geometry_msgs_msg_Point);
    size_t offset = 0;
    if (!value || (length && !input) || length < 24u || length > 24u ||
        uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if (!roswasmc_bounded_2_geometry_msgs_msg_Point_read_fields((unsigned char const*)input, length, &offset, &next) ||
        offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_QUATERNION)
#if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_QUATERNION_0 != 0x32466649UL ||                       \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_QUATERNION_1 != 0x70bd4a02UL ||                       \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_QUATERNION_2 != 0x3cfd577aUL ||                       \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_QUATERNION_3 != 0x1083fafaUL ||                       \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_QUATERNION_4 != 0xb30821e4UL ||                       \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_QUATERNION_5 != 0x3d13ef65UL ||                       \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_QUATERNION_6 != 0xaa633f77UL ||                       \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_QUATERNION_7 != 0x40e797edUL
#error "Conflicting same-name bounded record/interface ABI profiles"
#endif
#else
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_QUATERNION 1
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_QUATERNION_0 0x32466649UL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_QUATERNION_1 0x70bd4a02UL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_QUATERNION_2 0x3cfd577aUL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_QUATERNION_3 0x1083fafaUL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_QUATERNION_4 0xb30821e4UL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_QUATERNION_5 0x3d13ef65UL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_QUATERNION_6 0xaa633f77UL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_QUATERNION_7 0x40e797edUL

/**
 * @brief Complete bounded canonical Quaternion value.
 * @details Four finite binary64 components. The explicit default initializer sets w=1 and x=y=z=0; validation
 * does not normalize or enforce unit length. This inline C value owns its active bytes; the canonical payload is
 * little-endian field data, not CDR or a native struct image.
 */
typedef struct roswasmc_bounded_2_geometry_msgs_msg_Quaternion
{
    /** @brief Declared field x; canonical capacity is part of CODEC_IDENTITY. */
    double x;
    /** @brief Declared field y; canonical capacity is part of CODEC_IDENTITY. */
    double y;
    /** @brief Declared field z; canonical capacity is part of CODEC_IDENTITY. */
    double z;
    /** @brief Declared field w; canonical capacity is part of CODEC_IDENTITY. */
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
static inline uint32_t
roswasmc_bounded_2_geometry_msgs_msg_Quaternion_default(roswasmc_bounded_2_geometry_msgs_msg_Quaternion* value)
{
    roswasmc_bounded_2_geometry_msgs_msg_Quaternion next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_geometry_msgs_msg_Quaternion);
    if (!value)
        return UWVM_BOUNDED_INVALID;
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
static inline int
roswasmc_bounded_2_geometry_msgs_msg_Quaternion_valid(roswasmc_bounded_2_geometry_msgs_msg_Quaternion const* value)
{
    if (!value)
        return 0;
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->x, 8);
        if ((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
            return 0;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->y, 8);
        if ((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
            return 0;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->z, 8);
        if ((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
            return 0;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->w, 8);
        if ((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
            return 0;
    }
    return 1;
}

/**
 * @brief Measure the active Quaternion canonical payload.
 * @details @pre value must already pass the matching valid function; this low-level routine performs no
 * validation. @return Exact active byte count without unused capacity, native padding or CDR framing.
 * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
 */
static inline size_t
roswasmc_bounded_2_geometry_msgs_msg_Quaternion_wire_size(roswasmc_bounded_2_geometry_msgs_msg_Quaternion const* value)
{
    size_t n = 0;
    (void)value;
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
static inline void roswasmc_bounded_2_geometry_msgs_msg_Quaternion_write_fields(
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
static inline int roswasmc_bounded_2_geometry_msgs_msg_Quaternion_read_fields(
    unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_2_geometry_msgs_msg_Quaternion* value)
{
    if (*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->x, &bits, 8);
    }
    *offset += 8;
    if (*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->y, &bits, 8);
    }
    *offset += 8;
    if (*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->z, &bits, 8);
    }
    *offset += 8;
    if (*offset > n || n - *offset < 8)
        return 0;
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
static inline uint32_t roswasmc_bounded_2_geometry_msgs_msg_Quaternion_encode(
    roswasmc_bounded_2_geometry_msgs_msg_Quaternion const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if (!length || !roswasmc_bounded_2_geometry_msgs_msg_Quaternion_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_geometry_msgs_msg_Quaternion_wire_size(value);
    if (capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if ((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) ||
        uwvm_bounded_overlap(length, sizeof *length, output, n) ||
        uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
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
static inline uint32_t roswasmc_bounded_2_geometry_msgs_msg_Quaternion_decode(
    void const* input, size_t length, roswasmc_bounded_2_geometry_msgs_msg_Quaternion* value)
{
    roswasmc_bounded_2_geometry_msgs_msg_Quaternion next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_geometry_msgs_msg_Quaternion);
    size_t offset = 0;
    if (!value || (length && !input) || length < 32u || length > 32u ||
        uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if (!roswasmc_bounded_2_geometry_msgs_msg_Quaternion_read_fields(
            (unsigned char const*)input, length, &offset, &next) ||
        offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSE)
#if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSE_0 != 0x73a5cf4aUL ||                             \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSE_1 != 0x7e313663UL ||                             \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSE_2 != 0x4a5eda93UL ||                             \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSE_3 != 0xfed15b2aUL ||                             \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSE_4 != 0xf5cc5920UL ||                             \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSE_5 != 0xcea6a057UL ||                             \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSE_6 != 0x7145db3dUL ||                             \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSE_7 != 0xc070de58UL
#error "Conflicting same-name bounded record/interface ABI profiles"
#endif
#else
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSE 1
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSE_0 0x73a5cf4aUL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSE_1 0x7e313663UL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSE_2 0x4a5eda93UL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSE_3 0xfed15b2aUL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSE_4 0xf5cc5920UL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSE_5 0xcea6a057UL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSE_6 0x7145db3dUL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSE_7 0xc070de58UL

/**
 * @brief Complete bounded canonical Pose value.
 * @details Complete position and quaternion; nested declared defaults require the explicit default initializer.
 * This inline C value owns its active bytes; the canonical payload is little-endian field data, not CDR or a
 * native struct image.
 */
typedef struct roswasmc_bounded_2_geometry_msgs_msg_Pose
{
    /** @brief Declared field position; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_geometry_msgs_msg_Point position;
    /** @brief Declared field orientation; canonical capacity is part of CODEC_IDENTITY. */
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
static inline uint32_t
roswasmc_bounded_2_geometry_msgs_msg_Pose_default(roswasmc_bounded_2_geometry_msgs_msg_Pose* value)
{
    roswasmc_bounded_2_geometry_msgs_msg_Pose next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_geometry_msgs_msg_Pose);
    if (!value)
        return UWVM_BOUNDED_INVALID;
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
static inline int
roswasmc_bounded_2_geometry_msgs_msg_Pose_valid(roswasmc_bounded_2_geometry_msgs_msg_Pose const* value)
{
    if (!value)
        return 0;
    if (!roswasmc_bounded_2_geometry_msgs_msg_Point_valid(&value->position))
        return 0;
    if (!roswasmc_bounded_2_geometry_msgs_msg_Quaternion_valid(&value->orientation))
        return 0;
    return 1;
}

/**
 * @brief Measure the active Pose canonical payload.
 * @details @pre value must already pass the matching valid function; this low-level routine performs no
 * validation. @return Exact active byte count without unused capacity, native padding or CDR framing.
 * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
 */
static inline size_t
roswasmc_bounded_2_geometry_msgs_msg_Pose_wire_size(roswasmc_bounded_2_geometry_msgs_msg_Pose const* value)
{
    size_t n = 0;
    (void)value;
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
static inline void roswasmc_bounded_2_geometry_msgs_msg_Pose_write_fields(
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
static inline int roswasmc_bounded_2_geometry_msgs_msg_Pose_read_fields(
    unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_2_geometry_msgs_msg_Pose* value)
{
    if (!roswasmc_bounded_2_geometry_msgs_msg_Point_read_fields(p, n, offset, &value->position))
        return 0;
    if (!roswasmc_bounded_2_geometry_msgs_msg_Quaternion_read_fields(p, n, offset, &value->orientation))
        return 0;
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
static inline uint32_t roswasmc_bounded_2_geometry_msgs_msg_Pose_encode(
    roswasmc_bounded_2_geometry_msgs_msg_Pose const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if (!length || !roswasmc_bounded_2_geometry_msgs_msg_Pose_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_geometry_msgs_msg_Pose_wire_size(value);
    if (capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if ((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) ||
        uwvm_bounded_overlap(length, sizeof *length, output, n) ||
        uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
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
static inline uint32_t roswasmc_bounded_2_geometry_msgs_msg_Pose_decode(
    void const* input, size_t length, roswasmc_bounded_2_geometry_msgs_msg_Pose* value)
{
    roswasmc_bounded_2_geometry_msgs_msg_Pose next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_geometry_msgs_msg_Pose);
    size_t offset = 0;
    if (!value || (length && !input) || length < 56u || length > 56u ||
        uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if (!roswasmc_bounded_2_geometry_msgs_msg_Pose_read_fields((unsigned char const*)input, length, &offset, &next) ||
        offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSEWITHCOVARIANCE)
#if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSEWITHCOVARIANCE_0 != 0x8b04ce4fUL ||               \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSEWITHCOVARIANCE_1 != 0x5fe2758aUL ||               \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSEWITHCOVARIANCE_2 != 0x4458f4fcUL ||               \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSEWITHCOVARIANCE_3 != 0x608cb246UL ||               \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSEWITHCOVARIANCE_4 != 0x0362599dUL ||               \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSEWITHCOVARIANCE_5 != 0xc29f323dUL ||               \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSEWITHCOVARIANCE_6 != 0x9ec22b5eUL ||               \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSEWITHCOVARIANCE_7 != 0xae7cf81aUL
#error "Conflicting same-name bounded record/interface ABI profiles"
#endif
#else
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSEWITHCOVARIANCE 1
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSEWITHCOVARIANCE_0 0x8b04ce4fUL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSEWITHCOVARIANCE_1 0x5fe2758aUL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSEWITHCOVARIANCE_2 0x4458f4fcUL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSEWITHCOVARIANCE_3 0x608cb246UL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSEWITHCOVARIANCE_4 0x0362599dUL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSEWITHCOVARIANCE_5 0xc29f323dUL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSEWITHCOVARIANCE_6 0x9ec22b5eUL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSEWITHCOVARIANCE_7 0xae7cf81aUL

/**
 * @brief Complete bounded canonical PoseWithCovariance value.
 * @details Complete pose and all 36 row-major covariance entries. No element is removed or normalized. This
 * inline C value owns its active bytes; the canonical payload is little-endian field data, not CDR or a native
 * struct image.
 */
typedef struct roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance
{
    /** @brief Declared field pose; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_geometry_msgs_msg_Pose pose;
    /** @brief Declared field covariance; canonical capacity is part of CODEC_IDENTITY. */
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
static inline uint32_t roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance_default(
    roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance* value)
{
    roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance);
    if (!value)
        return UWVM_BOUNDED_INVALID;
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
static inline int roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance_valid(
    roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance const* value)
{
    if (!value)
        return 0;
    if (!roswasmc_bounded_2_geometry_msgs_msg_Pose_valid(&value->pose))
        return 0;
    {
        size_t i;
        for (i = 0; i < 36u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->covariance[i], 8);
                if ((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                    return 0;
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
static inline size_t roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance_wire_size(
    roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance const* value)
{
    size_t n = 0;
    (void)value;
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
static inline void roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance_write_fields(
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
static inline int roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance_read_fields(
    unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance* value)
{
    if (!roswasmc_bounded_2_geometry_msgs_msg_Pose_read_fields(p, n, offset, &value->pose))
        return 0;
    {
        size_t i;
        for (i = 0; i < 36u; ++i)
        {
            if (*offset > n || n - *offset < 8)
                return 0;
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
static inline uint32_t roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance_encode(
    roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if (!length || !roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance_wire_size(value);
    if (capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if ((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) ||
        uwvm_bounded_overlap(length, sizeof *length, output, n) ||
        uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
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
static inline uint32_t roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance_decode(
    void const* input, size_t length, roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance* value)
{
    roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance);
    size_t offset = 0;
    if (!value || (length && !input) || length < 344u || length > 344u ||
        uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if (!roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance_read_fields(
            (unsigned char const*)input, length, &offset, &next) ||
        offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSEWITHCOVARIANCESTAMPED)
#if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSEWITHCOVARIANCESTAMPED_0 != 0xc26dc6bdUL ||        \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSEWITHCOVARIANCESTAMPED_1 != 0xbfcdd4f5UL ||        \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSEWITHCOVARIANCESTAMPED_2 != 0xddd6eebcUL ||        \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSEWITHCOVARIANCESTAMPED_3 != 0xfacc08b5UL ||        \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSEWITHCOVARIANCESTAMPED_4 != 0x9eca365fUL ||        \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSEWITHCOVARIANCESTAMPED_5 != 0x3770ce96UL ||        \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSEWITHCOVARIANCESTAMPED_6 != 0x88989277UL ||        \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSEWITHCOVARIANCESTAMPED_7 != 0x720fc5efUL
#error "Conflicting same-name bounded record/interface ABI profiles"
#endif
#else
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSEWITHCOVARIANCESTAMPED 1
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSEWITHCOVARIANCESTAMPED_0 0xc26dc6bdUL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSEWITHCOVARIANCESTAMPED_1 0xbfcdd4f5UL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSEWITHCOVARIANCESTAMPED_2 0xddd6eebcUL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSEWITHCOVARIANCESTAMPED_3 0xfacc08b5UL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSEWITHCOVARIANCESTAMPED_4 0x9eca365fUL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSEWITHCOVARIANCESTAMPED_5 0x3770ce96UL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSEWITHCOVARIANCESTAMPED_6 0x88989277UL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSEWITHCOVARIANCESTAMPED_7 0x720fc5efUL

/**
 * @brief Complete bounded canonical PoseWithCovarianceStamped value.
 * @details Original header plus complete nested pose and covariance, including its frame identifier. This inline
 * C value owns its active bytes; the canonical payload is little-endian field data, not CDR or a native struct
 * image.
 */
typedef struct roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovarianceStamped
{
    /** @brief Declared field header; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_std_msgs_msg_Header header;
    /** @brief Declared field pose; canonical capacity is part of CODEC_IDENTITY. */
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
static inline uint32_t roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovarianceStamped_default(
    roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovarianceStamped* value)
{
    roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovarianceStamped next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovarianceStamped);
    if (!value)
        return UWVM_BOUNDED_INVALID;
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
static inline int roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovarianceStamped_valid(
    roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovarianceStamped const* value)
{
    if (!value)
        return 0;
    if (!roswasmc_bounded_2_std_msgs_msg_Header_valid(&value->header))
        return 0;
    if (!roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance_valid(&value->pose))
        return 0;
    return 1;
}

/**
 * @brief Measure the active PoseWithCovarianceStamped canonical payload.
 * @details @pre value must already pass the matching valid function; this low-level routine performs no
 * validation. @return Exact active byte count without unused capacity, native padding or CDR framing.
 * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
 */
static inline size_t roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovarianceStamped_wire_size(
    roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovarianceStamped const* value)
{
    size_t n = 0;
    (void)value;
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
static inline void roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovarianceStamped_write_fields(
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
static inline int roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovarianceStamped_read_fields(
    unsigned char const* p,
    size_t n,
    size_t* offset,
    roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovarianceStamped* value)
{
    if (!roswasmc_bounded_2_std_msgs_msg_Header_read_fields(p, n, offset, &value->header))
        return 0;
    if (!roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance_read_fields(p, n, offset, &value->pose))
        return 0;
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
static inline uint32_t roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovarianceStamped_encode(
    roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovarianceStamped const* value,
    void* output,
    size_t capacity,
    size_t* length)
{
    size_t n, offset = 0;
    if (!length || !roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovarianceStamped_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovarianceStamped_wire_size(value);
    if (capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if ((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) ||
        uwvm_bounded_overlap(length, sizeof *length, output, n) ||
        uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
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
static inline uint32_t roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovarianceStamped_decode(
    void const* input, size_t length, roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovarianceStamped* value)
{
    roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovarianceStamped next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovarianceStamped);
    size_t offset = 0;
    if (!value || (length && !input) || length < 356u || length > 420u ||
        uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if (!roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovarianceStamped_read_fields(
            (unsigned char const*)input, length, &offset, &next) ||
        offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_ISAAC_ROS_APRILTAG_INTERFACES_MSG_APRILTAGDETECTION)
#if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_ISAAC_ROS_APRILTAG_INTERFACES_MSG_APRILTAGDETECTION_0 !=                \
        0x05cb0d69UL ||                                                                                                \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_ISAAC_ROS_APRILTAG_INTERFACES_MSG_APRILTAGDETECTION_1 !=                \
        0x8c8991b2UL ||                                                                                                \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_ISAAC_ROS_APRILTAG_INTERFACES_MSG_APRILTAGDETECTION_2 !=                \
        0xec271801UL ||                                                                                                \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_ISAAC_ROS_APRILTAG_INTERFACES_MSG_APRILTAGDETECTION_3 !=                \
        0x7db9c598UL ||                                                                                                \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_ISAAC_ROS_APRILTAG_INTERFACES_MSG_APRILTAGDETECTION_4 !=                \
        0x90706984UL ||                                                                                                \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_ISAAC_ROS_APRILTAG_INTERFACES_MSG_APRILTAGDETECTION_5 !=                \
        0xb03efe1aUL ||                                                                                                \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_ISAAC_ROS_APRILTAG_INTERFACES_MSG_APRILTAGDETECTION_6 !=                \
        0xb2f356bcUL ||                                                                                                \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_ISAAC_ROS_APRILTAG_INTERFACES_MSG_APRILTAGDETECTION_7 != 0x38161deeUL
#error "Conflicting same-name bounded record/interface ABI profiles"
#endif
#else
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_ISAAC_ROS_APRILTAG_INTERFACES_MSG_APRILTAGDETECTION 1
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_ISAAC_ROS_APRILTAG_INTERFACES_MSG_APRILTAGDETECTION_0 0x05cb0d69UL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_ISAAC_ROS_APRILTAG_INTERFACES_MSG_APRILTAGDETECTION_1 0x8c8991b2UL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_ISAAC_ROS_APRILTAG_INTERFACES_MSG_APRILTAGDETECTION_2 0xec271801UL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_ISAAC_ROS_APRILTAG_INTERFACES_MSG_APRILTAGDETECTION_3 0x7db9c598UL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_ISAAC_ROS_APRILTAG_INTERFACES_MSG_APRILTAGDETECTION_4 0x90706984UL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_ISAAC_ROS_APRILTAG_INTERFACES_MSG_APRILTAGDETECTION_5 0xb03efe1aUL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_ISAAC_ROS_APRILTAG_INTERFACES_MSG_APRILTAGDETECTION_6 0xb2f356bcUL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_ISAAC_ROS_APRILTAG_INTERFACES_MSG_APRILTAGDETECTION_7 0x38161deeUL

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
    /** @brief Declared field family; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetection_family_text family;
    /** @brief Declared field id; canonical capacity is part of CODEC_IDENTITY. */
    int32_t id;
    /** @brief Declared field center; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_geometry_msgs_msg_Point center;
    /** @brief Declared field corners; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_geometry_msgs_msg_Point corners[4];
    /** @brief Declared field pose; canonical capacity is part of CODEC_IDENTITY. */
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
static inline uint32_t roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetection_default(
    roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetection* value)
{
    roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetection next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetection);
    if (!value)
        return UWVM_BOUNDED_INVALID;
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
static inline int roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetection_valid(
    roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetection const* value)
{
    if (!value)
        return 0;
    if (value->family.size > 64u || !uwvm_bounded_utf8(value->family.data, value->family.size))
        return 0;
    if (!roswasmc_bounded_2_geometry_msgs_msg_Point_valid(&value->center))
        return 0;
    {
        size_t i;
        for (i = 0; i < 4u; ++i)
        {
            if (!roswasmc_bounded_2_geometry_msgs_msg_Point_valid(&value->corners[i]))
                return 0;
        }
    }
    if (!roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovarianceStamped_valid(&value->pose))
        return 0;
    return 1;
}

/**
 * @brief Measure the active AprilTagDetection canonical payload.
 * @details @pre value must already pass the matching valid function; this low-level routine performs no
 * validation. @return Exact active byte count without unused capacity, native padding or CDR framing.
 * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
 */
static inline size_t roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetection_wire_size(
    roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetection const* value)
{
    size_t n = 0;
    (void)value;
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
static inline void roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetection_write_fields(
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
static inline int roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetection_read_fields(
    unsigned char const* p,
    size_t n,
    size_t* offset,
    roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetection* value)
{
    if (*offset > n || n - *offset < 4)
        return 0;
    value->family.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if (value->family.size > 64u || value->family.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->family.data, p + *offset, value->family.size);
    *offset += value->family.size;
    if (*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->id, &bits, 4);
    }
    *offset += 4;
    if (!roswasmc_bounded_2_geometry_msgs_msg_Point_read_fields(p, n, offset, &value->center))
        return 0;
    {
        size_t i;
        for (i = 0; i < 4u; ++i)
        {
            if (!roswasmc_bounded_2_geometry_msgs_msg_Point_read_fields(p, n, offset, &value->corners[i]))
                return 0;
        }
    }
    if (!roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovarianceStamped_read_fields(p, n, offset, &value->pose))
        return 0;
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
static inline uint32_t roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetection_encode(
    roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetection const* value,
    void* output,
    size_t capacity,
    size_t* length)
{
    size_t n, offset = 0;
    if (!length || !roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetection_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetection_wire_size(value);
    if (capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if ((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) ||
        uwvm_bounded_overlap(length, sizeof *length, output, n) ||
        uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
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
static inline uint32_t roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetection_decode(
    void const* input, size_t length, roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetection* value)
{
    roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetection next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetection);
    size_t offset = 0;
    if (!value || (length && !input) || length < 484u || length > 612u ||
        uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if (!roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetection_read_fields(
            (unsigned char const*)input, length, &offset, &next) ||
        offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_ISAAC_ROS_APRILTAG_INTERFACES_MSG_APRILTAGDETECTIONARRAY)
#if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_ISAAC_ROS_APRILTAG_INTERFACES_MSG_APRILTAGDETECTIONARRAY_0 !=           \
        0xd28268e1UL ||                                                                                                \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_ISAAC_ROS_APRILTAG_INTERFACES_MSG_APRILTAGDETECTIONARRAY_1 !=           \
        0x6a40ca7aUL ||                                                                                                \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_ISAAC_ROS_APRILTAG_INTERFACES_MSG_APRILTAGDETECTIONARRAY_2 !=           \
        0xd14d7cd0UL ||                                                                                                \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_ISAAC_ROS_APRILTAG_INTERFACES_MSG_APRILTAGDETECTIONARRAY_3 !=           \
        0x35b47a61UL ||                                                                                                \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_ISAAC_ROS_APRILTAG_INTERFACES_MSG_APRILTAGDETECTIONARRAY_4 !=           \
        0xbd5b6ecbUL ||                                                                                                \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_ISAAC_ROS_APRILTAG_INTERFACES_MSG_APRILTAGDETECTIONARRAY_5 !=           \
        0xe6f3b575UL ||                                                                                                \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_ISAAC_ROS_APRILTAG_INTERFACES_MSG_APRILTAGDETECTIONARRAY_6 !=           \
        0x5142b544UL ||                                                                                                \
    UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_ISAAC_ROS_APRILTAG_INTERFACES_MSG_APRILTAGDETECTIONARRAY_7 !=           \
        0xa7afcccfUL
#error "Conflicting same-name bounded record/interface ABI profiles"
#endif
#else
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_ISAAC_ROS_APRILTAG_INTERFACES_MSG_APRILTAGDETECTIONARRAY 1
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_ISAAC_ROS_APRILTAG_INTERFACES_MSG_APRILTAGDETECTIONARRAY_0          \
    0xd28268e1UL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_ISAAC_ROS_APRILTAG_INTERFACES_MSG_APRILTAGDETECTIONARRAY_1          \
    0x6a40ca7aUL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_ISAAC_ROS_APRILTAG_INTERFACES_MSG_APRILTAGDETECTIONARRAY_2          \
    0xd14d7cd0UL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_ISAAC_ROS_APRILTAG_INTERFACES_MSG_APRILTAGDETECTIONARRAY_3          \
    0x35b47a61UL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_ISAAC_ROS_APRILTAG_INTERFACES_MSG_APRILTAGDETECTIONARRAY_4          \
    0xbd5b6ecbUL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_ISAAC_ROS_APRILTAG_INTERFACES_MSG_APRILTAGDETECTIONARRAY_5          \
    0xe6f3b575UL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_ISAAC_ROS_APRILTAG_INTERFACES_MSG_APRILTAGDETECTIONARRAY_6          \
    0x5142b544UL
#define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_ISAAC_ROS_APRILTAG_INTERFACES_MSG_APRILTAGDETECTIONARRAY_7          \
    0xa7afcccfUL

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
    /** @brief Declared field header; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_std_msgs_msg_Header header;
    /** @brief Declared field detections; canonical capacity is part of CODEC_IDENTITY. */
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
static inline uint32_t roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray_default(
    roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray* value)
{
    roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray);
    if (!value)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}

/**
 * @brief Check all active fields of AprilTagDetectionArray without allocation.
 * @details @return Nonzero only for a non-NULL value satisfying every nested scalar, UTF-8 and length
 * constraint. No output is modified and no ROS authority is acquired.
 * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
 */
static inline int roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray_valid(
    roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray const* value)
{
    if (!value)
        return 0;
    if (!roswasmc_bounded_2_std_msgs_msg_Header_valid(&value->header))
        return 0;
    if (value->detections.size > 16u)
        return 0;
    {
        size_t i;
        for (i = 0; i < value->detections.size; ++i)
        {
            if (!roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetection_valid(
                    &value->detections.data[i]))
                return 0;
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
static inline size_t roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray_wire_size(
    roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray const* value)
{
    size_t n = 0;
    (void)value;
    n += roswasmc_bounded_2_std_msgs_msg_Header_wire_size(&value->header);
    n += 4;
    if (value->detections.size > 16u)
        return 0;
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
static inline void roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray_write_fields(
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
static inline int roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray_read_fields(
    unsigned char const* p,
    size_t n,
    size_t* offset,
    roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray* value)
{
    if (!roswasmc_bounded_2_std_msgs_msg_Header_read_fields(p, n, offset, &value->header))
        return 0;
    if (*offset > n || n - *offset < 4)
        return 0;
    value->detections.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if (value->detections.size > 16u)
        return 0;
    {
        size_t i;
        for (i = 0; i < value->detections.size; ++i)
        {
            if (!roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetection_read_fields(
                    p, n, offset, &value->detections.data[i]))
                return 0;
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
static inline uint32_t roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray_encode(
    roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray const* value,
    void* output,
    size_t capacity,
    size_t* length)
{
    size_t n, offset = 0;
    if (!length || !roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray_wire_size(value);
    if (capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if ((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) ||
        uwvm_bounded_overlap(length, sizeof *length, output, n) ||
        uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
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
static inline uint32_t roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray_decode(
    void const* input,
    size_t length,
    roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray* value)
{
    roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray);
    size_t offset = 0;
    if (!value || (length && !input) || length < 16u || length > 9872u ||
        uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if (!roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray_read_fields(
            (unsigned char const*)input, length, &offset, &next) ||
        offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#undef UWVM_BOUNDED_ASSERT
#endif
