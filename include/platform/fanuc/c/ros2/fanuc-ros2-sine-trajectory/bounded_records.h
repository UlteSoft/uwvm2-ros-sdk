/**
 * @file bounded_records.h
 * @brief Represent the complete original FANUC ROS 2 canonical value catalog.
 * @details The caller owns every record and its finite dynamic backing storage. Codecs retain all
 * fields, original constants and native defaults; field units and frames follow the retained
 * definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
 * native ROS objects; importing them grants no transport alias.
 */
/** @file Generated bounded-v2 canonical values; no native ROS serialization or authority.
 * Every dynamic field has inline caller-owned capacity. Encode validates and measures
 * the full value before writes; decode commits one temporary only after full validation.
 * Supply distinct record, byte and size-output storage; overlap is explicitly refused.
 * Empty Service/Action components use a C layout dummy that is never a wire field. */
#ifndef UWVM_ROS_BOUNDED_RECORDS_E2814BE1DA148C785C9EAD85D4B184458DA11CFEACB07D9803A536EC444D0D38
#define UWVM_ROS_BOUNDED_RECORDS_E2814BE1DA148C785C9EAD85D4B184458DA11CFEACB07D9803A536EC444D0D38
#include <stdint.h>
#include <stddef.h>
#include <float.h>
#include <limits.h>

/**
 * @brief Initialize every member of a C or C++ aggregate to its zero value.
 * @details C uses its standard leading-zero aggregate initializer; C++ uses
 * empty aggregate initialization, including nested arrays and record members.
 * This macro does not apply the optional native ROS field defaults.
 */
#ifndef UWVM_ABB_ZERO_INITIALIZER
# if defined(__cplusplus)
#  define UWVM_ABB_ZERO_INITIALIZER                                                                                                                            \
      {                                                                                                                                                        \
      }
# else
#  define UWVM_ABB_ZERO_INITIALIZER {0}
# endif
#endif

#ifndef UWVM_ROS_BOUNDED_CODEC_HELPERS
# define UWVM_ROS_BOUNDED_CODEC_HELPERS
# define UWVM_BOUNDED_INVALID 22u
# define UWVM_BOUNDED_TOO_LARGE 90u
# if defined(__cplusplus) && __cplusplus >= 201103L
#  define UWVM_BOUNDED_ASSERT(x) static_assert(x, "canonical representation required")
# elif defined(__cplusplus)
#  define UWVM_BOUNDED_ASSERT(x) typedef char uwvm_bounded_representation_required[(x) ? 1 : -1]
# else
#  define UWVM_BOUNDED_ASSERT(x) _Static_assert(x, "canonical representation required")
# endif
UWVM_BOUNDED_ASSERT(CHAR_BIT == 8 && sizeof(float) == 4 && sizeof(double) == 8 && FLT_RADIX == 2 && FLT_MANT_DIG == 24 && DBL_MANT_DIG == 53 &&
                    FLT_MAX_EXP == 128 && DBL_MAX_EXP == 1024);

/** Copy exact primitive/string bytes; compiler intrinsics avoid byte-at-a-time copies. */
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

/** Strict Unicode scalar UTF-8, rejecting embedded NUL as required by this profile. */
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
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_DURATION)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_DURATION_0 != 0x6abde1d2UL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_DURATION_1 != 0x53c111a0UL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_DURATION_2 != 0x8de83f41UL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_DURATION_3 != 0xc78569f8UL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_DURATION_4 != 0xb61ba2f6UL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_DURATION_5 != 0x5f913a5aUL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_DURATION_6 != 0xc3272a5aUL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_DURATION_7 != 0xac7bb3feUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_DURATION 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_DURATION_0 0x6abde1d2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_DURATION_1 0x53c111a0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_DURATION_2 0x8de83f41UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_DURATION_3 0xc78569f8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_DURATION_4 0xb61ba2f6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_DURATION_5 0x5f913a5aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_DURATION_6 0xc3272a5aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_DURATION_7 0xac7bb3feUL

/** Complete ROS2 builtin_interfaces/msg/Duration value; no field projects away native data. */
typedef struct roswasmc_bounded_2_builtin_interfaces_msg_Duration
{
    /** Declared field sec; canonical capacity is part of CODEC_IDENTITY. */
    int32_t sec;
    /** Declared field nanosec; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t nanosec;
} roswasmc_bounded_2_builtin_interfaces_msg_Duration;

# define ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_DURATION_MAX_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_DURATION_MIN_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_DURATION_CODEC_IDENTITY "UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_builtin_interfaces_msg_Duration_valid(roswasmc_bounded_2_builtin_interfaces_msg_Duration const* value)
{
    if(!value)
        return 0;
    if(value->nanosec >= 1000000000)
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_builtin_interfaces_msg_Duration_wire_size(roswasmc_bounded_2_builtin_interfaces_msg_Duration const* value)
{
    (void)value;
    size_t n = 0;
    n += 4;
    n += 4;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_builtin_interfaces_msg_Duration_write_fields(roswasmc_bounded_2_builtin_interfaces_msg_Duration const* value,
                                                                                   unsigned char* p,
                                                                                   size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->sec, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, (uint64_t)value->nanosec, 4);
    *offset += 4;
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_builtin_interfaces_msg_Duration_read_fields(unsigned char const* p,
                                                                                 size_t n,
                                                                                 size_t* offset,
                                                                                 roswasmc_bounded_2_builtin_interfaces_msg_Duration* value)
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
    return roswasmc_bounded_2_builtin_interfaces_msg_Duration_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_builtin_interfaces_msg_Duration_encode(roswasmc_bounded_2_builtin_interfaces_msg_Duration const* value,
                                                                                 void* output,
                                                                                 size_t capacity,
                                                                                 size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_builtin_interfaces_msg_Duration_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_builtin_interfaces_msg_Duration_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_builtin_interfaces_msg_Duration_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_builtin_interfaces_msg_Duration_decode(void const* input, size_t length, roswasmc_bounded_2_builtin_interfaces_msg_Duration* value)
{
    roswasmc_bounded_2_builtin_interfaces_msg_Duration next = UWVM_ABB_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 8u || length > 8u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_builtin_interfaces_msg_Duration_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
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

/** Complete ROS2 builtin_interfaces/msg/Time value; no field projects away native data. */
typedef struct roswasmc_bounded_2_builtin_interfaces_msg_Time
{
    /** Declared field sec; canonical capacity is part of CODEC_IDENTITY. */
    int32_t sec;
    /** Declared field nanosec; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t nanosec;
} roswasmc_bounded_2_builtin_interfaces_msg_Time;

# define ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_TIME_MAX_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_TIME_MIN_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_TIME_CODEC_IDENTITY "UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_builtin_interfaces_msg_Time_valid(roswasmc_bounded_2_builtin_interfaces_msg_Time const* value)
{
    if(!value)
        return 0;
    if(value->nanosec >= 1000000000)
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_builtin_interfaces_msg_Time_wire_size(roswasmc_bounded_2_builtin_interfaces_msg_Time const* value)
{
    (void)value;
    size_t n = 0;
    n += 4;
    n += 4;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_builtin_interfaces_msg_Time_write_fields(roswasmc_bounded_2_builtin_interfaces_msg_Time const* value, unsigned char* p, size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->sec, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, (uint64_t)value->nanosec, 4);
    *offset += 4;
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
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

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
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

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_builtin_interfaces_msg_Time_decode(void const* input, size_t length, roswasmc_bounded_2_builtin_interfaces_msg_Time* value)
{
    roswasmc_bounded_2_builtin_interfaces_msg_Time next = UWVM_ABB_ZERO_INITIALIZER;
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

/** UTF-8 byte storage for std_msgs/msg/Header.frame_id; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[64];
} roswasmc_bounded_2_std_msgs_msg_Header_frame_id_text;

/** Complete ROS2 std_msgs/msg/Header value; no field projects away native data. */
typedef struct roswasmc_bounded_2_std_msgs_msg_Header
{
    /** Declared field stamp; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_builtin_interfaces_msg_Time stamp;
    /** Declared field frame_id; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_std_msgs_msg_Header_frame_id_text frame_id;
} roswasmc_bounded_2_std_msgs_msg_Header;

# define ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_MAX_WIRE_BYTES 76u
# define ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_MIN_WIRE_BYTES 12u
# define ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_CODEC_IDENTITY "UWVMROS1_afba9e74be3c5e3321750c1c4c30ba2925269f75b9da43a6d5c1e93d293d7396"

/** Validate every initialized field without allocation, writes or ROS calls. */
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

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_std_msgs_msg_Header_wire_size(roswasmc_bounded_2_std_msgs_msg_Header const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_builtin_interfaces_msg_Time_wire_size(&value->stamp);
    n += 4 + value->frame_id.size;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_std_msgs_msg_Header_write_fields(roswasmc_bounded_2_std_msgs_msg_Header const* value, unsigned char* p, size_t* offset)
{
    roswasmc_bounded_2_builtin_interfaces_msg_Time_write_fields(&value->stamp, p, offset);
    uwvm_bounded_put(p + *offset, value->frame_id.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->frame_id.data, value->frame_id.size);
    *offset += value->frame_id.size;
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
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

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
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

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_2_std_msgs_msg_Header_decode(void const* input, size_t length, roswasmc_bounded_2_std_msgs_msg_Header* value)
{
    roswasmc_bounded_2_std_msgs_msg_Header next = UWVM_ABB_ZERO_INITIALIZER;
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
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_0 != 0xa2967d2cUL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_1 != 0xf424b96dUL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_2 != 0x73fd783aUL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_3 != 0x11ceca73UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_4 != 0xd4bbd60eUL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_5 != 0x35e2d674UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_6 != 0x0495152eUL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_7 != 0x604897b4UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_0 0xa2967d2cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_1 0xf424b96dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_2 0x73fd783aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_3 0x11ceca73UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_4 0xd4bbd60eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_5 0x35e2d674UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_6 0x0495152eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_7 0x604897b4UL

/** UTF-8 byte storage for sensor_msgs/msg/JointState.name; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[64];
} roswasmc_bounded_2_sensor_msgs_msg_JointState_name_text;

/** At most12 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_2_sensor_msgs_msg_JointState_name_text data[12];
} roswasmc_bounded_2_sensor_msgs_msg_JointState_name_sequence;

/** At most12 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[12];
} roswasmc_bounded_2_sensor_msgs_msg_JointState_position_sequence;

/** At most12 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[12];
} roswasmc_bounded_2_sensor_msgs_msg_JointState_velocity_sequence;

/** At most12 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[12];
} roswasmc_bounded_2_sensor_msgs_msg_JointState_effort_sequence;

/** Complete ROS2 sensor_msgs/msg/JointState value; no field projects away native data. */
typedef struct roswasmc_bounded_2_sensor_msgs_msg_JointState
{
    /** Declared field header; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_std_msgs_msg_Header header;
    /** Declared field name; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_sensor_msgs_msg_JointState_name_sequence name;
    /** Declared field position; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_sensor_msgs_msg_JointState_position_sequence position;
    /** Declared field velocity; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_sensor_msgs_msg_JointState_velocity_sequence velocity;
    /** Declared field effort; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_sensor_msgs_msg_JointState_effort_sequence effort;
} roswasmc_bounded_2_sensor_msgs_msg_JointState;

# define ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_MAX_WIRE_BYTES 1196u
# define ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_MIN_WIRE_BYTES 28u
# define ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_CODEC_IDENTITY "UWVMROS1_88d44f7bdb40f8c45539a041a25903609561fa74db90b9972e1369ebbff6c884"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_sensor_msgs_msg_JointState_valid(roswasmc_bounded_2_sensor_msgs_msg_JointState const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_std_msgs_msg_Header_valid(&value->header))
        return 0;
    if(value->name.size > 12u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->name.size; ++i)
        {
            if(value->name.data[i].size > 64u || !uwvm_bounded_utf8(value->name.data[i].data, value->name.data[i].size))
                return 0;
        }
    }
    if(value->position.size > 12u)
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
    if(value->velocity.size > 12u)
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
    if(value->effort.size > 12u)
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

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_sensor_msgs_msg_JointState_wire_size(roswasmc_bounded_2_sensor_msgs_msg_JointState const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_std_msgs_msg_Header_wire_size(&value->header);
    n += 4;
    if(value->name.size > 12u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->name.size; ++i)
        {
            n += 4 + value->name.data[i].size;
        }
    }
    n += 4;
    if(value->position.size > 12u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->position.size; ++i)
        {
            n += 8;
        }
    }
    n += 4;
    if(value->velocity.size > 12u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->velocity.size; ++i)
        {
            n += 8;
        }
    }
    n += 4;
    if(value->effort.size > 12u)
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

/** Internal writer enters only after full validation, capacity and overlap checks. */
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

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
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
    if(value->name.size > 12u)
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
    if(value->position.size > 12u)
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
    if(value->velocity.size > 12u)
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
    if(value->effort.size > 12u)
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

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
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

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_sensor_msgs_msg_JointState_decode(void const* input, size_t length, roswasmc_bounded_2_sensor_msgs_msg_JointState* value)
{
    roswasmc_bounded_2_sensor_msgs_msg_JointState next = UWVM_ABB_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 28u || length > 1196u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_sensor_msgs_msg_JointState_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORYPOINT)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORYPOINT_0 != 0xa52f2fcdUL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORYPOINT_1 != 0x537352faUL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORYPOINT_2 != 0x62c016f5UL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORYPOINT_3 != 0x28eb9a7cUL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORYPOINT_4 != 0xf72b8462UL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORYPOINT_5 != 0x24a0d9d2UL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORYPOINT_6 != 0xe3cefe89UL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORYPOINT_7 != 0xbebf7e5cUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORYPOINT 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORYPOINT_0 0xa52f2fcdUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORYPOINT_1 0x537352faUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORYPOINT_2 0x62c016f5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORYPOINT_3 0x28eb9a7cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORYPOINT_4 0xf72b8462UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORYPOINT_5 0x24a0d9d2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORYPOINT_6 0xe3cefe89UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORYPOINT_7 0xbebf7e5cUL

/** At most12 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[12];
} roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_positions_sequence;

/** At most12 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[12];
} roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_velocities_sequence;

/** At most12 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[12];
} roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_accelerations_sequence;

/** At most12 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[12];
} roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_effort_sequence;

/** Complete ROS2 trajectory_msgs/msg/JointTrajectoryPoint value; no field projects away native data. */
typedef struct roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint
{
    /** Declared field positions; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_positions_sequence positions;
    /** Declared field velocities; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_velocities_sequence velocities;
    /** Declared field accelerations; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_accelerations_sequence accelerations;
    /** Declared field effort; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_effort_sequence effort;
    /** Declared field time_from_start; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_builtin_interfaces_msg_Duration time_from_start;
} roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint;

# define ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORYPOINT_MAX_WIRE_BYTES 408u
# define ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORYPOINT_MIN_WIRE_BYTES 24u
# define ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORYPOINT_CODEC_IDENTITY "UWVMROS1_4d55f494f060a9a3ff23bedd54da49f9e70e6b77acbdf911878afbf672cbadc5"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_valid(roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint const* value)
{
    if(!value)
        return 0;
    if(value->positions.size > 12u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->positions.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->positions.data[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                    return 0;
            }
        }
    }
    if(value->velocities.size > 12u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->velocities.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->velocities.data[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                    return 0;
            }
        }
    }
    if(value->accelerations.size > 12u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->accelerations.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->accelerations.data[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                    return 0;
            }
        }
    }
    if(value->effort.size > 12u)
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
    if(!roswasmc_bounded_2_builtin_interfaces_msg_Duration_valid(&value->time_from_start))
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_wire_size(roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint const* value)
{
    size_t n = 0;
    n += 4;
    if(value->positions.size > 12u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->positions.size; ++i)
        {
            n += 8;
        }
    }
    n += 4;
    if(value->velocities.size > 12u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->velocities.size; ++i)
        {
            n += 8;
        }
    }
    n += 4;
    if(value->accelerations.size > 12u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->accelerations.size; ++i)
        {
            n += 8;
        }
    }
    n += 4;
    if(value->effort.size > 12u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->effort.size; ++i)
        {
            n += 8;
        }
    }
    n += roswasmc_bounded_2_builtin_interfaces_msg_Duration_wire_size(&value->time_from_start);
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_write_fields(roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint const* value,
                                                                             unsigned char* p,
                                                                             size_t* offset)
{
    uwvm_bounded_put(p + *offset, value->positions.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->positions.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->positions.data[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
    uwvm_bounded_put(p + *offset, value->velocities.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->velocities.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->velocities.data[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
    uwvm_bounded_put(p + *offset, value->accelerations.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->accelerations.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->accelerations.data[i], 8);
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
    roswasmc_bounded_2_builtin_interfaces_msg_Duration_write_fields(&value->time_from_start, p, offset);
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_read_fields(unsigned char const* p,
                                                                                          size_t n,
                                                                                          size_t* offset,
                                                                                          roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    value->positions.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->positions.size > 12u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->positions.size; ++i)
        {
            if(*offset > n || n - *offset < 8)
                return 0;
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->positions.data[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    if(*offset > n || n - *offset < 4)
        return 0;
    value->velocities.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->velocities.size > 12u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->velocities.size; ++i)
        {
            if(*offset > n || n - *offset < 8)
                return 0;
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->velocities.data[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    if(*offset > n || n - *offset < 4)
        return 0;
    value->accelerations.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->accelerations.size > 12u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->accelerations.size; ++i)
        {
            if(*offset > n || n - *offset < 8)
                return 0;
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->accelerations.data[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    if(*offset > n || n - *offset < 4)
        return 0;
    value->effort.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->effort.size > 12u)
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
    if(!roswasmc_bounded_2_builtin_interfaces_msg_Duration_read_fields(p, n, offset, &value->time_from_start))
        return 0;
    return roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_encode(roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint const* value,
                                                                       void* output,
                                                                       size_t capacity,
                                                                       size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_decode(void const* input,
                                                                                          size_t length,
                                                                                          roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint* value)
{
    roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint next = UWVM_ABB_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 24u || length > 408u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORY)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORY_0 != 0xe4dff813UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORY_1 != 0x53026584UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORY_2 != 0x12f102c8UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORY_3 != 0x08bdc29eUL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORY_4 != 0xfead1c3bUL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORY_5 != 0xe15a5045UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORY_6 != 0xca3fe3f2UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORY_7 != 0x3451b1deUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORY 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORY_0 0xe4dff813UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORY_1 0x53026584UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORY_2 0x12f102c8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORY_3 0x08bdc29eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORY_4 0xfead1c3bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORY_5 0xe15a5045UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORY_6 0xca3fe3f2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORY_7 0x3451b1deUL

/** UTF-8 byte storage for trajectory_msgs/msg/JointTrajectory.joint_names; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[64];
} roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory_joint_names_text;

/** At most12 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory_joint_names_text data[12];
} roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory_joint_names_sequence;

/** At most1001 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint data[1001];
} roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory_points_sequence;

/** Complete ROS2 trajectory_msgs/msg/JointTrajectory value; no field projects away native data. */
typedef struct roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory
{
    /** Declared field header; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_std_msgs_msg_Header header;
    /** Declared field joint_names; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory_joint_names_sequence joint_names;
    /** Declared field points; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory_points_sequence points;
} roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory;

# define ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORY_MAX_WIRE_BYTES 409308u
# define ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORY_MIN_WIRE_BYTES 20u
# define ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORY_CODEC_IDENTITY "UWVMROS1_ed9d032631f5a2985d94478644c40ea9e83b98baf9a33202e46a214aa533ab92"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory_valid(roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_std_msgs_msg_Header_valid(&value->header))
        return 0;
    if(value->joint_names.size > 12u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->joint_names.size; ++i)
        {
            if(value->joint_names.data[i].size > 64u || !uwvm_bounded_utf8(value->joint_names.data[i].data, value->joint_names.data[i].size))
                return 0;
        }
    }
    if(value->points.size > 1001u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->points.size; ++i)
        {
            if(!roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_valid(&value->points.data[i]))
                return 0;
        }
    }
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory_wire_size(roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_std_msgs_msg_Header_wire_size(&value->header);
    n += 4;
    if(value->joint_names.size > 12u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->joint_names.size; ++i)
        {
            n += 4 + value->joint_names.data[i].size;
        }
    }
    n += 4;
    if(value->points.size > 1001u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->points.size; ++i)
        {
            n += roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_wire_size(&value->points.data[i]);
        }
    }
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory_write_fields(roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory const* value,
                                                                                       unsigned char* p,
                                                                                       size_t* offset)
{
    roswasmc_bounded_2_std_msgs_msg_Header_write_fields(&value->header, p, offset);
    uwvm_bounded_put(p + *offset, value->joint_names.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->joint_names.size; ++i)
        {
            uwvm_bounded_put(p + *offset, value->joint_names.data[i].size, 4);
            *offset += 4;
            uwvm_bounded_copy(p + *offset, value->joint_names.data[i].data, value->joint_names.data[i].size);
            *offset += value->joint_names.data[i].size;
        }
    }
    uwvm_bounded_put(p + *offset, value->points.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->points.size; ++i)
        {
            roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_write_fields(&value->points.data[i], p, offset);
        }
    }
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory_read_fields(unsigned char const* p,
                                                                                     size_t n,
                                                                                     size_t* offset,
                                                                                     roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory* value)
{
    if(!roswasmc_bounded_2_std_msgs_msg_Header_read_fields(p, n, offset, &value->header))
        return 0;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->joint_names.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->joint_names.size > 12u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->joint_names.size; ++i)
        {
            if(*offset > n || n - *offset < 4)
                return 0;
            value->joint_names.data[i].size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
            *offset += 4;
            if(value->joint_names.data[i].size > 64u || value->joint_names.data[i].size > n - *offset)
                return 0;
            uwvm_bounded_copy(value->joint_names.data[i].data, p + *offset, value->joint_names.data[i].size);
            *offset += value->joint_names.data[i].size;
        }
    }
    if(*offset > n || n - *offset < 4)
        return 0;
    value->points.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->points.size > 1001u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->points.size; ++i)
        {
            if(!roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_read_fields(p, n, offset, &value->points.data[i]))
                return 0;
        }
    }
    return roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory_encode(roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory const* value,
                                                                                     void* output,
                                                                                     size_t capacity,
                                                                                     size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory_decode(void const* input,
                                                                                     size_t length,
                                                                                     roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory* value)
{
    roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory next = UWVM_ABB_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 20u || length > 409308u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#undef UWVM_BOUNDED_ASSERT
#endif
