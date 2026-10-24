/** @file Generated bounded-v2 canonical values; no native ROS serialization or authority.
 * Every dynamic field has inline caller-owned capacity. Encode validates and measures
 * the full value before writes; decode commits one temporary only after full validation.
 * Supply distinct record, byte and size-output storage; overlap is explicitly refused.
 * Empty Service/Action components use a C layout dummy that is never a wire field. */
#ifndef UWVM_ROS_BOUNDED_RECORDS_442EB5C058BA4B53A778C42B8C94C871B5628382CA433C9978698A0B97503DCD
#define UWVM_ROS_BOUNDED_RECORDS_442EB5C058BA4B53A778C42B8C94C871B5628382CA433C9978698A0B97503DCD
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
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_COLORRGBA)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_COLORRGBA_0 != 0xe9101b76UL ||                                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_COLORRGBA_1 != 0xa673c986UL ||                                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_COLORRGBA_2 != 0xd316bd6eUL ||                                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_COLORRGBA_3 != 0x2fb7c60aUL ||                                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_COLORRGBA_4 != 0xf4a849c7UL ||                                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_COLORRGBA_5 != 0xfc2a6f61UL ||                                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_COLORRGBA_6 != 0x2efc56b4UL ||                                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_COLORRGBA_7 != 0x9d33d1c8UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_COLORRGBA 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_COLORRGBA_0 0xe9101b76UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_COLORRGBA_1 0xa673c986UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_COLORRGBA_2 0xd316bd6eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_COLORRGBA_3 0x2fb7c60aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_COLORRGBA_4 0xf4a849c7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_COLORRGBA_5 0xfc2a6f61UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_COLORRGBA_6 0x2efc56b4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_COLORRGBA_7 0x9d33d1c8UL

/** @brief Complete ROS2 std_msgs/msg/ColorRGBA value; no field projects away native data. */
typedef struct roswasmc_bounded_2_std_msgs_msg_ColorRGBA
{
    /** @brief Declared field r; canonical capacity is part of CODEC_IDENTITY. */
    float r;
    /** @brief Declared field g; canonical capacity is part of CODEC_IDENTITY. */
    float g;
    /** @brief Declared field b; canonical capacity is part of CODEC_IDENTITY. */
    float b;
    /** @brief Declared field a; canonical capacity is part of CODEC_IDENTITY. */
    float a;
} roswasmc_bounded_2_std_msgs_msg_ColorRGBA;

# define ROSWASMC_BOUNDED_2_STD_MSGS_MSG_COLORRGBA_MAX_WIRE_BYTES 16u
# define ROSWASMC_BOUNDED_2_STD_MSGS_MSG_COLORRGBA_MIN_WIRE_BYTES 16u
# define ROSWASMC_BOUNDED_2_STD_MSGS_MSG_COLORRGBA_CODEC_IDENTITY "UWVMROS1_087e0282f02c82a1d8f4580a47ff359ea71b7e72d477da47f49fc6bff61238b2"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_std_msgs_msg_ColorRGBA_valid(roswasmc_bounded_2_std_msgs_msg_ColorRGBA const* value)
{
    if(!value)
        return 0;
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->r, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->g, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->b, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->a, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_std_msgs_msg_ColorRGBA_wire_size(roswasmc_bounded_2_std_msgs_msg_ColorRGBA const* value)
{
    size_t n = 0;
    n += 4;
    n += 4;
    n += 4;
    n += 4;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_std_msgs_msg_ColorRGBA_write_fields(roswasmc_bounded_2_std_msgs_msg_ColorRGBA const* value, unsigned char* p, size_t* offset)
{
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->r, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->g, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->b, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->a, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int
    roswasmc_bounded_2_std_msgs_msg_ColorRGBA_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_2_std_msgs_msg_ColorRGBA* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->r, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->g, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->b, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->a, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_2_std_msgs_msg_ColorRGBA_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_std_msgs_msg_ColorRGBA_encode(roswasmc_bounded_2_std_msgs_msg_ColorRGBA const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_std_msgs_msg_ColorRGBA_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_std_msgs_msg_ColorRGBA_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_std_msgs_msg_ColorRGBA_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_2_std_msgs_msg_ColorRGBA_decode(void const* input, size_t length, roswasmc_bounded_2_std_msgs_msg_ColorRGBA* value)
{
    roswasmc_bounded_2_std_msgs_msg_ColorRGBA next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 16u || length > 16u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_std_msgs_msg_ColorRGBA_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDFIXEDCOLORPARAMS)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDFIXEDCOLORPARAMS_0 != 0x510f3627UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDFIXEDCOLORPARAMS_1 != 0xe76519b0UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDFIXEDCOLORPARAMS_2 != 0xd4c49f5eUL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDFIXEDCOLORPARAMS_3 != 0x572875bdUL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDFIXEDCOLORPARAMS_4 != 0xaeb08988UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDFIXEDCOLORPARAMS_5 != 0xda234216UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDFIXEDCOLORPARAMS_6 != 0x9a26ad2fUL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDFIXEDCOLORPARAMS_7 != 0x566ab331UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDFIXEDCOLORPARAMS 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDFIXEDCOLORPARAMS_0 0x510f3627UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDFIXEDCOLORPARAMS_1 0xe76519b0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDFIXEDCOLORPARAMS_2 0xd4c49f5eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDFIXEDCOLORPARAMS_3 0x572875bdUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDFIXEDCOLORPARAMS_4 0xaeb08988UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDFIXEDCOLORPARAMS_5 0xda234216UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDFIXEDCOLORPARAMS_6 0x9a26ad2fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDFIXEDCOLORPARAMS_7 0x566ab331UL

/** @brief Complete ROS2 pal_device_msgs/msg/LedFixedColorParams value; no field projects away native data. */
typedef struct roswasmc_bounded_2_pal_device_msgs_msg_LedFixedColorParams
{
    /** @brief Declared field color; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_std_msgs_msg_ColorRGBA color;
} roswasmc_bounded_2_pal_device_msgs_msg_LedFixedColorParams;

# define ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDFIXEDCOLORPARAMS_MAX_WIRE_BYTES 16u
# define ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDFIXEDCOLORPARAMS_MIN_WIRE_BYTES 16u
# define ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDFIXEDCOLORPARAMS_CODEC_IDENTITY "UWVMROS1_486720194d8ed9dff1b17a2c59382a33cf04cab290115ecda1125481a750feac"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_pal_device_msgs_msg_LedFixedColorParams_valid(roswasmc_bounded_2_pal_device_msgs_msg_LedFixedColorParams const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_std_msgs_msg_ColorRGBA_valid(&value->color))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_2_pal_device_msgs_msg_LedFixedColorParams_wire_size(roswasmc_bounded_2_pal_device_msgs_msg_LedFixedColorParams const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_std_msgs_msg_ColorRGBA_wire_size(&value->color);
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_pal_device_msgs_msg_LedFixedColorParams_write_fields(roswasmc_bounded_2_pal_device_msgs_msg_LedFixedColorParams const* value,
                                                                            unsigned char* p,
                                                                            size_t* offset)
{
    roswasmc_bounded_2_std_msgs_msg_ColorRGBA_write_fields(&value->color, p, offset);
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_pal_device_msgs_msg_LedFixedColorParams_read_fields(unsigned char const* p,
                                                                                         size_t n,
                                                                                         size_t* offset,
                                                                                         roswasmc_bounded_2_pal_device_msgs_msg_LedFixedColorParams* value)
{
    if(!roswasmc_bounded_2_std_msgs_msg_ColorRGBA_read_fields(p, n, offset, &value->color))
        return 0;
    return roswasmc_bounded_2_pal_device_msgs_msg_LedFixedColorParams_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_pal_device_msgs_msg_LedFixedColorParams_encode(roswasmc_bounded_2_pal_device_msgs_msg_LedFixedColorParams const* value,
                                                                      void* output,
                                                                      size_t capacity,
                                                                      size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_pal_device_msgs_msg_LedFixedColorParams_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_pal_device_msgs_msg_LedFixedColorParams_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_pal_device_msgs_msg_LedFixedColorParams_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_2_pal_device_msgs_msg_LedFixedColorParams_decode(void const* input,
                                                                                         size_t length,
                                                                                         roswasmc_bounded_2_pal_device_msgs_msg_LedFixedColorParams* value)
{
    roswasmc_bounded_2_pal_device_msgs_msg_LedFixedColorParams next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 16u || length > 16u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_pal_device_msgs_msg_LedFixedColorParams_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDRAINBOWPARAMS)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDRAINBOWPARAMS_0 != 0x7fe12e4eUL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDRAINBOWPARAMS_1 != 0xc0524bffUL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDRAINBOWPARAMS_2 != 0xe238f3c2UL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDRAINBOWPARAMS_3 != 0x01f14098UL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDRAINBOWPARAMS_4 != 0xc8a5d54cUL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDRAINBOWPARAMS_5 != 0x90cdbaafUL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDRAINBOWPARAMS_6 != 0x854eb234UL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDRAINBOWPARAMS_7 != 0x3d3bf72dUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDRAINBOWPARAMS 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDRAINBOWPARAMS_0 0x7fe12e4eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDRAINBOWPARAMS_1 0xc0524bffUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDRAINBOWPARAMS_2 0xe238f3c2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDRAINBOWPARAMS_3 0x01f14098UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDRAINBOWPARAMS_4 0xc8a5d54cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDRAINBOWPARAMS_5 0x90cdbaafUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDRAINBOWPARAMS_6 0x854eb234UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDRAINBOWPARAMS_7 0x3d3bf72dUL

/** @brief Complete ROS2 pal_device_msgs/msg/LedRainbowParams value; no field projects away native data. */
typedef struct roswasmc_bounded_2_pal_device_msgs_msg_LedRainbowParams
{
    /** @brief Declared field transition_duration; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_builtin_interfaces_msg_Duration transition_duration;
} roswasmc_bounded_2_pal_device_msgs_msg_LedRainbowParams;

# define ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDRAINBOWPARAMS_MAX_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDRAINBOWPARAMS_MIN_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDRAINBOWPARAMS_CODEC_IDENTITY "UWVMROS1_de1034a751e90f65a6f722cf685ee462b658f71c1d71b49ca7ee81177a9fd2e2"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_pal_device_msgs_msg_LedRainbowParams_valid(roswasmc_bounded_2_pal_device_msgs_msg_LedRainbowParams const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_builtin_interfaces_msg_Duration_valid(&value->transition_duration))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_pal_device_msgs_msg_LedRainbowParams_wire_size(roswasmc_bounded_2_pal_device_msgs_msg_LedRainbowParams const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_builtin_interfaces_msg_Duration_wire_size(&value->transition_duration);
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_pal_device_msgs_msg_LedRainbowParams_write_fields(roswasmc_bounded_2_pal_device_msgs_msg_LedRainbowParams const* value,
                                                                                        unsigned char* p,
                                                                                        size_t* offset)
{
    roswasmc_bounded_2_builtin_interfaces_msg_Duration_write_fields(&value->transition_duration, p, offset);
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_pal_device_msgs_msg_LedRainbowParams_read_fields(unsigned char const* p,
                                                                                      size_t n,
                                                                                      size_t* offset,
                                                                                      roswasmc_bounded_2_pal_device_msgs_msg_LedRainbowParams* value)
{
    if(!roswasmc_bounded_2_builtin_interfaces_msg_Duration_read_fields(p, n, offset, &value->transition_duration))
        return 0;
    return roswasmc_bounded_2_pal_device_msgs_msg_LedRainbowParams_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_pal_device_msgs_msg_LedRainbowParams_encode(roswasmc_bounded_2_pal_device_msgs_msg_LedRainbowParams const* value,
                                                                                      void* output,
                                                                                      size_t capacity,
                                                                                      size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_pal_device_msgs_msg_LedRainbowParams_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_pal_device_msgs_msg_LedRainbowParams_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_pal_device_msgs_msg_LedRainbowParams_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_2_pal_device_msgs_msg_LedRainbowParams_decode(void const* input,
                                                                                      size_t length,
                                                                                      roswasmc_bounded_2_pal_device_msgs_msg_LedRainbowParams* value)
{
    roswasmc_bounded_2_pal_device_msgs_msg_LedRainbowParams next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 8u || length > 8u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_pal_device_msgs_msg_LedRainbowParams_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDFADEPARAMS)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDFADEPARAMS_0 != 0xe61bdc81UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDFADEPARAMS_1 != 0x5284b023UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDFADEPARAMS_2 != 0x1f7f07e7UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDFADEPARAMS_3 != 0x66cb90e2UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDFADEPARAMS_4 != 0x6d420f40UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDFADEPARAMS_5 != 0x8a561546UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDFADEPARAMS_6 != 0x22f79f33UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDFADEPARAMS_7 != 0x3d5e3560UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDFADEPARAMS 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDFADEPARAMS_0 0xe61bdc81UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDFADEPARAMS_1 0x5284b023UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDFADEPARAMS_2 0x1f7f07e7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDFADEPARAMS_3 0x66cb90e2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDFADEPARAMS_4 0x6d420f40UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDFADEPARAMS_5 0x8a561546UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDFADEPARAMS_6 0x22f79f33UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDFADEPARAMS_7 0x3d5e3560UL

/** @brief Complete ROS2 pal_device_msgs/msg/LedFadeParams value; no field projects away native data. */
typedef struct roswasmc_bounded_2_pal_device_msgs_msg_LedFadeParams
{
    /** @brief Declared field first_color; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_std_msgs_msg_ColorRGBA first_color;
    /** @brief Declared field second_color; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_std_msgs_msg_ColorRGBA second_color;
    /** @brief Declared field transition_duration; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_builtin_interfaces_msg_Duration transition_duration;
    /** @brief Declared field reverse_fade; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t reverse_fade;
} roswasmc_bounded_2_pal_device_msgs_msg_LedFadeParams;

# define ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDFADEPARAMS_MAX_WIRE_BYTES 41u
# define ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDFADEPARAMS_MIN_WIRE_BYTES 41u
# define ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDFADEPARAMS_CODEC_IDENTITY "UWVMROS1_a1b956d5fbae5ef515a7376ed137b3562722641b7a728ed294f210a1299167e5"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_pal_device_msgs_msg_LedFadeParams_valid(roswasmc_bounded_2_pal_device_msgs_msg_LedFadeParams const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_std_msgs_msg_ColorRGBA_valid(&value->first_color))
        return 0;
    if(!roswasmc_bounded_2_std_msgs_msg_ColorRGBA_valid(&value->second_color))
        return 0;
    if(!roswasmc_bounded_2_builtin_interfaces_msg_Duration_valid(&value->transition_duration))
        return 0;
    if(value->reverse_fade > 1)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_pal_device_msgs_msg_LedFadeParams_wire_size(roswasmc_bounded_2_pal_device_msgs_msg_LedFadeParams const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_std_msgs_msg_ColorRGBA_wire_size(&value->first_color);
    n += roswasmc_bounded_2_std_msgs_msg_ColorRGBA_wire_size(&value->second_color);
    n += roswasmc_bounded_2_builtin_interfaces_msg_Duration_wire_size(&value->transition_duration);
    n += 1;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_pal_device_msgs_msg_LedFadeParams_write_fields(roswasmc_bounded_2_pal_device_msgs_msg_LedFadeParams const* value,
                                                                                     unsigned char* p,
                                                                                     size_t* offset)
{
    roswasmc_bounded_2_std_msgs_msg_ColorRGBA_write_fields(&value->first_color, p, offset);
    roswasmc_bounded_2_std_msgs_msg_ColorRGBA_write_fields(&value->second_color, p, offset);
    roswasmc_bounded_2_builtin_interfaces_msg_Duration_write_fields(&value->transition_duration, p, offset);
    uwvm_bounded_put(p + *offset, (uint64_t)value->reverse_fade, 1);
    *offset += 1;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_pal_device_msgs_msg_LedFadeParams_read_fields(unsigned char const* p,
                                                                                   size_t n,
                                                                                   size_t* offset,
                                                                                   roswasmc_bounded_2_pal_device_msgs_msg_LedFadeParams* value)
{
    if(!roswasmc_bounded_2_std_msgs_msg_ColorRGBA_read_fields(p, n, offset, &value->first_color))
        return 0;
    if(!roswasmc_bounded_2_std_msgs_msg_ColorRGBA_read_fields(p, n, offset, &value->second_color))
        return 0;
    if(!roswasmc_bounded_2_builtin_interfaces_msg_Duration_read_fields(p, n, offset, &value->transition_duration))
        return 0;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->reverse_fade, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_2_pal_device_msgs_msg_LedFadeParams_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_pal_device_msgs_msg_LedFadeParams_encode(roswasmc_bounded_2_pal_device_msgs_msg_LedFadeParams const* value,
                                                                                   void* output,
                                                                                   size_t capacity,
                                                                                   size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_pal_device_msgs_msg_LedFadeParams_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_pal_device_msgs_msg_LedFadeParams_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_pal_device_msgs_msg_LedFadeParams_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_pal_device_msgs_msg_LedFadeParams_decode(void const* input, size_t length, roswasmc_bounded_2_pal_device_msgs_msg_LedFadeParams* value)
{
    roswasmc_bounded_2_pal_device_msgs_msg_LedFadeParams next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 41u || length > 41u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_pal_device_msgs_msg_LedFadeParams_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDBLINKPARAMS)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDBLINKPARAMS_0 != 0x1bcf208aUL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDBLINKPARAMS_1 != 0x8dd40420UL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDBLINKPARAMS_2 != 0xd2c5c378UL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDBLINKPARAMS_3 != 0xf172e142UL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDBLINKPARAMS_4 != 0xd707eda0UL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDBLINKPARAMS_5 != 0xf4836b88UL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDBLINKPARAMS_6 != 0x0fab98bfUL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDBLINKPARAMS_7 != 0xb98ae33fUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDBLINKPARAMS 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDBLINKPARAMS_0 0x1bcf208aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDBLINKPARAMS_1 0x8dd40420UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDBLINKPARAMS_2 0xd2c5c378UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDBLINKPARAMS_3 0xf172e142UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDBLINKPARAMS_4 0xd707eda0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDBLINKPARAMS_5 0xf4836b88UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDBLINKPARAMS_6 0x0fab98bfUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDBLINKPARAMS_7 0xb98ae33fUL

/** @brief Complete ROS2 pal_device_msgs/msg/LedBlinkParams value; no field projects away native data. */
typedef struct roswasmc_bounded_2_pal_device_msgs_msg_LedBlinkParams
{
    /** @brief Declared field first_color; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_std_msgs_msg_ColorRGBA first_color;
    /** @brief Declared field second_color; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_std_msgs_msg_ColorRGBA second_color;
    /** @brief Declared field first_color_duration; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_builtin_interfaces_msg_Duration first_color_duration;
    /** @brief Declared field second_color_duration; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_builtin_interfaces_msg_Duration second_color_duration;
} roswasmc_bounded_2_pal_device_msgs_msg_LedBlinkParams;

# define ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDBLINKPARAMS_MAX_WIRE_BYTES 48u
# define ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDBLINKPARAMS_MIN_WIRE_BYTES 48u
# define ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDBLINKPARAMS_CODEC_IDENTITY "UWVMROS1_c1c8148bf78fc5ab210d7aa1498f6f2d84aeab0199ec41362e56054482f349bd"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_pal_device_msgs_msg_LedBlinkParams_valid(roswasmc_bounded_2_pal_device_msgs_msg_LedBlinkParams const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_std_msgs_msg_ColorRGBA_valid(&value->first_color))
        return 0;
    if(!roswasmc_bounded_2_std_msgs_msg_ColorRGBA_valid(&value->second_color))
        return 0;
    if(!roswasmc_bounded_2_builtin_interfaces_msg_Duration_valid(&value->first_color_duration))
        return 0;
    if(!roswasmc_bounded_2_builtin_interfaces_msg_Duration_valid(&value->second_color_duration))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_pal_device_msgs_msg_LedBlinkParams_wire_size(roswasmc_bounded_2_pal_device_msgs_msg_LedBlinkParams const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_std_msgs_msg_ColorRGBA_wire_size(&value->first_color);
    n += roswasmc_bounded_2_std_msgs_msg_ColorRGBA_wire_size(&value->second_color);
    n += roswasmc_bounded_2_builtin_interfaces_msg_Duration_wire_size(&value->first_color_duration);
    n += roswasmc_bounded_2_builtin_interfaces_msg_Duration_wire_size(&value->second_color_duration);
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_pal_device_msgs_msg_LedBlinkParams_write_fields(roswasmc_bounded_2_pal_device_msgs_msg_LedBlinkParams const* value,
                                                                                      unsigned char* p,
                                                                                      size_t* offset)
{
    roswasmc_bounded_2_std_msgs_msg_ColorRGBA_write_fields(&value->first_color, p, offset);
    roswasmc_bounded_2_std_msgs_msg_ColorRGBA_write_fields(&value->second_color, p, offset);
    roswasmc_bounded_2_builtin_interfaces_msg_Duration_write_fields(&value->first_color_duration, p, offset);
    roswasmc_bounded_2_builtin_interfaces_msg_Duration_write_fields(&value->second_color_duration, p, offset);
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_pal_device_msgs_msg_LedBlinkParams_read_fields(unsigned char const* p,
                                                                                    size_t n,
                                                                                    size_t* offset,
                                                                                    roswasmc_bounded_2_pal_device_msgs_msg_LedBlinkParams* value)
{
    if(!roswasmc_bounded_2_std_msgs_msg_ColorRGBA_read_fields(p, n, offset, &value->first_color))
        return 0;
    if(!roswasmc_bounded_2_std_msgs_msg_ColorRGBA_read_fields(p, n, offset, &value->second_color))
        return 0;
    if(!roswasmc_bounded_2_builtin_interfaces_msg_Duration_read_fields(p, n, offset, &value->first_color_duration))
        return 0;
    if(!roswasmc_bounded_2_builtin_interfaces_msg_Duration_read_fields(p, n, offset, &value->second_color_duration))
        return 0;
    return roswasmc_bounded_2_pal_device_msgs_msg_LedBlinkParams_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_pal_device_msgs_msg_LedBlinkParams_encode(roswasmc_bounded_2_pal_device_msgs_msg_LedBlinkParams const* value,
                                                                                    void* output,
                                                                                    size_t capacity,
                                                                                    size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_pal_device_msgs_msg_LedBlinkParams_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_pal_device_msgs_msg_LedBlinkParams_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_pal_device_msgs_msg_LedBlinkParams_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_pal_device_msgs_msg_LedBlinkParams_decode(void const* input, size_t length, roswasmc_bounded_2_pal_device_msgs_msg_LedBlinkParams* value)
{
    roswasmc_bounded_2_pal_device_msgs_msg_LedBlinkParams next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 48u || length > 48u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_pal_device_msgs_msg_LedBlinkParams_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDPROGRESSPARAMS)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDPROGRESSPARAMS_0 != 0x68d11890UL ||                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDPROGRESSPARAMS_1 != 0x5bf385e1UL ||                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDPROGRESSPARAMS_2 != 0x6e5f10d0UL ||                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDPROGRESSPARAMS_3 != 0xcbb65c8dUL ||                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDPROGRESSPARAMS_4 != 0xc7b2ab2aUL ||                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDPROGRESSPARAMS_5 != 0xa66f16d5UL ||                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDPROGRESSPARAMS_6 != 0x39896eaeUL ||                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDPROGRESSPARAMS_7 != 0xad61d11cUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDPROGRESSPARAMS 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDPROGRESSPARAMS_0 0x68d11890UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDPROGRESSPARAMS_1 0x5bf385e1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDPROGRESSPARAMS_2 0x6e5f10d0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDPROGRESSPARAMS_3 0xcbb65c8dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDPROGRESSPARAMS_4 0xc7b2ab2aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDPROGRESSPARAMS_5 0xa66f16d5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDPROGRESSPARAMS_6 0x39896eaeUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDPROGRESSPARAMS_7 0xad61d11cUL

/** @brief Complete ROS2 pal_device_msgs/msg/LedProgressParams value; no field projects away native data. */
typedef struct roswasmc_bounded_2_pal_device_msgs_msg_LedProgressParams
{
    /** @brief Declared field first_color; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_std_msgs_msg_ColorRGBA first_color;
    /** @brief Declared field second_color; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_std_msgs_msg_ColorRGBA second_color;
    /** @brief Declared field percentage; canonical capacity is part of CODEC_IDENTITY. */
    float percentage;
    /** @brief Declared field led_offset; canonical capacity is part of CODEC_IDENTITY. */
    float led_offset;
} roswasmc_bounded_2_pal_device_msgs_msg_LedProgressParams;

# define ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDPROGRESSPARAMS_MAX_WIRE_BYTES 40u
# define ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDPROGRESSPARAMS_MIN_WIRE_BYTES 40u
# define ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDPROGRESSPARAMS_CODEC_IDENTITY "UWVMROS1_db7c705edf5aa8c5512323dec23f75af30b0971c3c26a52a6d2c02ea918d7ab0"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_pal_device_msgs_msg_LedProgressParams_valid(roswasmc_bounded_2_pal_device_msgs_msg_LedProgressParams const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_std_msgs_msg_ColorRGBA_valid(&value->first_color))
        return 0;
    if(!roswasmc_bounded_2_std_msgs_msg_ColorRGBA_valid(&value->second_color))
        return 0;
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->percentage, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->led_offset, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_pal_device_msgs_msg_LedProgressParams_wire_size(roswasmc_bounded_2_pal_device_msgs_msg_LedProgressParams const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_std_msgs_msg_ColorRGBA_wire_size(&value->first_color);
    n += roswasmc_bounded_2_std_msgs_msg_ColorRGBA_wire_size(&value->second_color);
    n += 4;
    n += 4;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_pal_device_msgs_msg_LedProgressParams_write_fields(roswasmc_bounded_2_pal_device_msgs_msg_LedProgressParams const* value,
                                                                                         unsigned char* p,
                                                                                         size_t* offset)
{
    roswasmc_bounded_2_std_msgs_msg_ColorRGBA_write_fields(&value->first_color, p, offset);
    roswasmc_bounded_2_std_msgs_msg_ColorRGBA_write_fields(&value->second_color, p, offset);
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->percentage, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->led_offset, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_pal_device_msgs_msg_LedProgressParams_read_fields(unsigned char const* p,
                                                                                       size_t n,
                                                                                       size_t* offset,
                                                                                       roswasmc_bounded_2_pal_device_msgs_msg_LedProgressParams* value)
{
    if(!roswasmc_bounded_2_std_msgs_msg_ColorRGBA_read_fields(p, n, offset, &value->first_color))
        return 0;
    if(!roswasmc_bounded_2_std_msgs_msg_ColorRGBA_read_fields(p, n, offset, &value->second_color))
        return 0;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->percentage, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->led_offset, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_2_pal_device_msgs_msg_LedProgressParams_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_pal_device_msgs_msg_LedProgressParams_encode(roswasmc_bounded_2_pal_device_msgs_msg_LedProgressParams const* value,
                                                                                       void* output,
                                                                                       size_t capacity,
                                                                                       size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_pal_device_msgs_msg_LedProgressParams_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_pal_device_msgs_msg_LedProgressParams_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_pal_device_msgs_msg_LedProgressParams_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_2_pal_device_msgs_msg_LedProgressParams_decode(void const* input,
                                                                                       size_t length,
                                                                                       roswasmc_bounded_2_pal_device_msgs_msg_LedProgressParams* value)
{
    roswasmc_bounded_2_pal_device_msgs_msg_LedProgressParams next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 40u || length > 40u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_pal_device_msgs_msg_LedProgressParams_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDFLOWPARAMS)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDFLOWPARAMS_0 != 0xf4738f5fUL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDFLOWPARAMS_1 != 0x51dc249eUL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDFLOWPARAMS_2 != 0x43bcfb3eUL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDFLOWPARAMS_3 != 0x5a62a3e3UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDFLOWPARAMS_4 != 0x15edc027UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDFLOWPARAMS_5 != 0xdf0e617dUL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDFLOWPARAMS_6 != 0x82733bb4UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDFLOWPARAMS_7 != 0xdeed2184UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDFLOWPARAMS 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDFLOWPARAMS_0 0xf4738f5fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDFLOWPARAMS_1 0x51dc249eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDFLOWPARAMS_2 0x43bcfb3eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDFLOWPARAMS_3 0x5a62a3e3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDFLOWPARAMS_4 0x15edc027UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDFLOWPARAMS_5 0xdf0e617dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDFLOWPARAMS_6 0x82733bb4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDFLOWPARAMS_7 0xdeed2184UL

/** @brief Complete ROS2 pal_device_msgs/msg/LedFlowParams value; no field projects away native data. */
typedef struct roswasmc_bounded_2_pal_device_msgs_msg_LedFlowParams
{
    /** @brief Declared field first_color; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_std_msgs_msg_ColorRGBA first_color;
    /** @brief Declared field second_color; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_std_msgs_msg_ColorRGBA second_color;
    /** @brief Declared field percentage; canonical capacity is part of CODEC_IDENTITY. */
    float percentage;
    /** @brief Declared field velocity; canonical capacity is part of CODEC_IDENTITY. */
    float velocity;
} roswasmc_bounded_2_pal_device_msgs_msg_LedFlowParams;

# define ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDFLOWPARAMS_MAX_WIRE_BYTES 40u
# define ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDFLOWPARAMS_MIN_WIRE_BYTES 40u
# define ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDFLOWPARAMS_CODEC_IDENTITY "UWVMROS1_6dbf5187ca7c1e7a8c5235832799bf22e3fed9ac7b76f7ce5ee340a5d2b79561"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_pal_device_msgs_msg_LedFlowParams_valid(roswasmc_bounded_2_pal_device_msgs_msg_LedFlowParams const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_std_msgs_msg_ColorRGBA_valid(&value->first_color))
        return 0;
    if(!roswasmc_bounded_2_std_msgs_msg_ColorRGBA_valid(&value->second_color))
        return 0;
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->percentage, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->velocity, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_pal_device_msgs_msg_LedFlowParams_wire_size(roswasmc_bounded_2_pal_device_msgs_msg_LedFlowParams const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_std_msgs_msg_ColorRGBA_wire_size(&value->first_color);
    n += roswasmc_bounded_2_std_msgs_msg_ColorRGBA_wire_size(&value->second_color);
    n += 4;
    n += 4;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_pal_device_msgs_msg_LedFlowParams_write_fields(roswasmc_bounded_2_pal_device_msgs_msg_LedFlowParams const* value,
                                                                                     unsigned char* p,
                                                                                     size_t* offset)
{
    roswasmc_bounded_2_std_msgs_msg_ColorRGBA_write_fields(&value->first_color, p, offset);
    roswasmc_bounded_2_std_msgs_msg_ColorRGBA_write_fields(&value->second_color, p, offset);
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->percentage, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->velocity, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_pal_device_msgs_msg_LedFlowParams_read_fields(unsigned char const* p,
                                                                                   size_t n,
                                                                                   size_t* offset,
                                                                                   roswasmc_bounded_2_pal_device_msgs_msg_LedFlowParams* value)
{
    if(!roswasmc_bounded_2_std_msgs_msg_ColorRGBA_read_fields(p, n, offset, &value->first_color))
        return 0;
    if(!roswasmc_bounded_2_std_msgs_msg_ColorRGBA_read_fields(p, n, offset, &value->second_color))
        return 0;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->percentage, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->velocity, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_2_pal_device_msgs_msg_LedFlowParams_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_pal_device_msgs_msg_LedFlowParams_encode(roswasmc_bounded_2_pal_device_msgs_msg_LedFlowParams const* value,
                                                                                   void* output,
                                                                                   size_t capacity,
                                                                                   size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_pal_device_msgs_msg_LedFlowParams_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_pal_device_msgs_msg_LedFlowParams_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_pal_device_msgs_msg_LedFlowParams_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_pal_device_msgs_msg_LedFlowParams_decode(void const* input, size_t length, roswasmc_bounded_2_pal_device_msgs_msg_LedFlowParams* value)
{
    roswasmc_bounded_2_pal_device_msgs_msg_LedFlowParams next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 40u || length > 40u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_pal_device_msgs_msg_LedFlowParams_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDPREPROGRAMMEDPARAMS)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDPREPROGRAMMEDPARAMS_0 != 0xdf81430dUL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDPREPROGRAMMEDPARAMS_1 != 0xfd93d47bUL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDPREPROGRAMMEDPARAMS_2 != 0x8a13b542UL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDPREPROGRAMMEDPARAMS_3 != 0x228045a1UL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDPREPROGRAMMEDPARAMS_4 != 0xf9cf8e42UL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDPREPROGRAMMEDPARAMS_5 != 0x237e64e7UL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDPREPROGRAMMEDPARAMS_6 != 0x848849e0UL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDPREPROGRAMMEDPARAMS_7 != 0xd859f5abUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDPREPROGRAMMEDPARAMS 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDPREPROGRAMMEDPARAMS_0 0xdf81430dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDPREPROGRAMMEDPARAMS_1 0xfd93d47bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDPREPROGRAMMEDPARAMS_2 0x8a13b542UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDPREPROGRAMMEDPARAMS_3 0x228045a1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDPREPROGRAMMEDPARAMS_4 0xf9cf8e42UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDPREPROGRAMMEDPARAMS_5 0x237e64e7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDPREPROGRAMMEDPARAMS_6 0x848849e0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDPREPROGRAMMEDPARAMS_7 0xd859f5abUL

/** @brief Complete ROS2 pal_device_msgs/msg/LedPreProgrammedParams value; no field projects away native data. */
typedef struct roswasmc_bounded_2_pal_device_msgs_msg_LedPreProgrammedParams
{
    /** @brief Declared field preprogrammed_id; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t preprogrammed_id;
} roswasmc_bounded_2_pal_device_msgs_msg_LedPreProgrammedParams;

# define ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDPREPROGRAMMEDPARAMS_MAX_WIRE_BYTES 1u
# define ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDPREPROGRAMMEDPARAMS_MIN_WIRE_BYTES 1u
# define ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDPREPROGRAMMEDPARAMS_CODEC_IDENTITY                                                                          \
     "UWVMROS1_219ebe0cb090162e2975ca24ae26cfdfc0226d535b730114058f11749a4905be"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int
    roswasmc_bounded_2_pal_device_msgs_msg_LedPreProgrammedParams_valid(roswasmc_bounded_2_pal_device_msgs_msg_LedPreProgrammedParams const* value)
{
    if(!value)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_2_pal_device_msgs_msg_LedPreProgrammedParams_wire_size(roswasmc_bounded_2_pal_device_msgs_msg_LedPreProgrammedParams const* value)
{
    size_t n = 0;
    n += 1;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_pal_device_msgs_msg_LedPreProgrammedParams_write_fields(roswasmc_bounded_2_pal_device_msgs_msg_LedPreProgrammedParams const* value,
                                                                               unsigned char* p,
                                                                               size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->preprogrammed_id, 1);
    *offset += 1;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int
    roswasmc_bounded_2_pal_device_msgs_msg_LedPreProgrammedParams_read_fields(unsigned char const* p,
                                                                              size_t n,
                                                                              size_t* offset,
                                                                              roswasmc_bounded_2_pal_device_msgs_msg_LedPreProgrammedParams* value)
{
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->preprogrammed_id, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_2_pal_device_msgs_msg_LedPreProgrammedParams_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_pal_device_msgs_msg_LedPreProgrammedParams_encode(roswasmc_bounded_2_pal_device_msgs_msg_LedPreProgrammedParams const* value,
                                                                         void* output,
                                                                         size_t capacity,
                                                                         size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_pal_device_msgs_msg_LedPreProgrammedParams_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_pal_device_msgs_msg_LedPreProgrammedParams_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_pal_device_msgs_msg_LedPreProgrammedParams_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_pal_device_msgs_msg_LedPreProgrammedParams_decode(void const* input,
                                                                         size_t length,
                                                                         roswasmc_bounded_2_pal_device_msgs_msg_LedPreProgrammedParams* value)
{
    roswasmc_bounded_2_pal_device_msgs_msg_LedPreProgrammedParams next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 1u || length > 1u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_pal_device_msgs_msg_LedPreProgrammedParams_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDEFFECTVIATOPICPARAMS)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDEFFECTVIATOPICPARAMS_0 != 0x00845c0aUL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDEFFECTVIATOPICPARAMS_1 != 0x768085ecUL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDEFFECTVIATOPICPARAMS_2 != 0xdea55231UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDEFFECTVIATOPICPARAMS_3 != 0x1e27b420UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDEFFECTVIATOPICPARAMS_4 != 0x6e86b65eUL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDEFFECTVIATOPICPARAMS_5 != 0xbe16b32aUL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDEFFECTVIATOPICPARAMS_6 != 0x30e4795cUL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDEFFECTVIATOPICPARAMS_7 != 0xba2b5985UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDEFFECTVIATOPICPARAMS 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDEFFECTVIATOPICPARAMS_0 0x00845c0aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDEFFECTVIATOPICPARAMS_1 0x768085ecUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDEFFECTVIATOPICPARAMS_2 0xdea55231UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDEFFECTVIATOPICPARAMS_3 0x1e27b420UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDEFFECTVIATOPICPARAMS_4 0x6e86b65eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDEFFECTVIATOPICPARAMS_5 0xbe16b32aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDEFFECTVIATOPICPARAMS_6 0x30e4795cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDEFFECTVIATOPICPARAMS_7 0xba2b5985UL

/** @brief UTF-8 byte storage for pal_device_msgs/msg/LedEffectViaTopicParams.topic_name; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_pal_device_msgs_msg_LedEffectViaTopicParams_topic_name_text;

/** @brief Complete ROS2 pal_device_msgs/msg/LedEffectViaTopicParams value; no field projects away native data. */
typedef struct roswasmc_bounded_2_pal_device_msgs_msg_LedEffectViaTopicParams
{
    /** @brief Declared field topic_name; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_pal_device_msgs_msg_LedEffectViaTopicParams_topic_name_text topic_name;
} roswasmc_bounded_2_pal_device_msgs_msg_LedEffectViaTopicParams;

# define ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDEFFECTVIATOPICPARAMS_MAX_WIRE_BYTES 132u
# define ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDEFFECTVIATOPICPARAMS_MIN_WIRE_BYTES 4u
# define ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDEFFECTVIATOPICPARAMS_CODEC_IDENTITY                                                                         \
     "UWVMROS1_91ab4bac3cb9685f695a523fc63eb3d7c5c7db9c057f75d2b4685b192b39e485"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int
    roswasmc_bounded_2_pal_device_msgs_msg_LedEffectViaTopicParams_valid(roswasmc_bounded_2_pal_device_msgs_msg_LedEffectViaTopicParams const* value)
{
    if(!value)
        return 0;
    if(value->topic_name.size > 128u || !uwvm_bounded_utf8(value->topic_name.data, value->topic_name.size))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_2_pal_device_msgs_msg_LedEffectViaTopicParams_wire_size(roswasmc_bounded_2_pal_device_msgs_msg_LedEffectViaTopicParams const* value)
{
    size_t n = 0;
    n += 4 + value->topic_name.size;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_pal_device_msgs_msg_LedEffectViaTopicParams_write_fields(roswasmc_bounded_2_pal_device_msgs_msg_LedEffectViaTopicParams const* value,
                                                                                unsigned char* p,
                                                                                size_t* offset)
{
    uwvm_bounded_put(p + *offset, value->topic_name.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->topic_name.data, value->topic_name.size);
    *offset += value->topic_name.size;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int
    roswasmc_bounded_2_pal_device_msgs_msg_LedEffectViaTopicParams_read_fields(unsigned char const* p,
                                                                               size_t n,
                                                                               size_t* offset,
                                                                               roswasmc_bounded_2_pal_device_msgs_msg_LedEffectViaTopicParams* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    value->topic_name.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->topic_name.size > 128u || value->topic_name.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->topic_name.data, p + *offset, value->topic_name.size);
    *offset += value->topic_name.size;
    return roswasmc_bounded_2_pal_device_msgs_msg_LedEffectViaTopicParams_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_pal_device_msgs_msg_LedEffectViaTopicParams_encode(roswasmc_bounded_2_pal_device_msgs_msg_LedEffectViaTopicParams const* value,
                                                                          void* output,
                                                                          size_t capacity,
                                                                          size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_pal_device_msgs_msg_LedEffectViaTopicParams_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_pal_device_msgs_msg_LedEffectViaTopicParams_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_pal_device_msgs_msg_LedEffectViaTopicParams_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_pal_device_msgs_msg_LedEffectViaTopicParams_decode(void const* input,
                                                                          size_t length,
                                                                          roswasmc_bounded_2_pal_device_msgs_msg_LedEffectViaTopicParams* value)
{
    roswasmc_bounded_2_pal_device_msgs_msg_LedEffectViaTopicParams next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 4u || length > 132u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_pal_device_msgs_msg_LedEffectViaTopicParams_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDDATAARRAYPARAMS)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDDATAARRAYPARAMS_0 != 0x346acccdUL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDDATAARRAYPARAMS_1 != 0x18381647UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDDATAARRAYPARAMS_2 != 0x9ccdda57UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDDATAARRAYPARAMS_3 != 0xd851ec72UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDDATAARRAYPARAMS_4 != 0x7a0820c6UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDDATAARRAYPARAMS_5 != 0x7db626eaUL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDDATAARRAYPARAMS_6 != 0x8ded0f75UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDDATAARRAYPARAMS_7 != 0x4fec988cUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDDATAARRAYPARAMS 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDDATAARRAYPARAMS_0 0x346acccdUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDDATAARRAYPARAMS_1 0x18381647UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDDATAARRAYPARAMS_2 0x9ccdda57UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDDATAARRAYPARAMS_3 0xd851ec72UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDDATAARRAYPARAMS_4 0x7a0820c6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDDATAARRAYPARAMS_5 0x7db626eaUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDDATAARRAYPARAMS_6 0x8ded0f75UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDDATAARRAYPARAMS_7 0x4fec988cUL

/** @brief At most4 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_2_std_msgs_msg_ColorRGBA data[4];
} roswasmc_bounded_2_pal_device_msgs_msg_LedDataArrayParams_data_sequence;

/** @brief Complete ROS2 pal_device_msgs/msg/LedDataArrayParams value; no field projects away native data. */
typedef struct roswasmc_bounded_2_pal_device_msgs_msg_LedDataArrayParams
{
    /** @brief Declared field data; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_pal_device_msgs_msg_LedDataArrayParams_data_sequence data;
} roswasmc_bounded_2_pal_device_msgs_msg_LedDataArrayParams;

# define ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDDATAARRAYPARAMS_MAX_WIRE_BYTES 68u
# define ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDDATAARRAYPARAMS_MIN_WIRE_BYTES 4u
# define ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDDATAARRAYPARAMS_CODEC_IDENTITY "UWVMROS1_f52b27f234be53ae9cfc421d8434f6a9d0e02ca8fc88de7534dac2472a0a4349"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_pal_device_msgs_msg_LedDataArrayParams_valid(roswasmc_bounded_2_pal_device_msgs_msg_LedDataArrayParams const* value)
{
    if(!value)
        return 0;
    if(value->data.size > 4u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->data.size; ++i)
        {
            if(!roswasmc_bounded_2_std_msgs_msg_ColorRGBA_valid(&value->data.data[i]))
                return 0;
        }
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_pal_device_msgs_msg_LedDataArrayParams_wire_size(roswasmc_bounded_2_pal_device_msgs_msg_LedDataArrayParams const* value)
{
    size_t n = 0;
    n += 4;
    if(value->data.size > 4u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->data.size; ++i)
        {
            n += roswasmc_bounded_2_std_msgs_msg_ColorRGBA_wire_size(&value->data.data[i]);
        }
    }
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_pal_device_msgs_msg_LedDataArrayParams_write_fields(roswasmc_bounded_2_pal_device_msgs_msg_LedDataArrayParams const* value,
                                                                           unsigned char* p,
                                                                           size_t* offset)
{
    uwvm_bounded_put(p + *offset, value->data.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->data.size; ++i)
        {
            roswasmc_bounded_2_std_msgs_msg_ColorRGBA_write_fields(&value->data.data[i], p, offset);
        }
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_pal_device_msgs_msg_LedDataArrayParams_read_fields(unsigned char const* p,
                                                                                        size_t n,
                                                                                        size_t* offset,
                                                                                        roswasmc_bounded_2_pal_device_msgs_msg_LedDataArrayParams* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    value->data.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->data.size > 4u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->data.size; ++i)
        {
            if(!roswasmc_bounded_2_std_msgs_msg_ColorRGBA_read_fields(p, n, offset, &value->data.data[i]))
                return 0;
        }
    }
    return roswasmc_bounded_2_pal_device_msgs_msg_LedDataArrayParams_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_pal_device_msgs_msg_LedDataArrayParams_encode(roswasmc_bounded_2_pal_device_msgs_msg_LedDataArrayParams const* value,
                                                                                        void* output,
                                                                                        size_t capacity,
                                                                                        size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_pal_device_msgs_msg_LedDataArrayParams_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_pal_device_msgs_msg_LedDataArrayParams_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_pal_device_msgs_msg_LedDataArrayParams_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_2_pal_device_msgs_msg_LedDataArrayParams_decode(void const* input,
                                                                                        size_t length,
                                                                                        roswasmc_bounded_2_pal_device_msgs_msg_LedDataArrayParams* value)
{
    roswasmc_bounded_2_pal_device_msgs_msg_LedDataArrayParams next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 4u || length > 68u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_pal_device_msgs_msg_LedDataArrayParams_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDEFFECTPARAMS)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDEFFECTPARAMS_0 != 0xab5ebd10UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDEFFECTPARAMS_1 != 0xb12dc0a3UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDEFFECTPARAMS_2 != 0x5e563cb5UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDEFFECTPARAMS_3 != 0xa5e2ca41UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDEFFECTPARAMS_4 != 0xd78a2645UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDEFFECTPARAMS_5 != 0x7d33ab67UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDEFFECTPARAMS_6 != 0xc950c4c8UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDEFFECTPARAMS_7 != 0x2877dc2bUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDEFFECTPARAMS 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDEFFECTPARAMS_0 0xab5ebd10UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDEFFECTPARAMS_1 0xb12dc0a3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDEFFECTPARAMS_2 0x5e563cb5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDEFFECTPARAMS_3 0xa5e2ca41UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDEFFECTPARAMS_4 0xd78a2645UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDEFFECTPARAMS_5 0x7d33ab67UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDEFFECTPARAMS_6 0xc950c4c8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDEFFECTPARAMS_7 0x2877dc2bUL

/** @brief Complete ROS2 pal_device_msgs/msg/LedEffectParams value; no field projects away native data. */
typedef struct roswasmc_bounded_2_pal_device_msgs_msg_LedEffectParams
{
    /** @brief Declared field effect_type; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t effect_type;
    /** @brief Declared field fixed_color; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_pal_device_msgs_msg_LedFixedColorParams fixed_color;
    /** @brief Declared field rainbow; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_pal_device_msgs_msg_LedRainbowParams rainbow;
    /** @brief Declared field fade; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_pal_device_msgs_msg_LedFadeParams fade;
    /** @brief Declared field blink; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_pal_device_msgs_msg_LedBlinkParams blink;
    /** @brief Declared field progress; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_pal_device_msgs_msg_LedProgressParams progress;
    /** @brief Declared field flow; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_pal_device_msgs_msg_LedFlowParams flow;
    /** @brief Declared field preprogrammed; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_pal_device_msgs_msg_LedPreProgrammedParams preprogrammed;
    /** @brief Declared field effect_via_topic; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_pal_device_msgs_msg_LedEffectViaTopicParams effect_via_topic;
    /** @brief Declared field data_array; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_pal_device_msgs_msg_LedDataArrayParams data_array;
} roswasmc_bounded_2_pal_device_msgs_msg_LedEffectParams;

# define ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDEFFECTPARAMS_MAX_WIRE_BYTES 395u
# define ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDEFFECTPARAMS_MIN_WIRE_BYTES 203u
# define ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDEFFECTPARAMS_CODEC_IDENTITY "UWVMROS1_dbaf26734baee7c339c249fb6bd35f42672b48bac23966670f525f5d921f8848"
/** @brief Original scalar constant FIXED_COLOR=0; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDEFFECTPARAMS_FIXED_COLOR UINT32_C(0)
/** @brief Original scalar constant RAINBOW=1; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDEFFECTPARAMS_RAINBOW UINT32_C(1)
/** @brief Original scalar constant FADE=2; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDEFFECTPARAMS_FADE UINT32_C(2)
/** @brief Original scalar constant BLINK=3; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDEFFECTPARAMS_BLINK UINT32_C(3)
/** @brief Original scalar constant PROGRESS=4; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDEFFECTPARAMS_PROGRESS UINT32_C(4)
/** @brief Original scalar constant FLOW=5; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDEFFECTPARAMS_FLOW UINT32_C(5)
/** @brief Original scalar constant PREPROGRAMMED_EFFECT=6; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDEFFECTPARAMS_PREPROGRAMMED_EFFECT UINT32_C(6)
/** @brief Original scalar constant EFFECT_VIA_TOPIC=7; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDEFFECTPARAMS_EFFECT_VIA_TOPIC UINT32_C(7)
/** @brief Original scalar constant DATA_ARRAY=8; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDEFFECTPARAMS_DATA_ARRAY UINT32_C(8)

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_pal_device_msgs_msg_LedEffectParams_valid(roswasmc_bounded_2_pal_device_msgs_msg_LedEffectParams const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_pal_device_msgs_msg_LedFixedColorParams_valid(&value->fixed_color))
        return 0;
    if(!roswasmc_bounded_2_pal_device_msgs_msg_LedRainbowParams_valid(&value->rainbow))
        return 0;
    if(!roswasmc_bounded_2_pal_device_msgs_msg_LedFadeParams_valid(&value->fade))
        return 0;
    if(!roswasmc_bounded_2_pal_device_msgs_msg_LedBlinkParams_valid(&value->blink))
        return 0;
    if(!roswasmc_bounded_2_pal_device_msgs_msg_LedProgressParams_valid(&value->progress))
        return 0;
    if(!roswasmc_bounded_2_pal_device_msgs_msg_LedFlowParams_valid(&value->flow))
        return 0;
    if(!roswasmc_bounded_2_pal_device_msgs_msg_LedPreProgrammedParams_valid(&value->preprogrammed))
        return 0;
    if(!roswasmc_bounded_2_pal_device_msgs_msg_LedEffectViaTopicParams_valid(&value->effect_via_topic))
        return 0;
    if(!roswasmc_bounded_2_pal_device_msgs_msg_LedDataArrayParams_valid(&value->data_array))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_pal_device_msgs_msg_LedEffectParams_wire_size(roswasmc_bounded_2_pal_device_msgs_msg_LedEffectParams const* value)
{
    size_t n = 0;
    n += 1;
    n += roswasmc_bounded_2_pal_device_msgs_msg_LedFixedColorParams_wire_size(&value->fixed_color);
    n += roswasmc_bounded_2_pal_device_msgs_msg_LedRainbowParams_wire_size(&value->rainbow);
    n += roswasmc_bounded_2_pal_device_msgs_msg_LedFadeParams_wire_size(&value->fade);
    n += roswasmc_bounded_2_pal_device_msgs_msg_LedBlinkParams_wire_size(&value->blink);
    n += roswasmc_bounded_2_pal_device_msgs_msg_LedProgressParams_wire_size(&value->progress);
    n += roswasmc_bounded_2_pal_device_msgs_msg_LedFlowParams_wire_size(&value->flow);
    n += roswasmc_bounded_2_pal_device_msgs_msg_LedPreProgrammedParams_wire_size(&value->preprogrammed);
    n += roswasmc_bounded_2_pal_device_msgs_msg_LedEffectViaTopicParams_wire_size(&value->effect_via_topic);
    n += roswasmc_bounded_2_pal_device_msgs_msg_LedDataArrayParams_wire_size(&value->data_array);
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_pal_device_msgs_msg_LedEffectParams_write_fields(roswasmc_bounded_2_pal_device_msgs_msg_LedEffectParams const* value,
                                                                                       unsigned char* p,
                                                                                       size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->effect_type, 1);
    *offset += 1;
    roswasmc_bounded_2_pal_device_msgs_msg_LedFixedColorParams_write_fields(&value->fixed_color, p, offset);
    roswasmc_bounded_2_pal_device_msgs_msg_LedRainbowParams_write_fields(&value->rainbow, p, offset);
    roswasmc_bounded_2_pal_device_msgs_msg_LedFadeParams_write_fields(&value->fade, p, offset);
    roswasmc_bounded_2_pal_device_msgs_msg_LedBlinkParams_write_fields(&value->blink, p, offset);
    roswasmc_bounded_2_pal_device_msgs_msg_LedProgressParams_write_fields(&value->progress, p, offset);
    roswasmc_bounded_2_pal_device_msgs_msg_LedFlowParams_write_fields(&value->flow, p, offset);
    roswasmc_bounded_2_pal_device_msgs_msg_LedPreProgrammedParams_write_fields(&value->preprogrammed, p, offset);
    roswasmc_bounded_2_pal_device_msgs_msg_LedEffectViaTopicParams_write_fields(&value->effect_via_topic, p, offset);
    roswasmc_bounded_2_pal_device_msgs_msg_LedDataArrayParams_write_fields(&value->data_array, p, offset);
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_pal_device_msgs_msg_LedEffectParams_read_fields(unsigned char const* p,
                                                                                     size_t n,
                                                                                     size_t* offset,
                                                                                     roswasmc_bounded_2_pal_device_msgs_msg_LedEffectParams* value)
{
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->effect_type, &bits, 1);
    }
    *offset += 1;
    if(!roswasmc_bounded_2_pal_device_msgs_msg_LedFixedColorParams_read_fields(p, n, offset, &value->fixed_color))
        return 0;
    if(!roswasmc_bounded_2_pal_device_msgs_msg_LedRainbowParams_read_fields(p, n, offset, &value->rainbow))
        return 0;
    if(!roswasmc_bounded_2_pal_device_msgs_msg_LedFadeParams_read_fields(p, n, offset, &value->fade))
        return 0;
    if(!roswasmc_bounded_2_pal_device_msgs_msg_LedBlinkParams_read_fields(p, n, offset, &value->blink))
        return 0;
    if(!roswasmc_bounded_2_pal_device_msgs_msg_LedProgressParams_read_fields(p, n, offset, &value->progress))
        return 0;
    if(!roswasmc_bounded_2_pal_device_msgs_msg_LedFlowParams_read_fields(p, n, offset, &value->flow))
        return 0;
    if(!roswasmc_bounded_2_pal_device_msgs_msg_LedPreProgrammedParams_read_fields(p, n, offset, &value->preprogrammed))
        return 0;
    if(!roswasmc_bounded_2_pal_device_msgs_msg_LedEffectViaTopicParams_read_fields(p, n, offset, &value->effect_via_topic))
        return 0;
    if(!roswasmc_bounded_2_pal_device_msgs_msg_LedDataArrayParams_read_fields(p, n, offset, &value->data_array))
        return 0;
    return roswasmc_bounded_2_pal_device_msgs_msg_LedEffectParams_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_pal_device_msgs_msg_LedEffectParams_encode(roswasmc_bounded_2_pal_device_msgs_msg_LedEffectParams const* value,
                                                                                     void* output,
                                                                                     size_t capacity,
                                                                                     size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_pal_device_msgs_msg_LedEffectParams_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_pal_device_msgs_msg_LedEffectParams_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_pal_device_msgs_msg_LedEffectParams_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_2_pal_device_msgs_msg_LedEffectParams_decode(void const* input,
                                                                                     size_t length,
                                                                                     roswasmc_bounded_2_pal_device_msgs_msg_LedEffectParams* value)
{
    roswasmc_bounded_2_pal_device_msgs_msg_LedEffectParams next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 203u || length > 395u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_pal_device_msgs_msg_LedEffectParams_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_ACTION_DOTIMEDLEDEFFECT_GOAL)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_ACTION_DOTIMEDLEDEFFECT_GOAL_0 != 0xb5fbed0eUL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_ACTION_DOTIMEDLEDEFFECT_GOAL_1 != 0x4a7d130fUL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_ACTION_DOTIMEDLEDEFFECT_GOAL_2 != 0xfd34bb29UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_ACTION_DOTIMEDLEDEFFECT_GOAL_3 != 0xc198a8b4UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_ACTION_DOTIMEDLEDEFFECT_GOAL_4 != 0xd73b8189UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_ACTION_DOTIMEDLEDEFFECT_GOAL_5 != 0x17e41ed7UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_ACTION_DOTIMEDLEDEFFECT_GOAL_6 != 0x7dc1e235UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_ACTION_DOTIMEDLEDEFFECT_GOAL_7 != 0x89bab6dcUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_ACTION_DOTIMEDLEDEFFECT_GOAL 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_ACTION_DOTIMEDLEDEFFECT_GOAL_0 0xb5fbed0eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_ACTION_DOTIMEDLEDEFFECT_GOAL_1 0x4a7d130fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_ACTION_DOTIMEDLEDEFFECT_GOAL_2 0xfd34bb29UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_ACTION_DOTIMEDLEDEFFECT_GOAL_3 0xc198a8b4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_ACTION_DOTIMEDLEDEFFECT_GOAL_4 0xd73b8189UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_ACTION_DOTIMEDLEDEFFECT_GOAL_5 0x17e41ed7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_ACTION_DOTIMEDLEDEFFECT_GOAL_6 0x7dc1e235UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_ACTION_DOTIMEDLEDEFFECT_GOAL_7 0x89bab6dcUL

/** @brief At most16 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    uint32_t data[16];
} roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Goal_devices_sequence;

/** @brief Complete ROS2 pal_device_msgs/action/DoTimedLedEffect_Goal value; no field projects away native data. */
typedef struct roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Goal
{
    /** @brief Declared field devices; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Goal_devices_sequence devices;
    /** @brief Declared field params; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_pal_device_msgs_msg_LedEffectParams params;
    /** @brief Declared field effect_duration; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_builtin_interfaces_msg_Duration effect_duration;
    /** @brief Declared field priority; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t priority;
} roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Goal;

# define ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_ACTION_DOTIMEDLEDEFFECT_GOAL_MAX_WIRE_BYTES 472u
# define ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_ACTION_DOTIMEDLEDEFFECT_GOAL_MIN_WIRE_BYTES 216u
# define ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_ACTION_DOTIMEDLEDEFFECT_GOAL_CODEC_IDENTITY                                                                        \
     "UWVMROS1_a7d6aafeeae03e2122a76727ab8503990df3791f351161c72d75a6ecf868a4f2"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int
    roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Goal_valid(roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Goal const* value)
{
    if(!value)
        return 0;
    if(value->devices.size > 16u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->devices.size; ++i)
        {
        }
    }
    if(!roswasmc_bounded_2_pal_device_msgs_msg_LedEffectParams_valid(&value->params))
        return 0;
    if(!roswasmc_bounded_2_builtin_interfaces_msg_Duration_valid(&value->effect_duration))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Goal_wire_size(roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Goal const* value)
{
    size_t n = 0;
    n += 4;
    if(value->devices.size > 16u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->devices.size; ++i)
        {
            n += 4;
        }
    }
    n += roswasmc_bounded_2_pal_device_msgs_msg_LedEffectParams_wire_size(&value->params);
    n += roswasmc_bounded_2_builtin_interfaces_msg_Duration_wire_size(&value->effect_duration);
    n += 1;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Goal_write_fields(roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Goal const* value,
                                                                                 unsigned char* p,
                                                                                 size_t* offset)
{
    uwvm_bounded_put(p + *offset, value->devices.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->devices.size; ++i)
        {
            uwvm_bounded_put(p + *offset, (uint64_t)value->devices.data[i], 4);
            *offset += 4;
        }
    }
    roswasmc_bounded_2_pal_device_msgs_msg_LedEffectParams_write_fields(&value->params, p, offset);
    roswasmc_bounded_2_builtin_interfaces_msg_Duration_write_fields(&value->effect_duration, p, offset);
    uwvm_bounded_put(p + *offset, (uint64_t)value->priority, 1);
    *offset += 1;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int
    roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Goal_read_fields(unsigned char const* p,
                                                                                size_t n,
                                                                                size_t* offset,
                                                                                roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Goal* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    value->devices.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->devices.size > 16u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->devices.size; ++i)
        {
            if(*offset > n || n - *offset < 4)
                return 0;
            {
                uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
                uwvm_bounded_copy(&value->devices.data[i], &bits, 4);
            }
            *offset += 4;
        }
    }
    if(!roswasmc_bounded_2_pal_device_msgs_msg_LedEffectParams_read_fields(p, n, offset, &value->params))
        return 0;
    if(!roswasmc_bounded_2_builtin_interfaces_msg_Duration_read_fields(p, n, offset, &value->effect_duration))
        return 0;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->priority, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Goal_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Goal_encode(roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Goal const* value,
                                                                           void* output,
                                                                           size_t capacity,
                                                                           size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Goal_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Goal_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Goal_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Goal_decode(void const* input,
                                                                           size_t length,
                                                                           roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Goal* value)
{
    roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Goal next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 216u || length > 472u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Goal_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_ACTION_DOTIMEDLEDEFFECT_RESULT)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_ACTION_DOTIMEDLEDEFFECT_RESULT_0 != 0x17c32baeUL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_ACTION_DOTIMEDLEDEFFECT_RESULT_1 != 0x69510c74UL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_ACTION_DOTIMEDLEDEFFECT_RESULT_2 != 0x37cd8ea6UL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_ACTION_DOTIMEDLEDEFFECT_RESULT_3 != 0x31fc94a7UL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_ACTION_DOTIMEDLEDEFFECT_RESULT_4 != 0x3e9d53b6UL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_ACTION_DOTIMEDLEDEFFECT_RESULT_5 != 0xb8a6fac3UL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_ACTION_DOTIMEDLEDEFFECT_RESULT_6 != 0x1367cb87UL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_ACTION_DOTIMEDLEDEFFECT_RESULT_7 != 0x21e35f87UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_ACTION_DOTIMEDLEDEFFECT_RESULT 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_ACTION_DOTIMEDLEDEFFECT_RESULT_0 0x17c32baeUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_ACTION_DOTIMEDLEDEFFECT_RESULT_1 0x69510c74UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_ACTION_DOTIMEDLEDEFFECT_RESULT_2 0x37cd8ea6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_ACTION_DOTIMEDLEDEFFECT_RESULT_3 0x31fc94a7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_ACTION_DOTIMEDLEDEFFECT_RESULT_4 0x3e9d53b6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_ACTION_DOTIMEDLEDEFFECT_RESULT_5 0xb8a6fac3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_ACTION_DOTIMEDLEDEFFECT_RESULT_6 0x1367cb87UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_ACTION_DOTIMEDLEDEFFECT_RESULT_7 0x21e35f87UL

/** @brief Complete ROS2 pal_device_msgs/action/DoTimedLedEffect_Result value; no field projects away native data. */
typedef struct roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Result
{
    /** @brief Local C layout placeholder; empty native component has exactly zero canonical bytes. */
    unsigned char local_empty_placeholder;
} roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Result;

# define ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_ACTION_DOTIMEDLEDEFFECT_RESULT_MAX_WIRE_BYTES 0u
# define ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_ACTION_DOTIMEDLEDEFFECT_RESULT_MIN_WIRE_BYTES 0u
# define ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_ACTION_DOTIMEDLEDEFFECT_RESULT_CODEC_IDENTITY                                                                      \
     "UWVMROS1_2191f5a4810fe2c464b9a346a9615ebc44783f7a03037798b1c38c727db852f9"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int
    roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Result_valid(roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Result const* value)
{
    if(!value)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Result_wire_size(roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Result const* value)
{
    size_t n = 0;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Result_write_fields(
    roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Result const* value,
    unsigned char* p,
    size_t* offset)
{
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int
    roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Result_read_fields(unsigned char const* p,
                                                                                  size_t n,
                                                                                  size_t* offset,
                                                                                  roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Result* value)
{
    return roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Result_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Result_encode(roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Result const* value,
                                                                             void* output,
                                                                             size_t capacity,
                                                                             size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Result_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Result_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Result_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Result_decode(void const* input,
                                                                             size_t length,
                                                                             roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Result* value)
{
    roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Result next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 0u || length > 0u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Result_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_ACTION_DOTIMEDLEDEFFECT_FEEDBACK)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_ACTION_DOTIMEDLEDEFFECT_FEEDBACK_0 != 0xb8c99da4UL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_ACTION_DOTIMEDLEDEFFECT_FEEDBACK_1 != 0x8ea543c0UL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_ACTION_DOTIMEDLEDEFFECT_FEEDBACK_2 != 0xe8a8808fUL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_ACTION_DOTIMEDLEDEFFECT_FEEDBACK_3 != 0x1ec4150dUL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_ACTION_DOTIMEDLEDEFFECT_FEEDBACK_4 != 0x188ffce9UL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_ACTION_DOTIMEDLEDEFFECT_FEEDBACK_5 != 0x3d67fa45UL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_ACTION_DOTIMEDLEDEFFECT_FEEDBACK_6 != 0x8d34b45eUL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_ACTION_DOTIMEDLEDEFFECT_FEEDBACK_7 != 0x18272fdaUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_ACTION_DOTIMEDLEDEFFECT_FEEDBACK 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_ACTION_DOTIMEDLEDEFFECT_FEEDBACK_0 0xb8c99da4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_ACTION_DOTIMEDLEDEFFECT_FEEDBACK_1 0x8ea543c0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_ACTION_DOTIMEDLEDEFFECT_FEEDBACK_2 0xe8a8808fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_ACTION_DOTIMEDLEDEFFECT_FEEDBACK_3 0x1ec4150dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_ACTION_DOTIMEDLEDEFFECT_FEEDBACK_4 0x188ffce9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_ACTION_DOTIMEDLEDEFFECT_FEEDBACK_5 0x3d67fa45UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_ACTION_DOTIMEDLEDEFFECT_FEEDBACK_6 0x8d34b45eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_ACTION_DOTIMEDLEDEFFECT_FEEDBACK_7 0x18272fdaUL

/** @brief Complete ROS2 pal_device_msgs/action/DoTimedLedEffect_Feedback value; no field projects away native data. */
typedef struct roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Feedback
{
    /** @brief Local C layout placeholder; empty native component has exactly zero canonical bytes. */
    unsigned char local_empty_placeholder;
} roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Feedback;

# define ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_ACTION_DOTIMEDLEDEFFECT_FEEDBACK_MAX_WIRE_BYTES 0u
# define ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_ACTION_DOTIMEDLEDEFFECT_FEEDBACK_MIN_WIRE_BYTES 0u
# define ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_ACTION_DOTIMEDLEDEFFECT_FEEDBACK_CODEC_IDENTITY                                                                    \
     "UWVMROS1_b82ad14c20ec79d1face7e2ca9c6013f6a48010c88f849fc81eee4a2e120fc6d"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int
    roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Feedback_valid(roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Feedback const* value)
{
    if(!value)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Feedback_wire_size(
    roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Feedback const* value)
{
    size_t n = 0;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Feedback_write_fields(
    roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Feedback const* value,
    unsigned char* p,
    size_t* offset)
{
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int
    roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Feedback_read_fields(unsigned char const* p,
                                                                                    size_t n,
                                                                                    size_t* offset,
                                                                                    roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Feedback* value)
{
    return roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Feedback_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Feedback_encode(roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Feedback const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Feedback_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Feedback_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Feedback_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Feedback_decode(void const* input,
                                                                               size_t length,
                                                                               roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Feedback* value)
{
    roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Feedback next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 0u || length > 0u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_pal_device_msgs_action_DoTimedLedEffect_Feedback_read_fields((unsigned char const*)input, length, &offset, &next) ||
       offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_BATTERYSTATE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_BATTERYSTATE_0 != 0x7fc14487UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_BATTERYSTATE_1 != 0x21fecc0eUL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_BATTERYSTATE_2 != 0xd39e02cdUL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_BATTERYSTATE_3 != 0xdeeaa1e7UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_BATTERYSTATE_4 != 0xa1cf8f80UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_BATTERYSTATE_5 != 0xe63e2fb4UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_BATTERYSTATE_6 != 0x2f1e7e7dUL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_BATTERYSTATE_7 != 0x9d5e3369UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_BATTERYSTATE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_BATTERYSTATE_0 0x7fc14487UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_BATTERYSTATE_1 0x21fecc0eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_BATTERYSTATE_2 0xd39e02cdUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_BATTERYSTATE_3 0xdeeaa1e7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_BATTERYSTATE_4 0xa1cf8f80UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_BATTERYSTATE_5 0xe63e2fb4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_BATTERYSTATE_6 0x2f1e7e7dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_BATTERYSTATE_7 0x9d5e3369UL

/** @brief Complete ROS2 pal_device_msgs/msg/BatteryState value; no field projects away native data. */
typedef struct roswasmc_bounded_2_pal_device_msgs_msg_BatteryState
{
    /** @brief Declared field charge_state; canonical capacity is part of CODEC_IDENTITY. */
    int8_t charge_state;
    /** @brief Declared field battery_percentage; canonical capacity is part of CODEC_IDENTITY. */
    float battery_percentage;
} roswasmc_bounded_2_pal_device_msgs_msg_BatteryState;

# define ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_BATTERYSTATE_MAX_WIRE_BYTES 5u
# define ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_BATTERYSTATE_MIN_WIRE_BYTES 5u
# define ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_BATTERYSTATE_CODEC_IDENTITY "UWVMROS1_a9ea99580734e3ff1f8254e19a2543e049b52bb480642e6b31beda7fff3dc904"
/** @brief Original scalar constant FULL=5; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_BATTERYSTATE_FULL UINT32_C(5)
/** @brief Original scalar constant HIGH=4; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_BATTERYSTATE_HIGH UINT32_C(4)
/** @brief Original scalar constant MEDIUM=3; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_BATTERYSTATE_MEDIUM UINT32_C(3)
/** @brief Original scalar constant LOW=2; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_BATTERYSTATE_LOW UINT32_C(2)
/** @brief Original scalar constant CRITICAL_LOW=1; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_BATTERYSTATE_CRITICAL_LOW UINT32_C(1)

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_pal_device_msgs_msg_BatteryState_valid(roswasmc_bounded_2_pal_device_msgs_msg_BatteryState const* value)
{
    if(!value)
        return 0;
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->battery_percentage, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_pal_device_msgs_msg_BatteryState_wire_size(roswasmc_bounded_2_pal_device_msgs_msg_BatteryState const* value)
{
    size_t n = 0;
    n += 1;
    n += 4;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_pal_device_msgs_msg_BatteryState_write_fields(roswasmc_bounded_2_pal_device_msgs_msg_BatteryState const* value,
                                                                                    unsigned char* p,
                                                                                    size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->charge_state, 1);
    *offset += 1;
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->battery_percentage, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_pal_device_msgs_msg_BatteryState_read_fields(unsigned char const* p,
                                                                                  size_t n,
                                                                                  size_t* offset,
                                                                                  roswasmc_bounded_2_pal_device_msgs_msg_BatteryState* value)
{
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->charge_state, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->battery_percentage, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_2_pal_device_msgs_msg_BatteryState_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_pal_device_msgs_msg_BatteryState_encode(roswasmc_bounded_2_pal_device_msgs_msg_BatteryState const* value,
                                                                                  void* output,
                                                                                  size_t capacity,
                                                                                  size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_pal_device_msgs_msg_BatteryState_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_pal_device_msgs_msg_BatteryState_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_pal_device_msgs_msg_BatteryState_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_pal_device_msgs_msg_BatteryState_decode(void const* input, size_t length, roswasmc_bounded_2_pal_device_msgs_msg_BatteryState* value)
{
    roswasmc_bounded_2_pal_device_msgs_msg_BatteryState next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 5u || length > 5u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_pal_device_msgs_msg_BatteryState_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
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
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_BUMPER)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_BUMPER_0 != 0x47c1f3a1UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_BUMPER_1 != 0x5b6564bdUL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_BUMPER_2 != 0x6fba541aUL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_BUMPER_3 != 0x3bb1ea80UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_BUMPER_4 != 0xd066fa29UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_BUMPER_5 != 0x619d9a2fUL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_BUMPER_6 != 0x2af2b4f0UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_BUMPER_7 != 0xb5dfec68UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_BUMPER 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_BUMPER_0 0x47c1f3a1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_BUMPER_1 0x5b6564bdUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_BUMPER_2 0x6fba541aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_BUMPER_3 0x3bb1ea80UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_BUMPER_4 0xd066fa29UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_BUMPER_5 0x619d9a2fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_BUMPER_6 0x2af2b4f0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_BUMPER_7 0xb5dfec68UL

/** @brief Complete ROS2 pal_device_msgs/msg/Bumper value; no field projects away native data. */
typedef struct roswasmc_bounded_2_pal_device_msgs_msg_Bumper
{
    /** @brief Declared field header; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_std_msgs_msg_Header header;
    /** @brief Declared field is_pressed; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t is_pressed;
} roswasmc_bounded_2_pal_device_msgs_msg_Bumper;

# define ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_BUMPER_MAX_WIRE_BYTES 141u
# define ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_BUMPER_MIN_WIRE_BYTES 13u
# define ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_BUMPER_CODEC_IDENTITY "UWVMROS1_3488ad42d9a7cb8a17881026b932b5d9559ecbc1525dc827ce898cd37c69c022"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_pal_device_msgs_msg_Bumper_valid(roswasmc_bounded_2_pal_device_msgs_msg_Bumper const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_std_msgs_msg_Header_valid(&value->header))
        return 0;
    if(value->is_pressed > 1)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_pal_device_msgs_msg_Bumper_wire_size(roswasmc_bounded_2_pal_device_msgs_msg_Bumper const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_std_msgs_msg_Header_wire_size(&value->header);
    n += 1;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_pal_device_msgs_msg_Bumper_write_fields(roswasmc_bounded_2_pal_device_msgs_msg_Bumper const* value, unsigned char* p, size_t* offset)
{
    roswasmc_bounded_2_std_msgs_msg_Header_write_fields(&value->header, p, offset);
    uwvm_bounded_put(p + *offset, (uint64_t)value->is_pressed, 1);
    *offset += 1;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_pal_device_msgs_msg_Bumper_read_fields(unsigned char const* p,
                                                                            size_t n,
                                                                            size_t* offset,
                                                                            roswasmc_bounded_2_pal_device_msgs_msg_Bumper* value)
{
    if(!roswasmc_bounded_2_std_msgs_msg_Header_read_fields(p, n, offset, &value->header))
        return 0;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->is_pressed, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_2_pal_device_msgs_msg_Bumper_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_pal_device_msgs_msg_Bumper_encode(roswasmc_bounded_2_pal_device_msgs_msg_Bumper const* value,
                                                                            void* output,
                                                                            size_t capacity,
                                                                            size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_pal_device_msgs_msg_Bumper_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_pal_device_msgs_msg_Bumper_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_pal_device_msgs_msg_Bumper_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_pal_device_msgs_msg_Bumper_decode(void const* input, size_t length, roswasmc_bounded_2_pal_device_msgs_msg_Bumper* value)
{
    roswasmc_bounded_2_pal_device_msgs_msg_Bumper next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 13u || length > 141u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_pal_device_msgs_msg_Bumper_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDGROUP)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDGROUP_0 != 0x824ab7b4UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDGROUP_1 != 0xaaf381adUL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDGROUP_2 != 0x0f4c4256UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDGROUP_3 != 0x6398395fUL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDGROUP_4 != 0xa943a677UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDGROUP_5 != 0xf0f7b46dUL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDGROUP_6 != 0xc2b51793UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDGROUP_7 != 0x27725435UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDGROUP 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDGROUP_0 0x824ab7b4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDGROUP_1 0xaaf381adUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDGROUP_2 0x0f4c4256UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDGROUP_3 0x6398395fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDGROUP_4 0xa943a677UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDGROUP_5 0xf0f7b46dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDGROUP_6 0xc2b51793UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDGROUP_7 0x27725435UL

/** @brief Complete ROS2 pal_device_msgs/msg/LedGroup value; no field projects away native data. */
typedef struct roswasmc_bounded_2_pal_device_msgs_msg_LedGroup
{
    /** @brief Declared field led_mask; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t led_mask;
} roswasmc_bounded_2_pal_device_msgs_msg_LedGroup;

# define ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDGROUP_MAX_WIRE_BYTES 4u
# define ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDGROUP_MIN_WIRE_BYTES 4u
# define ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDGROUP_CODEC_IDENTITY "UWVMROS1_9a08d65251c3a90b87f2013644a3d13080e40edb3b70f9d87a21d0c5421973f0"
/** @brief Original scalar constant LEFT_EAR=1; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDGROUP_LEFT_EAR UINT32_C(1)
/** @brief Original scalar constant RIGHT_EAR=2; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_MSG_LEDGROUP_RIGHT_EAR UINT32_C(2)

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_pal_device_msgs_msg_LedGroup_valid(roswasmc_bounded_2_pal_device_msgs_msg_LedGroup const* value)
{
    if(!value)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_pal_device_msgs_msg_LedGroup_wire_size(roswasmc_bounded_2_pal_device_msgs_msg_LedGroup const* value)
{
    size_t n = 0;
    n += 4;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_pal_device_msgs_msg_LedGroup_write_fields(roswasmc_bounded_2_pal_device_msgs_msg_LedGroup const* value, unsigned char* p, size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->led_mask, 4);
    *offset += 4;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_pal_device_msgs_msg_LedGroup_read_fields(unsigned char const* p,
                                                                              size_t n,
                                                                              size_t* offset,
                                                                              roswasmc_bounded_2_pal_device_msgs_msg_LedGroup* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->led_mask, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_2_pal_device_msgs_msg_LedGroup_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_pal_device_msgs_msg_LedGroup_encode(roswasmc_bounded_2_pal_device_msgs_msg_LedGroup const* value,
                                                                              void* output,
                                                                              size_t capacity,
                                                                              size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_pal_device_msgs_msg_LedGroup_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_pal_device_msgs_msg_LedGroup_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_pal_device_msgs_msg_LedGroup_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_pal_device_msgs_msg_LedGroup_decode(void const* input, size_t length, roswasmc_bounded_2_pal_device_msgs_msg_LedGroup* value)
{
    roswasmc_bounded_2_pal_device_msgs_msg_LedGroup next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 4u || length > 4u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_pal_device_msgs_msg_LedGroup_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_CANCELEFFECT_REQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_CANCELEFFECT_REQUEST_0 != 0xb7f0ad8fUL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_CANCELEFFECT_REQUEST_1 != 0x362a8787UL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_CANCELEFFECT_REQUEST_2 != 0xec102d42UL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_CANCELEFFECT_REQUEST_3 != 0xbcd49422UL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_CANCELEFFECT_REQUEST_4 != 0x456a91c4UL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_CANCELEFFECT_REQUEST_5 != 0x07db8a5eUL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_CANCELEFFECT_REQUEST_6 != 0x1fb326ceUL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_CANCELEFFECT_REQUEST_7 != 0x48a4378aUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_CANCELEFFECT_REQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_CANCELEFFECT_REQUEST_0 0xb7f0ad8fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_CANCELEFFECT_REQUEST_1 0x362a8787UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_CANCELEFFECT_REQUEST_2 0xec102d42UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_CANCELEFFECT_REQUEST_3 0xbcd49422UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_CANCELEFFECT_REQUEST_4 0x456a91c4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_CANCELEFFECT_REQUEST_5 0x07db8a5eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_CANCELEFFECT_REQUEST_6 0x1fb326ceUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_CANCELEFFECT_REQUEST_7 0x48a4378aUL

/** @brief Complete ROS2 pal_device_msgs/srv/CancelEffect_Request value; no field projects away native data. */
typedef struct roswasmc_bounded_2_pal_device_msgs_srv_CancelEffect_Request
{
    /** @brief Declared field effect_id; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t effect_id;
} roswasmc_bounded_2_pal_device_msgs_srv_CancelEffect_Request;

# define ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_CANCELEFFECT_REQUEST_MAX_WIRE_BYTES 4u
# define ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_CANCELEFFECT_REQUEST_MIN_WIRE_BYTES 4u
# define ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_CANCELEFFECT_REQUEST_CODEC_IDENTITY "UWVMROS1_120bf0cc7ea1a4b52b66f30b53feabfc144f7d0fa4436f964b4d78c0249af062"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_pal_device_msgs_srv_CancelEffect_Request_valid(roswasmc_bounded_2_pal_device_msgs_srv_CancelEffect_Request const* value)
{
    if(!value)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_2_pal_device_msgs_srv_CancelEffect_Request_wire_size(roswasmc_bounded_2_pal_device_msgs_srv_CancelEffect_Request const* value)
{
    size_t n = 0;
    n += 4;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_pal_device_msgs_srv_CancelEffect_Request_write_fields(roswasmc_bounded_2_pal_device_msgs_srv_CancelEffect_Request const* value,
                                                                             unsigned char* p,
                                                                             size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->effect_id, 4);
    *offset += 4;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_pal_device_msgs_srv_CancelEffect_Request_read_fields(unsigned char const* p,
                                                                                          size_t n,
                                                                                          size_t* offset,
                                                                                          roswasmc_bounded_2_pal_device_msgs_srv_CancelEffect_Request* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->effect_id, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_2_pal_device_msgs_srv_CancelEffect_Request_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_pal_device_msgs_srv_CancelEffect_Request_encode(roswasmc_bounded_2_pal_device_msgs_srv_CancelEffect_Request const* value,
                                                                       void* output,
                                                                       size_t capacity,
                                                                       size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_pal_device_msgs_srv_CancelEffect_Request_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_pal_device_msgs_srv_CancelEffect_Request_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_pal_device_msgs_srv_CancelEffect_Request_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_2_pal_device_msgs_srv_CancelEffect_Request_decode(void const* input,
                                                                                          size_t length,
                                                                                          roswasmc_bounded_2_pal_device_msgs_srv_CancelEffect_Request* value)
{
    roswasmc_bounded_2_pal_device_msgs_srv_CancelEffect_Request next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 4u || length > 4u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_pal_device_msgs_srv_CancelEffect_Request_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_CANCELEFFECT_RESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_CANCELEFFECT_RESPONSE_0 != 0xda3d7d0eUL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_CANCELEFFECT_RESPONSE_1 != 0xac121531UL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_CANCELEFFECT_RESPONSE_2 != 0x9bc481bbUL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_CANCELEFFECT_RESPONSE_3 != 0x53070740UL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_CANCELEFFECT_RESPONSE_4 != 0xdfa79bf8UL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_CANCELEFFECT_RESPONSE_5 != 0x585d489eUL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_CANCELEFFECT_RESPONSE_6 != 0x661b81c8UL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_CANCELEFFECT_RESPONSE_7 != 0xb7952dd7UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_CANCELEFFECT_RESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_CANCELEFFECT_RESPONSE_0 0xda3d7d0eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_CANCELEFFECT_RESPONSE_1 0xac121531UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_CANCELEFFECT_RESPONSE_2 0x9bc481bbUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_CANCELEFFECT_RESPONSE_3 0x53070740UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_CANCELEFFECT_RESPONSE_4 0xdfa79bf8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_CANCELEFFECT_RESPONSE_5 0x585d489eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_CANCELEFFECT_RESPONSE_6 0x661b81c8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_CANCELEFFECT_RESPONSE_7 0xb7952dd7UL

/** @brief Complete ROS2 pal_device_msgs/srv/CancelEffect_Response value; no field projects away native data. */
typedef struct roswasmc_bounded_2_pal_device_msgs_srv_CancelEffect_Response
{
    /** @brief Local C layout placeholder; empty native component has exactly zero canonical bytes. */
    unsigned char local_empty_placeholder;
} roswasmc_bounded_2_pal_device_msgs_srv_CancelEffect_Response;

# define ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_CANCELEFFECT_RESPONSE_MAX_WIRE_BYTES 0u
# define ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_CANCELEFFECT_RESPONSE_MIN_WIRE_BYTES 0u
# define ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_CANCELEFFECT_RESPONSE_CODEC_IDENTITY "UWVMROS1_c54c991922500d0588c4dba48df2580f4a752fda5bdd175d318ebc1c31aad657"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_pal_device_msgs_srv_CancelEffect_Response_valid(roswasmc_bounded_2_pal_device_msgs_srv_CancelEffect_Response const* value)
{
    if(!value)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_2_pal_device_msgs_srv_CancelEffect_Response_wire_size(roswasmc_bounded_2_pal_device_msgs_srv_CancelEffect_Response const* value)
{
    size_t n = 0;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_pal_device_msgs_srv_CancelEffect_Response_write_fields(roswasmc_bounded_2_pal_device_msgs_srv_CancelEffect_Response const* value,
                                                                              unsigned char* p,
                                                                              size_t* offset)
{
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_pal_device_msgs_srv_CancelEffect_Response_read_fields(unsigned char const* p,
                                                                                           size_t n,
                                                                                           size_t* offset,
                                                                                           roswasmc_bounded_2_pal_device_msgs_srv_CancelEffect_Response* value)
{
    return roswasmc_bounded_2_pal_device_msgs_srv_CancelEffect_Response_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_pal_device_msgs_srv_CancelEffect_Response_encode(roswasmc_bounded_2_pal_device_msgs_srv_CancelEffect_Response const* value,
                                                                        void* output,
                                                                        size_t capacity,
                                                                        size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_pal_device_msgs_srv_CancelEffect_Response_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_pal_device_msgs_srv_CancelEffect_Response_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_pal_device_msgs_srv_CancelEffect_Response_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_2_pal_device_msgs_srv_CancelEffect_Response_decode(void const* input,
                                                                                           size_t length,
                                                                                           roswasmc_bounded_2_pal_device_msgs_srv_CancelEffect_Response* value)
{
    roswasmc_bounded_2_pal_device_msgs_srv_CancelEffect_Response next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 0u || length > 0u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_pal_device_msgs_srv_CancelEffect_Response_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_SHUTDOWNANDWAKEUPROBOT_REQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_SHUTDOWNANDWAKEUPROBOT_REQUEST_0 != 0x481b4cd8UL ||                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_SHUTDOWNANDWAKEUPROBOT_REQUEST_1 != 0xfe03ca68UL ||                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_SHUTDOWNANDWAKEUPROBOT_REQUEST_2 != 0xf390eeceUL ||                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_SHUTDOWNANDWAKEUPROBOT_REQUEST_3 != 0x5894e69bUL ||                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_SHUTDOWNANDWAKEUPROBOT_REQUEST_4 != 0xaf02b5ebUL ||                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_SHUTDOWNANDWAKEUPROBOT_REQUEST_5 != 0x3559fb87UL ||                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_SHUTDOWNANDWAKEUPROBOT_REQUEST_6 != 0x818f9332UL ||                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_SHUTDOWNANDWAKEUPROBOT_REQUEST_7 != 0x7242d789UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_SHUTDOWNANDWAKEUPROBOT_REQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_SHUTDOWNANDWAKEUPROBOT_REQUEST_0 0x481b4cd8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_SHUTDOWNANDWAKEUPROBOT_REQUEST_1 0xfe03ca68UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_SHUTDOWNANDWAKEUPROBOT_REQUEST_2 0xf390eeceUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_SHUTDOWNANDWAKEUPROBOT_REQUEST_3 0x5894e69bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_SHUTDOWNANDWAKEUPROBOT_REQUEST_4 0xaf02b5ebUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_SHUTDOWNANDWAKEUPROBOT_REQUEST_5 0x3559fb87UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_SHUTDOWNANDWAKEUPROBOT_REQUEST_6 0x818f9332UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_SHUTDOWNANDWAKEUPROBOT_REQUEST_7 0x7242d789UL

/** @brief Complete ROS2 pal_device_msgs/srv/ShutdownAndWakeUpRobot_Request value; no field projects away native data. */
typedef struct roswasmc_bounded_2_pal_device_msgs_srv_ShutdownAndWakeUpRobot_Request
{
    /** @brief Declared field shutdown_duration; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_builtin_interfaces_msg_Duration shutdown_duration;
} roswasmc_bounded_2_pal_device_msgs_srv_ShutdownAndWakeUpRobot_Request;

# define ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_SHUTDOWNANDWAKEUPROBOT_REQUEST_MAX_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_SHUTDOWNANDWAKEUPROBOT_REQUEST_MIN_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_SHUTDOWNANDWAKEUPROBOT_REQUEST_CODEC_IDENTITY                                                                  \
     "UWVMROS1_3aa4e835b4cf21c77bd25b980b022133b5425f4eb8798832d4f8403bfc691166"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_pal_device_msgs_srv_ShutdownAndWakeUpRobot_Request_valid(
    roswasmc_bounded_2_pal_device_msgs_srv_ShutdownAndWakeUpRobot_Request const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_builtin_interfaces_msg_Duration_valid(&value->shutdown_duration))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_pal_device_msgs_srv_ShutdownAndWakeUpRobot_Request_wire_size(
    roswasmc_bounded_2_pal_device_msgs_srv_ShutdownAndWakeUpRobot_Request const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_builtin_interfaces_msg_Duration_wire_size(&value->shutdown_duration);
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_pal_device_msgs_srv_ShutdownAndWakeUpRobot_Request_write_fields(
    roswasmc_bounded_2_pal_device_msgs_srv_ShutdownAndWakeUpRobot_Request const* value,
    unsigned char* p,
    size_t* offset)
{
    roswasmc_bounded_2_builtin_interfaces_msg_Duration_write_fields(&value->shutdown_duration, p, offset);
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_pal_device_msgs_srv_ShutdownAndWakeUpRobot_Request_read_fields(
    unsigned char const* p,
    size_t n,
    size_t* offset,
    roswasmc_bounded_2_pal_device_msgs_srv_ShutdownAndWakeUpRobot_Request* value)
{
    if(!roswasmc_bounded_2_builtin_interfaces_msg_Duration_read_fields(p, n, offset, &value->shutdown_duration))
        return 0;
    return roswasmc_bounded_2_pal_device_msgs_srv_ShutdownAndWakeUpRobot_Request_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_pal_device_msgs_srv_ShutdownAndWakeUpRobot_Request_encode(
    roswasmc_bounded_2_pal_device_msgs_srv_ShutdownAndWakeUpRobot_Request const* value,
    void* output,
    size_t capacity,
    size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_pal_device_msgs_srv_ShutdownAndWakeUpRobot_Request_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_pal_device_msgs_srv_ShutdownAndWakeUpRobot_Request_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_pal_device_msgs_srv_ShutdownAndWakeUpRobot_Request_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_pal_device_msgs_srv_ShutdownAndWakeUpRobot_Request_decode(void const* input,
                                                                                 size_t length,
                                                                                 roswasmc_bounded_2_pal_device_msgs_srv_ShutdownAndWakeUpRobot_Request* value)
{
    roswasmc_bounded_2_pal_device_msgs_srv_ShutdownAndWakeUpRobot_Request next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 8u || length > 8u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_pal_device_msgs_srv_ShutdownAndWakeUpRobot_Request_read_fields((unsigned char const*)input, length, &offset, &next) ||
       offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_SHUTDOWNANDWAKEUPROBOT_RESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_SHUTDOWNANDWAKEUPROBOT_RESPONSE_0 != 0x447a556eUL ||                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_SHUTDOWNANDWAKEUPROBOT_RESPONSE_1 != 0xd73fa550UL ||                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_SHUTDOWNANDWAKEUPROBOT_RESPONSE_2 != 0x7c51c342UL ||                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_SHUTDOWNANDWAKEUPROBOT_RESPONSE_3 != 0x8facfaf6UL ||                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_SHUTDOWNANDWAKEUPROBOT_RESPONSE_4 != 0x6df55da0UL ||                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_SHUTDOWNANDWAKEUPROBOT_RESPONSE_5 != 0xac4a782cUL ||                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_SHUTDOWNANDWAKEUPROBOT_RESPONSE_6 != 0x5074134dUL ||                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_SHUTDOWNANDWAKEUPROBOT_RESPONSE_7 != 0x9daefd9dUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_SHUTDOWNANDWAKEUPROBOT_RESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_SHUTDOWNANDWAKEUPROBOT_RESPONSE_0 0x447a556eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_SHUTDOWNANDWAKEUPROBOT_RESPONSE_1 0xd73fa550UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_SHUTDOWNANDWAKEUPROBOT_RESPONSE_2 0x7c51c342UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_SHUTDOWNANDWAKEUPROBOT_RESPONSE_3 0x8facfaf6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_SHUTDOWNANDWAKEUPROBOT_RESPONSE_4 0x6df55da0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_SHUTDOWNANDWAKEUPROBOT_RESPONSE_5 0xac4a782cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_SHUTDOWNANDWAKEUPROBOT_RESPONSE_6 0x5074134dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_SHUTDOWNANDWAKEUPROBOT_RESPONSE_7 0x9daefd9dUL

/** @brief Complete ROS2 pal_device_msgs/srv/ShutdownAndWakeUpRobot_Response value; no field projects away native data. */
typedef struct roswasmc_bounded_2_pal_device_msgs_srv_ShutdownAndWakeUpRobot_Response
{
    /** @brief Local C layout placeholder; empty native component has exactly zero canonical bytes. */
    unsigned char local_empty_placeholder;
} roswasmc_bounded_2_pal_device_msgs_srv_ShutdownAndWakeUpRobot_Response;

# define ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_SHUTDOWNANDWAKEUPROBOT_RESPONSE_MAX_WIRE_BYTES 0u
# define ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_SHUTDOWNANDWAKEUPROBOT_RESPONSE_MIN_WIRE_BYTES 0u
# define ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_SHUTDOWNANDWAKEUPROBOT_RESPONSE_CODEC_IDENTITY                                                                 \
     "UWVMROS1_a3db908cd8f5f47c150070a0e2df18fada891ac05b1492ecbd025ba67d7e46af"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_pal_device_msgs_srv_ShutdownAndWakeUpRobot_Response_valid(
    roswasmc_bounded_2_pal_device_msgs_srv_ShutdownAndWakeUpRobot_Response const* value)
{
    if(!value)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_pal_device_msgs_srv_ShutdownAndWakeUpRobot_Response_wire_size(
    roswasmc_bounded_2_pal_device_msgs_srv_ShutdownAndWakeUpRobot_Response const* value)
{
    size_t n = 0;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_pal_device_msgs_srv_ShutdownAndWakeUpRobot_Response_write_fields(
    roswasmc_bounded_2_pal_device_msgs_srv_ShutdownAndWakeUpRobot_Response const* value,
    unsigned char* p,
    size_t* offset)
{
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_pal_device_msgs_srv_ShutdownAndWakeUpRobot_Response_read_fields(
    unsigned char const* p,
    size_t n,
    size_t* offset,
    roswasmc_bounded_2_pal_device_msgs_srv_ShutdownAndWakeUpRobot_Response* value)
{
    return roswasmc_bounded_2_pal_device_msgs_srv_ShutdownAndWakeUpRobot_Response_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_pal_device_msgs_srv_ShutdownAndWakeUpRobot_Response_encode(
    roswasmc_bounded_2_pal_device_msgs_srv_ShutdownAndWakeUpRobot_Response const* value,
    void* output,
    size_t capacity,
    size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_pal_device_msgs_srv_ShutdownAndWakeUpRobot_Response_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_pal_device_msgs_srv_ShutdownAndWakeUpRobot_Response_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_pal_device_msgs_srv_ShutdownAndWakeUpRobot_Response_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_pal_device_msgs_srv_ShutdownAndWakeUpRobot_Response_decode(void const* input,
                                                                                  size_t length,
                                                                                  roswasmc_bounded_2_pal_device_msgs_srv_ShutdownAndWakeUpRobot_Response* value)
{
    roswasmc_bounded_2_pal_device_msgs_srv_ShutdownAndWakeUpRobot_Response next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 0u || length > 0u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_pal_device_msgs_srv_ShutdownAndWakeUpRobot_Response_read_fields((unsigned char const*)input, length, &offset, &next) ||
       offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDBLINKEFFECT_REQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDBLINKEFFECT_REQUEST_0 != 0x1e80b42aUL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDBLINKEFFECT_REQUEST_1 != 0xf521703dUL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDBLINKEFFECT_REQUEST_2 != 0x6493c72eUL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDBLINKEFFECT_REQUEST_3 != 0xee56998dUL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDBLINKEFFECT_REQUEST_4 != 0x78bf372bUL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDBLINKEFFECT_REQUEST_5 != 0xf9aef9f0UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDBLINKEFFECT_REQUEST_6 != 0x9b566119UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDBLINKEFFECT_REQUEST_7 != 0x2d3fba27UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDBLINKEFFECT_REQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDBLINKEFFECT_REQUEST_0 0x1e80b42aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDBLINKEFFECT_REQUEST_1 0xf521703dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDBLINKEFFECT_REQUEST_2 0x6493c72eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDBLINKEFFECT_REQUEST_3 0xee56998dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDBLINKEFFECT_REQUEST_4 0x78bf372bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDBLINKEFFECT_REQUEST_5 0xf9aef9f0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDBLINKEFFECT_REQUEST_6 0x9b566119UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDBLINKEFFECT_REQUEST_7 0x2d3fba27UL

/** @brief Complete ROS2 pal_device_msgs/srv/TimedBlinkEffect_Request value; no field projects away native data. */
typedef struct roswasmc_bounded_2_pal_device_msgs_srv_TimedBlinkEffect_Request
{
    /** @brief Declared field leds; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_pal_device_msgs_msg_LedGroup leds;
    /** @brief Declared field first_color; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_std_msgs_msg_ColorRGBA first_color;
    /** @brief Declared field second_color; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_std_msgs_msg_ColorRGBA second_color;
    /** @brief Declared field first_color_duration; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_builtin_interfaces_msg_Duration first_color_duration;
    /** @brief Declared field second_color_duration; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_builtin_interfaces_msg_Duration second_color_duration;
    /** @brief Declared field effect_duration; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_builtin_interfaces_msg_Duration effect_duration;
    /** @brief Declared field priority; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t priority;
} roswasmc_bounded_2_pal_device_msgs_srv_TimedBlinkEffect_Request;

# define ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDBLINKEFFECT_REQUEST_MAX_WIRE_BYTES 61u
# define ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDBLINKEFFECT_REQUEST_MIN_WIRE_BYTES 61u
# define ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDBLINKEFFECT_REQUEST_CODEC_IDENTITY                                                                        \
     "UWVMROS1_17a50bf4f71fe6d4d3e9d146df74fac1c2d6ed69c5899c51517785cdfcb9b15c"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int
    roswasmc_bounded_2_pal_device_msgs_srv_TimedBlinkEffect_Request_valid(roswasmc_bounded_2_pal_device_msgs_srv_TimedBlinkEffect_Request const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_pal_device_msgs_msg_LedGroup_valid(&value->leds))
        return 0;
    if(!roswasmc_bounded_2_std_msgs_msg_ColorRGBA_valid(&value->first_color))
        return 0;
    if(!roswasmc_bounded_2_std_msgs_msg_ColorRGBA_valid(&value->second_color))
        return 0;
    if(!roswasmc_bounded_2_builtin_interfaces_msg_Duration_valid(&value->first_color_duration))
        return 0;
    if(!roswasmc_bounded_2_builtin_interfaces_msg_Duration_valid(&value->second_color_duration))
        return 0;
    if(!roswasmc_bounded_2_builtin_interfaces_msg_Duration_valid(&value->effect_duration))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_2_pal_device_msgs_srv_TimedBlinkEffect_Request_wire_size(roswasmc_bounded_2_pal_device_msgs_srv_TimedBlinkEffect_Request const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_pal_device_msgs_msg_LedGroup_wire_size(&value->leds);
    n += roswasmc_bounded_2_std_msgs_msg_ColorRGBA_wire_size(&value->first_color);
    n += roswasmc_bounded_2_std_msgs_msg_ColorRGBA_wire_size(&value->second_color);
    n += roswasmc_bounded_2_builtin_interfaces_msg_Duration_wire_size(&value->first_color_duration);
    n += roswasmc_bounded_2_builtin_interfaces_msg_Duration_wire_size(&value->second_color_duration);
    n += roswasmc_bounded_2_builtin_interfaces_msg_Duration_wire_size(&value->effect_duration);
    n += 1;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_pal_device_msgs_srv_TimedBlinkEffect_Request_write_fields(roswasmc_bounded_2_pal_device_msgs_srv_TimedBlinkEffect_Request const* value,
                                                                                 unsigned char* p,
                                                                                 size_t* offset)
{
    roswasmc_bounded_2_pal_device_msgs_msg_LedGroup_write_fields(&value->leds, p, offset);
    roswasmc_bounded_2_std_msgs_msg_ColorRGBA_write_fields(&value->first_color, p, offset);
    roswasmc_bounded_2_std_msgs_msg_ColorRGBA_write_fields(&value->second_color, p, offset);
    roswasmc_bounded_2_builtin_interfaces_msg_Duration_write_fields(&value->first_color_duration, p, offset);
    roswasmc_bounded_2_builtin_interfaces_msg_Duration_write_fields(&value->second_color_duration, p, offset);
    roswasmc_bounded_2_builtin_interfaces_msg_Duration_write_fields(&value->effect_duration, p, offset);
    uwvm_bounded_put(p + *offset, (uint64_t)value->priority, 1);
    *offset += 1;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int
    roswasmc_bounded_2_pal_device_msgs_srv_TimedBlinkEffect_Request_read_fields(unsigned char const* p,
                                                                                size_t n,
                                                                                size_t* offset,
                                                                                roswasmc_bounded_2_pal_device_msgs_srv_TimedBlinkEffect_Request* value)
{
    if(!roswasmc_bounded_2_pal_device_msgs_msg_LedGroup_read_fields(p, n, offset, &value->leds))
        return 0;
    if(!roswasmc_bounded_2_std_msgs_msg_ColorRGBA_read_fields(p, n, offset, &value->first_color))
        return 0;
    if(!roswasmc_bounded_2_std_msgs_msg_ColorRGBA_read_fields(p, n, offset, &value->second_color))
        return 0;
    if(!roswasmc_bounded_2_builtin_interfaces_msg_Duration_read_fields(p, n, offset, &value->first_color_duration))
        return 0;
    if(!roswasmc_bounded_2_builtin_interfaces_msg_Duration_read_fields(p, n, offset, &value->second_color_duration))
        return 0;
    if(!roswasmc_bounded_2_builtin_interfaces_msg_Duration_read_fields(p, n, offset, &value->effect_duration))
        return 0;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->priority, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_2_pal_device_msgs_srv_TimedBlinkEffect_Request_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_pal_device_msgs_srv_TimedBlinkEffect_Request_encode(roswasmc_bounded_2_pal_device_msgs_srv_TimedBlinkEffect_Request const* value,
                                                                           void* output,
                                                                           size_t capacity,
                                                                           size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_pal_device_msgs_srv_TimedBlinkEffect_Request_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_pal_device_msgs_srv_TimedBlinkEffect_Request_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_pal_device_msgs_srv_TimedBlinkEffect_Request_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_pal_device_msgs_srv_TimedBlinkEffect_Request_decode(void const* input,
                                                                           size_t length,
                                                                           roswasmc_bounded_2_pal_device_msgs_srv_TimedBlinkEffect_Request* value)
{
    roswasmc_bounded_2_pal_device_msgs_srv_TimedBlinkEffect_Request next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 61u || length > 61u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_pal_device_msgs_srv_TimedBlinkEffect_Request_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDBLINKEFFECT_RESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDBLINKEFFECT_RESPONSE_0 != 0xcde93f9aUL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDBLINKEFFECT_RESPONSE_1 != 0xaad81febUL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDBLINKEFFECT_RESPONSE_2 != 0x72501868UL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDBLINKEFFECT_RESPONSE_3 != 0x0283efa9UL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDBLINKEFFECT_RESPONSE_4 != 0x7f525f51UL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDBLINKEFFECT_RESPONSE_5 != 0x4a761f13UL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDBLINKEFFECT_RESPONSE_6 != 0xffbd30c9UL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDBLINKEFFECT_RESPONSE_7 != 0x3fb84b54UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDBLINKEFFECT_RESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDBLINKEFFECT_RESPONSE_0 0xcde93f9aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDBLINKEFFECT_RESPONSE_1 0xaad81febUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDBLINKEFFECT_RESPONSE_2 0x72501868UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDBLINKEFFECT_RESPONSE_3 0x0283efa9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDBLINKEFFECT_RESPONSE_4 0x7f525f51UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDBLINKEFFECT_RESPONSE_5 0x4a761f13UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDBLINKEFFECT_RESPONSE_6 0xffbd30c9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDBLINKEFFECT_RESPONSE_7 0x3fb84b54UL

/** @brief Complete ROS2 pal_device_msgs/srv/TimedBlinkEffect_Response value; no field projects away native data. */
typedef struct roswasmc_bounded_2_pal_device_msgs_srv_TimedBlinkEffect_Response
{
    /** @brief Declared field effect_id; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t effect_id;
} roswasmc_bounded_2_pal_device_msgs_srv_TimedBlinkEffect_Response;

# define ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDBLINKEFFECT_RESPONSE_MAX_WIRE_BYTES 4u
# define ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDBLINKEFFECT_RESPONSE_MIN_WIRE_BYTES 4u
# define ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDBLINKEFFECT_RESPONSE_CODEC_IDENTITY                                                                       \
     "UWVMROS1_ea08afa309ccd316b279952de55d50e4d49fe027387ba12e54eba4b488e4d66a"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int
    roswasmc_bounded_2_pal_device_msgs_srv_TimedBlinkEffect_Response_valid(roswasmc_bounded_2_pal_device_msgs_srv_TimedBlinkEffect_Response const* value)
{
    if(!value)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_2_pal_device_msgs_srv_TimedBlinkEffect_Response_wire_size(roswasmc_bounded_2_pal_device_msgs_srv_TimedBlinkEffect_Response const* value)
{
    size_t n = 0;
    n += 4;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_pal_device_msgs_srv_TimedBlinkEffect_Response_write_fields(roswasmc_bounded_2_pal_device_msgs_srv_TimedBlinkEffect_Response const* value,
                                                                                  unsigned char* p,
                                                                                  size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->effect_id, 4);
    *offset += 4;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int
    roswasmc_bounded_2_pal_device_msgs_srv_TimedBlinkEffect_Response_read_fields(unsigned char const* p,
                                                                                 size_t n,
                                                                                 size_t* offset,
                                                                                 roswasmc_bounded_2_pal_device_msgs_srv_TimedBlinkEffect_Response* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->effect_id, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_2_pal_device_msgs_srv_TimedBlinkEffect_Response_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_pal_device_msgs_srv_TimedBlinkEffect_Response_encode(roswasmc_bounded_2_pal_device_msgs_srv_TimedBlinkEffect_Response const* value,
                                                                            void* output,
                                                                            size_t capacity,
                                                                            size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_pal_device_msgs_srv_TimedBlinkEffect_Response_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_pal_device_msgs_srv_TimedBlinkEffect_Response_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_pal_device_msgs_srv_TimedBlinkEffect_Response_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_pal_device_msgs_srv_TimedBlinkEffect_Response_decode(void const* input,
                                                                            size_t length,
                                                                            roswasmc_bounded_2_pal_device_msgs_srv_TimedBlinkEffect_Response* value)
{
    roswasmc_bounded_2_pal_device_msgs_srv_TimedBlinkEffect_Response next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 4u || length > 4u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_pal_device_msgs_srv_TimedBlinkEffect_Response_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDCOLOUREFFECT_REQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDCOLOUREFFECT_REQUEST_0 != 0x966997f6UL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDCOLOUREFFECT_REQUEST_1 != 0x82a4c64eUL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDCOLOUREFFECT_REQUEST_2 != 0x5d9de74fUL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDCOLOUREFFECT_REQUEST_3 != 0x35bb7a58UL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDCOLOUREFFECT_REQUEST_4 != 0xf5754007UL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDCOLOUREFFECT_REQUEST_5 != 0x59592f2dUL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDCOLOUREFFECT_REQUEST_6 != 0xe0157b46UL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDCOLOUREFFECT_REQUEST_7 != 0x117d42a0UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDCOLOUREFFECT_REQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDCOLOUREFFECT_REQUEST_0 0x966997f6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDCOLOUREFFECT_REQUEST_1 0x82a4c64eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDCOLOUREFFECT_REQUEST_2 0x5d9de74fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDCOLOUREFFECT_REQUEST_3 0x35bb7a58UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDCOLOUREFFECT_REQUEST_4 0xf5754007UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDCOLOUREFFECT_REQUEST_5 0x59592f2dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDCOLOUREFFECT_REQUEST_6 0xe0157b46UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDCOLOUREFFECT_REQUEST_7 0x117d42a0UL

/** @brief Complete ROS2 pal_device_msgs/srv/TimedColourEffect_Request value; no field projects away native data. */
typedef struct roswasmc_bounded_2_pal_device_msgs_srv_TimedColourEffect_Request
{
    /** @brief Declared field leds; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_pal_device_msgs_msg_LedGroup leds;
    /** @brief Declared field color; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_std_msgs_msg_ColorRGBA color;
    /** @brief Declared field effect_duration; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_builtin_interfaces_msg_Duration effect_duration;
    /** @brief Declared field priority; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t priority;
} roswasmc_bounded_2_pal_device_msgs_srv_TimedColourEffect_Request;

# define ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDCOLOUREFFECT_REQUEST_MAX_WIRE_BYTES 29u
# define ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDCOLOUREFFECT_REQUEST_MIN_WIRE_BYTES 29u
# define ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDCOLOUREFFECT_REQUEST_CODEC_IDENTITY                                                                       \
     "UWVMROS1_bb25c25962a52120bd8575be65dabd983ac46c7a19794f3793b37c2bf8ccbfa8"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int
    roswasmc_bounded_2_pal_device_msgs_srv_TimedColourEffect_Request_valid(roswasmc_bounded_2_pal_device_msgs_srv_TimedColourEffect_Request const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_pal_device_msgs_msg_LedGroup_valid(&value->leds))
        return 0;
    if(!roswasmc_bounded_2_std_msgs_msg_ColorRGBA_valid(&value->color))
        return 0;
    if(!roswasmc_bounded_2_builtin_interfaces_msg_Duration_valid(&value->effect_duration))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_2_pal_device_msgs_srv_TimedColourEffect_Request_wire_size(roswasmc_bounded_2_pal_device_msgs_srv_TimedColourEffect_Request const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_pal_device_msgs_msg_LedGroup_wire_size(&value->leds);
    n += roswasmc_bounded_2_std_msgs_msg_ColorRGBA_wire_size(&value->color);
    n += roswasmc_bounded_2_builtin_interfaces_msg_Duration_wire_size(&value->effect_duration);
    n += 1;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_pal_device_msgs_srv_TimedColourEffect_Request_write_fields(roswasmc_bounded_2_pal_device_msgs_srv_TimedColourEffect_Request const* value,
                                                                                  unsigned char* p,
                                                                                  size_t* offset)
{
    roswasmc_bounded_2_pal_device_msgs_msg_LedGroup_write_fields(&value->leds, p, offset);
    roswasmc_bounded_2_std_msgs_msg_ColorRGBA_write_fields(&value->color, p, offset);
    roswasmc_bounded_2_builtin_interfaces_msg_Duration_write_fields(&value->effect_duration, p, offset);
    uwvm_bounded_put(p + *offset, (uint64_t)value->priority, 1);
    *offset += 1;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int
    roswasmc_bounded_2_pal_device_msgs_srv_TimedColourEffect_Request_read_fields(unsigned char const* p,
                                                                                 size_t n,
                                                                                 size_t* offset,
                                                                                 roswasmc_bounded_2_pal_device_msgs_srv_TimedColourEffect_Request* value)
{
    if(!roswasmc_bounded_2_pal_device_msgs_msg_LedGroup_read_fields(p, n, offset, &value->leds))
        return 0;
    if(!roswasmc_bounded_2_std_msgs_msg_ColorRGBA_read_fields(p, n, offset, &value->color))
        return 0;
    if(!roswasmc_bounded_2_builtin_interfaces_msg_Duration_read_fields(p, n, offset, &value->effect_duration))
        return 0;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->priority, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_2_pal_device_msgs_srv_TimedColourEffect_Request_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_pal_device_msgs_srv_TimedColourEffect_Request_encode(roswasmc_bounded_2_pal_device_msgs_srv_TimedColourEffect_Request const* value,
                                                                            void* output,
                                                                            size_t capacity,
                                                                            size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_pal_device_msgs_srv_TimedColourEffect_Request_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_pal_device_msgs_srv_TimedColourEffect_Request_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_pal_device_msgs_srv_TimedColourEffect_Request_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_pal_device_msgs_srv_TimedColourEffect_Request_decode(void const* input,
                                                                            size_t length,
                                                                            roswasmc_bounded_2_pal_device_msgs_srv_TimedColourEffect_Request* value)
{
    roswasmc_bounded_2_pal_device_msgs_srv_TimedColourEffect_Request next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 29u || length > 29u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_pal_device_msgs_srv_TimedColourEffect_Request_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDCOLOUREFFECT_RESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDCOLOUREFFECT_RESPONSE_0 != 0x28f4ccb5UL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDCOLOUREFFECT_RESPONSE_1 != 0xbb314a82UL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDCOLOUREFFECT_RESPONSE_2 != 0x9be1a629UL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDCOLOUREFFECT_RESPONSE_3 != 0xa2cd18f9UL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDCOLOUREFFECT_RESPONSE_4 != 0x8b5bca80UL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDCOLOUREFFECT_RESPONSE_5 != 0x7c1f994fUL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDCOLOUREFFECT_RESPONSE_6 != 0xa9a8f14cUL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDCOLOUREFFECT_RESPONSE_7 != 0x3cc40a25UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDCOLOUREFFECT_RESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDCOLOUREFFECT_RESPONSE_0 0x28f4ccb5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDCOLOUREFFECT_RESPONSE_1 0xbb314a82UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDCOLOUREFFECT_RESPONSE_2 0x9be1a629UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDCOLOUREFFECT_RESPONSE_3 0xa2cd18f9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDCOLOUREFFECT_RESPONSE_4 0x8b5bca80UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDCOLOUREFFECT_RESPONSE_5 0x7c1f994fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDCOLOUREFFECT_RESPONSE_6 0xa9a8f14cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDCOLOUREFFECT_RESPONSE_7 0x3cc40a25UL

/** @brief Complete ROS2 pal_device_msgs/srv/TimedColourEffect_Response value; no field projects away native data. */
typedef struct roswasmc_bounded_2_pal_device_msgs_srv_TimedColourEffect_Response
{
    /** @brief Declared field effect_id; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t effect_id;
} roswasmc_bounded_2_pal_device_msgs_srv_TimedColourEffect_Response;

# define ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDCOLOUREFFECT_RESPONSE_MAX_WIRE_BYTES 4u
# define ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDCOLOUREFFECT_RESPONSE_MIN_WIRE_BYTES 4u
# define ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDCOLOUREFFECT_RESPONSE_CODEC_IDENTITY                                                                      \
     "UWVMROS1_5cd500032cfe7a263100061b2ebda37e8639cbf8a9c6fc978e9525f59d9df1f9"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int
    roswasmc_bounded_2_pal_device_msgs_srv_TimedColourEffect_Response_valid(roswasmc_bounded_2_pal_device_msgs_srv_TimedColourEffect_Response const* value)
{
    if(!value)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_2_pal_device_msgs_srv_TimedColourEffect_Response_wire_size(roswasmc_bounded_2_pal_device_msgs_srv_TimedColourEffect_Response const* value)
{
    size_t n = 0;
    n += 4;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_pal_device_msgs_srv_TimedColourEffect_Response_write_fields(
    roswasmc_bounded_2_pal_device_msgs_srv_TimedColourEffect_Response const* value,
    unsigned char* p,
    size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->effect_id, 4);
    *offset += 4;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int
    roswasmc_bounded_2_pal_device_msgs_srv_TimedColourEffect_Response_read_fields(unsigned char const* p,
                                                                                  size_t n,
                                                                                  size_t* offset,
                                                                                  roswasmc_bounded_2_pal_device_msgs_srv_TimedColourEffect_Response* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->effect_id, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_2_pal_device_msgs_srv_TimedColourEffect_Response_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_pal_device_msgs_srv_TimedColourEffect_Response_encode(roswasmc_bounded_2_pal_device_msgs_srv_TimedColourEffect_Response const* value,
                                                                             void* output,
                                                                             size_t capacity,
                                                                             size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_pal_device_msgs_srv_TimedColourEffect_Response_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_pal_device_msgs_srv_TimedColourEffect_Response_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_pal_device_msgs_srv_TimedColourEffect_Response_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_pal_device_msgs_srv_TimedColourEffect_Response_decode(void const* input,
                                                                             size_t length,
                                                                             roswasmc_bounded_2_pal_device_msgs_srv_TimedColourEffect_Response* value)
{
    roswasmc_bounded_2_pal_device_msgs_srv_TimedColourEffect_Response next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 4u || length > 4u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_pal_device_msgs_srv_TimedColourEffect_Response_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDFADEEFFECT_REQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDFADEEFFECT_REQUEST_0 != 0x6613ca8bUL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDFADEEFFECT_REQUEST_1 != 0xcec7d7eaUL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDFADEEFFECT_REQUEST_2 != 0x623174f9UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDFADEEFFECT_REQUEST_3 != 0xc7cc4ef1UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDFADEEFFECT_REQUEST_4 != 0x53ed10a3UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDFADEEFFECT_REQUEST_5 != 0xf21040d9UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDFADEEFFECT_REQUEST_6 != 0x7c5e3048UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDFADEEFFECT_REQUEST_7 != 0x5a796188UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDFADEEFFECT_REQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDFADEEFFECT_REQUEST_0 0x6613ca8bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDFADEEFFECT_REQUEST_1 0xcec7d7eaUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDFADEEFFECT_REQUEST_2 0x623174f9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDFADEEFFECT_REQUEST_3 0xc7cc4ef1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDFADEEFFECT_REQUEST_4 0x53ed10a3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDFADEEFFECT_REQUEST_5 0xf21040d9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDFADEEFFECT_REQUEST_6 0x7c5e3048UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDFADEEFFECT_REQUEST_7 0x5a796188UL

/** @brief Complete ROS2 pal_device_msgs/srv/TimedFadeEffect_Request value; no field projects away native data. */
typedef struct roswasmc_bounded_2_pal_device_msgs_srv_TimedFadeEffect_Request
{
    /** @brief Declared field leds; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_pal_device_msgs_msg_LedGroup leds;
    /** @brief Declared field first_color; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_std_msgs_msg_ColorRGBA first_color;
    /** @brief Declared field second_color; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_std_msgs_msg_ColorRGBA second_color;
    /** @brief Declared field color_change_duration; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_builtin_interfaces_msg_Duration color_change_duration;
    /** @brief Declared field reverse_fade; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t reverse_fade;
    /** @brief Declared field effect_duration; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_builtin_interfaces_msg_Duration effect_duration;
    /** @brief Declared field priority; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t priority;
} roswasmc_bounded_2_pal_device_msgs_srv_TimedFadeEffect_Request;

# define ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDFADEEFFECT_REQUEST_MAX_WIRE_BYTES 54u
# define ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDFADEEFFECT_REQUEST_MIN_WIRE_BYTES 54u
# define ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDFADEEFFECT_REQUEST_CODEC_IDENTITY                                                                         \
     "UWVMROS1_07c57a457aa0767c766865c5c3b0fdbf5c46e39eac881b452fbc08933c1d3b13"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int
    roswasmc_bounded_2_pal_device_msgs_srv_TimedFadeEffect_Request_valid(roswasmc_bounded_2_pal_device_msgs_srv_TimedFadeEffect_Request const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_pal_device_msgs_msg_LedGroup_valid(&value->leds))
        return 0;
    if(!roswasmc_bounded_2_std_msgs_msg_ColorRGBA_valid(&value->first_color))
        return 0;
    if(!roswasmc_bounded_2_std_msgs_msg_ColorRGBA_valid(&value->second_color))
        return 0;
    if(!roswasmc_bounded_2_builtin_interfaces_msg_Duration_valid(&value->color_change_duration))
        return 0;
    if(value->reverse_fade > 1)
        return 0;
    if(!roswasmc_bounded_2_builtin_interfaces_msg_Duration_valid(&value->effect_duration))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_2_pal_device_msgs_srv_TimedFadeEffect_Request_wire_size(roswasmc_bounded_2_pal_device_msgs_srv_TimedFadeEffect_Request const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_pal_device_msgs_msg_LedGroup_wire_size(&value->leds);
    n += roswasmc_bounded_2_std_msgs_msg_ColorRGBA_wire_size(&value->first_color);
    n += roswasmc_bounded_2_std_msgs_msg_ColorRGBA_wire_size(&value->second_color);
    n += roswasmc_bounded_2_builtin_interfaces_msg_Duration_wire_size(&value->color_change_duration);
    n += 1;
    n += roswasmc_bounded_2_builtin_interfaces_msg_Duration_wire_size(&value->effect_duration);
    n += 1;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_pal_device_msgs_srv_TimedFadeEffect_Request_write_fields(roswasmc_bounded_2_pal_device_msgs_srv_TimedFadeEffect_Request const* value,
                                                                                unsigned char* p,
                                                                                size_t* offset)
{
    roswasmc_bounded_2_pal_device_msgs_msg_LedGroup_write_fields(&value->leds, p, offset);
    roswasmc_bounded_2_std_msgs_msg_ColorRGBA_write_fields(&value->first_color, p, offset);
    roswasmc_bounded_2_std_msgs_msg_ColorRGBA_write_fields(&value->second_color, p, offset);
    roswasmc_bounded_2_builtin_interfaces_msg_Duration_write_fields(&value->color_change_duration, p, offset);
    uwvm_bounded_put(p + *offset, (uint64_t)value->reverse_fade, 1);
    *offset += 1;
    roswasmc_bounded_2_builtin_interfaces_msg_Duration_write_fields(&value->effect_duration, p, offset);
    uwvm_bounded_put(p + *offset, (uint64_t)value->priority, 1);
    *offset += 1;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int
    roswasmc_bounded_2_pal_device_msgs_srv_TimedFadeEffect_Request_read_fields(unsigned char const* p,
                                                                               size_t n,
                                                                               size_t* offset,
                                                                               roswasmc_bounded_2_pal_device_msgs_srv_TimedFadeEffect_Request* value)
{
    if(!roswasmc_bounded_2_pal_device_msgs_msg_LedGroup_read_fields(p, n, offset, &value->leds))
        return 0;
    if(!roswasmc_bounded_2_std_msgs_msg_ColorRGBA_read_fields(p, n, offset, &value->first_color))
        return 0;
    if(!roswasmc_bounded_2_std_msgs_msg_ColorRGBA_read_fields(p, n, offset, &value->second_color))
        return 0;
    if(!roswasmc_bounded_2_builtin_interfaces_msg_Duration_read_fields(p, n, offset, &value->color_change_duration))
        return 0;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->reverse_fade, &bits, 1);
    }
    *offset += 1;
    if(!roswasmc_bounded_2_builtin_interfaces_msg_Duration_read_fields(p, n, offset, &value->effect_duration))
        return 0;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->priority, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_2_pal_device_msgs_srv_TimedFadeEffect_Request_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_pal_device_msgs_srv_TimedFadeEffect_Request_encode(roswasmc_bounded_2_pal_device_msgs_srv_TimedFadeEffect_Request const* value,
                                                                          void* output,
                                                                          size_t capacity,
                                                                          size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_pal_device_msgs_srv_TimedFadeEffect_Request_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_pal_device_msgs_srv_TimedFadeEffect_Request_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_pal_device_msgs_srv_TimedFadeEffect_Request_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_pal_device_msgs_srv_TimedFadeEffect_Request_decode(void const* input,
                                                                          size_t length,
                                                                          roswasmc_bounded_2_pal_device_msgs_srv_TimedFadeEffect_Request* value)
{
    roswasmc_bounded_2_pal_device_msgs_srv_TimedFadeEffect_Request next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 54u || length > 54u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_pal_device_msgs_srv_TimedFadeEffect_Request_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDFADEEFFECT_RESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDFADEEFFECT_RESPONSE_0 != 0x9b23977dUL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDFADEEFFECT_RESPONSE_1 != 0x86f4d02bUL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDFADEEFFECT_RESPONSE_2 != 0x2e255e69UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDFADEEFFECT_RESPONSE_3 != 0x6d74cd7cUL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDFADEEFFECT_RESPONSE_4 != 0xd145c8d8UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDFADEEFFECT_RESPONSE_5 != 0x8f1748beUL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDFADEEFFECT_RESPONSE_6 != 0xcefed572UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDFADEEFFECT_RESPONSE_7 != 0x02cd03faUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDFADEEFFECT_RESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDFADEEFFECT_RESPONSE_0 0x9b23977dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDFADEEFFECT_RESPONSE_1 0x86f4d02bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDFADEEFFECT_RESPONSE_2 0x2e255e69UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDFADEEFFECT_RESPONSE_3 0x6d74cd7cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDFADEEFFECT_RESPONSE_4 0xd145c8d8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDFADEEFFECT_RESPONSE_5 0x8f1748beUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDFADEEFFECT_RESPONSE_6 0xcefed572UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDFADEEFFECT_RESPONSE_7 0x02cd03faUL

/** @brief Complete ROS2 pal_device_msgs/srv/TimedFadeEffect_Response value; no field projects away native data. */
typedef struct roswasmc_bounded_2_pal_device_msgs_srv_TimedFadeEffect_Response
{
    /** @brief Declared field effect_id; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t effect_id;
} roswasmc_bounded_2_pal_device_msgs_srv_TimedFadeEffect_Response;

# define ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDFADEEFFECT_RESPONSE_MAX_WIRE_BYTES 4u
# define ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDFADEEFFECT_RESPONSE_MIN_WIRE_BYTES 4u
# define ROSWASMC_BOUNDED_2_PAL_DEVICE_MSGS_SRV_TIMEDFADEEFFECT_RESPONSE_CODEC_IDENTITY                                                                        \
     "UWVMROS1_2d94870076ef7b1fe03d8ef45d96588fa3850faa0eaf39efd218b21fe947e8f5"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int
    roswasmc_bounded_2_pal_device_msgs_srv_TimedFadeEffect_Response_valid(roswasmc_bounded_2_pal_device_msgs_srv_TimedFadeEffect_Response const* value)
{
    if(!value)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_2_pal_device_msgs_srv_TimedFadeEffect_Response_wire_size(roswasmc_bounded_2_pal_device_msgs_srv_TimedFadeEffect_Response const* value)
{
    size_t n = 0;
    n += 4;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_pal_device_msgs_srv_TimedFadeEffect_Response_write_fields(roswasmc_bounded_2_pal_device_msgs_srv_TimedFadeEffect_Response const* value,
                                                                                 unsigned char* p,
                                                                                 size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->effect_id, 4);
    *offset += 4;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int
    roswasmc_bounded_2_pal_device_msgs_srv_TimedFadeEffect_Response_read_fields(unsigned char const* p,
                                                                                size_t n,
                                                                                size_t* offset,
                                                                                roswasmc_bounded_2_pal_device_msgs_srv_TimedFadeEffect_Response* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->effect_id, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_2_pal_device_msgs_srv_TimedFadeEffect_Response_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_pal_device_msgs_srv_TimedFadeEffect_Response_encode(roswasmc_bounded_2_pal_device_msgs_srv_TimedFadeEffect_Response const* value,
                                                                           void* output,
                                                                           size_t capacity,
                                                                           size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_pal_device_msgs_srv_TimedFadeEffect_Response_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_pal_device_msgs_srv_TimedFadeEffect_Response_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_pal_device_msgs_srv_TimedFadeEffect_Response_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_pal_device_msgs_srv_TimedFadeEffect_Response_decode(void const* input,
                                                                           size_t length,
                                                                           roswasmc_bounded_2_pal_device_msgs_srv_TimedFadeEffect_Response* value)
{
    roswasmc_bounded_2_pal_device_msgs_srv_TimedFadeEffect_Response next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 4u || length > 4u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_pal_device_msgs_srv_TimedFadeEffect_Response_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#undef UWVM_BOUNDED_ASSERT
#endif
