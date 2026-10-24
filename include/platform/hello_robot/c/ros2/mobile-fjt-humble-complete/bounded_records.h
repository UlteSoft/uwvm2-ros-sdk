/** @file Generated bounded-v2 canonical values; no native ROS serialization or authority.
 * Every dynamic field has inline caller-owned capacity. Encode validates and measures
 * the full value before writes; decode commits one temporary only after full validation.
 * Supply distinct record, byte and size-output storage; overlap is explicitly refused.
 * Empty Service/Action components use a C layout dummy that is never a wire field. */
#ifndef UWVM_ROS_BOUNDED_RECORDS_90AD6A520914E196A652B1D9356B3B12986908EC9E482EA5D0DAE2EAF4609297
#define UWVM_ROS_BOUNDED_RECORDS_90AD6A520914E196A652B1D9356B3B12986908EC9E482EA5D0DAE2EAF4609297
#include <stdint.h>
#include <stddef.h>
#include <float.h>
#include <limits.h>
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

/** @brief Complete ROS2 builtin_interfaces/msg/Duration value; no field projects away native data. */
typedef struct roswasmc_bounded_2_builtin_interfaces_msg_Duration
{
    /** @brief Declared field sec; canonical capacity is part of CODEC_IDENTITY. */
    int32_t sec;
    /** @brief Declared field nanosec; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t nanosec;
} roswasmc_bounded_2_builtin_interfaces_msg_Duration;

# define ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_DURATION_MAX_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_DURATION_MIN_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_DURATION_CODEC_IDENTITY "UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_builtin_interfaces_msg_Duration_valid(roswasmc_bounded_2_builtin_interfaces_msg_Duration const* value)
{
    if(!value)
        return 0;
    if(value->nanosec >= 1000000000)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_builtin_interfaces_msg_Duration_wire_size(roswasmc_bounded_2_builtin_interfaces_msg_Duration const* value)
{
    size_t n = 0;
    n += 4;
    n += 4;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_builtin_interfaces_msg_Duration_write_fields(roswasmc_bounded_2_builtin_interfaces_msg_Duration const* value,
                                                                                   unsigned char* p,
                                                                                   size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->sec, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, (uint64_t)value->nanosec, 4);
    *offset += 4;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
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

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
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

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_builtin_interfaces_msg_Duration_decode(void const* input, size_t length, roswasmc_bounded_2_builtin_interfaces_msg_Duration* value)
{
    roswasmc_bounded_2_builtin_interfaces_msg_Duration next = {0};
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

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_builtin_interfaces_msg_Time_valid(roswasmc_bounded_2_builtin_interfaces_msg_Time const* value)
{
    if(!value)
        return 0;
    if(value->nanosec >= 1000000000)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_builtin_interfaces_msg_Time_wire_size(roswasmc_bounded_2_builtin_interfaces_msg_Time const* value)
{
    size_t n = 0;
    n += 4;
    n += 4;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_builtin_interfaces_msg_Time_write_fields(roswasmc_bounded_2_builtin_interfaces_msg_Time const* value, unsigned char* p, size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->sec, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, (uint64_t)value->nanosec, 4);
    *offset += 4;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
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

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
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

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_builtin_interfaces_msg_Time_decode(void const* input, size_t length, roswasmc_bounded_2_builtin_interfaces_msg_Time* value)
{
    roswasmc_bounded_2_builtin_interfaces_msg_Time next = {0};
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
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_0 != 0xf89deb28UL ||                                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_1 != 0x495e9f85UL ||                                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_2 != 0x618c129eUL ||                                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_3 != 0x03e5d971UL ||                                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_4 != 0x0c3f912aUL ||                                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_5 != 0xd9dc7366UL ||                                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_6 != 0x13b329d5UL ||                                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_7 != 0xe7746562UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_0 0xf89deb28UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_1 0x495e9f85UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_2 0x618c129eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_3 0x03e5d971UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_4 0x0c3f912aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_5 0xd9dc7366UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_6 0x13b329d5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_7 0xe7746562UL

/** @brief UTF-8 byte storage for std_msgs/msg/Header.frame_id; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_std_msgs_msg_Header_frame_id_text;

/** @brief Complete ROS2 std_msgs/msg/Header value; no field projects away native data. */
typedef struct roswasmc_bounded_2_std_msgs_msg_Header
{
    /** @brief Declared field stamp; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_builtin_interfaces_msg_Time stamp;
    /** @brief Declared field frame_id; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_std_msgs_msg_Header_frame_id_text frame_id;
} roswasmc_bounded_2_std_msgs_msg_Header;

# define ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_MAX_WIRE_BYTES 140u
# define ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_MIN_WIRE_BYTES 12u
# define ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER_CODEC_IDENTITY "UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_std_msgs_msg_Header_valid(roswasmc_bounded_2_std_msgs_msg_Header const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_builtin_interfaces_msg_Time_valid(&value->stamp))
        return 0;
    if(value->frame_id.size > 128u || !uwvm_bounded_utf8(value->frame_id.data, value->frame_id.size))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_std_msgs_msg_Header_wire_size(roswasmc_bounded_2_std_msgs_msg_Header const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_builtin_interfaces_msg_Time_wire_size(&value->stamp);
    n += 4 + value->frame_id.size;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_std_msgs_msg_Header_write_fields(roswasmc_bounded_2_std_msgs_msg_Header const* value, unsigned char* p, size_t* offset)
{
    roswasmc_bounded_2_builtin_interfaces_msg_Time_write_fields(&value->stamp, p, offset);
    uwvm_bounded_put(p + *offset, value->frame_id.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->frame_id.data, value->frame_id.size);
    *offset += value->frame_id.size;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int
    roswasmc_bounded_2_std_msgs_msg_Header_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_2_std_msgs_msg_Header* value)
{
    if(!roswasmc_bounded_2_builtin_interfaces_msg_Time_read_fields(p, n, offset, &value->stamp))
        return 0;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->frame_id.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->frame_id.size > 128u || value->frame_id.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->frame_id.data, p + *offset, value->frame_id.size);
    *offset += value->frame_id.size;
    return roswasmc_bounded_2_std_msgs_msg_Header_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
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

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_2_std_msgs_msg_Header_decode(void const* input, size_t length, roswasmc_bounded_2_std_msgs_msg_Header* value)
{
    roswasmc_bounded_2_std_msgs_msg_Header next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 12u || length > 140u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_std_msgs_msg_Header_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORYPOINT)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORYPOINT_0 != 0x85f2a1bfUL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORYPOINT_1 != 0xcfcee848UL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORYPOINT_2 != 0x7b60badaUL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORYPOINT_3 != 0xd19f4114UL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORYPOINT_4 != 0xf386f3f4UL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORYPOINT_5 != 0x338d727cUL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORYPOINT_6 != 0x3eb62212UL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORYPOINT_7 != 0x6411b88fUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORYPOINT 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORYPOINT_0 0x85f2a1bfUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORYPOINT_1 0xcfcee848UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORYPOINT_2 0x7b60badaUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORYPOINT_3 0xd19f4114UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORYPOINT_4 0xf386f3f4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORYPOINT_5 0x338d727cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORYPOINT_6 0x3eb62212UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORYPOINT_7 0x6411b88fUL

/** @brief At most8 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[8];
} roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_positions_sequence;

/** @brief At most8 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[8];
} roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_velocities_sequence;

/** @brief At most8 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[8];
} roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_accelerations_sequence;

/** @brief At most8 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[8];
} roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_effort_sequence;

/** @brief Complete ROS2 trajectory_msgs/msg/JointTrajectoryPoint value; no field projects away native data. */
typedef struct roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint
{
    /** @brief Declared field positions; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_positions_sequence positions;
    /** @brief Declared field velocities; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_velocities_sequence velocities;
    /** @brief Declared field accelerations; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_accelerations_sequence accelerations;
    /** @brief Declared field effort; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_effort_sequence effort;
    /** @brief Declared field time_from_start; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_builtin_interfaces_msg_Duration time_from_start;
} roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint;

# define ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORYPOINT_MAX_WIRE_BYTES 280u
# define ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORYPOINT_MIN_WIRE_BYTES 24u
# define ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORYPOINT_CODEC_IDENTITY "UWVMROS1_a512b971211baa8604440e02a046b586e7970293242607002ceb89196c9d99b1"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_valid(roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint const* value)
{
    if(!value)
        return 0;
    if(value->positions.size > 8u)
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
    if(value->velocities.size > 8u)
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
    if(value->accelerations.size > 8u)
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
    if(value->effort.size > 8u)
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

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_wire_size(roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint const* value)
{
    size_t n = 0;
    n += 4;
    if(value->positions.size > 8u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->positions.size; ++i)
        {
            n += 8;
        }
    }
    n += 4;
    if(value->velocities.size > 8u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->velocities.size; ++i)
        {
            n += 8;
        }
    }
    n += 4;
    if(value->accelerations.size > 8u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->accelerations.size; ++i)
        {
            n += 8;
        }
    }
    n += 4;
    if(value->effort.size > 8u)
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

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
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

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_read_fields(unsigned char const* p,
                                                                                          size_t n,
                                                                                          size_t* offset,
                                                                                          roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    value->positions.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->positions.size > 8u)
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
    if(value->velocities.size > 8u)
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
    if(value->accelerations.size > 8u)
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
    if(value->effort.size > 8u)
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

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
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

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_decode(void const* input,
                                                                                          size_t length,
                                                                                          roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint* value)
{
    roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 24u || length > 280u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORY)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORY_0 != 0xb47f9991UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORY_1 != 0x5de61ce9UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORY_2 != 0x1c6dafc4UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORY_3 != 0x09868747UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORY_4 != 0x15a58a3fUL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORY_5 != 0x3111d786UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORY_6 != 0xf1f61c6eUL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORY_7 != 0x800e8f81UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORY 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORY_0 0xb47f9991UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORY_1 0x5de61ce9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORY_2 0x1c6dafc4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORY_3 0x09868747UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORY_4 0x15a58a3fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORY_5 0x3111d786UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORY_6 0xf1f61c6eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORY_7 0x800e8f81UL

/** @brief UTF-8 byte storage for trajectory_msgs/msg/JointTrajectory.joint_names; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory_joint_names_text;

/** @brief At most8 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory_joint_names_text data[8];
} roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory_joint_names_sequence;

/** @brief At most1 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint data[1];
} roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory_points_sequence;

/** @brief Complete ROS2 trajectory_msgs/msg/JointTrajectory value; no field projects away native data. */
typedef struct roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory
{
    /** @brief Declared field header; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_std_msgs_msg_Header header;
    /** @brief Declared field joint_names; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory_joint_names_sequence joint_names;
    /** @brief Declared field points; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory_points_sequence points;
} roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory;

# define ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORY_MAX_WIRE_BYTES 1484u
# define ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORY_MIN_WIRE_BYTES 20u
# define ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_JOINTTRAJECTORY_CODEC_IDENTITY "UWVMROS1_e32bd7016b5fefcab6adeb42072e2d56c45d4b9f7cb372bdb5bfac97abf8cb77"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory_valid(roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_std_msgs_msg_Header_valid(&value->header))
        return 0;
    if(value->joint_names.size > 8u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->joint_names.size; ++i)
        {
            if(value->joint_names.data[i].size > 128u || !uwvm_bounded_utf8(value->joint_names.data[i].data, value->joint_names.data[i].size))
                return 0;
        }
    }
    if(value->points.size > 1u)
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

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory_wire_size(roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_std_msgs_msg_Header_wire_size(&value->header);
    n += 4;
    if(value->joint_names.size > 8u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->joint_names.size; ++i)
        {
            n += 4 + value->joint_names.data[i].size;
        }
    }
    n += 4;
    if(value->points.size > 1u)
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

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
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

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
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
    if(value->joint_names.size > 8u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->joint_names.size; ++i)
        {
            if(*offset > n || n - *offset < 4)
                return 0;
            value->joint_names.data[i].size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
            *offset += 4;
            if(value->joint_names.data[i].size > 128u || value->joint_names.data[i].size > n - *offset)
                return 0;
            uwvm_bounded_copy(value->joint_names.data[i].data, p + *offset, value->joint_names.data[i].size);
            *offset += value->joint_names.data[i].size;
        }
    }
    if(*offset > n || n - *offset < 4)
        return 0;
    value->points.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->points.size > 1u)
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

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
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

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory_decode(void const* input,
                                                                                     size_t length,
                                                                                     roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory* value)
{
    roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 20u || length > 1484u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_VECTOR3)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_VECTOR3_0 != 0x5e44bb6eUL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_VECTOR3_1 != 0xef3b440dUL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_VECTOR3_2 != 0x9327bf34UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_VECTOR3_3 != 0xb1340f74UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_VECTOR3_4 != 0xc805437fUL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_VECTOR3_5 != 0xcdb41308UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_VECTOR3_6 != 0x8d51b60dUL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_VECTOR3_7 != 0x4266adbeUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_VECTOR3 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_VECTOR3_0 0x5e44bb6eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_VECTOR3_1 0xef3b440dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_VECTOR3_2 0x9327bf34UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_VECTOR3_3 0xb1340f74UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_VECTOR3_4 0xc805437fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_VECTOR3_5 0xcdb41308UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_VECTOR3_6 0x8d51b60dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_VECTOR3_7 0x4266adbeUL

/** @brief Complete ROS2 geometry_msgs/msg/Vector3 value; no field projects away native data. */
typedef struct roswasmc_bounded_2_geometry_msgs_msg_Vector3
{
    /** @brief Declared field x; canonical capacity is part of CODEC_IDENTITY. */
    double x;
    /** @brief Declared field y; canonical capacity is part of CODEC_IDENTITY. */
    double y;
    /** @brief Declared field z; canonical capacity is part of CODEC_IDENTITY. */
    double z;
} roswasmc_bounded_2_geometry_msgs_msg_Vector3;

# define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_VECTOR3_MAX_WIRE_BYTES 24u
# define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_VECTOR3_MIN_WIRE_BYTES 24u
# define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_VECTOR3_CODEC_IDENTITY "UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_geometry_msgs_msg_Vector3_valid(roswasmc_bounded_2_geometry_msgs_msg_Vector3 const* value)
{
    if(!value)
        return 0;
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->x, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
            return 0;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->y, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
            return 0;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->z, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
            return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_geometry_msgs_msg_Vector3_wire_size(roswasmc_bounded_2_geometry_msgs_msg_Vector3 const* value)
{
    size_t n = 0;
    n += 8;
    n += 8;
    n += 8;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_geometry_msgs_msg_Vector3_write_fields(roswasmc_bounded_2_geometry_msgs_msg_Vector3 const* value, unsigned char* p, size_t* offset)
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

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_geometry_msgs_msg_Vector3_read_fields(unsigned char const* p,
                                                                           size_t n,
                                                                           size_t* offset,
                                                                           roswasmc_bounded_2_geometry_msgs_msg_Vector3* value)
{
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->x, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->y, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->z, &bits, 8);
    }
    *offset += 8;
    return roswasmc_bounded_2_geometry_msgs_msg_Vector3_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_geometry_msgs_msg_Vector3_encode(roswasmc_bounded_2_geometry_msgs_msg_Vector3 const* value,
                                                                           void* output,
                                                                           size_t capacity,
                                                                           size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_geometry_msgs_msg_Vector3_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_geometry_msgs_msg_Vector3_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_geometry_msgs_msg_Vector3_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_geometry_msgs_msg_Vector3_decode(void const* input, size_t length, roswasmc_bounded_2_geometry_msgs_msg_Vector3* value)
{
    roswasmc_bounded_2_geometry_msgs_msg_Vector3 next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 24u || length > 24u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_geometry_msgs_msg_Vector3_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_QUATERNION)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_QUATERNION_0 != 0x32466649UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_QUATERNION_1 != 0x70bd4a02UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_QUATERNION_2 != 0x3cfd577aUL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_QUATERNION_3 != 0x1083fafaUL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_QUATERNION_4 != 0xb30821e4UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_QUATERNION_5 != 0x3d13ef65UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_QUATERNION_6 != 0xaa633f77UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_QUATERNION_7 != 0x40e797edUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_QUATERNION 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_QUATERNION_0 0x32466649UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_QUATERNION_1 0x70bd4a02UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_QUATERNION_2 0x3cfd577aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_QUATERNION_3 0x1083fafaUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_QUATERNION_4 0xb30821e4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_QUATERNION_5 0x3d13ef65UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_QUATERNION_6 0xaa633f77UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_QUATERNION_7 0x40e797edUL

/** @brief Complete ROS2 geometry_msgs/msg/Quaternion value; no field projects away native data. */
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

# define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_QUATERNION_MAX_WIRE_BYTES 32u
# define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_QUATERNION_MIN_WIRE_BYTES 32u
# define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_QUATERNION_CODEC_IDENTITY "UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672"

/** @brief Explicit declared-default initialization; ordinary C/C++ zero aggregates stay zero.
 * Nested/fixed elements are initialized independently; sequence lengths stay zero.
 * This initializer performs no I/O, registration, allocation or capability operation. */
static inline uint32_t roswasmc_bounded_2_geometry_msgs_msg_Quaternion_default(roswasmc_bounded_2_geometry_msgs_msg_Quaternion* value)
{
    roswasmc_bounded_2_geometry_msgs_msg_Quaternion next = {0};
    if(!value)
        return UWVM_BOUNDED_INVALID;
    next.x = 0.0;
    next.y = 0.0;
    next.z = 0.0;
    next.w = 1.0;
    *value = next;
    return 0;
}

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_geometry_msgs_msg_Quaternion_valid(roswasmc_bounded_2_geometry_msgs_msg_Quaternion const* value)
{
    if(!value)
        return 0;
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->x, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
            return 0;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->y, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
            return 0;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->z, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
            return 0;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->w, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
            return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_geometry_msgs_msg_Quaternion_wire_size(roswasmc_bounded_2_geometry_msgs_msg_Quaternion const* value)
{
    size_t n = 0;
    n += 8;
    n += 8;
    n += 8;
    n += 8;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_geometry_msgs_msg_Quaternion_write_fields(roswasmc_bounded_2_geometry_msgs_msg_Quaternion const* value, unsigned char* p, size_t* offset)
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

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_geometry_msgs_msg_Quaternion_read_fields(unsigned char const* p,
                                                                              size_t n,
                                                                              size_t* offset,
                                                                              roswasmc_bounded_2_geometry_msgs_msg_Quaternion* value)
{
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->x, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->y, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->z, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->w, &bits, 8);
    }
    *offset += 8;
    return roswasmc_bounded_2_geometry_msgs_msg_Quaternion_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_geometry_msgs_msg_Quaternion_encode(roswasmc_bounded_2_geometry_msgs_msg_Quaternion const* value,
                                                                              void* output,
                                                                              size_t capacity,
                                                                              size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_geometry_msgs_msg_Quaternion_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_geometry_msgs_msg_Quaternion_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_geometry_msgs_msg_Quaternion_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_geometry_msgs_msg_Quaternion_decode(void const* input, size_t length, roswasmc_bounded_2_geometry_msgs_msg_Quaternion* value)
{
    roswasmc_bounded_2_geometry_msgs_msg_Quaternion next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 32u || length > 32u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_geometry_msgs_msg_Quaternion_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TRANSFORM)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TRANSFORM_0 != 0xccc49b00UL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TRANSFORM_1 != 0x5daeef91UL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TRANSFORM_2 != 0x545ccd0cUL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TRANSFORM_3 != 0xd3af058cUL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TRANSFORM_4 != 0x4f61291cUL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TRANSFORM_5 != 0xe3e56330UL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TRANSFORM_6 != 0x0f4a5e35UL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TRANSFORM_7 != 0x119af7caUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TRANSFORM 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TRANSFORM_0 0xccc49b00UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TRANSFORM_1 0x5daeef91UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TRANSFORM_2 0x545ccd0cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TRANSFORM_3 0xd3af058cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TRANSFORM_4 0x4f61291cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TRANSFORM_5 0xe3e56330UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TRANSFORM_6 0x0f4a5e35UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TRANSFORM_7 0x119af7caUL

/** @brief Complete ROS2 geometry_msgs/msg/Transform value; no field projects away native data. */
typedef struct roswasmc_bounded_2_geometry_msgs_msg_Transform
{
    /** @brief Declared field translation; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_geometry_msgs_msg_Vector3 translation;
    /** @brief Declared field rotation; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_geometry_msgs_msg_Quaternion rotation;
} roswasmc_bounded_2_geometry_msgs_msg_Transform;

# define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TRANSFORM_MAX_WIRE_BYTES 56u
# define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TRANSFORM_MIN_WIRE_BYTES 56u
# define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TRANSFORM_CODEC_IDENTITY "UWVMROS1_7ddcb1c3fca43f4a0299d43fb6fac1b77a8f26001af809dc13307f4f9c61d65b"

/** @brief Explicit declared-default initialization; ordinary C/C++ zero aggregates stay zero.
 * Nested/fixed elements are initialized independently; sequence lengths stay zero.
 * This initializer performs no I/O, registration, allocation or capability operation. */
static inline uint32_t roswasmc_bounded_2_geometry_msgs_msg_Transform_default(roswasmc_bounded_2_geometry_msgs_msg_Transform* value)
{
    roswasmc_bounded_2_geometry_msgs_msg_Transform next = {0};
    if(!value)
        return UWVM_BOUNDED_INVALID;
    (void)roswasmc_bounded_2_geometry_msgs_msg_Quaternion_default(&next.rotation);
    *value = next;
    return 0;
}

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_geometry_msgs_msg_Transform_valid(roswasmc_bounded_2_geometry_msgs_msg_Transform const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_geometry_msgs_msg_Vector3_valid(&value->translation))
        return 0;
    if(!roswasmc_bounded_2_geometry_msgs_msg_Quaternion_valid(&value->rotation))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_geometry_msgs_msg_Transform_wire_size(roswasmc_bounded_2_geometry_msgs_msg_Transform const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_geometry_msgs_msg_Vector3_wire_size(&value->translation);
    n += roswasmc_bounded_2_geometry_msgs_msg_Quaternion_wire_size(&value->rotation);
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_geometry_msgs_msg_Transform_write_fields(roswasmc_bounded_2_geometry_msgs_msg_Transform const* value, unsigned char* p, size_t* offset)
{
    roswasmc_bounded_2_geometry_msgs_msg_Vector3_write_fields(&value->translation, p, offset);
    roswasmc_bounded_2_geometry_msgs_msg_Quaternion_write_fields(&value->rotation, p, offset);
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_geometry_msgs_msg_Transform_read_fields(unsigned char const* p,
                                                                             size_t n,
                                                                             size_t* offset,
                                                                             roswasmc_bounded_2_geometry_msgs_msg_Transform* value)
{
    if(!roswasmc_bounded_2_geometry_msgs_msg_Vector3_read_fields(p, n, offset, &value->translation))
        return 0;
    if(!roswasmc_bounded_2_geometry_msgs_msg_Quaternion_read_fields(p, n, offset, &value->rotation))
        return 0;
    return roswasmc_bounded_2_geometry_msgs_msg_Transform_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_geometry_msgs_msg_Transform_encode(roswasmc_bounded_2_geometry_msgs_msg_Transform const* value,
                                                                             void* output,
                                                                             size_t capacity,
                                                                             size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_geometry_msgs_msg_Transform_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_geometry_msgs_msg_Transform_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_geometry_msgs_msg_Transform_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_geometry_msgs_msg_Transform_decode(void const* input, size_t length, roswasmc_bounded_2_geometry_msgs_msg_Transform* value)
{
    roswasmc_bounded_2_geometry_msgs_msg_Transform next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 56u || length > 56u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_geometry_msgs_msg_Transform_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWIST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWIST_0 != 0x89015adcUL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWIST_1 != 0x504325b4UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWIST_2 != 0x38f41382UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWIST_3 != 0x47969dc7UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWIST_4 != 0x929584a9UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWIST_5 != 0xde4042d7UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWIST_6 != 0x521e1fc7UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWIST_7 != 0x31eb7e4fUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWIST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWIST_0 0x89015adcUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWIST_1 0x504325b4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWIST_2 0x38f41382UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWIST_3 0x47969dc7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWIST_4 0x929584a9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWIST_5 0xde4042d7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWIST_6 0x521e1fc7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWIST_7 0x31eb7e4fUL

/** @brief Complete ROS2 geometry_msgs/msg/Twist value; no field projects away native data. */
typedef struct roswasmc_bounded_2_geometry_msgs_msg_Twist
{
    /** @brief Declared field linear; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_geometry_msgs_msg_Vector3 linear;
    /** @brief Declared field angular; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_geometry_msgs_msg_Vector3 angular;
} roswasmc_bounded_2_geometry_msgs_msg_Twist;

# define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWIST_MAX_WIRE_BYTES 48u
# define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWIST_MIN_WIRE_BYTES 48u
# define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWIST_CODEC_IDENTITY "UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_geometry_msgs_msg_Twist_valid(roswasmc_bounded_2_geometry_msgs_msg_Twist const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_geometry_msgs_msg_Vector3_valid(&value->linear))
        return 0;
    if(!roswasmc_bounded_2_geometry_msgs_msg_Vector3_valid(&value->angular))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_geometry_msgs_msg_Twist_wire_size(roswasmc_bounded_2_geometry_msgs_msg_Twist const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_geometry_msgs_msg_Vector3_wire_size(&value->linear);
    n += roswasmc_bounded_2_geometry_msgs_msg_Vector3_wire_size(&value->angular);
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_geometry_msgs_msg_Twist_write_fields(roswasmc_bounded_2_geometry_msgs_msg_Twist const* value, unsigned char* p, size_t* offset)
{
    roswasmc_bounded_2_geometry_msgs_msg_Vector3_write_fields(&value->linear, p, offset);
    roswasmc_bounded_2_geometry_msgs_msg_Vector3_write_fields(&value->angular, p, offset);
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int
    roswasmc_bounded_2_geometry_msgs_msg_Twist_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_2_geometry_msgs_msg_Twist* value)
{
    if(!roswasmc_bounded_2_geometry_msgs_msg_Vector3_read_fields(p, n, offset, &value->linear))
        return 0;
    if(!roswasmc_bounded_2_geometry_msgs_msg_Vector3_read_fields(p, n, offset, &value->angular))
        return 0;
    return roswasmc_bounded_2_geometry_msgs_msg_Twist_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_geometry_msgs_msg_Twist_encode(roswasmc_bounded_2_geometry_msgs_msg_Twist const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_geometry_msgs_msg_Twist_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_geometry_msgs_msg_Twist_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_geometry_msgs_msg_Twist_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_2_geometry_msgs_msg_Twist_decode(void const* input, size_t length, roswasmc_bounded_2_geometry_msgs_msg_Twist* value)
{
    roswasmc_bounded_2_geometry_msgs_msg_Twist next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 48u || length > 48u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_geometry_msgs_msg_Twist_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_MULTIDOFJOINTTRAJECTORYPOINT)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_MULTIDOFJOINTTRAJECTORYPOINT_0 != 0x986ca494UL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_MULTIDOFJOINTTRAJECTORYPOINT_1 != 0x1ea0f3ddUL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_MULTIDOFJOINTTRAJECTORYPOINT_2 != 0x9e8907f3UL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_MULTIDOFJOINTTRAJECTORYPOINT_3 != 0xd4bce5f8UL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_MULTIDOFJOINTTRAJECTORYPOINT_4 != 0x786c1ffdUL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_MULTIDOFJOINTTRAJECTORYPOINT_5 != 0xb4e9f5e5UL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_MULTIDOFJOINTTRAJECTORYPOINT_6 != 0x6ba59de1UL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_MULTIDOFJOINTTRAJECTORYPOINT_7 != 0x97e1813cUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_MULTIDOFJOINTTRAJECTORYPOINT 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_MULTIDOFJOINTTRAJECTORYPOINT_0 0x986ca494UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_MULTIDOFJOINTTRAJECTORYPOINT_1 0x1ea0f3ddUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_MULTIDOFJOINTTRAJECTORYPOINT_2 0x9e8907f3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_MULTIDOFJOINTTRAJECTORYPOINT_3 0xd4bce5f8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_MULTIDOFJOINTTRAJECTORYPOINT_4 0x786c1ffdUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_MULTIDOFJOINTTRAJECTORYPOINT_5 0xb4e9f5e5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_MULTIDOFJOINTTRAJECTORYPOINT_6 0x6ba59de1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_MULTIDOFJOINTTRAJECTORYPOINT_7 0x97e1813cUL

/** @brief At most1 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_2_geometry_msgs_msg_Transform data[1];
} roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint_transforms_sequence;

/** @brief At most8 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_2_geometry_msgs_msg_Twist data[8];
} roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint_velocities_sequence;

/** @brief At most8 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_2_geometry_msgs_msg_Twist data[8];
} roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint_accelerations_sequence;

/** @brief Complete ROS2 trajectory_msgs/msg/MultiDOFJointTrajectoryPoint value; no field projects away native data. */
typedef struct roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint
{
    /** @brief Declared field transforms; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint_transforms_sequence transforms;
    /** @brief Declared field velocities; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint_velocities_sequence velocities;
    /** @brief Declared field accelerations; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint_accelerations_sequence accelerations;
    /** @brief Declared field time_from_start; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_builtin_interfaces_msg_Duration time_from_start;
} roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint;

# define ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_MULTIDOFJOINTTRAJECTORYPOINT_MAX_WIRE_BYTES 844u
# define ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_MULTIDOFJOINTTRAJECTORYPOINT_MIN_WIRE_BYTES 20u
# define ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_MULTIDOFJOINTTRAJECTORYPOINT_CODEC_IDENTITY                                                                    \
     "UWVMROS1_4b4b6ba78f11918fcdc138544f7ef1a140d1fc51b385349ab1ad5716472c3daf"

/** @brief Explicit declared-default initialization; ordinary C/C++ zero aggregates stay zero.
 * Nested/fixed elements are initialized independently; sequence lengths stay zero.
 * This initializer performs no I/O, registration, allocation or capability operation. */
static inline uint32_t
    roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint_default(roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint* value)
{
    roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint next = {0};
    if(!value)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int
    roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint_valid(roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint const* value)
{
    if(!value)
        return 0;
    if(value->transforms.size > 1u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->transforms.size; ++i)
        {
            if(!roswasmc_bounded_2_geometry_msgs_msg_Transform_valid(&value->transforms.data[i]))
                return 0;
        }
    }
    if(value->velocities.size > 8u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->velocities.size; ++i)
        {
            if(!roswasmc_bounded_2_geometry_msgs_msg_Twist_valid(&value->velocities.data[i]))
                return 0;
        }
    }
    if(value->accelerations.size > 8u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->accelerations.size; ++i)
        {
            if(!roswasmc_bounded_2_geometry_msgs_msg_Twist_valid(&value->accelerations.data[i]))
                return 0;
        }
    }
    if(!roswasmc_bounded_2_builtin_interfaces_msg_Duration_valid(&value->time_from_start))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint_wire_size(
    roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint const* value)
{
    size_t n = 0;
    n += 4;
    if(value->transforms.size > 1u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->transforms.size; ++i)
        {
            n += roswasmc_bounded_2_geometry_msgs_msg_Transform_wire_size(&value->transforms.data[i]);
        }
    }
    n += 4;
    if(value->velocities.size > 8u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->velocities.size; ++i)
        {
            n += roswasmc_bounded_2_geometry_msgs_msg_Twist_wire_size(&value->velocities.data[i]);
        }
    }
    n += 4;
    if(value->accelerations.size > 8u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->accelerations.size; ++i)
        {
            n += roswasmc_bounded_2_geometry_msgs_msg_Twist_wire_size(&value->accelerations.data[i]);
        }
    }
    n += roswasmc_bounded_2_builtin_interfaces_msg_Duration_wire_size(&value->time_from_start);
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint_write_fields(
    roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint const* value,
    unsigned char* p,
    size_t* offset)
{
    uwvm_bounded_put(p + *offset, value->transforms.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->transforms.size; ++i)
        {
            roswasmc_bounded_2_geometry_msgs_msg_Transform_write_fields(&value->transforms.data[i], p, offset);
        }
    }
    uwvm_bounded_put(p + *offset, value->velocities.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->velocities.size; ++i)
        {
            roswasmc_bounded_2_geometry_msgs_msg_Twist_write_fields(&value->velocities.data[i], p, offset);
        }
    }
    uwvm_bounded_put(p + *offset, value->accelerations.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->accelerations.size; ++i)
        {
            roswasmc_bounded_2_geometry_msgs_msg_Twist_write_fields(&value->accelerations.data[i], p, offset);
        }
    }
    roswasmc_bounded_2_builtin_interfaces_msg_Duration_write_fields(&value->time_from_start, p, offset);
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int
    roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint_read_fields(unsigned char const* p,
                                                                                    size_t n,
                                                                                    size_t* offset,
                                                                                    roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    value->transforms.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->transforms.size > 1u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->transforms.size; ++i)
        {
            if(!roswasmc_bounded_2_geometry_msgs_msg_Transform_read_fields(p, n, offset, &value->transforms.data[i]))
                return 0;
        }
    }
    if(*offset > n || n - *offset < 4)
        return 0;
    value->velocities.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->velocities.size > 8u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->velocities.size; ++i)
        {
            if(!roswasmc_bounded_2_geometry_msgs_msg_Twist_read_fields(p, n, offset, &value->velocities.data[i]))
                return 0;
        }
    }
    if(*offset > n || n - *offset < 4)
        return 0;
    value->accelerations.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->accelerations.size > 8u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->accelerations.size; ++i)
        {
            if(!roswasmc_bounded_2_geometry_msgs_msg_Twist_read_fields(p, n, offset, &value->accelerations.data[i]))
                return 0;
        }
    }
    if(!roswasmc_bounded_2_builtin_interfaces_msg_Duration_read_fields(p, n, offset, &value->time_from_start))
        return 0;
    return roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint_encode(roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint_decode(void const* input,
                                                                               size_t length,
                                                                               roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint* value)
{
    roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 20u || length > 844u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint_read_fields((unsigned char const*)input, length, &offset, &next) ||
       offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_MULTIDOFJOINTTRAJECTORY)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_MULTIDOFJOINTTRAJECTORY_0 != 0xd52602e7UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_MULTIDOFJOINTTRAJECTORY_1 != 0x322a71a9UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_MULTIDOFJOINTTRAJECTORY_2 != 0xd253c459UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_MULTIDOFJOINTTRAJECTORY_3 != 0xd27bc013UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_MULTIDOFJOINTTRAJECTORY_4 != 0x71e4f443UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_MULTIDOFJOINTTRAJECTORY_5 != 0x2a74ed7dUL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_MULTIDOFJOINTTRAJECTORY_6 != 0xfbe0e028UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_MULTIDOFJOINTTRAJECTORY_7 != 0x66579b11UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_MULTIDOFJOINTTRAJECTORY 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_MULTIDOFJOINTTRAJECTORY_0 0xd52602e7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_MULTIDOFJOINTTRAJECTORY_1 0x322a71a9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_MULTIDOFJOINTTRAJECTORY_2 0xd253c459UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_MULTIDOFJOINTTRAJECTORY_3 0xd27bc013UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_MULTIDOFJOINTTRAJECTORY_4 0x71e4f443UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_MULTIDOFJOINTTRAJECTORY_5 0x2a74ed7dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_MULTIDOFJOINTTRAJECTORY_6 0xfbe0e028UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_MULTIDOFJOINTTRAJECTORY_7 0x66579b11UL

/** @brief UTF-8 byte storage for trajectory_msgs/msg/MultiDOFJointTrajectory.joint_names; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory_joint_names_text;

/** @brief At most8 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory_joint_names_text data[8];
} roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory_joint_names_sequence;

/** @brief At most1 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint data[1];
} roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory_points_sequence;

/** @brief Complete ROS2 trajectory_msgs/msg/MultiDOFJointTrajectory value; no field projects away native data. */
typedef struct roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory
{
    /** @brief Declared field header; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_std_msgs_msg_Header header;
    /** @brief Declared field joint_names; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory_joint_names_sequence joint_names;
    /** @brief Declared field points; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory_points_sequence points;
} roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory;

# define ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_MULTIDOFJOINTTRAJECTORY_MAX_WIRE_BYTES 2048u
# define ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_MULTIDOFJOINTTRAJECTORY_MIN_WIRE_BYTES 20u
# define ROSWASMC_BOUNDED_2_TRAJECTORY_MSGS_MSG_MULTIDOFJOINTTRAJECTORY_CODEC_IDENTITY                                                                         \
     "UWVMROS1_b822a2d5db9b83e916dcc9db4932952a314773ef53c9fbaf825902e0eb7c8cb5"

/** @brief Explicit declared-default initialization; ordinary C/C++ zero aggregates stay zero.
 * Nested/fixed elements are initialized independently; sequence lengths stay zero.
 * This initializer performs no I/O, registration, allocation or capability operation. */
static inline uint32_t
    roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory_default(roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory* value)
{
    roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory next = {0};
    if(!value)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int
    roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory_valid(roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_std_msgs_msg_Header_valid(&value->header))
        return 0;
    if(value->joint_names.size > 8u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->joint_names.size; ++i)
        {
            if(value->joint_names.data[i].size > 128u || !uwvm_bounded_utf8(value->joint_names.data[i].data, value->joint_names.data[i].size))
                return 0;
        }
    }
    if(value->points.size > 1u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->points.size; ++i)
        {
            if(!roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint_valid(&value->points.data[i]))
                return 0;
        }
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory_wire_size(roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_std_msgs_msg_Header_wire_size(&value->header);
    n += 4;
    if(value->joint_names.size > 8u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->joint_names.size; ++i)
        {
            n += 4 + value->joint_names.data[i].size;
        }
    }
    n += 4;
    if(value->points.size > 1u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->points.size; ++i)
        {
            n += roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint_wire_size(&value->points.data[i]);
        }
    }
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory_write_fields(roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory const* value,
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
            roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint_write_fields(&value->points.data[i], p, offset);
        }
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int
    roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory_read_fields(unsigned char const* p,
                                                                               size_t n,
                                                                               size_t* offset,
                                                                               roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory* value)
{
    if(!roswasmc_bounded_2_std_msgs_msg_Header_read_fields(p, n, offset, &value->header))
        return 0;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->joint_names.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->joint_names.size > 8u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->joint_names.size; ++i)
        {
            if(*offset > n || n - *offset < 4)
                return 0;
            value->joint_names.data[i].size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
            *offset += 4;
            if(value->joint_names.data[i].size > 128u || value->joint_names.data[i].size > n - *offset)
                return 0;
            uwvm_bounded_copy(value->joint_names.data[i].data, p + *offset, value->joint_names.data[i].size);
            *offset += value->joint_names.data[i].size;
        }
    }
    if(*offset > n || n - *offset < 4)
        return 0;
    value->points.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->points.size > 1u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->points.size; ++i)
        {
            if(!roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint_read_fields(p, n, offset, &value->points.data[i]))
                return 0;
        }
    }
    return roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory_encode(roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory const* value,
                                                                          void* output,
                                                                          size_t capacity,
                                                                          size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory_decode(void const* input,
                                                                          size_t length,
                                                                          roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory* value)
{
    roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 20u || length > 2048u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_CONTROL_MSGS_MSG_JOINTTOLERANCE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_CONTROL_MSGS_MSG_JOINTTOLERANCE_0 != 0xa667a82bUL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_CONTROL_MSGS_MSG_JOINTTOLERANCE_1 != 0x078a9b7bUL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_CONTROL_MSGS_MSG_JOINTTOLERANCE_2 != 0x9e9b36c5UL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_CONTROL_MSGS_MSG_JOINTTOLERANCE_3 != 0x209288b4UL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_CONTROL_MSGS_MSG_JOINTTOLERANCE_4 != 0x76e67b9eUL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_CONTROL_MSGS_MSG_JOINTTOLERANCE_5 != 0x8b3ec7f0UL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_CONTROL_MSGS_MSG_JOINTTOLERANCE_6 != 0xd37bf42dUL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_CONTROL_MSGS_MSG_JOINTTOLERANCE_7 != 0xdbef8ba7UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_CONTROL_MSGS_MSG_JOINTTOLERANCE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_CONTROL_MSGS_MSG_JOINTTOLERANCE_0 0xa667a82bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_CONTROL_MSGS_MSG_JOINTTOLERANCE_1 0x078a9b7bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_CONTROL_MSGS_MSG_JOINTTOLERANCE_2 0x9e9b36c5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_CONTROL_MSGS_MSG_JOINTTOLERANCE_3 0x209288b4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_CONTROL_MSGS_MSG_JOINTTOLERANCE_4 0x76e67b9eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_CONTROL_MSGS_MSG_JOINTTOLERANCE_5 0x8b3ec7f0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_CONTROL_MSGS_MSG_JOINTTOLERANCE_6 0xd37bf42dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_CONTROL_MSGS_MSG_JOINTTOLERANCE_7 0xdbef8ba7UL

/** @brief UTF-8 byte storage for control_msgs/msg/JointTolerance.name; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_control_msgs_msg_JointTolerance_name_text;

/** @brief Complete ROS2 control_msgs/msg/JointTolerance value; no field projects away native data. */
typedef struct roswasmc_bounded_2_control_msgs_msg_JointTolerance
{
    /** @brief Declared field name; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_control_msgs_msg_JointTolerance_name_text name;
    /** @brief Declared field position; canonical capacity is part of CODEC_IDENTITY. */
    double position;
    /** @brief Declared field velocity; canonical capacity is part of CODEC_IDENTITY. */
    double velocity;
    /** @brief Declared field acceleration; canonical capacity is part of CODEC_IDENTITY. */
    double acceleration;
} roswasmc_bounded_2_control_msgs_msg_JointTolerance;

# define ROSWASMC_BOUNDED_2_CONTROL_MSGS_MSG_JOINTTOLERANCE_MAX_WIRE_BYTES 156u
# define ROSWASMC_BOUNDED_2_CONTROL_MSGS_MSG_JOINTTOLERANCE_MIN_WIRE_BYTES 28u
# define ROSWASMC_BOUNDED_2_CONTROL_MSGS_MSG_JOINTTOLERANCE_CODEC_IDENTITY "UWVMROS1_3864af88029b3b1f51907b3da63d2d821104c29b9469a146a5a34f73f3598b8a"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_control_msgs_msg_JointTolerance_valid(roswasmc_bounded_2_control_msgs_msg_JointTolerance const* value)
{
    if(!value)
        return 0;
    if(value->name.size > 128u || !uwvm_bounded_utf8(value->name.data, value->name.size))
        return 0;
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->position, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
            return 0;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->velocity, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
            return 0;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->acceleration, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
            return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_control_msgs_msg_JointTolerance_wire_size(roswasmc_bounded_2_control_msgs_msg_JointTolerance const* value)
{
    size_t n = 0;
    n += 4 + value->name.size;
    n += 8;
    n += 8;
    n += 8;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_control_msgs_msg_JointTolerance_write_fields(roswasmc_bounded_2_control_msgs_msg_JointTolerance const* value,
                                                                                   unsigned char* p,
                                                                                   size_t* offset)
{
    uwvm_bounded_put(p + *offset, value->name.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->name.data, value->name.size);
    *offset += value->name.size;
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->position, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->velocity, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->acceleration, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_control_msgs_msg_JointTolerance_read_fields(unsigned char const* p,
                                                                                 size_t n,
                                                                                 size_t* offset,
                                                                                 roswasmc_bounded_2_control_msgs_msg_JointTolerance* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    value->name.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->name.size > 128u || value->name.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->name.data, p + *offset, value->name.size);
    *offset += value->name.size;
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->position, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->velocity, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->acceleration, &bits, 8);
    }
    *offset += 8;
    return roswasmc_bounded_2_control_msgs_msg_JointTolerance_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_control_msgs_msg_JointTolerance_encode(roswasmc_bounded_2_control_msgs_msg_JointTolerance const* value,
                                                                                 void* output,
                                                                                 size_t capacity,
                                                                                 size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_control_msgs_msg_JointTolerance_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_control_msgs_msg_JointTolerance_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_control_msgs_msg_JointTolerance_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_control_msgs_msg_JointTolerance_decode(void const* input, size_t length, roswasmc_bounded_2_control_msgs_msg_JointTolerance* value)
{
    roswasmc_bounded_2_control_msgs_msg_JointTolerance next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 28u || length > 156u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_control_msgs_msg_JointTolerance_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_CONTROL_MSGS_MSG_JOINTCOMPONENTTOLERANCE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_CONTROL_MSGS_MSG_JOINTCOMPONENTTOLERANCE_0 != 0x3f7cacfaUL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_CONTROL_MSGS_MSG_JOINTCOMPONENTTOLERANCE_1 != 0xfb8abce9UL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_CONTROL_MSGS_MSG_JOINTCOMPONENTTOLERANCE_2 != 0x5abc5920UL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_CONTROL_MSGS_MSG_JOINTCOMPONENTTOLERANCE_3 != 0x3c547003UL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_CONTROL_MSGS_MSG_JOINTCOMPONENTTOLERANCE_4 != 0xa35f9d15UL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_CONTROL_MSGS_MSG_JOINTCOMPONENTTOLERANCE_5 != 0x21d300b5UL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_CONTROL_MSGS_MSG_JOINTCOMPONENTTOLERANCE_6 != 0x93a46529UL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_CONTROL_MSGS_MSG_JOINTCOMPONENTTOLERANCE_7 != 0x1c143921UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_CONTROL_MSGS_MSG_JOINTCOMPONENTTOLERANCE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_CONTROL_MSGS_MSG_JOINTCOMPONENTTOLERANCE_0 0x3f7cacfaUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_CONTROL_MSGS_MSG_JOINTCOMPONENTTOLERANCE_1 0xfb8abce9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_CONTROL_MSGS_MSG_JOINTCOMPONENTTOLERANCE_2 0x5abc5920UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_CONTROL_MSGS_MSG_JOINTCOMPONENTTOLERANCE_3 0x3c547003UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_CONTROL_MSGS_MSG_JOINTCOMPONENTTOLERANCE_4 0xa35f9d15UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_CONTROL_MSGS_MSG_JOINTCOMPONENTTOLERANCE_5 0x21d300b5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_CONTROL_MSGS_MSG_JOINTCOMPONENTTOLERANCE_6 0x93a46529UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_CONTROL_MSGS_MSG_JOINTCOMPONENTTOLERANCE_7 0x1c143921UL

/** @brief UTF-8 byte storage for control_msgs/msg/JointComponentTolerance.joint_name; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance_joint_name_text;

/** @brief Complete ROS2 control_msgs/msg/JointComponentTolerance value; no field projects away native data. */
typedef struct roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance
{
    /** @brief Declared field joint_name; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance_joint_name_text joint_name;
    /** @brief Declared field component; canonical capacity is part of CODEC_IDENTITY. */
    uint16_t component;
    /** @brief Declared field position; canonical capacity is part of CODEC_IDENTITY. */
    double position;
    /** @brief Declared field velocity; canonical capacity is part of CODEC_IDENTITY. */
    double velocity;
    /** @brief Declared field acceleration; canonical capacity is part of CODEC_IDENTITY. */
    double acceleration;
} roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance;

# define ROSWASMC_BOUNDED_2_CONTROL_MSGS_MSG_JOINTCOMPONENTTOLERANCE_MAX_WIRE_BYTES 158u
# define ROSWASMC_BOUNDED_2_CONTROL_MSGS_MSG_JOINTCOMPONENTTOLERANCE_MIN_WIRE_BYTES 30u
# define ROSWASMC_BOUNDED_2_CONTROL_MSGS_MSG_JOINTCOMPONENTTOLERANCE_CODEC_IDENTITY "UWVMROS1_8a10f659b38feae6dfcf89818d35a164743b02c0e5cfe2d86aae7eda56e914fb"
/** @brief Original scalar constant X_AXIS=1; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_CONTROL_MSGS_MSG_JOINTCOMPONENTTOLERANCE_X_AXIS UINT32_C(1)
/** @brief Original scalar constant Y_AXIS=2; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_CONTROL_MSGS_MSG_JOINTCOMPONENTTOLERANCE_Y_AXIS UINT32_C(2)
/** @brief Original scalar constant Z_AXIS=3; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_CONTROL_MSGS_MSG_JOINTCOMPONENTTOLERANCE_Z_AXIS UINT32_C(3)
/** @brief Original scalar constant TRANSLATION=4; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_CONTROL_MSGS_MSG_JOINTCOMPONENTTOLERANCE_TRANSLATION UINT32_C(4)
/** @brief Original scalar constant ROTATION=5; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_CONTROL_MSGS_MSG_JOINTCOMPONENTTOLERANCE_ROTATION UINT32_C(5)

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance_valid(roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance const* value)
{
    if(!value)
        return 0;
    if(value->joint_name.size > 128u || !uwvm_bounded_utf8(value->joint_name.data, value->joint_name.size))
        return 0;
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->position, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
            return 0;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->velocity, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
            return 0;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->acceleration, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
            return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance_wire_size(roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance const* value)
{
    size_t n = 0;
    n += 4 + value->joint_name.size;
    n += 2;
    n += 8;
    n += 8;
    n += 8;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance_write_fields(roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance const* value,
                                                                             unsigned char* p,
                                                                             size_t* offset)
{
    uwvm_bounded_put(p + *offset, value->joint_name.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->joint_name.data, value->joint_name.size);
    *offset += value->joint_name.size;
    uwvm_bounded_put(p + *offset, (uint64_t)value->component, 2);
    *offset += 2;
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->position, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->velocity, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->acceleration, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance_read_fields(unsigned char const* p,
                                                                                          size_t n,
                                                                                          size_t* offset,
                                                                                          roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    value->joint_name.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->joint_name.size > 128u || value->joint_name.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->joint_name.data, p + *offset, value->joint_name.size);
    *offset += value->joint_name.size;
    if(*offset > n || n - *offset < 2)
        return 0;
    {
        uint16_t bits = (uint16_t)uwvm_bounded_get(p + *offset, 2);
        uwvm_bounded_copy(&value->component, &bits, 2);
    }
    *offset += 2;
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->position, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->velocity, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->acceleration, &bits, 8);
    }
    *offset += 8;
    return roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance_encode(roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance const* value,
                                                                       void* output,
                                                                       size_t capacity,
                                                                       size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance_decode(void const* input,
                                                                                          size_t length,
                                                                                          roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance* value)
{
    roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 30u || length > 158u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY_GOAL)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY_GOAL_0 != 0xb1249ca7UL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY_GOAL_1 != 0x18b85b78UL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY_GOAL_2 != 0x4070bd91UL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY_GOAL_3 != 0xf8c2548cUL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY_GOAL_4 != 0xa7360367UL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY_GOAL_5 != 0x9c84f1deUL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY_GOAL_6 != 0xc7e651eeUL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY_GOAL_7 != 0x0440bf5dUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY_GOAL 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY_GOAL_0 0xb1249ca7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY_GOAL_1 0x18b85b78UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY_GOAL_2 0x4070bd91UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY_GOAL_3 0xf8c2548cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY_GOAL_4 0xa7360367UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY_GOAL_5 0x9c84f1deUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY_GOAL_6 0xc7e651eeUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY_GOAL_7 0x0440bf5dUL

/** @brief At most8 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_2_control_msgs_msg_JointTolerance data[8];
} roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal_path_tolerance_sequence;

/** @brief At most8 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance data[8];
} roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal_component_path_tolerance_sequence;

/** @brief At most8 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_2_control_msgs_msg_JointTolerance data[8];
} roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal_goal_tolerance_sequence;

/** @brief At most8 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance data[8];
} roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal_component_goal_tolerance_sequence;

/** @brief Complete ROS2 control_msgs/action/FollowJointTrajectory_Goal value; no field projects away native data. */
typedef struct roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal
{
    /** @brief Declared field trajectory; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory trajectory;
    /** @brief Declared field multi_dof_trajectory; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory multi_dof_trajectory;
    /** @brief Declared field path_tolerance; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal_path_tolerance_sequence path_tolerance;
    /** @brief Declared field component_path_tolerance; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal_component_path_tolerance_sequence component_path_tolerance;
    /** @brief Declared field goal_tolerance; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal_goal_tolerance_sequence goal_tolerance;
    /** @brief Declared field component_goal_tolerance; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal_component_goal_tolerance_sequence component_goal_tolerance;
    /** @brief Declared field goal_time_tolerance; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_builtin_interfaces_msg_Duration goal_time_tolerance;
} roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal;

# define ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY_GOAL_MAX_WIRE_BYTES 8580u
# define ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY_GOAL_MIN_WIRE_BYTES 64u
# define ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY_GOAL_CODEC_IDENTITY                                                                      \
     "UWVMROS1_fa8334eb129cc91c50febaccfebb371f6fbdd82188d6301823344d6664300018"

/** @brief Explicit declared-default initialization; ordinary C/C++ zero aggregates stay zero.
 * Nested/fixed elements are initialized independently; sequence lengths stay zero.
 * This initializer performs no I/O, registration, allocation or capability operation. */
static inline uint32_t
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal_default(roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal* value)
{
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal next = {0};
    if(!value)
        return UWVM_BOUNDED_INVALID;
    (void)roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory_default(&next.multi_dof_trajectory);
    *value = next;
    return 0;
}

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal_valid(roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory_valid(&value->trajectory))
        return 0;
    if(!roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory_valid(&value->multi_dof_trajectory))
        return 0;
    if(value->path_tolerance.size > 8u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->path_tolerance.size; ++i)
        {
            if(!roswasmc_bounded_2_control_msgs_msg_JointTolerance_valid(&value->path_tolerance.data[i]))
                return 0;
        }
    }
    if(value->component_path_tolerance.size > 8u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->component_path_tolerance.size; ++i)
        {
            if(!roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance_valid(&value->component_path_tolerance.data[i]))
                return 0;
        }
    }
    if(value->goal_tolerance.size > 8u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->goal_tolerance.size; ++i)
        {
            if(!roswasmc_bounded_2_control_msgs_msg_JointTolerance_valid(&value->goal_tolerance.data[i]))
                return 0;
        }
    }
    if(value->component_goal_tolerance.size > 8u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->component_goal_tolerance.size; ++i)
        {
            if(!roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance_valid(&value->component_goal_tolerance.data[i]))
                return 0;
        }
    }
    if(!roswasmc_bounded_2_builtin_interfaces_msg_Duration_valid(&value->goal_time_tolerance))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal_wire_size(roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory_wire_size(&value->trajectory);
    n += roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory_wire_size(&value->multi_dof_trajectory);
    n += 4;
    if(value->path_tolerance.size > 8u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->path_tolerance.size; ++i)
        {
            n += roswasmc_bounded_2_control_msgs_msg_JointTolerance_wire_size(&value->path_tolerance.data[i]);
        }
    }
    n += 4;
    if(value->component_path_tolerance.size > 8u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->component_path_tolerance.size; ++i)
        {
            n += roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance_wire_size(&value->component_path_tolerance.data[i]);
        }
    }
    n += 4;
    if(value->goal_tolerance.size > 8u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->goal_tolerance.size; ++i)
        {
            n += roswasmc_bounded_2_control_msgs_msg_JointTolerance_wire_size(&value->goal_tolerance.data[i]);
        }
    }
    n += 4;
    if(value->component_goal_tolerance.size > 8u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->component_goal_tolerance.size; ++i)
        {
            n += roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance_wire_size(&value->component_goal_tolerance.data[i]);
        }
    }
    n += roswasmc_bounded_2_builtin_interfaces_msg_Duration_wire_size(&value->goal_time_tolerance);
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal_write_fields(
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal const* value,
    unsigned char* p,
    size_t* offset)
{
    roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory_write_fields(&value->trajectory, p, offset);
    roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory_write_fields(&value->multi_dof_trajectory, p, offset);
    uwvm_bounded_put(p + *offset, value->path_tolerance.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->path_tolerance.size; ++i)
        {
            roswasmc_bounded_2_control_msgs_msg_JointTolerance_write_fields(&value->path_tolerance.data[i], p, offset);
        }
    }
    uwvm_bounded_put(p + *offset, value->component_path_tolerance.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->component_path_tolerance.size; ++i)
        {
            roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance_write_fields(&value->component_path_tolerance.data[i], p, offset);
        }
    }
    uwvm_bounded_put(p + *offset, value->goal_tolerance.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->goal_tolerance.size; ++i)
        {
            roswasmc_bounded_2_control_msgs_msg_JointTolerance_write_fields(&value->goal_tolerance.data[i], p, offset);
        }
    }
    uwvm_bounded_put(p + *offset, value->component_goal_tolerance.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->component_goal_tolerance.size; ++i)
        {
            roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance_write_fields(&value->component_goal_tolerance.data[i], p, offset);
        }
    }
    roswasmc_bounded_2_builtin_interfaces_msg_Duration_write_fields(&value->goal_time_tolerance, p, offset);
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal_read_fields(unsigned char const* p,
                                                                                  size_t n,
                                                                                  size_t* offset,
                                                                                  roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal* value)
{
    if(!roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory_read_fields(p, n, offset, &value->trajectory))
        return 0;
    if(!roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory_read_fields(p, n, offset, &value->multi_dof_trajectory))
        return 0;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->path_tolerance.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->path_tolerance.size > 8u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->path_tolerance.size; ++i)
        {
            if(!roswasmc_bounded_2_control_msgs_msg_JointTolerance_read_fields(p, n, offset, &value->path_tolerance.data[i]))
                return 0;
        }
    }
    if(*offset > n || n - *offset < 4)
        return 0;
    value->component_path_tolerance.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->component_path_tolerance.size > 8u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->component_path_tolerance.size; ++i)
        {
            if(!roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance_read_fields(p, n, offset, &value->component_path_tolerance.data[i]))
                return 0;
        }
    }
    if(*offset > n || n - *offset < 4)
        return 0;
    value->goal_tolerance.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->goal_tolerance.size > 8u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->goal_tolerance.size; ++i)
        {
            if(!roswasmc_bounded_2_control_msgs_msg_JointTolerance_read_fields(p, n, offset, &value->goal_tolerance.data[i]))
                return 0;
        }
    }
    if(*offset > n || n - *offset < 4)
        return 0;
    value->component_goal_tolerance.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->component_goal_tolerance.size > 8u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->component_goal_tolerance.size; ++i)
        {
            if(!roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance_read_fields(p, n, offset, &value->component_goal_tolerance.data[i]))
                return 0;
        }
    }
    if(!roswasmc_bounded_2_builtin_interfaces_msg_Duration_read_fields(p, n, offset, &value->goal_time_tolerance))
        return 0;
    return roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal_encode(roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal const* value,
                                                                             void* output,
                                                                             size_t capacity,
                                                                             size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal_decode(void const* input,
                                                                             size_t length,
                                                                             roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal* value)
{
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 64u || length > 8580u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY_RESULT)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY_RESULT_0 != 0x9018e54fUL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY_RESULT_1 != 0x29244dceUL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY_RESULT_2 != 0x809b1658UL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY_RESULT_3 != 0xe746a345UL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY_RESULT_4 != 0x8b95c6e5UL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY_RESULT_5 != 0xa6d21096UL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY_RESULT_6 != 0x15d10f4aUL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY_RESULT_7 != 0x5af58faaUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY_RESULT 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY_RESULT_0 0x9018e54fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY_RESULT_1 0x29244dceUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY_RESULT_2 0x809b1658UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY_RESULT_3 0xe746a345UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY_RESULT_4 0x8b95c6e5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY_RESULT_5 0xa6d21096UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY_RESULT_6 0x15d10f4aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY_RESULT_7 0x5af58faaUL

/** @brief UTF-8 byte storage for control_msgs/action/FollowJointTrajectory_Result.error_string; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[256];
} roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result_error_string_text;

/** @brief Complete ROS2 control_msgs/action/FollowJointTrajectory_Result value; no field projects away native data. */
typedef struct roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result
{
    /** @brief Declared field error_code; canonical capacity is part of CODEC_IDENTITY. */
    int32_t error_code;
    /** @brief Declared field error_string; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result_error_string_text error_string;
} roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result;

# define ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY_RESULT_MAX_WIRE_BYTES 264u
# define ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY_RESULT_MIN_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY_RESULT_CODEC_IDENTITY                                                                    \
     "UWVMROS1_df1e08076a5c725b865cc8807462d9ccf9577df11cbb71fcc0d280d77d0e5649"
/** @brief Original scalar constant SUCCESSFUL=0; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY_RESULT_SUCCESSFUL INT32_C(0)
/** @brief Original scalar constant INVALID_GOAL=-1; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY_RESULT_INVALID_GOAL -INT32_C(1)
/** @brief Original scalar constant INVALID_JOINTS=-2; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY_RESULT_INVALID_JOINTS -INT32_C(2)
/** @brief Original scalar constant OLD_HEADER_TIMESTAMP=-3; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY_RESULT_OLD_HEADER_TIMESTAMP -INT32_C(3)
/** @brief Original scalar constant PATH_TOLERANCE_VIOLATED=-4; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY_RESULT_PATH_TOLERANCE_VIOLATED -INT32_C(4)
/** @brief Original scalar constant GOAL_TOLERANCE_VIOLATED=-5; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY_RESULT_GOAL_TOLERANCE_VIOLATED -INT32_C(5)

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result_valid(roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result const* value)
{
    if(!value)
        return 0;
    if(value->error_string.size > 256u || !uwvm_bounded_utf8(value->error_string.data, value->error_string.size))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result_wire_size(
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result const* value)
{
    size_t n = 0;
    n += 4;
    n += 4 + value->error_string.size;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result_write_fields(
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result const* value,
    unsigned char* p,
    size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->error_code, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, value->error_string.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->error_string.data, value->error_string.size);
    *offset += value->error_string.size;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result_read_fields(unsigned char const* p,
                                                                                    size_t n,
                                                                                    size_t* offset,
                                                                                    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->error_code, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->error_string.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->error_string.size > 256u || value->error_string.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->error_string.data, p + *offset, value->error_string.size);
    *offset += value->error_string.size;
    return roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result_encode(roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result_decode(void const* input,
                                                                               size_t length,
                                                                               roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result* value)
{
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 8u || length > 264u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result_read_fields((unsigned char const*)input, length, &offset, &next) ||
       offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY_FEEDBACK)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY_FEEDBACK_0 != 0xe421badaUL ||                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY_FEEDBACK_1 != 0x31090809UL ||                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY_FEEDBACK_2 != 0x448ff710UL ||                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY_FEEDBACK_3 != 0x52d78a82UL ||                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY_FEEDBACK_4 != 0xd55f84ccUL ||                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY_FEEDBACK_5 != 0xae61645fUL ||                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY_FEEDBACK_6 != 0xbba7b6beUL ||                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY_FEEDBACK_7 != 0xaf11145aUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY_FEEDBACK 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY_FEEDBACK_0 0xe421badaUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY_FEEDBACK_1 0x31090809UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY_FEEDBACK_2 0x448ff710UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY_FEEDBACK_3 0x52d78a82UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY_FEEDBACK_4 0xd55f84ccUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY_FEEDBACK_5 0xae61645fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY_FEEDBACK_6 0xbba7b6beUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY_FEEDBACK_7 0xaf11145aUL

/** @brief UTF-8 byte storage for control_msgs/action/FollowJointTrajectory_Feedback.joint_names; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback_joint_names_text;

/** @brief At most8 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback_joint_names_text data[8];
} roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback_joint_names_sequence;

/** @brief UTF-8 byte storage for control_msgs/action/FollowJointTrajectory_Feedback.multi_dof_joint_names; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback_multi_dof_joint_names_text;

/** @brief At most1 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback_multi_dof_joint_names_text data[1];
} roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback_multi_dof_joint_names_sequence;

/** @brief Complete ROS2 control_msgs/action/FollowJointTrajectory_Feedback value; no field projects away native data. */
typedef struct roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback
{
    /** @brief Declared field header; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_std_msgs_msg_Header header;
    /** @brief Declared field joint_names; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback_joint_names_sequence joint_names;
    /** @brief Declared field desired; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint desired;
    /** @brief Declared field actual; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint actual;
    /** @brief Declared field error; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint error;
    /** @brief Declared field multi_dof_joint_names; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback_multi_dof_joint_names_sequence multi_dof_joint_names;
    /** @brief Declared field multi_dof_desired; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint multi_dof_desired;
    /** @brief Declared field multi_dof_actual; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint multi_dof_actual;
    /** @brief Declared field multi_dof_error; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint multi_dof_error;
} roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback;

# define ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY_FEEDBACK_MAX_WIRE_BYTES 4708u
# define ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY_FEEDBACK_MIN_WIRE_BYTES 152u
# define ROSWASMC_BOUNDED_2_CONTROL_MSGS_ACTION_FOLLOWJOINTTRAJECTORY_FEEDBACK_CODEC_IDENTITY                                                                  \
     "UWVMROS1_ae2175027c3e45997d272b9610d15ef52cc665d23c0a371892d10b3d100e3529"

/** @brief Explicit declared-default initialization; ordinary C/C++ zero aggregates stay zero.
 * Nested/fixed elements are initialized independently; sequence lengths stay zero.
 * This initializer performs no I/O, registration, allocation or capability operation. */
static inline uint32_t
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback_default(roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback* value)
{
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback next = {0};
    if(!value)
        return UWVM_BOUNDED_INVALID;
    (void)roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint_default(&next.multi_dof_desired);
    (void)roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint_default(&next.multi_dof_actual);
    (void)roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint_default(&next.multi_dof_error);
    *value = next;
    return 0;
}

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback_valid(
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_std_msgs_msg_Header_valid(&value->header))
        return 0;
    if(value->joint_names.size > 8u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->joint_names.size; ++i)
        {
            if(value->joint_names.data[i].size > 128u || !uwvm_bounded_utf8(value->joint_names.data[i].data, value->joint_names.data[i].size))
                return 0;
        }
    }
    if(!roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_valid(&value->desired))
        return 0;
    if(!roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_valid(&value->actual))
        return 0;
    if(!roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_valid(&value->error))
        return 0;
    if(value->multi_dof_joint_names.size > 1u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->multi_dof_joint_names.size; ++i)
        {
            if(value->multi_dof_joint_names.data[i].size > 128u ||
               !uwvm_bounded_utf8(value->multi_dof_joint_names.data[i].data, value->multi_dof_joint_names.data[i].size))
                return 0;
        }
    }
    if(!roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint_valid(&value->multi_dof_desired))
        return 0;
    if(!roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint_valid(&value->multi_dof_actual))
        return 0;
    if(!roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint_valid(&value->multi_dof_error))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback_wire_size(
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_std_msgs_msg_Header_wire_size(&value->header);
    n += 4;
    if(value->joint_names.size > 8u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->joint_names.size; ++i)
        {
            n += 4 + value->joint_names.data[i].size;
        }
    }
    n += roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_wire_size(&value->desired);
    n += roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_wire_size(&value->actual);
    n += roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_wire_size(&value->error);
    n += 4;
    if(value->multi_dof_joint_names.size > 1u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->multi_dof_joint_names.size; ++i)
        {
            n += 4 + value->multi_dof_joint_names.data[i].size;
        }
    }
    n += roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint_wire_size(&value->multi_dof_desired);
    n += roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint_wire_size(&value->multi_dof_actual);
    n += roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint_wire_size(&value->multi_dof_error);
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback_write_fields(
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback const* value,
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
    roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_write_fields(&value->desired, p, offset);
    roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_write_fields(&value->actual, p, offset);
    roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_write_fields(&value->error, p, offset);
    uwvm_bounded_put(p + *offset, value->multi_dof_joint_names.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->multi_dof_joint_names.size; ++i)
        {
            uwvm_bounded_put(p + *offset, value->multi_dof_joint_names.data[i].size, 4);
            *offset += 4;
            uwvm_bounded_copy(p + *offset, value->multi_dof_joint_names.data[i].data, value->multi_dof_joint_names.data[i].size);
            *offset += value->multi_dof_joint_names.data[i].size;
        }
    }
    roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint_write_fields(&value->multi_dof_desired, p, offset);
    roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint_write_fields(&value->multi_dof_actual, p, offset);
    roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint_write_fields(&value->multi_dof_error, p, offset);
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback_read_fields(
    unsigned char const* p,
    size_t n,
    size_t* offset,
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback* value)
{
    if(!roswasmc_bounded_2_std_msgs_msg_Header_read_fields(p, n, offset, &value->header))
        return 0;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->joint_names.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->joint_names.size > 8u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->joint_names.size; ++i)
        {
            if(*offset > n || n - *offset < 4)
                return 0;
            value->joint_names.data[i].size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
            *offset += 4;
            if(value->joint_names.data[i].size > 128u || value->joint_names.data[i].size > n - *offset)
                return 0;
            uwvm_bounded_copy(value->joint_names.data[i].data, p + *offset, value->joint_names.data[i].size);
            *offset += value->joint_names.data[i].size;
        }
    }
    if(!roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_read_fields(p, n, offset, &value->desired))
        return 0;
    if(!roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_read_fields(p, n, offset, &value->actual))
        return 0;
    if(!roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_read_fields(p, n, offset, &value->error))
        return 0;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->multi_dof_joint_names.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->multi_dof_joint_names.size > 1u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->multi_dof_joint_names.size; ++i)
        {
            if(*offset > n || n - *offset < 4)
                return 0;
            value->multi_dof_joint_names.data[i].size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
            *offset += 4;
            if(value->multi_dof_joint_names.data[i].size > 128u || value->multi_dof_joint_names.data[i].size > n - *offset)
                return 0;
            uwvm_bounded_copy(value->multi_dof_joint_names.data[i].data, p + *offset, value->multi_dof_joint_names.data[i].size);
            *offset += value->multi_dof_joint_names.data[i].size;
        }
    }
    if(!roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint_read_fields(p, n, offset, &value->multi_dof_desired))
        return 0;
    if(!roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint_read_fields(p, n, offset, &value->multi_dof_actual))
        return 0;
    if(!roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint_read_fields(p, n, offset, &value->multi_dof_error))
        return 0;
    return roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback_encode(
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback const* value,
    void* output,
    size_t capacity,
    size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback_decode(void const* input,
                                                                                 size_t length,
                                                                                 roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback* value)
{
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 152u || length > 4708u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback_read_fields((unsigned char const*)input, length, &offset, &next) ||
       offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_0 != 0xb4afe194UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_1 != 0xa3ec9179UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_2 != 0xe09e838aUL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_3 != 0x8cada3c5UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_4 != 0x71a837afUL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_5 != 0x513b27a1UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_6 != 0x85758455UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_7 != 0xd54b5b93UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_0 0xb4afe194UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_1 0xa3ec9179UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_2 0xe09e838aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_3 0x8cada3c5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_4 0x71a837afUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_5 0x513b27a1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_6 0x85758455UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_7 0xd54b5b93UL

/** @brief UTF-8 byte storage for sensor_msgs/msg/JointState.name; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_sensor_msgs_msg_JointState_name_text;

/** @brief At most8 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_2_sensor_msgs_msg_JointState_name_text data[8];
} roswasmc_bounded_2_sensor_msgs_msg_JointState_name_sequence;

/** @brief At most8 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[8];
} roswasmc_bounded_2_sensor_msgs_msg_JointState_position_sequence;

/** @brief At most8 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[8];
} roswasmc_bounded_2_sensor_msgs_msg_JointState_velocity_sequence;

/** @brief At most8 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[8];
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

# define ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_MAX_WIRE_BYTES 1404u
# define ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_MIN_WIRE_BYTES 28u
# define ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_CODEC_IDENTITY "UWVMROS1_bba20c36db70a98b594ba603d05b8a979038fb95b701221ba3b8689f55b06b11"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_sensor_msgs_msg_JointState_valid(roswasmc_bounded_2_sensor_msgs_msg_JointState const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_std_msgs_msg_Header_valid(&value->header))
        return 0;
    if(value->name.size > 8u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->name.size; ++i)
        {
            if(value->name.data[i].size > 128u || !uwvm_bounded_utf8(value->name.data[i].data, value->name.data[i].size))
                return 0;
        }
    }
    if(value->position.size > 8u)
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
    if(value->velocity.size > 8u)
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
    if(value->effort.size > 8u)
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

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_sensor_msgs_msg_JointState_wire_size(roswasmc_bounded_2_sensor_msgs_msg_JointState const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_std_msgs_msg_Header_wire_size(&value->header);
    n += 4;
    if(value->name.size > 8u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->name.size; ++i)
        {
            n += 4 + value->name.data[i].size;
        }
    }
    n += 4;
    if(value->position.size > 8u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->position.size; ++i)
        {
            n += 8;
        }
    }
    n += 4;
    if(value->velocity.size > 8u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->velocity.size; ++i)
        {
            n += 8;
        }
    }
    n += 4;
    if(value->effort.size > 8u)
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

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
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

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
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
    if(value->name.size > 8u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->name.size; ++i)
        {
            if(*offset > n || n - *offset < 4)
                return 0;
            value->name.data[i].size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
            *offset += 4;
            if(value->name.data[i].size > 128u || value->name.data[i].size > n - *offset)
                return 0;
            uwvm_bounded_copy(value->name.data[i].data, p + *offset, value->name.data[i].size);
            *offset += value->name.data[i].size;
        }
    }
    if(*offset > n || n - *offset < 4)
        return 0;
    value->position.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->position.size > 8u)
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
    if(value->velocity.size > 8u)
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
    if(value->effort.size > 8u)
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

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
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

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_sensor_msgs_msg_JointState_decode(void const* input, size_t length, roswasmc_bounded_2_sensor_msgs_msg_JointState* value)
{
    roswasmc_bounded_2_sensor_msgs_msg_JointState next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 28u || length > 1404u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_sensor_msgs_msg_JointState_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#undef UWVM_BOUNDED_ASSERT
#endif
