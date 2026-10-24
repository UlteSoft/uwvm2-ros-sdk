/** @file Generated bounded-v2 canonical values; no native ROS serialization or authority.
 * Every dynamic field has inline caller-owned capacity. Encode validates and measures
 * the full value before writes; decode commits one temporary only after full validation.
 * Supply distinct record, byte and size-output storage; overlap is explicitly refused.
 * Empty Service/Action components use a C layout dummy that is never a wire field. */
#ifndef UWVM_NVIDIA_ISAAC_SIM_COMPLETE_RECORDS_96DDD80ABAED4D9F4D513FAD357A4917F0CEC15FD484EC8B5D78647DF2A4D903
#define UWVM_NVIDIA_ISAAC_SIM_COMPLETE_RECORDS_96DDD80ABAED4D9F4D513FAD357A4917F0CEC15FD484EC8B5D78647DF2A4D903
#include <float.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>
#ifndef UWVM_ROS_BOUNDED_CODEC_HELPERS
# define UWVM_ROS_BOUNDED_CODEC_HELPERS
# define UWVM_BOUNDED_INVALID 22u
# define UWVM_BOUNDED_TOO_LARGE 90u
/** @brief Initialize every aggregate field without language-specific partial-initializer warnings. */
# ifdef __cplusplus
#  define UWVM_BOUNDED_ZERO_VALUE(Type) Type()
# else
#  define UWVM_BOUNDED_ZERO_VALUE(Type) {0}
# endif
# if defined(__cplusplus) && __cplusplus >= 201103L
#  define UWVM_BOUNDED_ASSERT(x) static_assert(x, "canonical representation required")
# elif defined(__cplusplus)
#  define UWVM_BOUNDED_ASSERT(x) typedef char uwvm_bounded_representation_required[(x) ? 1 : -1]
# else
#  define UWVM_BOUNDED_ASSERT(x) _Static_assert(x, "canonical representation required")
# endif
UWVM_BOUNDED_ASSERT(CHAR_BIT == 8 && sizeof(float) == 4 && sizeof(double) == 8 && FLT_RADIX == 2 && FLT_MANT_DIG == 24 && DBL_MANT_DIG == 53 &&
                    FLT_MAX_EXP == 128 && DBL_MAX_EXP == 1024);

/** @brief Copy exact primitive/string bytes; compiler intrinsics avoid byte-at-a-time copies. */
static inline void uwvm_bounded_copy(void* out, void const* in, size_t n)
{
# if defined(__GNUC__) || defined(__clang__)
    __builtin_memcpy(out, in, n);
# else
    size_t i;
    for(i = 0; i < n; ++i)
        ((unsigned char*)out)[i] = ((unsigned char const*)in)[i];
# endif
}

static inline uint64_t uwvm_bounded_get(unsigned char const* p, unsigned n)
{
    uint64_t v = 0;
    unsigned i;
    for(i = 0; i < n; ++i)
        v |= (uint64_t)p[i] << (8 * i);
    return v;
}

static inline void uwvm_bounded_put(unsigned char* p, uint64_t v, unsigned n)
{
    unsigned i;
    for(i = 0; i < n; ++i)
        p[i] = (unsigned char)(v >> (8 * i));
}

/** @brief Strict Unicode scalar UTF-8, rejecting embedded NUL as required by this profile. */
static inline int uwvm_bounded_utf8(unsigned char const* p, size_t n)
{
    size_t i = 0;
    while(i < n)
    {
        unsigned b = p[i++], k, code, minimum;
        if(!b)
            return 0;
        if(b < 128)
            continue;
        if(b >= 194 && b <= 223)
        {
            k = 1;
            code = b & 31;
            minimum = 128;
        }
        else if(b >= 224 && b <= 239)
        {
            k = 2;
            code = b & 15;
            minimum = 2048;
        }
        else if(b >= 240 && b <= 244)
        {
            k = 3;
            code = b & 7;
            minimum = 65536;
        }
        else
            return 0;
        if(k > n - i)
            return 0;
        while(k--)
        {
            b = p[i++];
            if((b & 192) != 128)
                return 0;
            code = (code << 6) | (b & 63);
        }
        if(code < minimum || code > 1114111 || (code >= 55296 && code <= 57343))
            return 0;
    }
    return 1;
}

static inline int uwvm_bounded_overlap(void const* a, size_t an, void const* b, size_t bn)
{
    uintptr_t x = (uintptr_t)a, y = (uintptr_t)b;
    if((an && !a) || (bn && !b) || an > UINTPTR_MAX - x || bn > UINTPTR_MAX - y)
        return 1;
    return an && bn && x < y + bn && y < x + an;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_TIME)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_TIME_0 != 0xb03318a2UL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_TIME_1 != 0x94e6ce2cUL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_TIME_2 != 0xea538a13UL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_TIME_3 != 0x716b9ef9UL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_TIME_4 != 0xab978f08UL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_TIME_5 != 0xf6305c24UL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_TIME_6 != 0x1c187455UL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_TIME_7 != 0x11fa68ebUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_TIME 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_TIME_0 0xb03318a2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_TIME_1 0x94e6ce2cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_TIME_2 0xea538a13UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_TIME_3 0x716b9ef9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_TIME_4 0xab978f08UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_TIME_5 0xf6305c24UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_TIME_6 0x1c187455UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_TIME_7 0x11fa68ebUL

/** @brief Complete ROS2 builtin_interfaces/msg/Time value; no field projects away native data. */
typedef struct roswasmc_bounded_2_builtin_interfaces_msg_Time
{
    /** @brief Declared field sec; canonical capacity is part of CODEC_IDENTITY. */
    int32_t sec;
    /** @brief Declared field nanosec; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t nanosec;
} roswasmc_bounded_2_builtin_interfaces_msg_Time;

# define ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_TIME_MAX_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_TIME_MIN_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_TIME_CODEC_IDENTITY "UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7"

/**
 * @brief Validate every initialized field without allocation or ROS effects.
 * @param value Caller-owned complete record; a null pointer is refused.
 * @return One when every field satisfies its canonical bounds, otherwise zero.
 */
static inline int roswasmc_bounded_2_builtin_interfaces_msg_Time_valid(roswasmc_bounded_2_builtin_interfaces_msg_Time const* value)
{
    if(!value)
        return 0;
    if(value->nanosec >= 1000000000)
        return 0;
    return 1;
}

/**
 * @brief Measure the exact complete canonical body in bytes.
 * @param value Caller-owned record already accepted by the matching validator.
 * @return Exact active-field size; inline capacity is never emitted as payload.
 * @pre The complete record has passed its matching valid function.
 */
static inline size_t roswasmc_bounded_2_builtin_interfaces_msg_Time_wire_size(roswasmc_bounded_2_builtin_interfaces_msg_Time const* value)
{
    size_t n = 0;
    (void)value;
    n += 4;
    n += 4;
    return n;
}

/**
 * @brief Write validated fields into the encoder-owned checked cursor.
 * @param value Complete initialized record already validated by the encoder.
 * @param p Writable buffer covering the premeasured complete body.
 * @param offset Encoder-owned cursor in bytes; advanced by the exact body extent.
 * @pre Capacity and every source/output overlap have already been checked.
 */
static inline void
    roswasmc_bounded_2_builtin_interfaces_msg_Time_write_fields(roswasmc_bounded_2_builtin_interfaces_msg_Time const* value, unsigned char* p, size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->sec, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, (uint64_t)value->nanosec, 4);
    *offset += 4;
}

/**
 * @brief Read every field into a private decoder temporary with checked bounds.
 * @param p Read-only n-byte canonical buffer retained by the caller.
 * @param n Exact input extent in bytes.
 * @param offset Decoder-owned checked byte cursor; advanced only within n.
 * @param value Private temporary; a failed read must never publish this value.
 * @return One for a complete valid component or zero on malformed input.
 */
static inline int roswasmc_bounded_2_builtin_interfaces_msg_Time_read_fields(unsigned char const* p,
                                                                             size_t n,
                                                                             size_t* offset,
                                                                             roswasmc_bounded_2_builtin_interfaces_msg_Time* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->sec, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->nanosec, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_2_builtin_interfaces_msg_Time_valid(value);
}

/**
 * @brief Encode a complete value transactionally into caller-owned bytes.
 * @details Validation and exact size checks precede every write. The record,
 * output buffer and length result must occupy disjoint live storage.
 * @param value Complete initialized source record, retained by the caller.
 * @param output Writable capacity-byte buffer; null is valid only for an empty body.
 * @param capacity Number of writable bytes, never a message element count.
 * @param length Writable exact-length result; unchanged when encoding is refused.
 * @return Zero on success, 22 for invalid values/storage or 90 for insufficient capacity.
 */
static inline uint32_t roswasmc_bounded_2_builtin_interfaces_msg_Time_encode(roswasmc_bounded_2_builtin_interfaces_msg_Time const* value,
                                                                             void* output,
                                                                             size_t capacity,
                                                                             size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_builtin_interfaces_msg_Time_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_builtin_interfaces_msg_Time_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_builtin_interfaces_msg_Time_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/**
 * @brief Decode an exact complete body before committing the destination.
 * @details Truncation, trailing bytes, nonfinite numbers, malformed UTF-8 and
 * quota violations are refused. No output prefix commits on failure.
 * @param input Read-only length-byte canonical body, disjoint from the result.
 * @param length Exact available byte extent; no native struct layout is accepted.
 * @param value Initialized caller-owned destination, unchanged on refusal.
 * @return Zero on success or 22 for malformed bytes, invalid storage or bounds.
 */
static inline uint32_t
    roswasmc_bounded_2_builtin_interfaces_msg_Time_decode(void const* input, size_t length, roswasmc_bounded_2_builtin_interfaces_msg_Time* value)
{
    roswasmc_bounded_2_builtin_interfaces_msg_Time next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_builtin_interfaces_msg_Time);
    size_t offset = 0;
    if(!value || (length && !input) || length < 8u || length > 8u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_builtin_interfaces_msg_Time_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_0 != 0xa16a262aUL ||                                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_1 != 0x1e4d1269UL ||                                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_2 != 0x24a0bfefUL ||                                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_3 != 0x8eb4c810UL ||                                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_4 != 0xd7e7d5bbUL ||                                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_5 != 0x2fdb6b25UL ||                                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_6 != 0xbe6c47b3UL ||                                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_7 != 0x0daf9e91UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_0 0xa16a262aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_1 0x1e4d1269UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_2 0x24a0bfefUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_3 0x8eb4c810UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_4 0xd7e7d5bbUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_5 0x2fdb6b25UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_6 0xbe6c47b3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_7 0x0daf9e91UL

/** @brief UTF-8 byte storage for std_msgs/msg/Header.frame_id; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[64];
} roswasmc_bounded_2_std_msgs_msg_Header_frame_id_text;

/** @brief Complete ROS2 std_msgs/msg/Header value; no field projects away native data. */
typedef struct roswasmc_bounded_2_std_msgs_msg_Header
{
    /** @brief Declared field stamp; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_builtin_interfaces_msg_Time stamp;
    /** @brief Declared field frame_id; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_std_msgs_msg_Header_frame_id_text frame_id;
} roswasmc_bounded_2_std_msgs_msg_Header;

# define ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_MAX_WIRE_BYTES 76u
# define ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_MIN_WIRE_BYTES 12u
# define ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_CODEC_IDENTITY "UWVMROS1_afba9e74be3c5e3321750c1c4c30ba2925269f75b9da43a6d5c1e93d293d7396"

/**
 * @brief Validate every initialized field without allocation or ROS effects.
 * @param value Caller-owned complete record; a null pointer is refused.
 * @return One when every field satisfies its canonical bounds, otherwise zero.
 */
static inline int roswasmc_bounded_2_std_msgs_msg_Header_valid(roswasmc_bounded_2_std_msgs_msg_Header const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_builtin_interfaces_msg_Time_valid(&value->stamp))
        return 0;
    if(value->frame_id.size > 64u || !uwvm_bounded_utf8(value->frame_id.data, value->frame_id.size))
        return 0;
    return 1;
}

/**
 * @brief Measure the exact complete canonical body in bytes.
 * @param value Caller-owned record already accepted by the matching validator.
 * @return Exact active-field size; inline capacity is never emitted as payload.
 * @pre The complete record has passed its matching valid function.
 */
static inline size_t roswasmc_bounded_2_std_msgs_msg_Header_wire_size(roswasmc_bounded_2_std_msgs_msg_Header const* value)
{
    size_t n = 0;
    (void)value;
    n += roswasmc_bounded_2_builtin_interfaces_msg_Time_wire_size(&value->stamp);
    n += 4 + value->frame_id.size;
    return n;
}

/**
 * @brief Write validated fields into the encoder-owned checked cursor.
 * @param value Complete initialized record already validated by the encoder.
 * @param p Writable buffer covering the premeasured complete body.
 * @param offset Encoder-owned cursor in bytes; advanced by the exact body extent.
 * @pre Capacity and every source/output overlap have already been checked.
 */
static inline void roswasmc_bounded_2_std_msgs_msg_Header_write_fields(roswasmc_bounded_2_std_msgs_msg_Header const* value, unsigned char* p, size_t* offset)
{
    roswasmc_bounded_2_builtin_interfaces_msg_Time_write_fields(&value->stamp, p, offset);
    uwvm_bounded_put(p + *offset, value->frame_id.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->frame_id.data, value->frame_id.size);
    *offset += value->frame_id.size;
}

/**
 * @brief Read every field into a private decoder temporary with checked bounds.
 * @param p Read-only n-byte canonical buffer retained by the caller.
 * @param n Exact input extent in bytes.
 * @param offset Decoder-owned checked byte cursor; advanced only within n.
 * @param value Private temporary; a failed read must never publish this value.
 * @return One for a complete valid component or zero on malformed input.
 */
static inline int
    roswasmc_bounded_2_std_msgs_msg_Header_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_2_std_msgs_msg_Header* value)
{
    if(!roswasmc_bounded_2_builtin_interfaces_msg_Time_read_fields(p, n, offset, &value->stamp))
        return 0;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->frame_id.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->frame_id.size > 64u || value->frame_id.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->frame_id.data, p + *offset, value->frame_id.size);
    *offset += value->frame_id.size;
    return roswasmc_bounded_2_std_msgs_msg_Header_valid(value);
}

/**
 * @brief Encode a complete value transactionally into caller-owned bytes.
 * @details Validation and exact size checks precede every write. The record,
 * output buffer and length result must occupy disjoint live storage.
 * @param value Complete initialized source record, retained by the caller.
 * @param output Writable capacity-byte buffer; null is valid only for an empty body.
 * @param capacity Number of writable bytes, never a message element count.
 * @param length Writable exact-length result; unchanged when encoding is refused.
 * @return Zero on success, 22 for invalid values/storage or 90 for insufficient capacity.
 */
static inline uint32_t
    roswasmc_bounded_2_std_msgs_msg_Header_encode(roswasmc_bounded_2_std_msgs_msg_Header const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_std_msgs_msg_Header_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_std_msgs_msg_Header_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_std_msgs_msg_Header_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/**
 * @brief Decode an exact complete body before committing the destination.
 * @details Truncation, trailing bytes, nonfinite numbers, malformed UTF-8 and
 * quota violations are refused. No output prefix commits on failure.
 * @param input Read-only length-byte canonical body, disjoint from the result.
 * @param length Exact available byte extent; no native struct layout is accepted.
 * @param value Initialized caller-owned destination, unchanged on refusal.
 * @return Zero on success or 22 for malformed bytes, invalid storage or bounds.
 */
static inline uint32_t roswasmc_bounded_2_std_msgs_msg_Header_decode(void const* input, size_t length, roswasmc_bounded_2_std_msgs_msg_Header* value)
{
    roswasmc_bounded_2_std_msgs_msg_Header next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_std_msgs_msg_Header);
    size_t offset = 0;
    if(!value || (length && !input) || length < 12u || length > 76u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_std_msgs_msg_Header_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_0 != 0xf9733fabUL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_1 != 0xa053acb7UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_2 != 0x96efc727UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_3 != 0xd484dd8fUL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_4 != 0xc72bea70UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_5 != 0x455c4ee4UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_6 != 0x83bcab30UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_7 != 0x72aa6737UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_0 0xf9733fabUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_1 0xa053acb7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_2 0x96efc727UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_3 0xd484dd8fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_4 0xc72bea70UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_5 0x455c4ee4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_6 0x83bcab30UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_7 0x72aa6737UL

/** @brief UTF-8 byte storage for sensor_msgs/msg/JointState.name; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[64];
} roswasmc_bounded_2_sensor_msgs_msg_JointState_name_text;

/** @brief At most64 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_2_sensor_msgs_msg_JointState_name_text data[64];
} roswasmc_bounded_2_sensor_msgs_msg_JointState_name_sequence;

/** @brief At most64 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[64];
} roswasmc_bounded_2_sensor_msgs_msg_JointState_position_sequence;

/** @brief At most64 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[64];
} roswasmc_bounded_2_sensor_msgs_msg_JointState_velocity_sequence;

/** @brief At most64 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[64];
} roswasmc_bounded_2_sensor_msgs_msg_JointState_effort_sequence;

/** @brief Complete ROS2 sensor_msgs/msg/JointState value; no field projects away native data. */
typedef struct roswasmc_bounded_2_sensor_msgs_msg_JointState
{
    /** @brief Declared field header; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_std_msgs_msg_Header header;
    /** @brief Declared field name; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_sensor_msgs_msg_JointState_name_sequence name;
    /** @brief Declared field position; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_sensor_msgs_msg_JointState_position_sequence position;
    /** @brief Declared field velocity; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_sensor_msgs_msg_JointState_velocity_sequence velocity;
    /** @brief Declared field effort; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_sensor_msgs_msg_JointState_effort_sequence effort;
} roswasmc_bounded_2_sensor_msgs_msg_JointState;

# define ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_MAX_WIRE_BYTES 5980u
# define ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_MIN_WIRE_BYTES 28u
# define ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_CODEC_IDENTITY "UWVMROS1_2fe8e1de38676a3880ca61266fb575e3625198e66a1da1708cf8c103cb829cac"

/**
 * @brief Validate every initialized field without allocation or ROS effects.
 * @param value Caller-owned complete record; a null pointer is refused.
 * @return One when every field satisfies its canonical bounds, otherwise zero.
 */
static inline int roswasmc_bounded_2_sensor_msgs_msg_JointState_valid(roswasmc_bounded_2_sensor_msgs_msg_JointState const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_std_msgs_msg_Header_valid(&value->header))
        return 0;
    if(value->name.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->name.size; ++i)
        {
            if(value->name.data[i].size > 64u || !uwvm_bounded_utf8(value->name.data[i].data, value->name.data[i].size))
                return 0;
        }
    }
    if(value->position.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->position.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->position.data[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                    return 0;
            }
        }
    }
    if(value->velocity.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->velocity.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->velocity.data[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                    return 0;
            }
        }
    }
    if(value->effort.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->effort.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->effort.data[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                    return 0;
            }
        }
    }
    if((value->name.size != 0 && value->position.size != 0 && value->name.size != value->position.size) ||
       (value->name.size != 0 && value->velocity.size != 0 && value->name.size != value->velocity.size) ||
       (value->name.size != 0 && value->effort.size != 0 && value->name.size != value->effort.size) ||
       (value->position.size != 0 && value->velocity.size != 0 && value->position.size != value->velocity.size) ||
       (value->position.size != 0 && value->effort.size != 0 && value->position.size != value->effort.size) ||
       (value->velocity.size != 0 && value->effort.size != 0 && value->velocity.size != value->effort.size))
        return 0;
    return 1;
}

/**
 * @brief Measure the exact complete canonical body in bytes.
 * @param value Caller-owned record already accepted by the matching validator.
 * @return Exact active-field size; inline capacity is never emitted as payload.
 * @pre The complete record has passed its matching valid function.
 */
static inline size_t roswasmc_bounded_2_sensor_msgs_msg_JointState_wire_size(roswasmc_bounded_2_sensor_msgs_msg_JointState const* value)
{
    size_t n = 0;
    (void)value;
    n += roswasmc_bounded_2_std_msgs_msg_Header_wire_size(&value->header);
    n += 4;
    if(value->name.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->name.size; ++i)
        {
            n += 4 + value->name.data[i].size;
        }
    }
    n += 4;
    if(value->position.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->position.size; ++i)
        {
            n += 8;
        }
    }
    n += 4;
    if(value->velocity.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->velocity.size; ++i)
        {
            n += 8;
        }
    }
    n += 4;
    if(value->effort.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->effort.size; ++i)
        {
            n += 8;
        }
    }
    return n;
}

/**
 * @brief Write validated fields into the encoder-owned checked cursor.
 * @param value Complete initialized record already validated by the encoder.
 * @param p Writable buffer covering the premeasured complete body.
 * @param offset Encoder-owned cursor in bytes; advanced by the exact body extent.
 * @pre Capacity and every source/output overlap have already been checked.
 */
static inline void
    roswasmc_bounded_2_sensor_msgs_msg_JointState_write_fields(roswasmc_bounded_2_sensor_msgs_msg_JointState const* value, unsigned char* p, size_t* offset)
{
    roswasmc_bounded_2_std_msgs_msg_Header_write_fields(&value->header, p, offset);
    uwvm_bounded_put(p + *offset, value->name.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->name.size; ++i)
        {
            uwvm_bounded_put(p + *offset, value->name.data[i].size, 4);
            *offset += 4;
            uwvm_bounded_copy(p + *offset, value->name.data[i].data, value->name.data[i].size);
            *offset += value->name.data[i].size;
        }
    }
    uwvm_bounded_put(p + *offset, value->position.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->position.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->position.data[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
    uwvm_bounded_put(p + *offset, value->velocity.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->velocity.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->velocity.data[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
    uwvm_bounded_put(p + *offset, value->effort.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->effort.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->effort.data[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
}

/**
 * @brief Read every field into a private decoder temporary with checked bounds.
 * @param p Read-only n-byte canonical buffer retained by the caller.
 * @param n Exact input extent in bytes.
 * @param offset Decoder-owned checked byte cursor; advanced only within n.
 * @param value Private temporary; a failed read must never publish this value.
 * @return One for a complete valid component or zero on malformed input.
 */
static inline int roswasmc_bounded_2_sensor_msgs_msg_JointState_read_fields(unsigned char const* p,
                                                                            size_t n,
                                                                            size_t* offset,
                                                                            roswasmc_bounded_2_sensor_msgs_msg_JointState* value)
{
    if(!roswasmc_bounded_2_std_msgs_msg_Header_read_fields(p, n, offset, &value->header))
        return 0;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->name.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->name.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->name.size; ++i)
        {
            if(*offset > n || n - *offset < 4)
                return 0;
            value->name.data[i].size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
            *offset += 4;
            if(value->name.data[i].size > 64u || value->name.data[i].size > n - *offset)
                return 0;
            uwvm_bounded_copy(value->name.data[i].data, p + *offset, value->name.data[i].size);
            *offset += value->name.data[i].size;
        }
    }
    if(*offset > n || n - *offset < 4)
        return 0;
    value->position.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->position.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->position.size; ++i)
        {
            if(*offset > n || n - *offset < 8)
                return 0;
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->position.data[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    if(*offset > n || n - *offset < 4)
        return 0;
    value->velocity.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->velocity.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->velocity.size; ++i)
        {
            if(*offset > n || n - *offset < 8)
                return 0;
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->velocity.data[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    if(*offset > n || n - *offset < 4)
        return 0;
    value->effort.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->effort.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->effort.size; ++i)
        {
            if(*offset > n || n - *offset < 8)
                return 0;
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->effort.data[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    return roswasmc_bounded_2_sensor_msgs_msg_JointState_valid(value);
}

/**
 * @brief Encode a complete value transactionally into caller-owned bytes.
 * @details Validation and exact size checks precede every write. The record,
 * output buffer and length result must occupy disjoint live storage.
 * @param value Complete initialized source record, retained by the caller.
 * @param output Writable capacity-byte buffer; null is valid only for an empty body.
 * @param capacity Number of writable bytes, never a message element count.
 * @param length Writable exact-length result; unchanged when encoding is refused.
 * @return Zero on success, 22 for invalid values/storage or 90 for insufficient capacity.
 */
static inline uint32_t roswasmc_bounded_2_sensor_msgs_msg_JointState_encode(roswasmc_bounded_2_sensor_msgs_msg_JointState const* value,
                                                                            void* output,
                                                                            size_t capacity,
                                                                            size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_sensor_msgs_msg_JointState_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_sensor_msgs_msg_JointState_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_sensor_msgs_msg_JointState_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/**
 * @brief Decode an exact complete body before committing the destination.
 * @details Truncation, trailing bytes, nonfinite numbers, malformed UTF-8 and
 * quota violations are refused. No output prefix commits on failure.
 * @param input Read-only length-byte canonical body, disjoint from the result.
 * @param length Exact available byte extent; no native struct layout is accepted.
 * @param value Initialized caller-owned destination, unchanged on refusal.
 * @return Zero on success or 22 for malformed bytes, invalid storage or bounds.
 */
static inline uint32_t
    roswasmc_bounded_2_sensor_msgs_msg_JointState_decode(void const* input, size_t length, roswasmc_bounded_2_sensor_msgs_msg_JointState* value)
{
    roswasmc_bounded_2_sensor_msgs_msg_JointState next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_sensor_msgs_msg_JointState);
    size_t offset = 0;
    if(!value || (length && !input) || length < 28u || length > 5980u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_sensor_msgs_msg_JointState_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_ISAAC_SIM_BRIDGE_MSG_CLOCKEVENT)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_ISAAC_SIM_BRIDGE_MSG_CLOCKEVENT_0 != 0x39b17d5fUL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_ISAAC_SIM_BRIDGE_MSG_CLOCKEVENT_1 != 0x0d786f41UL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_ISAAC_SIM_BRIDGE_MSG_CLOCKEVENT_2 != 0x22558801UL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_ISAAC_SIM_BRIDGE_MSG_CLOCKEVENT_3 != 0xdd58fc4aUL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_ISAAC_SIM_BRIDGE_MSG_CLOCKEVENT_4 != 0xa0bd3335UL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_ISAAC_SIM_BRIDGE_MSG_CLOCKEVENT_5 != 0x4df2e6c3UL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_ISAAC_SIM_BRIDGE_MSG_CLOCKEVENT_6 != 0xe71b6e46UL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_ISAAC_SIM_BRIDGE_MSG_CLOCKEVENT_7 != 0xd65dbfe8UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_ISAAC_SIM_BRIDGE_MSG_CLOCKEVENT 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_ISAAC_SIM_BRIDGE_MSG_CLOCKEVENT_0 0x39b17d5fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_ISAAC_SIM_BRIDGE_MSG_CLOCKEVENT_1 0x0d786f41UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_ISAAC_SIM_BRIDGE_MSG_CLOCKEVENT_2 0x22558801UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_ISAAC_SIM_BRIDGE_MSG_CLOCKEVENT_3 0xdd58fc4aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_ISAAC_SIM_BRIDGE_MSG_CLOCKEVENT_4 0xa0bd3335UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_ISAAC_SIM_BRIDGE_MSG_CLOCKEVENT_5 0x4df2e6c3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_ISAAC_SIM_BRIDGE_MSG_CLOCKEVENT_6 0xe71b6e46UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_ISAAC_SIM_BRIDGE_MSG_CLOCKEVENT_7 0xd65dbfe8UL

/** @brief Complete ROS2 uwvm_isaac_sim_bridge/msg/ClockEvent value; no field projects away native data. */
typedef struct roswasmc_bounded_2_uwvm_isaac_sim_bridge_msg_ClockEvent
{
    /** @brief Declared field kind; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t kind;
    /** @brief Declared field phase; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t phase;
    /** @brief Declared field frame; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t frame;
    /** @brief Declared field sec; canonical capacity is part of CODEC_IDENTITY. */
    int32_t sec;
    /** @brief Declared field nanosec; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t nanosec;
} roswasmc_bounded_2_uwvm_isaac_sim_bridge_msg_ClockEvent;

# define ROSWASMC_BOUNDED_2_UWVM_ISAAC_SIM_BRIDGE_MSG_CLOCKEVENT_MAX_WIRE_BYTES 14u
# define ROSWASMC_BOUNDED_2_UWVM_ISAAC_SIM_BRIDGE_MSG_CLOCKEVENT_MIN_WIRE_BYTES 14u
# define ROSWASMC_BOUNDED_2_UWVM_ISAAC_SIM_BRIDGE_MSG_CLOCKEVENT_CODEC_IDENTITY "UWVMROS1_78b31f4b219f55bd576134f1b561194cb09c8ec0ac8dedafddd9b03ba6a198d6"
/** @brief Original scalar constant AUTOMATIC=1; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_UWVM_ISAAC_SIM_BRIDGE_MSG_CLOCKEVENT_AUTOMATIC UINT32_C(1)
/** @brief Original scalar constant MANUAL=2; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_UWVM_ISAAC_SIM_BRIDGE_MSG_CLOCKEVENT_MANUAL UINT32_C(2)

/**
 * @brief Validate every initialized field without allocation or ROS effects.
 * @param value Caller-owned complete record; a null pointer is refused.
 * @return One when every field satisfies its canonical bounds, otherwise zero.
 */
static inline int roswasmc_bounded_2_uwvm_isaac_sim_bridge_msg_ClockEvent_valid(roswasmc_bounded_2_uwvm_isaac_sim_bridge_msg_ClockEvent const* value)
{
    if(!value)
        return 0;
    return 1;
}

/**
 * @brief Measure the exact complete canonical body in bytes.
 * @param value Caller-owned record already accepted by the matching validator.
 * @return Exact active-field size; inline capacity is never emitted as payload.
 * @pre The complete record has passed its matching valid function.
 */
static inline size_t roswasmc_bounded_2_uwvm_isaac_sim_bridge_msg_ClockEvent_wire_size(roswasmc_bounded_2_uwvm_isaac_sim_bridge_msg_ClockEvent const* value)
{
    size_t n = 0;
    (void)value;
    n += 1;
    n += 1;
    n += 4;
    n += 4;
    n += 4;
    return n;
}

/**
 * @brief Write validated fields into the encoder-owned checked cursor.
 * @param value Complete initialized record already validated by the encoder.
 * @param p Writable buffer covering the premeasured complete body.
 * @param offset Encoder-owned cursor in bytes; advanced by the exact body extent.
 * @pre Capacity and every source/output overlap have already been checked.
 */
static inline void roswasmc_bounded_2_uwvm_isaac_sim_bridge_msg_ClockEvent_write_fields(roswasmc_bounded_2_uwvm_isaac_sim_bridge_msg_ClockEvent const* value,
                                                                                        unsigned char* p,
                                                                                        size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->kind, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->phase, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->frame, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, (uint64_t)value->sec, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, (uint64_t)value->nanosec, 4);
    *offset += 4;
}

/**
 * @brief Read every field into a private decoder temporary with checked bounds.
 * @param p Read-only n-byte canonical buffer retained by the caller.
 * @param n Exact input extent in bytes.
 * @param offset Decoder-owned checked byte cursor; advanced only within n.
 * @param value Private temporary; a failed read must never publish this value.
 * @return One for a complete valid component or zero on malformed input.
 */
static inline int roswasmc_bounded_2_uwvm_isaac_sim_bridge_msg_ClockEvent_read_fields(unsigned char const* p,
                                                                                      size_t n,
                                                                                      size_t* offset,
                                                                                      roswasmc_bounded_2_uwvm_isaac_sim_bridge_msg_ClockEvent* value)
{
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->kind, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->phase, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->frame, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->sec, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->nanosec, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_2_uwvm_isaac_sim_bridge_msg_ClockEvent_valid(value);
}

/**
 * @brief Encode a complete value transactionally into caller-owned bytes.
 * @details Validation and exact size checks precede every write. The record,
 * output buffer and length result must occupy disjoint live storage.
 * @param value Complete initialized source record, retained by the caller.
 * @param output Writable capacity-byte buffer; null is valid only for an empty body.
 * @param capacity Number of writable bytes, never a message element count.
 * @param length Writable exact-length result; unchanged when encoding is refused.
 * @return Zero on success, 22 for invalid values/storage or 90 for insufficient capacity.
 */
static inline uint32_t roswasmc_bounded_2_uwvm_isaac_sim_bridge_msg_ClockEvent_encode(roswasmc_bounded_2_uwvm_isaac_sim_bridge_msg_ClockEvent const* value,
                                                                                      void* output,
                                                                                      size_t capacity,
                                                                                      size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_uwvm_isaac_sim_bridge_msg_ClockEvent_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_uwvm_isaac_sim_bridge_msg_ClockEvent_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_uwvm_isaac_sim_bridge_msg_ClockEvent_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/**
 * @brief Decode an exact complete body before committing the destination.
 * @details Truncation, trailing bytes, nonfinite numbers, malformed UTF-8 and
 * quota violations are refused. No output prefix commits on failure.
 * @param input Read-only length-byte canonical body, disjoint from the result.
 * @param length Exact available byte extent; no native struct layout is accepted.
 * @param value Initialized caller-owned destination, unchanged on refusal.
 * @return Zero on success or 22 for malformed bytes, invalid storage or bounds.
 */
static inline uint32_t roswasmc_bounded_2_uwvm_isaac_sim_bridge_msg_ClockEvent_decode(void const* input,
                                                                                      size_t length,
                                                                                      roswasmc_bounded_2_uwvm_isaac_sim_bridge_msg_ClockEvent* value)
{
    roswasmc_bounded_2_uwvm_isaac_sim_bridge_msg_ClockEvent next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_uwvm_isaac_sim_bridge_msg_ClockEvent);
    size_t offset = 0;
    if(!value || (length && !input) || length < 14u || length > 14u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_uwvm_isaac_sim_bridge_msg_ClockEvent_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_ISAAC_SIM_BRIDGE_SRV_CLOCKCONTROL_REQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_ISAAC_SIM_BRIDGE_SRV_CLOCKCONTROL_REQUEST_0 != 0x7807cf6bUL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_ISAAC_SIM_BRIDGE_SRV_CLOCKCONTROL_REQUEST_1 != 0x3215eb6eUL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_ISAAC_SIM_BRIDGE_SRV_CLOCKCONTROL_REQUEST_2 != 0x388b3ae6UL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_ISAAC_SIM_BRIDGE_SRV_CLOCKCONTROL_REQUEST_3 != 0x9ae314daUL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_ISAAC_SIM_BRIDGE_SRV_CLOCKCONTROL_REQUEST_4 != 0xcc48fe8aUL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_ISAAC_SIM_BRIDGE_SRV_CLOCKCONTROL_REQUEST_5 != 0xcda6b6fdUL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_ISAAC_SIM_BRIDGE_SRV_CLOCKCONTROL_REQUEST_6 != 0x6d2684f9UL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_ISAAC_SIM_BRIDGE_SRV_CLOCKCONTROL_REQUEST_7 != 0xebf95637UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_ISAAC_SIM_BRIDGE_SRV_CLOCKCONTROL_REQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_ISAAC_SIM_BRIDGE_SRV_CLOCKCONTROL_REQUEST_0 0x7807cf6bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_ISAAC_SIM_BRIDGE_SRV_CLOCKCONTROL_REQUEST_1 0x3215eb6eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_ISAAC_SIM_BRIDGE_SRV_CLOCKCONTROL_REQUEST_2 0x388b3ae6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_ISAAC_SIM_BRIDGE_SRV_CLOCKCONTROL_REQUEST_3 0x9ae314daUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_ISAAC_SIM_BRIDGE_SRV_CLOCKCONTROL_REQUEST_4 0xcc48fe8aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_ISAAC_SIM_BRIDGE_SRV_CLOCKCONTROL_REQUEST_5 0xcda6b6fdUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_ISAAC_SIM_BRIDGE_SRV_CLOCKCONTROL_REQUEST_6 0x6d2684f9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_ISAAC_SIM_BRIDGE_SRV_CLOCKCONTROL_REQUEST_7 0xebf95637UL

/** @brief Complete ROS2 uwvm_isaac_sim_bridge/srv/ClockControl_Request value; no field projects away native data. */
typedef struct roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_Request
{
    /** @brief Declared field operation; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t operation;
    /** @brief Declared field session_nonce; canonical capacity is part of CODEC_IDENTITY. */
    uint64_t session_nonce;
    /** @brief Declared field request_sequence; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t request_sequence;
    /** @brief Declared field phase; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t phase;
    /** @brief Declared field frame; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t frame;
    /** @brief Declared field impulse; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t impulse;
    /** @brief Declared field extra_update; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t extra_update;
    /** @brief Declared field pacing_milliseconds; canonical capacity is part of CODEC_IDENTITY. */
    uint16_t pacing_milliseconds;
} roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_Request;

# define ROSWASMC_BOUNDED_2_UWVM_ISAAC_SIM_BRIDGE_SRV_CLOCKCONTROL_REQUEST_MAX_WIRE_BYTES 22u
# define ROSWASMC_BOUNDED_2_UWVM_ISAAC_SIM_BRIDGE_SRV_CLOCKCONTROL_REQUEST_MIN_WIRE_BYTES 22u
# define ROSWASMC_BOUNDED_2_UWVM_ISAAC_SIM_BRIDGE_SRV_CLOCKCONTROL_REQUEST_CODEC_IDENTITY                                                                      \
     "UWVMROS1_8957fd758c2793d355e7356df436ea644a5d5da7ad7e2d179ed4d09936351b19"
/** @brief Original scalar constant START=1; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_UWVM_ISAAC_SIM_BRIDGE_SRV_CLOCKCONTROL_REQUEST_START UINT32_C(1)
/** @brief Original scalar constant STEP=2; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_UWVM_ISAAC_SIM_BRIDGE_SRV_CLOCKCONTROL_REQUEST_STEP UINT32_C(2)
/** @brief Original scalar constant FINISH=3; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_UWVM_ISAAC_SIM_BRIDGE_SRV_CLOCKCONTROL_REQUEST_FINISH UINT32_C(3)
/** @brief Original scalar constant CANCEL=4; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_UWVM_ISAAC_SIM_BRIDGE_SRV_CLOCKCONTROL_REQUEST_CANCEL UINT32_C(4)

/**
 * @brief Validate every initialized field without allocation or ROS effects.
 * @param value Caller-owned complete record; a null pointer is refused.
 * @return One when every field satisfies its canonical bounds, otherwise zero.
 */
static inline int
    roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_Request_valid(roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_Request const* value)
{
    if(!value)
        return 0;
    if(value->impulse > 1)
        return 0;
    if(value->extra_update > 1)
        return 0;
    return 1;
}

/**
 * @brief Measure the exact complete canonical body in bytes.
 * @param value Caller-owned record already accepted by the matching validator.
 * @return Exact active-field size; inline capacity is never emitted as payload.
 * @pre The complete record has passed its matching valid function.
 */
static inline size_t
    roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_Request_wire_size(roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_Request const* value)
{
    size_t n = 0;
    (void)value;
    n += 1;
    n += 8;
    n += 4;
    n += 1;
    n += 4;
    n += 1;
    n += 1;
    n += 2;
    return n;
}

/**
 * @brief Write validated fields into the encoder-owned checked cursor.
 * @param value Complete initialized record already validated by the encoder.
 * @param p Writable buffer covering the premeasured complete body.
 * @param offset Encoder-owned cursor in bytes; advanced by the exact body extent.
 * @pre Capacity and every source/output overlap have already been checked.
 */
static inline void roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_Request_write_fields(
    roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_Request const* value,
    unsigned char* p,
    size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->operation, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->session_nonce, 8);
    *offset += 8;
    uwvm_bounded_put(p + *offset, (uint64_t)value->request_sequence, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, (uint64_t)value->phase, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->frame, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, (uint64_t)value->impulse, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->extra_update, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->pacing_milliseconds, 2);
    *offset += 2;
}

/**
 * @brief Read every field into a private decoder temporary with checked bounds.
 * @param p Read-only n-byte canonical buffer retained by the caller.
 * @param n Exact input extent in bytes.
 * @param offset Decoder-owned checked byte cursor; advanced only within n.
 * @param value Private temporary; a failed read must never publish this value.
 * @return One for a complete valid component or zero on malformed input.
 */
static inline int
    roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_Request_read_fields(unsigned char const* p,
                                                                                  size_t n,
                                                                                  size_t* offset,
                                                                                  roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_Request* value)
{
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->operation, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->session_nonce, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->request_sequence, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->phase, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->frame, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->impulse, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->extra_update, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 2)
        return 0;
    {
        uint16_t bits = (uint16_t)uwvm_bounded_get(p + *offset, 2);
        uwvm_bounded_copy(&value->pacing_milliseconds, &bits, 2);
    }
    *offset += 2;
    return roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_Request_valid(value);
}

/**
 * @brief Encode a complete value transactionally into caller-owned bytes.
 * @details Validation and exact size checks precede every write. The record,
 * output buffer and length result must occupy disjoint live storage.
 * @param value Complete initialized source record, retained by the caller.
 * @param output Writable capacity-byte buffer; null is valid only for an empty body.
 * @param capacity Number of writable bytes, never a message element count.
 * @param length Writable exact-length result; unchanged when encoding is refused.
 * @return Zero on success, 22 for invalid values/storage or 90 for insufficient capacity.
 */
static inline uint32_t
    roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_Request_encode(roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_Request const* value,
                                                                             void* output,
                                                                             size_t capacity,
                                                                             size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_Request_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_Request_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_Request_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/**
 * @brief Decode an exact complete body before committing the destination.
 * @details Truncation, trailing bytes, nonfinite numbers, malformed UTF-8 and
 * quota violations are refused. No output prefix commits on failure.
 * @param input Read-only length-byte canonical body, disjoint from the result.
 * @param length Exact available byte extent; no native struct layout is accepted.
 * @param value Initialized caller-owned destination, unchanged on refusal.
 * @return Zero on success or 22 for malformed bytes, invalid storage or bounds.
 */
static inline uint32_t
    roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_Request_decode(void const* input,
                                                                             size_t length,
                                                                             roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_Request* value)
{
    roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_Request next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_Request);
    size_t offset = 0;
    if(!value || (length && !input) || length < 22u || length > 22u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_Request_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_ISAAC_SIM_BRIDGE_SRV_CLOCKCONTROL_RESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_ISAAC_SIM_BRIDGE_SRV_CLOCKCONTROL_RESPONSE_0 != 0xd8006f5dUL ||                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_ISAAC_SIM_BRIDGE_SRV_CLOCKCONTROL_RESPONSE_1 != 0xbf2304e5UL ||                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_ISAAC_SIM_BRIDGE_SRV_CLOCKCONTROL_RESPONSE_2 != 0x7b4e6a4aUL ||                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_ISAAC_SIM_BRIDGE_SRV_CLOCKCONTROL_RESPONSE_3 != 0x55e03de0UL ||                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_ISAAC_SIM_BRIDGE_SRV_CLOCKCONTROL_RESPONSE_4 != 0xf5ed7bfbUL ||                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_ISAAC_SIM_BRIDGE_SRV_CLOCKCONTROL_RESPONSE_5 != 0x5842bf73UL ||                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_ISAAC_SIM_BRIDGE_SRV_CLOCKCONTROL_RESPONSE_6 != 0x688dee8eUL ||                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_ISAAC_SIM_BRIDGE_SRV_CLOCKCONTROL_RESPONSE_7 != 0x0283a295UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_ISAAC_SIM_BRIDGE_SRV_CLOCKCONTROL_RESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_ISAAC_SIM_BRIDGE_SRV_CLOCKCONTROL_RESPONSE_0 0xd8006f5dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_ISAAC_SIM_BRIDGE_SRV_CLOCKCONTROL_RESPONSE_1 0xbf2304e5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_ISAAC_SIM_BRIDGE_SRV_CLOCKCONTROL_RESPONSE_2 0x7b4e6a4aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_ISAAC_SIM_BRIDGE_SRV_CLOCKCONTROL_RESPONSE_3 0x55e03de0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_ISAAC_SIM_BRIDGE_SRV_CLOCKCONTROL_RESPONSE_4 0xf5ed7bfbUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_ISAAC_SIM_BRIDGE_SRV_CLOCKCONTROL_RESPONSE_5 0x5842bf73UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_ISAAC_SIM_BRIDGE_SRV_CLOCKCONTROL_RESPONSE_6 0x688dee8eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_ISAAC_SIM_BRIDGE_SRV_CLOCKCONTROL_RESPONSE_7 0x0283a295UL

/** @brief Complete ROS2 uwvm_isaac_sim_bridge/srv/ClockControl_Response value; no field projects away native data. */
typedef struct roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_Response
{
    /** @brief Declared field status; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t status;
    /** @brief Declared field session_nonce; canonical capacity is part of CODEC_IDENTITY. */
    uint64_t session_nonce;
    /** @brief Declared field request_sequence; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t request_sequence;
    /** @brief Declared field state; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t state;
    /** @brief Declared field actual_app_updates; canonical capacity is part of CODEC_IDENTITY. */
    uint64_t actual_app_updates;
    /** @brief Declared field completed_steps; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t completed_steps;
    /** @brief Declared field has_event; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t has_event;
    /** @brief Declared field event; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_uwvm_isaac_sim_bridge_msg_ClockEvent event;
    /** @brief Declared field cleanup_status; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t cleanup_status;
} roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_Response;

# define ROSWASMC_BOUNDED_2_UWVM_ISAAC_SIM_BRIDGE_SRV_CLOCKCONTROL_RESPONSE_MAX_WIRE_BYTES 48u
# define ROSWASMC_BOUNDED_2_UWVM_ISAAC_SIM_BRIDGE_SRV_CLOCKCONTROL_RESPONSE_MIN_WIRE_BYTES 48u
# define ROSWASMC_BOUNDED_2_UWVM_ISAAC_SIM_BRIDGE_SRV_CLOCKCONTROL_RESPONSE_CODEC_IDENTITY                                                                     \
     "UWVMROS1_3b7763445df65d2a26fb54bfe6d41984008b33253cd7a614f5f057832d909502"

/**
 * @brief Validate every initialized field without allocation or ROS effects.
 * @param value Caller-owned complete record; a null pointer is refused.
 * @return One when every field satisfies its canonical bounds, otherwise zero.
 */
static inline int
    roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_Response_valid(roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_Response const* value)
{
    if(!value)
        return 0;
    if(value->has_event > 1)
        return 0;
    if(!roswasmc_bounded_2_uwvm_isaac_sim_bridge_msg_ClockEvent_valid(&value->event))
        return 0;
    return 1;
}

/**
 * @brief Measure the exact complete canonical body in bytes.
 * @param value Caller-owned record already accepted by the matching validator.
 * @return Exact active-field size; inline capacity is never emitted as payload.
 * @pre The complete record has passed its matching valid function.
 */
static inline size_t roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_Response_wire_size(
    roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_Response const* value)
{
    size_t n = 0;
    (void)value;
    n += 4;
    n += 8;
    n += 4;
    n += 1;
    n += 8;
    n += 4;
    n += 1;
    n += roswasmc_bounded_2_uwvm_isaac_sim_bridge_msg_ClockEvent_wire_size(&value->event);
    n += 4;
    return n;
}

/**
 * @brief Write validated fields into the encoder-owned checked cursor.
 * @param value Complete initialized record already validated by the encoder.
 * @param p Writable buffer covering the premeasured complete body.
 * @param offset Encoder-owned cursor in bytes; advanced by the exact body extent.
 * @pre Capacity and every source/output overlap have already been checked.
 */
static inline void roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_Response_write_fields(
    roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_Response const* value,
    unsigned char* p,
    size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->status, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, (uint64_t)value->session_nonce, 8);
    *offset += 8;
    uwvm_bounded_put(p + *offset, (uint64_t)value->request_sequence, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, (uint64_t)value->state, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->actual_app_updates, 8);
    *offset += 8;
    uwvm_bounded_put(p + *offset, (uint64_t)value->completed_steps, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, (uint64_t)value->has_event, 1);
    *offset += 1;
    roswasmc_bounded_2_uwvm_isaac_sim_bridge_msg_ClockEvent_write_fields(&value->event, p, offset);
    uwvm_bounded_put(p + *offset, (uint64_t)value->cleanup_status, 4);
    *offset += 4;
}

/**
 * @brief Read every field into a private decoder temporary with checked bounds.
 * @param p Read-only n-byte canonical buffer retained by the caller.
 * @param n Exact input extent in bytes.
 * @param offset Decoder-owned checked byte cursor; advanced only within n.
 * @param value Private temporary; a failed read must never publish this value.
 * @return One for a complete valid component or zero on malformed input.
 */
static inline int
    roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_Response_read_fields(unsigned char const* p,
                                                                                   size_t n,
                                                                                   size_t* offset,
                                                                                   roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_Response* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->status, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->session_nonce, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->request_sequence, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->state, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->actual_app_updates, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->completed_steps, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->has_event, &bits, 1);
    }
    *offset += 1;
    if(!roswasmc_bounded_2_uwvm_isaac_sim_bridge_msg_ClockEvent_read_fields(p, n, offset, &value->event))
        return 0;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->cleanup_status, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_Response_valid(value);
}

/**
 * @brief Encode a complete value transactionally into caller-owned bytes.
 * @details Validation and exact size checks precede every write. The record,
 * output buffer and length result must occupy disjoint live storage.
 * @param value Complete initialized source record, retained by the caller.
 * @param output Writable capacity-byte buffer; null is valid only for an empty body.
 * @param capacity Number of writable bytes, never a message element count.
 * @param length Writable exact-length result; unchanged when encoding is refused.
 * @return Zero on success, 22 for invalid values/storage or 90 for insufficient capacity.
 */
static inline uint32_t
    roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_Response_encode(roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_Response const* value,
                                                                              void* output,
                                                                              size_t capacity,
                                                                              size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_Response_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_Response_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_Response_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/**
 * @brief Decode an exact complete body before committing the destination.
 * @details Truncation, trailing bytes, nonfinite numbers, malformed UTF-8 and
 * quota violations are refused. No output prefix commits on failure.
 * @param input Read-only length-byte canonical body, disjoint from the result.
 * @param length Exact available byte extent; no native struct layout is accepted.
 * @param value Initialized caller-owned destination, unchanged on refusal.
 * @return Zero on success or 22 for malformed bytes, invalid storage or bounds.
 */
static inline uint32_t
    roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_Response_decode(void const* input,
                                                                              size_t length,
                                                                              roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_Response* value)
{
    roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_Response next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_Response);
    size_t offset = 0;
    if(!value || (length && !input) || length < 48u || length > 48u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_Response_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#undef UWVM_BOUNDED_ASSERT
#endif
