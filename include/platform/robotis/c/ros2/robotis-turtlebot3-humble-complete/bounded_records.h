/** @file Generated bounded-v2 canonical values; no native ROS serialization or authority.
 * Every dynamic field has inline caller-owned capacity. Encode validates and measures
 * the full value before writes; decode commits one temporary only after full validation.
 * Supply distinct record, byte and size-output storage; overlap is explicitly refused.
 * Empty Service/Action components use a C layout dummy that is never a wire field. */
#ifndef UWVM_ROS_BOUNDED_RECORDS_DF56742D38CCB0BF659448F8AE77C1FE6F83C24267E656CDC031D2003A9A3A9E
#define UWVM_ROS_BOUNDED_RECORDS_DF56742D38CCB0BF659448F8AE77C1FE6F83C24267E656CDC031D2003A9A3A9E
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
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POINT)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POINT_0 != 0x8b3c6967UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POINT_1 != 0xc3fea7ebUL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POINT_2 != 0x123f800eUL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POINT_3 != 0x30251b26UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POINT_4 != 0xa9ce9fc2UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POINT_5 != 0xcf8f0eefUL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POINT_6 != 0x2689966bUL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POINT_7 != 0x16c3767bUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POINT 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POINT_0 0x8b3c6967UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POINT_1 0xc3fea7ebUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POINT_2 0x123f800eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POINT_3 0x30251b26UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POINT_4 0xa9ce9fc2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POINT_5 0xcf8f0eefUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POINT_6 0x2689966bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POINT_7 0x16c3767bUL

/** @brief Complete ROS2 geometry_msgs/msg/Point value; no field projects away native data. */
typedef struct roswasmc_bounded_2_geometry_msgs_msg_Point
{
    /** @brief Declared field x; canonical capacity is part of CODEC_IDENTITY. */
    double x;
    /** @brief Declared field y; canonical capacity is part of CODEC_IDENTITY. */
    double y;
    /** @brief Declared field z; canonical capacity is part of CODEC_IDENTITY. */
    double z;
} roswasmc_bounded_2_geometry_msgs_msg_Point;

# define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POINT_MAX_WIRE_BYTES 24u
# define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POINT_MIN_WIRE_BYTES 24u
# define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POINT_CODEC_IDENTITY "UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_geometry_msgs_msg_Point_valid(roswasmc_bounded_2_geometry_msgs_msg_Point const* value)
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
static inline size_t roswasmc_bounded_2_geometry_msgs_msg_Point_wire_size(roswasmc_bounded_2_geometry_msgs_msg_Point const* value)
{
    size_t n = 0;
    n += 8;
    n += 8;
    n += 8;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_geometry_msgs_msg_Point_write_fields(roswasmc_bounded_2_geometry_msgs_msg_Point const* value, unsigned char* p, size_t* offset)
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
static inline int
    roswasmc_bounded_2_geometry_msgs_msg_Point_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_2_geometry_msgs_msg_Point* value)
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
    return roswasmc_bounded_2_geometry_msgs_msg_Point_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_geometry_msgs_msg_Point_encode(roswasmc_bounded_2_geometry_msgs_msg_Point const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_geometry_msgs_msg_Point_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_geometry_msgs_msg_Point_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_geometry_msgs_msg_Point_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_2_geometry_msgs_msg_Point_decode(void const* input, size_t length, roswasmc_bounded_2_geometry_msgs_msg_Point* value)
{
    roswasmc_bounded_2_geometry_msgs_msg_Point next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 24u || length > 24u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_geometry_msgs_msg_Point_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
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
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSE_0 != 0x73a5cf4aUL ||                                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSE_1 != 0x7e313663UL ||                                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSE_2 != 0x4a5eda93UL ||                                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSE_3 != 0xfed15b2aUL ||                                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSE_4 != 0xf5cc5920UL ||                                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSE_5 != 0xcea6a057UL ||                                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSE_6 != 0x7145db3dUL ||                                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSE_7 != 0xc070de58UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSE_0 0x73a5cf4aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSE_1 0x7e313663UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSE_2 0x4a5eda93UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSE_3 0xfed15b2aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSE_4 0xf5cc5920UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSE_5 0xcea6a057UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSE_6 0x7145db3dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSE_7 0xc070de58UL

/** @brief Complete ROS2 geometry_msgs/msg/Pose value; no field projects away native data. */
typedef struct roswasmc_bounded_2_geometry_msgs_msg_Pose
{
    /** @brief Declared field position; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_geometry_msgs_msg_Point position;
    /** @brief Declared field orientation; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_geometry_msgs_msg_Quaternion orientation;
} roswasmc_bounded_2_geometry_msgs_msg_Pose;

# define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSE_MAX_WIRE_BYTES 56u
# define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSE_MIN_WIRE_BYTES 56u
# define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSE_CODEC_IDENTITY "UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777"

/** @brief Explicit declared-default initialization; ordinary C/C++ zero aggregates stay zero.
 * Nested/fixed elements are initialized independently; sequence lengths stay zero.
 * This initializer performs no I/O, registration, allocation or capability operation. */
static inline uint32_t roswasmc_bounded_2_geometry_msgs_msg_Pose_default(roswasmc_bounded_2_geometry_msgs_msg_Pose* value)
{
    roswasmc_bounded_2_geometry_msgs_msg_Pose next = {0};
    if(!value)
        return UWVM_BOUNDED_INVALID;
    (void)roswasmc_bounded_2_geometry_msgs_msg_Quaternion_default(&next.orientation);
    *value = next;
    return 0;
}

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_geometry_msgs_msg_Pose_valid(roswasmc_bounded_2_geometry_msgs_msg_Pose const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_geometry_msgs_msg_Point_valid(&value->position))
        return 0;
    if(!roswasmc_bounded_2_geometry_msgs_msg_Quaternion_valid(&value->orientation))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_geometry_msgs_msg_Pose_wire_size(roswasmc_bounded_2_geometry_msgs_msg_Pose const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_geometry_msgs_msg_Point_wire_size(&value->position);
    n += roswasmc_bounded_2_geometry_msgs_msg_Quaternion_wire_size(&value->orientation);
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_geometry_msgs_msg_Pose_write_fields(roswasmc_bounded_2_geometry_msgs_msg_Pose const* value, unsigned char* p, size_t* offset)
{
    roswasmc_bounded_2_geometry_msgs_msg_Point_write_fields(&value->position, p, offset);
    roswasmc_bounded_2_geometry_msgs_msg_Quaternion_write_fields(&value->orientation, p, offset);
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int
    roswasmc_bounded_2_geometry_msgs_msg_Pose_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_2_geometry_msgs_msg_Pose* value)
{
    if(!roswasmc_bounded_2_geometry_msgs_msg_Point_read_fields(p, n, offset, &value->position))
        return 0;
    if(!roswasmc_bounded_2_geometry_msgs_msg_Quaternion_read_fields(p, n, offset, &value->orientation))
        return 0;
    return roswasmc_bounded_2_geometry_msgs_msg_Pose_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_geometry_msgs_msg_Pose_encode(roswasmc_bounded_2_geometry_msgs_msg_Pose const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_geometry_msgs_msg_Pose_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_geometry_msgs_msg_Pose_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_geometry_msgs_msg_Pose_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_2_geometry_msgs_msg_Pose_decode(void const* input, size_t length, roswasmc_bounded_2_geometry_msgs_msg_Pose* value)
{
    roswasmc_bounded_2_geometry_msgs_msg_Pose next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 56u || length > 56u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_geometry_msgs_msg_Pose_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSEWITHCOVARIANCE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSEWITHCOVARIANCE_0 != 0x8b04ce4fUL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSEWITHCOVARIANCE_1 != 0x5fe2758aUL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSEWITHCOVARIANCE_2 != 0x4458f4fcUL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSEWITHCOVARIANCE_3 != 0x608cb246UL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSEWITHCOVARIANCE_4 != 0x0362599dUL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSEWITHCOVARIANCE_5 != 0xc29f323dUL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSEWITHCOVARIANCE_6 != 0x9ec22b5eUL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSEWITHCOVARIANCE_7 != 0xae7cf81aUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSEWITHCOVARIANCE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSEWITHCOVARIANCE_0 0x8b04ce4fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSEWITHCOVARIANCE_1 0x5fe2758aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSEWITHCOVARIANCE_2 0x4458f4fcUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSEWITHCOVARIANCE_3 0x608cb246UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSEWITHCOVARIANCE_4 0x0362599dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSEWITHCOVARIANCE_5 0xc29f323dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSEWITHCOVARIANCE_6 0x9ec22b5eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSEWITHCOVARIANCE_7 0xae7cf81aUL

/** @brief Complete ROS2 geometry_msgs/msg/PoseWithCovariance value; no field projects away native data. */
typedef struct roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance
{
    /** @brief Declared field pose; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_geometry_msgs_msg_Pose pose;
    /** @brief Declared field covariance; canonical capacity is part of CODEC_IDENTITY. */
    double covariance[36];
} roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance;

# define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSEWITHCOVARIANCE_MAX_WIRE_BYTES 344u
# define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSEWITHCOVARIANCE_MIN_WIRE_BYTES 344u
# define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSEWITHCOVARIANCE_CODEC_IDENTITY "UWVMROS1_8eb3e25c45769eb29691011c05315ed50f2b97eff488f9e8ee2dc70bddab4dc2"

/** @brief Explicit declared-default initialization; ordinary C/C++ zero aggregates stay zero.
 * Nested/fixed elements are initialized independently; sequence lengths stay zero.
 * This initializer performs no I/O, registration, allocation or capability operation. */
static inline uint32_t roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance_default(roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance* value)
{
    roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance next = {0};
    if(!value)
        return UWVM_BOUNDED_INVALID;
    (void)roswasmc_bounded_2_geometry_msgs_msg_Pose_default(&next.pose);
    *value = next;
    return 0;
}

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance_valid(roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_geometry_msgs_msg_Pose_valid(&value->pose))
        return 0;
    {
        size_t i;
        for(i = 0; i < 36u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->covariance[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                    return 0;
            }
        }
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance_wire_size(roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_geometry_msgs_msg_Pose_wire_size(&value->pose);
    {
        size_t i;
        for(i = 0; i < 36u; ++i)
        {
            n += 8;
        }
    }
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance_write_fields(roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance const* value,
                                                                                        unsigned char* p,
                                                                                        size_t* offset)
{
    roswasmc_bounded_2_geometry_msgs_msg_Pose_write_fields(&value->pose, p, offset);
    {
        size_t i;
        for(i = 0; i < 36u; ++i)
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

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance_read_fields(unsigned char const* p,
                                                                                      size_t n,
                                                                                      size_t* offset,
                                                                                      roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance* value)
{
    if(!roswasmc_bounded_2_geometry_msgs_msg_Pose_read_fields(p, n, offset, &value->pose))
        return 0;
    {
        size_t i;
        for(i = 0; i < 36u; ++i)
        {
            if(*offset > n || n - *offset < 8)
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

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance_encode(roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance const* value,
                                                                                      void* output,
                                                                                      size_t capacity,
                                                                                      size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance_decode(void const* input,
                                                                                      size_t length,
                                                                                      roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance* value)
{
    roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 344u || length > 344u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
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
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TRANSFORMSTAMPED)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TRANSFORMSTAMPED_0 != 0x14da03f5UL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TRANSFORMSTAMPED_1 != 0xf4f8b6a3UL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TRANSFORMSTAMPED_2 != 0x2e4b0c8eUL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TRANSFORMSTAMPED_3 != 0x76c226e7UL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TRANSFORMSTAMPED_4 != 0x5ca2b3d9UL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TRANSFORMSTAMPED_5 != 0xfbd1e77eUL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TRANSFORMSTAMPED_6 != 0x3899ed91UL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TRANSFORMSTAMPED_7 != 0xe2bd1a7eUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TRANSFORMSTAMPED 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TRANSFORMSTAMPED_0 0x14da03f5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TRANSFORMSTAMPED_1 0xf4f8b6a3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TRANSFORMSTAMPED_2 0x2e4b0c8eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TRANSFORMSTAMPED_3 0x76c226e7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TRANSFORMSTAMPED_4 0x5ca2b3d9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TRANSFORMSTAMPED_5 0xfbd1e77eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TRANSFORMSTAMPED_6 0x3899ed91UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TRANSFORMSTAMPED_7 0xe2bd1a7eUL

/** @brief UTF-8 byte storage for geometry_msgs/msg/TransformStamped.child_frame_id; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[256];
} roswasmc_bounded_2_geometry_msgs_msg_TransformStamped_child_frame_id_text;

/** @brief Complete ROS2 geometry_msgs/msg/TransformStamped value; no field projects away native data. */
typedef struct roswasmc_bounded_2_geometry_msgs_msg_TransformStamped
{
    /** @brief Declared field header; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_std_msgs_msg_Header header;
    /** @brief Declared field child_frame_id; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_geometry_msgs_msg_TransformStamped_child_frame_id_text child_frame_id;
    /** @brief Declared field transform; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_geometry_msgs_msg_Transform transform;
} roswasmc_bounded_2_geometry_msgs_msg_TransformStamped;

# define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TRANSFORMSTAMPED_MAX_WIRE_BYTES 456u
# define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TRANSFORMSTAMPED_MIN_WIRE_BYTES 72u
# define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TRANSFORMSTAMPED_CODEC_IDENTITY "UWVMROS1_1cb6033612e0632fe87e6cf44bf5a899220370c372ba25b989a066171925ee7a"

/** @brief Explicit declared-default initialization; ordinary C/C++ zero aggregates stay zero.
 * Nested/fixed elements are initialized independently; sequence lengths stay zero.
 * This initializer performs no I/O, registration, allocation or capability operation. */
static inline uint32_t roswasmc_bounded_2_geometry_msgs_msg_TransformStamped_default(roswasmc_bounded_2_geometry_msgs_msg_TransformStamped* value)
{
    roswasmc_bounded_2_geometry_msgs_msg_TransformStamped next = {0};
    if(!value)
        return UWVM_BOUNDED_INVALID;
    (void)roswasmc_bounded_2_geometry_msgs_msg_Transform_default(&next.transform);
    *value = next;
    return 0;
}

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_geometry_msgs_msg_TransformStamped_valid(roswasmc_bounded_2_geometry_msgs_msg_TransformStamped const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_std_msgs_msg_Header_valid(&value->header))
        return 0;
    if(value->child_frame_id.size > 256u || !uwvm_bounded_utf8(value->child_frame_id.data, value->child_frame_id.size))
        return 0;
    if(!roswasmc_bounded_2_geometry_msgs_msg_Transform_valid(&value->transform))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_geometry_msgs_msg_TransformStamped_wire_size(roswasmc_bounded_2_geometry_msgs_msg_TransformStamped const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_std_msgs_msg_Header_wire_size(&value->header);
    n += 4 + value->child_frame_id.size;
    n += roswasmc_bounded_2_geometry_msgs_msg_Transform_wire_size(&value->transform);
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_geometry_msgs_msg_TransformStamped_write_fields(roswasmc_bounded_2_geometry_msgs_msg_TransformStamped const* value,
                                                                                      unsigned char* p,
                                                                                      size_t* offset)
{
    roswasmc_bounded_2_std_msgs_msg_Header_write_fields(&value->header, p, offset);
    uwvm_bounded_put(p + *offset, value->child_frame_id.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->child_frame_id.data, value->child_frame_id.size);
    *offset += value->child_frame_id.size;
    roswasmc_bounded_2_geometry_msgs_msg_Transform_write_fields(&value->transform, p, offset);
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_geometry_msgs_msg_TransformStamped_read_fields(unsigned char const* p,
                                                                                    size_t n,
                                                                                    size_t* offset,
                                                                                    roswasmc_bounded_2_geometry_msgs_msg_TransformStamped* value)
{
    if(!roswasmc_bounded_2_std_msgs_msg_Header_read_fields(p, n, offset, &value->header))
        return 0;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->child_frame_id.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->child_frame_id.size > 256u || value->child_frame_id.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->child_frame_id.data, p + *offset, value->child_frame_id.size);
    *offset += value->child_frame_id.size;
    if(!roswasmc_bounded_2_geometry_msgs_msg_Transform_read_fields(p, n, offset, &value->transform))
        return 0;
    return roswasmc_bounded_2_geometry_msgs_msg_TransformStamped_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_geometry_msgs_msg_TransformStamped_encode(roswasmc_bounded_2_geometry_msgs_msg_TransformStamped const* value,
                                                                                    void* output,
                                                                                    size_t capacity,
                                                                                    size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_geometry_msgs_msg_TransformStamped_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_geometry_msgs_msg_TransformStamped_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_geometry_msgs_msg_TransformStamped_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_geometry_msgs_msg_TransformStamped_decode(void const* input, size_t length, roswasmc_bounded_2_geometry_msgs_msg_TransformStamped* value)
{
    roswasmc_bounded_2_geometry_msgs_msg_TransformStamped next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 72u || length > 456u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_geometry_msgs_msg_TransformStamped_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
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
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWISTSTAMPED)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWISTSTAMPED_0 != 0xd748cabbUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWISTSTAMPED_1 != 0x1a79b1c0UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWISTSTAMPED_2 != 0x749bbac5UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWISTSTAMPED_3 != 0xfd198407UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWISTSTAMPED_4 != 0xb6a2bf54UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWISTSTAMPED_5 != 0x02a5435fUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWISTSTAMPED_6 != 0x5e3f2640UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWISTSTAMPED_7 != 0xe657d9f5UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWISTSTAMPED 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWISTSTAMPED_0 0xd748cabbUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWISTSTAMPED_1 0x1a79b1c0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWISTSTAMPED_2 0x749bbac5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWISTSTAMPED_3 0xfd198407UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWISTSTAMPED_4 0xb6a2bf54UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWISTSTAMPED_5 0x02a5435fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWISTSTAMPED_6 0x5e3f2640UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWISTSTAMPED_7 0xe657d9f5UL

/** @brief Complete ROS2 geometry_msgs/msg/TwistStamped value; no field projects away native data. */
typedef struct roswasmc_bounded_2_geometry_msgs_msg_TwistStamped
{
    /** @brief Declared field header; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_std_msgs_msg_Header header;
    /** @brief Declared field twist; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_geometry_msgs_msg_Twist twist;
} roswasmc_bounded_2_geometry_msgs_msg_TwistStamped;

# define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWISTSTAMPED_MAX_WIRE_BYTES 188u
# define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWISTSTAMPED_MIN_WIRE_BYTES 60u
# define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWISTSTAMPED_CODEC_IDENTITY "UWVMROS1_7448b885388ff3454de1a35b8c5c895ee58b791267b435df1e4cf7c1eee0f573"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_geometry_msgs_msg_TwistStamped_valid(roswasmc_bounded_2_geometry_msgs_msg_TwistStamped const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_std_msgs_msg_Header_valid(&value->header))
        return 0;
    if(!roswasmc_bounded_2_geometry_msgs_msg_Twist_valid(&value->twist))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_geometry_msgs_msg_TwistStamped_wire_size(roswasmc_bounded_2_geometry_msgs_msg_TwistStamped const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_std_msgs_msg_Header_wire_size(&value->header);
    n += roswasmc_bounded_2_geometry_msgs_msg_Twist_wire_size(&value->twist);
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_geometry_msgs_msg_TwistStamped_write_fields(roswasmc_bounded_2_geometry_msgs_msg_TwistStamped const* value,
                                                                                  unsigned char* p,
                                                                                  size_t* offset)
{
    roswasmc_bounded_2_std_msgs_msg_Header_write_fields(&value->header, p, offset);
    roswasmc_bounded_2_geometry_msgs_msg_Twist_write_fields(&value->twist, p, offset);
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_geometry_msgs_msg_TwistStamped_read_fields(unsigned char const* p,
                                                                                size_t n,
                                                                                size_t* offset,
                                                                                roswasmc_bounded_2_geometry_msgs_msg_TwistStamped* value)
{
    if(!roswasmc_bounded_2_std_msgs_msg_Header_read_fields(p, n, offset, &value->header))
        return 0;
    if(!roswasmc_bounded_2_geometry_msgs_msg_Twist_read_fields(p, n, offset, &value->twist))
        return 0;
    return roswasmc_bounded_2_geometry_msgs_msg_TwistStamped_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_geometry_msgs_msg_TwistStamped_encode(roswasmc_bounded_2_geometry_msgs_msg_TwistStamped const* value,
                                                                                void* output,
                                                                                size_t capacity,
                                                                                size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_geometry_msgs_msg_TwistStamped_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_geometry_msgs_msg_TwistStamped_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_geometry_msgs_msg_TwistStamped_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_geometry_msgs_msg_TwistStamped_decode(void const* input, size_t length, roswasmc_bounded_2_geometry_msgs_msg_TwistStamped* value)
{
    roswasmc_bounded_2_geometry_msgs_msg_TwistStamped next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 60u || length > 188u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_geometry_msgs_msg_TwistStamped_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWISTWITHCOVARIANCE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWISTWITHCOVARIANCE_0 != 0xe38ccb25UL ||                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWISTWITHCOVARIANCE_1 != 0xa3e366e9UL ||                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWISTWITHCOVARIANCE_2 != 0x9f6666a5UL ||                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWISTWITHCOVARIANCE_3 != 0x236f66f7UL ||                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWISTWITHCOVARIANCE_4 != 0xe8116e4dUL ||                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWISTWITHCOVARIANCE_5 != 0x0c8150b5UL ||                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWISTWITHCOVARIANCE_6 != 0x8f8ad0b3UL ||                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWISTWITHCOVARIANCE_7 != 0x06187d38UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWISTWITHCOVARIANCE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWISTWITHCOVARIANCE_0 0xe38ccb25UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWISTWITHCOVARIANCE_1 0xa3e366e9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWISTWITHCOVARIANCE_2 0x9f6666a5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWISTWITHCOVARIANCE_3 0x236f66f7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWISTWITHCOVARIANCE_4 0xe8116e4dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWISTWITHCOVARIANCE_5 0x0c8150b5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWISTWITHCOVARIANCE_6 0x8f8ad0b3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWISTWITHCOVARIANCE_7 0x06187d38UL

/** @brief Complete ROS2 geometry_msgs/msg/TwistWithCovariance value; no field projects away native data. */
typedef struct roswasmc_bounded_2_geometry_msgs_msg_TwistWithCovariance
{
    /** @brief Declared field twist; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_geometry_msgs_msg_Twist twist;
    /** @brief Declared field covariance; canonical capacity is part of CODEC_IDENTITY. */
    double covariance[36];
} roswasmc_bounded_2_geometry_msgs_msg_TwistWithCovariance;

# define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWISTWITHCOVARIANCE_MAX_WIRE_BYTES 336u
# define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWISTWITHCOVARIANCE_MIN_WIRE_BYTES 336u
# define ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWISTWITHCOVARIANCE_CODEC_IDENTITY "UWVMROS1_96c9fddad7b7c240e850d8c27ddb5f8343764cac791ef9e210196f7941aaf404"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_geometry_msgs_msg_TwistWithCovariance_valid(roswasmc_bounded_2_geometry_msgs_msg_TwistWithCovariance const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_geometry_msgs_msg_Twist_valid(&value->twist))
        return 0;
    {
        size_t i;
        for(i = 0; i < 36u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->covariance[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                    return 0;
            }
        }
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_geometry_msgs_msg_TwistWithCovariance_wire_size(roswasmc_bounded_2_geometry_msgs_msg_TwistWithCovariance const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_geometry_msgs_msg_Twist_wire_size(&value->twist);
    {
        size_t i;
        for(i = 0; i < 36u; ++i)
        {
            n += 8;
        }
    }
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_geometry_msgs_msg_TwistWithCovariance_write_fields(roswasmc_bounded_2_geometry_msgs_msg_TwistWithCovariance const* value,
                                                                                         unsigned char* p,
                                                                                         size_t* offset)
{
    roswasmc_bounded_2_geometry_msgs_msg_Twist_write_fields(&value->twist, p, offset);
    {
        size_t i;
        for(i = 0; i < 36u; ++i)
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

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_geometry_msgs_msg_TwistWithCovariance_read_fields(unsigned char const* p,
                                                                                       size_t n,
                                                                                       size_t* offset,
                                                                                       roswasmc_bounded_2_geometry_msgs_msg_TwistWithCovariance* value)
{
    if(!roswasmc_bounded_2_geometry_msgs_msg_Twist_read_fields(p, n, offset, &value->twist))
        return 0;
    {
        size_t i;
        for(i = 0; i < 36u; ++i)
        {
            if(*offset > n || n - *offset < 8)
                return 0;
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->covariance[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    return roswasmc_bounded_2_geometry_msgs_msg_TwistWithCovariance_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_geometry_msgs_msg_TwistWithCovariance_encode(roswasmc_bounded_2_geometry_msgs_msg_TwistWithCovariance const* value,
                                                                                       void* output,
                                                                                       size_t capacity,
                                                                                       size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_geometry_msgs_msg_TwistWithCovariance_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_geometry_msgs_msg_TwistWithCovariance_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_geometry_msgs_msg_TwistWithCovariance_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_2_geometry_msgs_msg_TwistWithCovariance_decode(void const* input,
                                                                                       size_t length,
                                                                                       roswasmc_bounded_2_geometry_msgs_msg_TwistWithCovariance* value)
{
    roswasmc_bounded_2_geometry_msgs_msg_TwistWithCovariance next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 336u || length > 336u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_geometry_msgs_msg_TwistWithCovariance_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_NAV_MSGS_MSG_ODOMETRY)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_NAV_MSGS_MSG_ODOMETRY_0 != 0xa335da1eUL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_NAV_MSGS_MSG_ODOMETRY_1 != 0x36da9d8aUL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_NAV_MSGS_MSG_ODOMETRY_2 != 0x0658d056UL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_NAV_MSGS_MSG_ODOMETRY_3 != 0x6c61be92UL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_NAV_MSGS_MSG_ODOMETRY_4 != 0xd252b0dcUL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_NAV_MSGS_MSG_ODOMETRY_5 != 0x476e77c7UL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_NAV_MSGS_MSG_ODOMETRY_6 != 0x1d968071UL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_NAV_MSGS_MSG_ODOMETRY_7 != 0x7819e6b2UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_NAV_MSGS_MSG_ODOMETRY 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_NAV_MSGS_MSG_ODOMETRY_0 0xa335da1eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_NAV_MSGS_MSG_ODOMETRY_1 0x36da9d8aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_NAV_MSGS_MSG_ODOMETRY_2 0x0658d056UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_NAV_MSGS_MSG_ODOMETRY_3 0x6c61be92UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_NAV_MSGS_MSG_ODOMETRY_4 0xd252b0dcUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_NAV_MSGS_MSG_ODOMETRY_5 0x476e77c7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_NAV_MSGS_MSG_ODOMETRY_6 0x1d968071UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_NAV_MSGS_MSG_ODOMETRY_7 0x7819e6b2UL

/** @brief UTF-8 byte storage for nav_msgs/msg/Odometry.child_frame_id; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[256];
} roswasmc_bounded_2_nav_msgs_msg_Odometry_child_frame_id_text;

/** @brief Complete ROS2 nav_msgs/msg/Odometry value; no field projects away native data. */
typedef struct roswasmc_bounded_2_nav_msgs_msg_Odometry
{
    /** @brief Declared field header; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_std_msgs_msg_Header header;
    /** @brief Declared field child_frame_id; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_nav_msgs_msg_Odometry_child_frame_id_text child_frame_id;
    /** @brief Declared field pose; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance pose;
    /** @brief Declared field twist; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_geometry_msgs_msg_TwistWithCovariance twist;
} roswasmc_bounded_2_nav_msgs_msg_Odometry;

# define ROSWASMC_BOUNDED_2_NAV_MSGS_MSG_ODOMETRY_MAX_WIRE_BYTES 1080u
# define ROSWASMC_BOUNDED_2_NAV_MSGS_MSG_ODOMETRY_MIN_WIRE_BYTES 696u
# define ROSWASMC_BOUNDED_2_NAV_MSGS_MSG_ODOMETRY_CODEC_IDENTITY "UWVMROS1_4eb9aa4edb3d288080deaae0326c26a75923e69d40c9b10219baf6d441ea8111"

/** @brief Explicit declared-default initialization; ordinary C/C++ zero aggregates stay zero.
 * Nested/fixed elements are initialized independently; sequence lengths stay zero.
 * This initializer performs no I/O, registration, allocation or capability operation. */
static inline uint32_t roswasmc_bounded_2_nav_msgs_msg_Odometry_default(roswasmc_bounded_2_nav_msgs_msg_Odometry* value)
{
    roswasmc_bounded_2_nav_msgs_msg_Odometry next = {0};
    if(!value)
        return UWVM_BOUNDED_INVALID;
    (void)roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance_default(&next.pose);
    *value = next;
    return 0;
}

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_nav_msgs_msg_Odometry_valid(roswasmc_bounded_2_nav_msgs_msg_Odometry const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_std_msgs_msg_Header_valid(&value->header))
        return 0;
    if(value->child_frame_id.size > 256u || !uwvm_bounded_utf8(value->child_frame_id.data, value->child_frame_id.size))
        return 0;
    if(!roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance_valid(&value->pose))
        return 0;
    if(!roswasmc_bounded_2_geometry_msgs_msg_TwistWithCovariance_valid(&value->twist))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_nav_msgs_msg_Odometry_wire_size(roswasmc_bounded_2_nav_msgs_msg_Odometry const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_std_msgs_msg_Header_wire_size(&value->header);
    n += 4 + value->child_frame_id.size;
    n += roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance_wire_size(&value->pose);
    n += roswasmc_bounded_2_geometry_msgs_msg_TwistWithCovariance_wire_size(&value->twist);
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_nav_msgs_msg_Odometry_write_fields(roswasmc_bounded_2_nav_msgs_msg_Odometry const* value, unsigned char* p, size_t* offset)
{
    roswasmc_bounded_2_std_msgs_msg_Header_write_fields(&value->header, p, offset);
    uwvm_bounded_put(p + *offset, value->child_frame_id.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->child_frame_id.data, value->child_frame_id.size);
    *offset += value->child_frame_id.size;
    roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance_write_fields(&value->pose, p, offset);
    roswasmc_bounded_2_geometry_msgs_msg_TwistWithCovariance_write_fields(&value->twist, p, offset);
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int
    roswasmc_bounded_2_nav_msgs_msg_Odometry_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_2_nav_msgs_msg_Odometry* value)
{
    if(!roswasmc_bounded_2_std_msgs_msg_Header_read_fields(p, n, offset, &value->header))
        return 0;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->child_frame_id.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->child_frame_id.size > 256u || value->child_frame_id.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->child_frame_id.data, p + *offset, value->child_frame_id.size);
    *offset += value->child_frame_id.size;
    if(!roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance_read_fields(p, n, offset, &value->pose))
        return 0;
    if(!roswasmc_bounded_2_geometry_msgs_msg_TwistWithCovariance_read_fields(p, n, offset, &value->twist))
        return 0;
    return roswasmc_bounded_2_nav_msgs_msg_Odometry_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_nav_msgs_msg_Odometry_encode(roswasmc_bounded_2_nav_msgs_msg_Odometry const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_nav_msgs_msg_Odometry_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_nav_msgs_msg_Odometry_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_nav_msgs_msg_Odometry_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_2_nav_msgs_msg_Odometry_decode(void const* input, size_t length, roswasmc_bounded_2_nav_msgs_msg_Odometry* value)
{
    roswasmc_bounded_2_nav_msgs_msg_Odometry next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 696u || length > 1080u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_nav_msgs_msg_Odometry_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_BATTERYSTATE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_BATTERYSTATE_0 != 0x4c38b51bUL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_BATTERYSTATE_1 != 0xdcbf2377UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_BATTERYSTATE_2 != 0x85b080a6UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_BATTERYSTATE_3 != 0xa0198a71UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_BATTERYSTATE_4 != 0x982a13e4UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_BATTERYSTATE_5 != 0xfd94ae8aUL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_BATTERYSTATE_6 != 0xcb52e477UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_BATTERYSTATE_7 != 0x460c8d64UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_BATTERYSTATE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_BATTERYSTATE_0 0x4c38b51bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_BATTERYSTATE_1 0xdcbf2377UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_BATTERYSTATE_2 0x85b080a6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_BATTERYSTATE_3 0xa0198a71UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_BATTERYSTATE_4 0x982a13e4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_BATTERYSTATE_5 0xfd94ae8aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_BATTERYSTATE_6 0xcb52e477UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_BATTERYSTATE_7 0x460c8d64UL

/** @brief At most16 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    float data[16];
} roswasmc_bounded_2_sensor_msgs_msg_BatteryState_cell_voltage_sequence;

/** @brief At most16 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    float data[16];
} roswasmc_bounded_2_sensor_msgs_msg_BatteryState_cell_temperature_sequence;

/** @brief UTF-8 byte storage for sensor_msgs/msg/BatteryState.location; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[256];
} roswasmc_bounded_2_sensor_msgs_msg_BatteryState_location_text;

/** @brief UTF-8 byte storage for sensor_msgs/msg/BatteryState.serial_number; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[256];
} roswasmc_bounded_2_sensor_msgs_msg_BatteryState_serial_number_text;

/** @brief Complete ROS2 sensor_msgs/msg/BatteryState value; no field projects away native data. */
typedef struct roswasmc_bounded_2_sensor_msgs_msg_BatteryState
{
    /** @brief Declared field header; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_std_msgs_msg_Header header;
    /** @brief Declared field voltage; canonical capacity is part of CODEC_IDENTITY. */
    float voltage;
    /** @brief Declared field temperature; canonical capacity is part of CODEC_IDENTITY. */
    float temperature;
    /** @brief Declared field current; canonical capacity is part of CODEC_IDENTITY. */
    float current;
    /** @brief Declared field charge; canonical capacity is part of CODEC_IDENTITY. */
    float charge;
    /** @brief Declared field capacity; canonical capacity is part of CODEC_IDENTITY. */
    float capacity;
    /** @brief Declared field design_capacity; canonical capacity is part of CODEC_IDENTITY. */
    float design_capacity;
    /** @brief Declared field percentage; canonical capacity is part of CODEC_IDENTITY. */
    float percentage;
    /** @brief Declared field power_supply_status; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t power_supply_status;
    /** @brief Declared field power_supply_health; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t power_supply_health;
    /** @brief Declared field power_supply_technology; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t power_supply_technology;
    /** @brief Declared field present; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t present;
    /** @brief Declared field cell_voltage; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_sensor_msgs_msg_BatteryState_cell_voltage_sequence cell_voltage;
    /** @brief Declared field cell_temperature; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_sensor_msgs_msg_BatteryState_cell_temperature_sequence cell_temperature;
    /** @brief Declared field location; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_sensor_msgs_msg_BatteryState_location_text location;
    /** @brief Declared field serial_number; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_sensor_msgs_msg_BatteryState_serial_number_text serial_number;
} roswasmc_bounded_2_sensor_msgs_msg_BatteryState;

# define ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_BATTERYSTATE_MAX_WIRE_BYTES 828u
# define ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_BATTERYSTATE_MIN_WIRE_BYTES 60u
# define ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_BATTERYSTATE_CODEC_IDENTITY "UWVMROS1_6fda2e20edad173e5f8977e1f82f525f36305371e3b1f5e7e628813b5121b11f"
/** @brief Original scalar constant POWER_SUPPLY_STATUS_UNKNOWN=0; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_BATTERYSTATE_POWER_SUPPLY_STATUS_UNKNOWN UINT32_C(0)
/** @brief Original scalar constant POWER_SUPPLY_STATUS_CHARGING=1; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_BATTERYSTATE_POWER_SUPPLY_STATUS_CHARGING UINT32_C(1)
/** @brief Original scalar constant POWER_SUPPLY_STATUS_DISCHARGING=2; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_BATTERYSTATE_POWER_SUPPLY_STATUS_DISCHARGING UINT32_C(2)
/** @brief Original scalar constant POWER_SUPPLY_STATUS_NOT_CHARGING=3; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_BATTERYSTATE_POWER_SUPPLY_STATUS_NOT_CHARGING UINT32_C(3)
/** @brief Original scalar constant POWER_SUPPLY_STATUS_FULL=4; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_BATTERYSTATE_POWER_SUPPLY_STATUS_FULL UINT32_C(4)
/** @brief Original scalar constant POWER_SUPPLY_HEALTH_UNKNOWN=0; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_BATTERYSTATE_POWER_SUPPLY_HEALTH_UNKNOWN UINT32_C(0)
/** @brief Original scalar constant POWER_SUPPLY_HEALTH_GOOD=1; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_BATTERYSTATE_POWER_SUPPLY_HEALTH_GOOD UINT32_C(1)
/** @brief Original scalar constant POWER_SUPPLY_HEALTH_OVERHEAT=2; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_BATTERYSTATE_POWER_SUPPLY_HEALTH_OVERHEAT UINT32_C(2)
/** @brief Original scalar constant POWER_SUPPLY_HEALTH_DEAD=3; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_BATTERYSTATE_POWER_SUPPLY_HEALTH_DEAD UINT32_C(3)
/** @brief Original scalar constant POWER_SUPPLY_HEALTH_OVERVOLTAGE=4; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_BATTERYSTATE_POWER_SUPPLY_HEALTH_OVERVOLTAGE UINT32_C(4)
/** @brief Original scalar constant POWER_SUPPLY_HEALTH_UNSPEC_FAILURE=5; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_BATTERYSTATE_POWER_SUPPLY_HEALTH_UNSPEC_FAILURE UINT32_C(5)
/** @brief Original scalar constant POWER_SUPPLY_HEALTH_COLD=6; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_BATTERYSTATE_POWER_SUPPLY_HEALTH_COLD UINT32_C(6)
/** @brief Original scalar constant POWER_SUPPLY_HEALTH_WATCHDOG_TIMER_EXPIRE=7; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_BATTERYSTATE_POWER_SUPPLY_HEALTH_WATCHDOG_TIMER_EXPIRE UINT32_C(7)
/** @brief Original scalar constant POWER_SUPPLY_HEALTH_SAFETY_TIMER_EXPIRE=8; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_BATTERYSTATE_POWER_SUPPLY_HEALTH_SAFETY_TIMER_EXPIRE UINT32_C(8)
/** @brief Original scalar constant POWER_SUPPLY_TECHNOLOGY_UNKNOWN=0; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_BATTERYSTATE_POWER_SUPPLY_TECHNOLOGY_UNKNOWN UINT32_C(0)
/** @brief Original scalar constant POWER_SUPPLY_TECHNOLOGY_NIMH=1; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_BATTERYSTATE_POWER_SUPPLY_TECHNOLOGY_NIMH UINT32_C(1)
/** @brief Original scalar constant POWER_SUPPLY_TECHNOLOGY_LION=2; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_BATTERYSTATE_POWER_SUPPLY_TECHNOLOGY_LION UINT32_C(2)
/** @brief Original scalar constant POWER_SUPPLY_TECHNOLOGY_LIPO=3; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_BATTERYSTATE_POWER_SUPPLY_TECHNOLOGY_LIPO UINT32_C(3)
/** @brief Original scalar constant POWER_SUPPLY_TECHNOLOGY_LIFE=4; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_BATTERYSTATE_POWER_SUPPLY_TECHNOLOGY_LIFE UINT32_C(4)
/** @brief Original scalar constant POWER_SUPPLY_TECHNOLOGY_NICD=5; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_BATTERYSTATE_POWER_SUPPLY_TECHNOLOGY_NICD UINT32_C(5)
/** @brief Original scalar constant POWER_SUPPLY_TECHNOLOGY_LIMN=6; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_BATTERYSTATE_POWER_SUPPLY_TECHNOLOGY_LIMN UINT32_C(6)

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_sensor_msgs_msg_BatteryState_valid(roswasmc_bounded_2_sensor_msgs_msg_BatteryState const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_std_msgs_msg_Header_valid(&value->header))
        return 0;
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->voltage, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->temperature, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->current, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->charge, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->capacity, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->design_capacity, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->percentage, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    if(value->present > 1)
        return 0;
    if(value->cell_voltage.size > 16u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->cell_voltage.size; ++i)
        {
            {
                uint32_t bits;
                uwvm_bounded_copy(&bits, &value->cell_voltage.data[i], 4);
                if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
                    return 0;
            }
        }
    }
    if(value->cell_temperature.size > 16u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->cell_temperature.size; ++i)
        {
            {
                uint32_t bits;
                uwvm_bounded_copy(&bits, &value->cell_temperature.data[i], 4);
                if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
                    return 0;
            }
        }
    }
    if(value->location.size > 256u || !uwvm_bounded_utf8(value->location.data, value->location.size))
        return 0;
    if(value->serial_number.size > 256u || !uwvm_bounded_utf8(value->serial_number.data, value->serial_number.size))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_sensor_msgs_msg_BatteryState_wire_size(roswasmc_bounded_2_sensor_msgs_msg_BatteryState const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_std_msgs_msg_Header_wire_size(&value->header);
    n += 4;
    n += 4;
    n += 4;
    n += 4;
    n += 4;
    n += 4;
    n += 4;
    n += 1;
    n += 1;
    n += 1;
    n += 1;
    n += 4;
    if(value->cell_voltage.size > 16u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->cell_voltage.size; ++i)
        {
            n += 4;
        }
    }
    n += 4;
    if(value->cell_temperature.size > 16u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->cell_temperature.size; ++i)
        {
            n += 4;
        }
    }
    n += 4 + value->location.size;
    n += 4 + value->serial_number.size;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_sensor_msgs_msg_BatteryState_write_fields(roswasmc_bounded_2_sensor_msgs_msg_BatteryState const* value, unsigned char* p, size_t* offset)
{
    roswasmc_bounded_2_std_msgs_msg_Header_write_fields(&value->header, p, offset);
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->voltage, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->temperature, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->current, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->charge, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->capacity, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->design_capacity, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->percentage, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    uwvm_bounded_put(p + *offset, (uint64_t)value->power_supply_status, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->power_supply_health, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->power_supply_technology, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->present, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, value->cell_voltage.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->cell_voltage.size; ++i)
        {
            {
                uint32_t bits;
                uwvm_bounded_copy(&bits, &value->cell_voltage.data[i], 4);
                uwvm_bounded_put(p + *offset, bits, 4);
                *offset += 4;
            }
        }
    }
    uwvm_bounded_put(p + *offset, value->cell_temperature.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->cell_temperature.size; ++i)
        {
            {
                uint32_t bits;
                uwvm_bounded_copy(&bits, &value->cell_temperature.data[i], 4);
                uwvm_bounded_put(p + *offset, bits, 4);
                *offset += 4;
            }
        }
    }
    uwvm_bounded_put(p + *offset, value->location.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->location.data, value->location.size);
    *offset += value->location.size;
    uwvm_bounded_put(p + *offset, value->serial_number.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->serial_number.data, value->serial_number.size);
    *offset += value->serial_number.size;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_sensor_msgs_msg_BatteryState_read_fields(unsigned char const* p,
                                                                              size_t n,
                                                                              size_t* offset,
                                                                              roswasmc_bounded_2_sensor_msgs_msg_BatteryState* value)
{
    if(!roswasmc_bounded_2_std_msgs_msg_Header_read_fields(p, n, offset, &value->header))
        return 0;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->voltage, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->temperature, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->current, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->charge, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->capacity, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->design_capacity, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->percentage, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->power_supply_status, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->power_supply_health, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->power_supply_technology, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->present, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->cell_voltage.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->cell_voltage.size > 16u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->cell_voltage.size; ++i)
        {
            if(*offset > n || n - *offset < 4)
                return 0;
            {
                uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
                uwvm_bounded_copy(&value->cell_voltage.data[i], &bits, 4);
            }
            *offset += 4;
        }
    }
    if(*offset > n || n - *offset < 4)
        return 0;
    value->cell_temperature.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->cell_temperature.size > 16u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->cell_temperature.size; ++i)
        {
            if(*offset > n || n - *offset < 4)
                return 0;
            {
                uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
                uwvm_bounded_copy(&value->cell_temperature.data[i], &bits, 4);
            }
            *offset += 4;
        }
    }
    if(*offset > n || n - *offset < 4)
        return 0;
    value->location.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->location.size > 256u || value->location.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->location.data, p + *offset, value->location.size);
    *offset += value->location.size;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->serial_number.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->serial_number.size > 256u || value->serial_number.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->serial_number.data, p + *offset, value->serial_number.size);
    *offset += value->serial_number.size;
    return roswasmc_bounded_2_sensor_msgs_msg_BatteryState_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_sensor_msgs_msg_BatteryState_encode(roswasmc_bounded_2_sensor_msgs_msg_BatteryState const* value,
                                                                              void* output,
                                                                              size_t capacity,
                                                                              size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_sensor_msgs_msg_BatteryState_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_sensor_msgs_msg_BatteryState_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_sensor_msgs_msg_BatteryState_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_sensor_msgs_msg_BatteryState_decode(void const* input, size_t length, roswasmc_bounded_2_sensor_msgs_msg_BatteryState* value)
{
    roswasmc_bounded_2_sensor_msgs_msg_BatteryState next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 60u || length > 828u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_sensor_msgs_msg_BatteryState_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_IMU)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_IMU_0 != 0x01213fd1UL ||                                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_IMU_1 != 0x6b47cd79UL ||                                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_IMU_2 != 0x243a5fcbUL ||                                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_IMU_3 != 0x2a015407UL ||                                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_IMU_4 != 0x664e5e17UL ||                                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_IMU_5 != 0x43756f0eUL ||                                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_IMU_6 != 0x5bffce0dUL ||                                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_IMU_7 != 0x6bd8f30eUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_IMU 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_IMU_0 0x01213fd1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_IMU_1 0x6b47cd79UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_IMU_2 0x243a5fcbUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_IMU_3 0x2a015407UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_IMU_4 0x664e5e17UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_IMU_5 0x43756f0eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_IMU_6 0x5bffce0dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_IMU_7 0x6bd8f30eUL

/** @brief Complete ROS2 sensor_msgs/msg/Imu value; no field projects away native data. */
typedef struct roswasmc_bounded_2_sensor_msgs_msg_Imu
{
    /** @brief Declared field header; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_std_msgs_msg_Header header;
    /** @brief Declared field orientation; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_geometry_msgs_msg_Quaternion orientation;
    /** @brief Declared field orientation_covariance; canonical capacity is part of CODEC_IDENTITY. */
    double orientation_covariance[9];
    /** @brief Declared field angular_velocity; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_geometry_msgs_msg_Vector3 angular_velocity;
    /** @brief Declared field angular_velocity_covariance; canonical capacity is part of CODEC_IDENTITY. */
    double angular_velocity_covariance[9];
    /** @brief Declared field linear_acceleration; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_geometry_msgs_msg_Vector3 linear_acceleration;
    /** @brief Declared field linear_acceleration_covariance; canonical capacity is part of CODEC_IDENTITY. */
    double linear_acceleration_covariance[9];
} roswasmc_bounded_2_sensor_msgs_msg_Imu;

# define ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_IMU_MAX_WIRE_BYTES 436u
# define ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_IMU_MIN_WIRE_BYTES 308u
# define ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_IMU_CODEC_IDENTITY "UWVMROS1_e38d1c936a2a4a870b2f069af8d1796f69e6ce7b8cae0a792925ed2f6c0cae1b"

/** @brief Explicit declared-default initialization; ordinary C/C++ zero aggregates stay zero.
 * Nested/fixed elements are initialized independently; sequence lengths stay zero.
 * This initializer performs no I/O, registration, allocation or capability operation. */
static inline uint32_t roswasmc_bounded_2_sensor_msgs_msg_Imu_default(roswasmc_bounded_2_sensor_msgs_msg_Imu* value)
{
    roswasmc_bounded_2_sensor_msgs_msg_Imu next = {0};
    if(!value)
        return UWVM_BOUNDED_INVALID;
    (void)roswasmc_bounded_2_geometry_msgs_msg_Quaternion_default(&next.orientation);
    *value = next;
    return 0;
}

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_sensor_msgs_msg_Imu_valid(roswasmc_bounded_2_sensor_msgs_msg_Imu const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_std_msgs_msg_Header_valid(&value->header))
        return 0;
    if(!roswasmc_bounded_2_geometry_msgs_msg_Quaternion_valid(&value->orientation))
        return 0;
    {
        size_t i;
        for(i = 0; i < 9u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->orientation_covariance[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                    return 0;
            }
        }
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_Vector3_valid(&value->angular_velocity))
        return 0;
    {
        size_t i;
        for(i = 0; i < 9u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->angular_velocity_covariance[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                    return 0;
            }
        }
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_Vector3_valid(&value->linear_acceleration))
        return 0;
    {
        size_t i;
        for(i = 0; i < 9u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->linear_acceleration_covariance[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                    return 0;
            }
        }
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_sensor_msgs_msg_Imu_wire_size(roswasmc_bounded_2_sensor_msgs_msg_Imu const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_std_msgs_msg_Header_wire_size(&value->header);
    n += roswasmc_bounded_2_geometry_msgs_msg_Quaternion_wire_size(&value->orientation);
    {
        size_t i;
        for(i = 0; i < 9u; ++i)
        {
            n += 8;
        }
    }
    n += roswasmc_bounded_2_geometry_msgs_msg_Vector3_wire_size(&value->angular_velocity);
    {
        size_t i;
        for(i = 0; i < 9u; ++i)
        {
            n += 8;
        }
    }
    n += roswasmc_bounded_2_geometry_msgs_msg_Vector3_wire_size(&value->linear_acceleration);
    {
        size_t i;
        for(i = 0; i < 9u; ++i)
        {
            n += 8;
        }
    }
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_sensor_msgs_msg_Imu_write_fields(roswasmc_bounded_2_sensor_msgs_msg_Imu const* value, unsigned char* p, size_t* offset)
{
    roswasmc_bounded_2_std_msgs_msg_Header_write_fields(&value->header, p, offset);
    roswasmc_bounded_2_geometry_msgs_msg_Quaternion_write_fields(&value->orientation, p, offset);
    {
        size_t i;
        for(i = 0; i < 9u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->orientation_covariance[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
    roswasmc_bounded_2_geometry_msgs_msg_Vector3_write_fields(&value->angular_velocity, p, offset);
    {
        size_t i;
        for(i = 0; i < 9u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->angular_velocity_covariance[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
    roswasmc_bounded_2_geometry_msgs_msg_Vector3_write_fields(&value->linear_acceleration, p, offset);
    {
        size_t i;
        for(i = 0; i < 9u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->linear_acceleration_covariance[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int
    roswasmc_bounded_2_sensor_msgs_msg_Imu_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_2_sensor_msgs_msg_Imu* value)
{
    if(!roswasmc_bounded_2_std_msgs_msg_Header_read_fields(p, n, offset, &value->header))
        return 0;
    if(!roswasmc_bounded_2_geometry_msgs_msg_Quaternion_read_fields(p, n, offset, &value->orientation))
        return 0;
    {
        size_t i;
        for(i = 0; i < 9u; ++i)
        {
            if(*offset > n || n - *offset < 8)
                return 0;
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->orientation_covariance[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_Vector3_read_fields(p, n, offset, &value->angular_velocity))
        return 0;
    {
        size_t i;
        for(i = 0; i < 9u; ++i)
        {
            if(*offset > n || n - *offset < 8)
                return 0;
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->angular_velocity_covariance[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    if(!roswasmc_bounded_2_geometry_msgs_msg_Vector3_read_fields(p, n, offset, &value->linear_acceleration))
        return 0;
    {
        size_t i;
        for(i = 0; i < 9u; ++i)
        {
            if(*offset > n || n - *offset < 8)
                return 0;
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->linear_acceleration_covariance[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    return roswasmc_bounded_2_sensor_msgs_msg_Imu_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_sensor_msgs_msg_Imu_encode(roswasmc_bounded_2_sensor_msgs_msg_Imu const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_sensor_msgs_msg_Imu_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_sensor_msgs_msg_Imu_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_sensor_msgs_msg_Imu_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_2_sensor_msgs_msg_Imu_decode(void const* input, size_t length, roswasmc_bounded_2_sensor_msgs_msg_Imu* value)
{
    roswasmc_bounded_2_sensor_msgs_msg_Imu next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 308u || length > 436u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_sensor_msgs_msg_Imu_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_0 != 0x3e0020e1UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_1 != 0xcc34774bUL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_2 != 0x27bc7836UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_3 != 0xe7dd8dc0UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_4 != 0x08c18274UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_5 != 0xf1514556UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_6 != 0x24a5de78UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_7 != 0x9799f772UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_0 0x3e0020e1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_1 0xcc34774bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_2 0x27bc7836UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_3 0xe7dd8dc0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_4 0x08c18274UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_5 0xf1514556UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_6 0x24a5de78UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_7 0x9799f772UL

/** @brief UTF-8 byte storage for sensor_msgs/msg/JointState.name; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_sensor_msgs_msg_JointState_name_text;

/** @brief At most2 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_2_sensor_msgs_msg_JointState_name_text data[2];
} roswasmc_bounded_2_sensor_msgs_msg_JointState_name_sequence;

/** @brief At most2 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[2];
} roswasmc_bounded_2_sensor_msgs_msg_JointState_position_sequence;

/** @brief At most2 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[2];
} roswasmc_bounded_2_sensor_msgs_msg_JointState_velocity_sequence;

/** @brief At most2 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[2];
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

# define ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_MAX_WIRE_BYTES 468u
# define ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_MIN_WIRE_BYTES 28u
# define ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE_CODEC_IDENTITY "UWVMROS1_5c4d1ef0128c748e20f6b30c9c3bb5ef6e3c529a0b05b81764ac4774ce765bcf"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_sensor_msgs_msg_JointState_valid(roswasmc_bounded_2_sensor_msgs_msg_JointState const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_std_msgs_msg_Header_valid(&value->header))
        return 0;
    if(value->name.size > 2u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->name.size; ++i)
        {
            if(value->name.data[i].size > 128u || !uwvm_bounded_utf8(value->name.data[i].data, value->name.data[i].size))
                return 0;
        }
    }
    if(value->position.size > 2u)
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
    if(value->velocity.size > 2u)
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
    if(value->effort.size > 2u)
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
    if(value->name.size > 2u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->name.size; ++i)
        {
            n += 4 + value->name.data[i].size;
        }
    }
    n += 4;
    if(value->position.size > 2u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->position.size; ++i)
        {
            n += 8;
        }
    }
    n += 4;
    if(value->velocity.size > 2u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->velocity.size; ++i)
        {
            n += 8;
        }
    }
    n += 4;
    if(value->effort.size > 2u)
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
    if(value->name.size > 2u)
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
    if(value->position.size > 2u)
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
    if(value->velocity.size > 2u)
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
    if(value->effort.size > 2u)
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
    if(!value || (length && !input) || length < 28u || length > 468u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_sensor_msgs_msg_JointState_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_LASERSCAN)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_LASERSCAN_0 != 0x34aad837UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_LASERSCAN_1 != 0x31fcbc04UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_LASERSCAN_2 != 0x01154cf9UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_LASERSCAN_3 != 0xbe79cce4UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_LASERSCAN_4 != 0xa2a32ce9UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_LASERSCAN_5 != 0x47e8bcf7UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_LASERSCAN_6 != 0x8f9929cdUL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_LASERSCAN_7 != 0x54ec102cUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_LASERSCAN 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_LASERSCAN_0 0x34aad837UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_LASERSCAN_1 0x31fcbc04UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_LASERSCAN_2 0x01154cf9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_LASERSCAN_3 0xbe79cce4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_LASERSCAN_4 0xa2a32ce9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_LASERSCAN_5 0x47e8bcf7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_LASERSCAN_6 0x8f9929cdUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_LASERSCAN_7 0x54ec102cUL

/** @brief At most1024 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    float data[1024];
} roswasmc_bounded_2_sensor_msgs_msg_LaserScan_ranges_sequence;

/** @brief At most1024 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    float data[1024];
} roswasmc_bounded_2_sensor_msgs_msg_LaserScan_intensities_sequence;

/** @brief Complete ROS2 sensor_msgs/msg/LaserScan value; no field projects away native data. */
typedef struct roswasmc_bounded_2_sensor_msgs_msg_LaserScan
{
    /** @brief Declared field header; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_std_msgs_msg_Header header;
    /** @brief Declared field angle_min; canonical capacity is part of CODEC_IDENTITY. */
    float angle_min;
    /** @brief Declared field angle_max; canonical capacity is part of CODEC_IDENTITY. */
    float angle_max;
    /** @brief Declared field angle_increment; canonical capacity is part of CODEC_IDENTITY. */
    float angle_increment;
    /** @brief Declared field time_increment; canonical capacity is part of CODEC_IDENTITY. */
    float time_increment;
    /** @brief Declared field scan_time; canonical capacity is part of CODEC_IDENTITY. */
    float scan_time;
    /** @brief Declared field range_min; canonical capacity is part of CODEC_IDENTITY. */
    float range_min;
    /** @brief Declared field range_max; canonical capacity is part of CODEC_IDENTITY. */
    float range_max;
    /** @brief Declared field ranges; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_sensor_msgs_msg_LaserScan_ranges_sequence ranges;
    /** @brief Declared field intensities; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_sensor_msgs_msg_LaserScan_intensities_sequence intensities;
} roswasmc_bounded_2_sensor_msgs_msg_LaserScan;

# define ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_LASERSCAN_MAX_WIRE_BYTES 8368u
# define ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_LASERSCAN_MIN_WIRE_BYTES 48u
# define ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_LASERSCAN_CODEC_IDENTITY "UWVMROS1_89faa8e14fc7f79a62a576d35c0bb377caf0cbaef6a6f181a5af2da0ead6cce4"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_sensor_msgs_msg_LaserScan_valid(roswasmc_bounded_2_sensor_msgs_msg_LaserScan const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_std_msgs_msg_Header_valid(&value->header))
        return 0;
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->angle_min, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->angle_max, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->angle_increment, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->time_increment, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->scan_time, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->range_min, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->range_max, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    if(value->ranges.size > 1024u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->ranges.size; ++i)
        {
            {
                uint32_t bits;
                uwvm_bounded_copy(&bits, &value->ranges.data[i], 4);
                if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
                    return 0;
            }
        }
    }
    if(value->intensities.size > 1024u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->intensities.size; ++i)
        {
            {
                uint32_t bits;
                uwvm_bounded_copy(&bits, &value->intensities.data[i], 4);
                if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
                    return 0;
            }
        }
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_sensor_msgs_msg_LaserScan_wire_size(roswasmc_bounded_2_sensor_msgs_msg_LaserScan const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_std_msgs_msg_Header_wire_size(&value->header);
    n += 4;
    n += 4;
    n += 4;
    n += 4;
    n += 4;
    n += 4;
    n += 4;
    n += 4;
    if(value->ranges.size > 1024u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->ranges.size; ++i)
        {
            n += 4;
        }
    }
    n += 4;
    if(value->intensities.size > 1024u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->intensities.size; ++i)
        {
            n += 4;
        }
    }
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_sensor_msgs_msg_LaserScan_write_fields(roswasmc_bounded_2_sensor_msgs_msg_LaserScan const* value, unsigned char* p, size_t* offset)
{
    roswasmc_bounded_2_std_msgs_msg_Header_write_fields(&value->header, p, offset);
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->angle_min, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->angle_max, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->angle_increment, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->time_increment, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->scan_time, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->range_min, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->range_max, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    uwvm_bounded_put(p + *offset, value->ranges.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->ranges.size; ++i)
        {
            {
                uint32_t bits;
                uwvm_bounded_copy(&bits, &value->ranges.data[i], 4);
                uwvm_bounded_put(p + *offset, bits, 4);
                *offset += 4;
            }
        }
    }
    uwvm_bounded_put(p + *offset, value->intensities.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->intensities.size; ++i)
        {
            {
                uint32_t bits;
                uwvm_bounded_copy(&bits, &value->intensities.data[i], 4);
                uwvm_bounded_put(p + *offset, bits, 4);
                *offset += 4;
            }
        }
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_sensor_msgs_msg_LaserScan_read_fields(unsigned char const* p,
                                                                           size_t n,
                                                                           size_t* offset,
                                                                           roswasmc_bounded_2_sensor_msgs_msg_LaserScan* value)
{
    if(!roswasmc_bounded_2_std_msgs_msg_Header_read_fields(p, n, offset, &value->header))
        return 0;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->angle_min, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->angle_max, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->angle_increment, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->time_increment, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->scan_time, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->range_min, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->range_max, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->ranges.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->ranges.size > 1024u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->ranges.size; ++i)
        {
            if(*offset > n || n - *offset < 4)
                return 0;
            {
                uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
                uwvm_bounded_copy(&value->ranges.data[i], &bits, 4);
            }
            *offset += 4;
        }
    }
    if(*offset > n || n - *offset < 4)
        return 0;
    value->intensities.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->intensities.size > 1024u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->intensities.size; ++i)
        {
            if(*offset > n || n - *offset < 4)
                return 0;
            {
                uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
                uwvm_bounded_copy(&value->intensities.data[i], &bits, 4);
            }
            *offset += 4;
        }
    }
    return roswasmc_bounded_2_sensor_msgs_msg_LaserScan_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_sensor_msgs_msg_LaserScan_encode(roswasmc_bounded_2_sensor_msgs_msg_LaserScan const* value,
                                                                           void* output,
                                                                           size_t capacity,
                                                                           size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_sensor_msgs_msg_LaserScan_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_sensor_msgs_msg_LaserScan_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_sensor_msgs_msg_LaserScan_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_sensor_msgs_msg_LaserScan_decode(void const* input, size_t length, roswasmc_bounded_2_sensor_msgs_msg_LaserScan* value)
{
    roswasmc_bounded_2_sensor_msgs_msg_LaserScan next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 48u || length > 8368u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_sensor_msgs_msg_LaserScan_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_MAGNETICFIELD)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_MAGNETICFIELD_0 != 0xb14507c5UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_MAGNETICFIELD_1 != 0x1ef4807aUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_MAGNETICFIELD_2 != 0x6966cadcUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_MAGNETICFIELD_3 != 0xe7bc3655UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_MAGNETICFIELD_4 != 0x03fc6bbeUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_MAGNETICFIELD_5 != 0xc41602c9UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_MAGNETICFIELD_6 != 0xda4d61a6UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_MAGNETICFIELD_7 != 0x15092e74UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_MAGNETICFIELD 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_MAGNETICFIELD_0 0xb14507c5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_MAGNETICFIELD_1 0x1ef4807aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_MAGNETICFIELD_2 0x6966cadcUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_MAGNETICFIELD_3 0xe7bc3655UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_MAGNETICFIELD_4 0x03fc6bbeUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_MAGNETICFIELD_5 0xc41602c9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_MAGNETICFIELD_6 0xda4d61a6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_MAGNETICFIELD_7 0x15092e74UL

/** @brief Complete ROS2 sensor_msgs/msg/MagneticField value; no field projects away native data. */
typedef struct roswasmc_bounded_2_sensor_msgs_msg_MagneticField
{
    /** @brief Declared field header; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_std_msgs_msg_Header header;
    /** @brief Declared field magnetic_field; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_geometry_msgs_msg_Vector3 magnetic_field;
    /** @brief Declared field magnetic_field_covariance; canonical capacity is part of CODEC_IDENTITY. */
    double magnetic_field_covariance[9];
} roswasmc_bounded_2_sensor_msgs_msg_MagneticField;

# define ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_MAGNETICFIELD_MAX_WIRE_BYTES 236u
# define ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_MAGNETICFIELD_MIN_WIRE_BYTES 108u
# define ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_MAGNETICFIELD_CODEC_IDENTITY "UWVMROS1_56ae1437e0fbe7a6722ecf4795483d15f4c616e2e891372c30fa78f18be2cf8b"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_sensor_msgs_msg_MagneticField_valid(roswasmc_bounded_2_sensor_msgs_msg_MagneticField const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_std_msgs_msg_Header_valid(&value->header))
        return 0;
    if(!roswasmc_bounded_2_geometry_msgs_msg_Vector3_valid(&value->magnetic_field))
        return 0;
    {
        size_t i;
        for(i = 0; i < 9u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->magnetic_field_covariance[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                    return 0;
            }
        }
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_sensor_msgs_msg_MagneticField_wire_size(roswasmc_bounded_2_sensor_msgs_msg_MagneticField const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_std_msgs_msg_Header_wire_size(&value->header);
    n += roswasmc_bounded_2_geometry_msgs_msg_Vector3_wire_size(&value->magnetic_field);
    {
        size_t i;
        for(i = 0; i < 9u; ++i)
        {
            n += 8;
        }
    }
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_sensor_msgs_msg_MagneticField_write_fields(roswasmc_bounded_2_sensor_msgs_msg_MagneticField const* value,
                                                                                 unsigned char* p,
                                                                                 size_t* offset)
{
    roswasmc_bounded_2_std_msgs_msg_Header_write_fields(&value->header, p, offset);
    roswasmc_bounded_2_geometry_msgs_msg_Vector3_write_fields(&value->magnetic_field, p, offset);
    {
        size_t i;
        for(i = 0; i < 9u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->magnetic_field_covariance[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_sensor_msgs_msg_MagneticField_read_fields(unsigned char const* p,
                                                                               size_t n,
                                                                               size_t* offset,
                                                                               roswasmc_bounded_2_sensor_msgs_msg_MagneticField* value)
{
    if(!roswasmc_bounded_2_std_msgs_msg_Header_read_fields(p, n, offset, &value->header))
        return 0;
    if(!roswasmc_bounded_2_geometry_msgs_msg_Vector3_read_fields(p, n, offset, &value->magnetic_field))
        return 0;
    {
        size_t i;
        for(i = 0; i < 9u; ++i)
        {
            if(*offset > n || n - *offset < 8)
                return 0;
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->magnetic_field_covariance[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    return roswasmc_bounded_2_sensor_msgs_msg_MagneticField_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_sensor_msgs_msg_MagneticField_encode(roswasmc_bounded_2_sensor_msgs_msg_MagneticField const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_sensor_msgs_msg_MagneticField_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_sensor_msgs_msg_MagneticField_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_sensor_msgs_msg_MagneticField_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_sensor_msgs_msg_MagneticField_decode(void const* input, size_t length, roswasmc_bounded_2_sensor_msgs_msg_MagneticField* value)
{
    roswasmc_bounded_2_sensor_msgs_msg_MagneticField next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 108u || length > 236u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_sensor_msgs_msg_MagneticField_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_SETBOOL_REQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_SETBOOL_REQUEST_0 != 0xa9f6c5f5UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_SETBOOL_REQUEST_1 != 0xd633013aUL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_SETBOOL_REQUEST_2 != 0x8af9c96eUL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_SETBOOL_REQUEST_3 != 0xb38e9d36UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_SETBOOL_REQUEST_4 != 0x29b27784UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_SETBOOL_REQUEST_5 != 0xb4425d92UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_SETBOOL_REQUEST_6 != 0xdd0b4ed9UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_SETBOOL_REQUEST_7 != 0x7f8a77e7UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_SETBOOL_REQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_SETBOOL_REQUEST_0 0xa9f6c5f5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_SETBOOL_REQUEST_1 0xd633013aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_SETBOOL_REQUEST_2 0x8af9c96eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_SETBOOL_REQUEST_3 0xb38e9d36UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_SETBOOL_REQUEST_4 0x29b27784UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_SETBOOL_REQUEST_5 0xb4425d92UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_SETBOOL_REQUEST_6 0xdd0b4ed9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_SETBOOL_REQUEST_7 0x7f8a77e7UL

/** @brief Complete ROS2 std_srvs/srv/SetBool_Request value; no field projects away native data. */
typedef struct roswasmc_bounded_2_std_srvs_srv_SetBool_Request
{
    /** @brief Declared field data; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t data;
} roswasmc_bounded_2_std_srvs_srv_SetBool_Request;

# define ROSWASMC_BOUNDED_2_STD_SRVS_SRV_SETBOOL_REQUEST_MAX_WIRE_BYTES 1u
# define ROSWASMC_BOUNDED_2_STD_SRVS_SRV_SETBOOL_REQUEST_MIN_WIRE_BYTES 1u
# define ROSWASMC_BOUNDED_2_STD_SRVS_SRV_SETBOOL_REQUEST_CODEC_IDENTITY "UWVMROS1_2523e7915bb78fe01b68f2a856611b32a88f624a6e197a6ff312b613e8c65910"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_std_srvs_srv_SetBool_Request_valid(roswasmc_bounded_2_std_srvs_srv_SetBool_Request const* value)
{
    if(!value)
        return 0;
    if(value->data > 1)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_std_srvs_srv_SetBool_Request_wire_size(roswasmc_bounded_2_std_srvs_srv_SetBool_Request const* value)
{
    size_t n = 0;
    n += 1;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_std_srvs_srv_SetBool_Request_write_fields(roswasmc_bounded_2_std_srvs_srv_SetBool_Request const* value, unsigned char* p, size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->data, 1);
    *offset += 1;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_std_srvs_srv_SetBool_Request_read_fields(unsigned char const* p,
                                                                              size_t n,
                                                                              size_t* offset,
                                                                              roswasmc_bounded_2_std_srvs_srv_SetBool_Request* value)
{
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->data, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_2_std_srvs_srv_SetBool_Request_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_std_srvs_srv_SetBool_Request_encode(roswasmc_bounded_2_std_srvs_srv_SetBool_Request const* value,
                                                                              void* output,
                                                                              size_t capacity,
                                                                              size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_std_srvs_srv_SetBool_Request_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_std_srvs_srv_SetBool_Request_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_std_srvs_srv_SetBool_Request_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_std_srvs_srv_SetBool_Request_decode(void const* input, size_t length, roswasmc_bounded_2_std_srvs_srv_SetBool_Request* value)
{
    roswasmc_bounded_2_std_srvs_srv_SetBool_Request next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 1u || length > 1u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_std_srvs_srv_SetBool_Request_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_SETBOOL_RESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_SETBOOL_RESPONSE_0 != 0x9f49ad54UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_SETBOOL_RESPONSE_1 != 0x641aa898UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_SETBOOL_RESPONSE_2 != 0xa7c06a99UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_SETBOOL_RESPONSE_3 != 0xd600c710UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_SETBOOL_RESPONSE_4 != 0x34a252b7UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_SETBOOL_RESPONSE_5 != 0xd556e605UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_SETBOOL_RESPONSE_6 != 0x1c1aeb6eUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_SETBOOL_RESPONSE_7 != 0xe28981d4UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_SETBOOL_RESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_SETBOOL_RESPONSE_0 0x9f49ad54UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_SETBOOL_RESPONSE_1 0x641aa898UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_SETBOOL_RESPONSE_2 0xa7c06a99UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_SETBOOL_RESPONSE_3 0xd600c710UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_SETBOOL_RESPONSE_4 0x34a252b7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_SETBOOL_RESPONSE_5 0xd556e605UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_SETBOOL_RESPONSE_6 0x1c1aeb6eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_SETBOOL_RESPONSE_7 0xe28981d4UL

/** @brief UTF-8 byte storage for std_srvs/srv/SetBool_Response.message; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[256];
} roswasmc_bounded_2_std_srvs_srv_SetBool_Response_message_text;

/** @brief Complete ROS2 std_srvs/srv/SetBool_Response value; no field projects away native data. */
typedef struct roswasmc_bounded_2_std_srvs_srv_SetBool_Response
{
    /** @brief Declared field success; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t success;
    /** @brief Declared field message; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_std_srvs_srv_SetBool_Response_message_text message;
} roswasmc_bounded_2_std_srvs_srv_SetBool_Response;

# define ROSWASMC_BOUNDED_2_STD_SRVS_SRV_SETBOOL_RESPONSE_MAX_WIRE_BYTES 261u
# define ROSWASMC_BOUNDED_2_STD_SRVS_SRV_SETBOOL_RESPONSE_MIN_WIRE_BYTES 5u
# define ROSWASMC_BOUNDED_2_STD_SRVS_SRV_SETBOOL_RESPONSE_CODEC_IDENTITY "UWVMROS1_f2d46a8440538094221a151716d8ec44db02455f59845c50aaf4e7964c27ebe4"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_std_srvs_srv_SetBool_Response_valid(roswasmc_bounded_2_std_srvs_srv_SetBool_Response const* value)
{
    if(!value)
        return 0;
    if(value->success > 1)
        return 0;
    if(value->message.size > 256u || !uwvm_bounded_utf8(value->message.data, value->message.size))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_std_srvs_srv_SetBool_Response_wire_size(roswasmc_bounded_2_std_srvs_srv_SetBool_Response const* value)
{
    size_t n = 0;
    n += 1;
    n += 4 + value->message.size;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_std_srvs_srv_SetBool_Response_write_fields(roswasmc_bounded_2_std_srvs_srv_SetBool_Response const* value,
                                                                                 unsigned char* p,
                                                                                 size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->success, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, value->message.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->message.data, value->message.size);
    *offset += value->message.size;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_std_srvs_srv_SetBool_Response_read_fields(unsigned char const* p,
                                                                               size_t n,
                                                                               size_t* offset,
                                                                               roswasmc_bounded_2_std_srvs_srv_SetBool_Response* value)
{
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->success, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->message.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->message.size > 256u || value->message.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->message.data, p + *offset, value->message.size);
    *offset += value->message.size;
    return roswasmc_bounded_2_std_srvs_srv_SetBool_Response_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_std_srvs_srv_SetBool_Response_encode(roswasmc_bounded_2_std_srvs_srv_SetBool_Response const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_std_srvs_srv_SetBool_Response_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_std_srvs_srv_SetBool_Response_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_std_srvs_srv_SetBool_Response_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_std_srvs_srv_SetBool_Response_decode(void const* input, size_t length, roswasmc_bounded_2_std_srvs_srv_SetBool_Response* value)
{
    roswasmc_bounded_2_std_srvs_srv_SetBool_Response next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 5u || length > 261u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_std_srvs_srv_SetBool_Response_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_TRIGGER_REQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_TRIGGER_REQUEST_0 != 0x7d2f4cbfUL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_TRIGGER_REQUEST_1 != 0x058781a1UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_TRIGGER_REQUEST_2 != 0xc3b3e486UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_TRIGGER_REQUEST_3 != 0x9b7a56a0UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_TRIGGER_REQUEST_4 != 0x6d4d50b3UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_TRIGGER_REQUEST_5 != 0x719921cbUL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_TRIGGER_REQUEST_6 != 0x6d9fcbccUL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_TRIGGER_REQUEST_7 != 0x09f8bf3fUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_TRIGGER_REQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_TRIGGER_REQUEST_0 0x7d2f4cbfUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_TRIGGER_REQUEST_1 0x058781a1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_TRIGGER_REQUEST_2 0xc3b3e486UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_TRIGGER_REQUEST_3 0x9b7a56a0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_TRIGGER_REQUEST_4 0x6d4d50b3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_TRIGGER_REQUEST_5 0x719921cbUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_TRIGGER_REQUEST_6 0x6d9fcbccUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_TRIGGER_REQUEST_7 0x09f8bf3fUL

/** @brief Complete ROS2 std_srvs/srv/Trigger_Request value; no field projects away native data. */
typedef struct roswasmc_bounded_2_std_srvs_srv_Trigger_Request
{
    /** @brief Local C layout placeholder; empty native component has exactly zero canonical bytes. */
    unsigned char local_empty_placeholder;
} roswasmc_bounded_2_std_srvs_srv_Trigger_Request;

# define ROSWASMC_BOUNDED_2_STD_SRVS_SRV_TRIGGER_REQUEST_MAX_WIRE_BYTES 0u
# define ROSWASMC_BOUNDED_2_STD_SRVS_SRV_TRIGGER_REQUEST_MIN_WIRE_BYTES 0u
# define ROSWASMC_BOUNDED_2_STD_SRVS_SRV_TRIGGER_REQUEST_CODEC_IDENTITY "UWVMROS1_f1d8ad4ab7cf476cada6301f71ae24e046c244ba62bb6735183efe8e8c530a77"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_std_srvs_srv_Trigger_Request_valid(roswasmc_bounded_2_std_srvs_srv_Trigger_Request const* value)
{
    if(!value)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_std_srvs_srv_Trigger_Request_wire_size(roswasmc_bounded_2_std_srvs_srv_Trigger_Request const* value)
{
    size_t n = 0;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_std_srvs_srv_Trigger_Request_write_fields(roswasmc_bounded_2_std_srvs_srv_Trigger_Request const* value, unsigned char* p, size_t* offset)
{
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_std_srvs_srv_Trigger_Request_read_fields(unsigned char const* p,
                                                                              size_t n,
                                                                              size_t* offset,
                                                                              roswasmc_bounded_2_std_srvs_srv_Trigger_Request* value)
{
    return roswasmc_bounded_2_std_srvs_srv_Trigger_Request_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_std_srvs_srv_Trigger_Request_encode(roswasmc_bounded_2_std_srvs_srv_Trigger_Request const* value,
                                                                              void* output,
                                                                              size_t capacity,
                                                                              size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_std_srvs_srv_Trigger_Request_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_std_srvs_srv_Trigger_Request_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_std_srvs_srv_Trigger_Request_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_std_srvs_srv_Trigger_Request_decode(void const* input, size_t length, roswasmc_bounded_2_std_srvs_srv_Trigger_Request* value)
{
    roswasmc_bounded_2_std_srvs_srv_Trigger_Request next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 0u || length > 0u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_std_srvs_srv_Trigger_Request_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_TRIGGER_RESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_TRIGGER_RESPONSE_0 != 0xab489cabUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_TRIGGER_RESPONSE_1 != 0xfa8fa7b6UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_TRIGGER_RESPONSE_2 != 0xdb0fc628UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_TRIGGER_RESPONSE_3 != 0xb33fd4c0UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_TRIGGER_RESPONSE_4 != 0x4f54c12eUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_TRIGGER_RESPONSE_5 != 0xa5c9784aUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_TRIGGER_RESPONSE_6 != 0x0bd4578eUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_TRIGGER_RESPONSE_7 != 0x63142750UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_TRIGGER_RESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_TRIGGER_RESPONSE_0 0xab489cabUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_TRIGGER_RESPONSE_1 0xfa8fa7b6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_TRIGGER_RESPONSE_2 0xdb0fc628UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_TRIGGER_RESPONSE_3 0xb33fd4c0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_TRIGGER_RESPONSE_4 0x4f54c12eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_TRIGGER_RESPONSE_5 0xa5c9784aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_TRIGGER_RESPONSE_6 0x0bd4578eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_STD_SRVS_SRV_TRIGGER_RESPONSE_7 0x63142750UL

/** @brief UTF-8 byte storage for std_srvs/srv/Trigger_Response.message; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[256];
} roswasmc_bounded_2_std_srvs_srv_Trigger_Response_message_text;

/** @brief Complete ROS2 std_srvs/srv/Trigger_Response value; no field projects away native data. */
typedef struct roswasmc_bounded_2_std_srvs_srv_Trigger_Response
{
    /** @brief Declared field success; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t success;
    /** @brief Declared field message; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_std_srvs_srv_Trigger_Response_message_text message;
} roswasmc_bounded_2_std_srvs_srv_Trigger_Response;

# define ROSWASMC_BOUNDED_2_STD_SRVS_SRV_TRIGGER_RESPONSE_MAX_WIRE_BYTES 261u
# define ROSWASMC_BOUNDED_2_STD_SRVS_SRV_TRIGGER_RESPONSE_MIN_WIRE_BYTES 5u
# define ROSWASMC_BOUNDED_2_STD_SRVS_SRV_TRIGGER_RESPONSE_CODEC_IDENTITY "UWVMROS1_58806c592727ad1011b32edb6bca3ca32d8e5dbe7f2fa20c86220daf64a10392"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_std_srvs_srv_Trigger_Response_valid(roswasmc_bounded_2_std_srvs_srv_Trigger_Response const* value)
{
    if(!value)
        return 0;
    if(value->success > 1)
        return 0;
    if(value->message.size > 256u || !uwvm_bounded_utf8(value->message.data, value->message.size))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_std_srvs_srv_Trigger_Response_wire_size(roswasmc_bounded_2_std_srvs_srv_Trigger_Response const* value)
{
    size_t n = 0;
    n += 1;
    n += 4 + value->message.size;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_std_srvs_srv_Trigger_Response_write_fields(roswasmc_bounded_2_std_srvs_srv_Trigger_Response const* value,
                                                                                 unsigned char* p,
                                                                                 size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->success, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, value->message.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->message.data, value->message.size);
    *offset += value->message.size;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_std_srvs_srv_Trigger_Response_read_fields(unsigned char const* p,
                                                                               size_t n,
                                                                               size_t* offset,
                                                                               roswasmc_bounded_2_std_srvs_srv_Trigger_Response* value)
{
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->success, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->message.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->message.size > 256u || value->message.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->message.data, p + *offset, value->message.size);
    *offset += value->message.size;
    return roswasmc_bounded_2_std_srvs_srv_Trigger_Response_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_std_srvs_srv_Trigger_Response_encode(roswasmc_bounded_2_std_srvs_srv_Trigger_Response const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_std_srvs_srv_Trigger_Response_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_std_srvs_srv_Trigger_Response_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_std_srvs_srv_Trigger_Response_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_std_srvs_srv_Trigger_Response_decode(void const* input, size_t length, roswasmc_bounded_2_std_srvs_srv_Trigger_Response* value)
{
    roswasmc_bounded_2_std_srvs_srv_Trigger_Response next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 5u || length > 261u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_std_srvs_srv_Trigger_Response_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_ACTION_PATROL_GOAL)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_ACTION_PATROL_GOAL_0 != 0x33be8cf8UL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_ACTION_PATROL_GOAL_1 != 0x4dbe5cf3UL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_ACTION_PATROL_GOAL_2 != 0xca908029UL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_ACTION_PATROL_GOAL_3 != 0xb4e54401UL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_ACTION_PATROL_GOAL_4 != 0x0ac9c9abUL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_ACTION_PATROL_GOAL_5 != 0xaf022e13UL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_ACTION_PATROL_GOAL_6 != 0x320f992cUL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_ACTION_PATROL_GOAL_7 != 0x13390149UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_ACTION_PATROL_GOAL 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_ACTION_PATROL_GOAL_0 0x33be8cf8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_ACTION_PATROL_GOAL_1 0x4dbe5cf3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_ACTION_PATROL_GOAL_2 0xca908029UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_ACTION_PATROL_GOAL_3 0xb4e54401UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_ACTION_PATROL_GOAL_4 0x0ac9c9abUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_ACTION_PATROL_GOAL_5 0xaf022e13UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_ACTION_PATROL_GOAL_6 0x320f992cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_ACTION_PATROL_GOAL_7 0x13390149UL

/** @brief Complete ROS2 turtlebot3_msgs/action/Patrol_Goal value; no field projects away native data. */
typedef struct roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Goal
{
    /** @brief Declared field goal; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_geometry_msgs_msg_Vector3 goal;
} roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Goal;

# define ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_ACTION_PATROL_GOAL_MAX_WIRE_BYTES 24u
# define ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_ACTION_PATROL_GOAL_MIN_WIRE_BYTES 24u
# define ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_ACTION_PATROL_GOAL_CODEC_IDENTITY "UWVMROS1_929abdbc422698464043e7e8d12c2a5edd418dcd52bbde4a542b33e6862ba96f"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Goal_valid(roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Goal const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_geometry_msgs_msg_Vector3_valid(&value->goal))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Goal_wire_size(roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Goal const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_geometry_msgs_msg_Vector3_wire_size(&value->goal);
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Goal_write_fields(roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Goal const* value,
                                                                                      unsigned char* p,
                                                                                      size_t* offset)
{
    roswasmc_bounded_2_geometry_msgs_msg_Vector3_write_fields(&value->goal, p, offset);
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Goal_read_fields(unsigned char const* p,
                                                                                    size_t n,
                                                                                    size_t* offset,
                                                                                    roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Goal* value)
{
    if(!roswasmc_bounded_2_geometry_msgs_msg_Vector3_read_fields(p, n, offset, &value->goal))
        return 0;
    return roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Goal_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Goal_encode(roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Goal const* value,
                                                                                    void* output,
                                                                                    size_t capacity,
                                                                                    size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Goal_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Goal_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Goal_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Goal_decode(void const* input, size_t length, roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Goal* value)
{
    roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Goal next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 24u || length > 24u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Goal_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_ACTION_PATROL_RESULT)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_ACTION_PATROL_RESULT_0 != 0x3d0c2d40UL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_ACTION_PATROL_RESULT_1 != 0x0080f384UL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_ACTION_PATROL_RESULT_2 != 0x2fee0fd1UL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_ACTION_PATROL_RESULT_3 != 0x4a984302UL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_ACTION_PATROL_RESULT_4 != 0x8302e489UL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_ACTION_PATROL_RESULT_5 != 0xf0747c4bUL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_ACTION_PATROL_RESULT_6 != 0xa4ddc966UL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_ACTION_PATROL_RESULT_7 != 0xc4a389e1UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_ACTION_PATROL_RESULT 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_ACTION_PATROL_RESULT_0 0x3d0c2d40UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_ACTION_PATROL_RESULT_1 0x0080f384UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_ACTION_PATROL_RESULT_2 0x2fee0fd1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_ACTION_PATROL_RESULT_3 0x4a984302UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_ACTION_PATROL_RESULT_4 0x8302e489UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_ACTION_PATROL_RESULT_5 0xf0747c4bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_ACTION_PATROL_RESULT_6 0xa4ddc966UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_ACTION_PATROL_RESULT_7 0xc4a389e1UL

/** @brief UTF-8 byte storage for turtlebot3_msgs/action/Patrol_Result.result; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[256];
} roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Result_result_text;

/** @brief Complete ROS2 turtlebot3_msgs/action/Patrol_Result value; no field projects away native data. */
typedef struct roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Result
{
    /** @brief Declared field result; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Result_result_text result;
} roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Result;

# define ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_ACTION_PATROL_RESULT_MAX_WIRE_BYTES 260u
# define ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_ACTION_PATROL_RESULT_MIN_WIRE_BYTES 4u
# define ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_ACTION_PATROL_RESULT_CODEC_IDENTITY "UWVMROS1_1d1fa277be54e1df3bd314a632ff80d79f22a306fc232219a7c23cce7a7703a3"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Result_valid(roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Result const* value)
{
    if(!value)
        return 0;
    if(value->result.size > 256u || !uwvm_bounded_utf8(value->result.data, value->result.size))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Result_wire_size(roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Result const* value)
{
    size_t n = 0;
    n += 4 + value->result.size;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Result_write_fields(roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Result const* value,
                                                                                        unsigned char* p,
                                                                                        size_t* offset)
{
    uwvm_bounded_put(p + *offset, value->result.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->result.data, value->result.size);
    *offset += value->result.size;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Result_read_fields(unsigned char const* p,
                                                                                      size_t n,
                                                                                      size_t* offset,
                                                                                      roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Result* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    value->result.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->result.size > 256u || value->result.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->result.data, p + *offset, value->result.size);
    *offset += value->result.size;
    return roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Result_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Result_encode(roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Result const* value,
                                                                                      void* output,
                                                                                      size_t capacity,
                                                                                      size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Result_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Result_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Result_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Result_decode(void const* input,
                                                                                      size_t length,
                                                                                      roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Result* value)
{
    roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Result next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 4u || length > 260u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Result_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_ACTION_PATROL_FEEDBACK)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_ACTION_PATROL_FEEDBACK_0 != 0x095e970cUL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_ACTION_PATROL_FEEDBACK_1 != 0x148b9f6fUL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_ACTION_PATROL_FEEDBACK_2 != 0xd33e81a3UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_ACTION_PATROL_FEEDBACK_3 != 0x05200613UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_ACTION_PATROL_FEEDBACK_4 != 0x2bd03bf4UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_ACTION_PATROL_FEEDBACK_5 != 0x896329f3UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_ACTION_PATROL_FEEDBACK_6 != 0x3f0c8253UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_ACTION_PATROL_FEEDBACK_7 != 0x295b1e90UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_ACTION_PATROL_FEEDBACK 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_ACTION_PATROL_FEEDBACK_0 0x095e970cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_ACTION_PATROL_FEEDBACK_1 0x148b9f6fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_ACTION_PATROL_FEEDBACK_2 0xd33e81a3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_ACTION_PATROL_FEEDBACK_3 0x05200613UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_ACTION_PATROL_FEEDBACK_4 0x2bd03bf4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_ACTION_PATROL_FEEDBACK_5 0x896329f3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_ACTION_PATROL_FEEDBACK_6 0x3f0c8253UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_ACTION_PATROL_FEEDBACK_7 0x295b1e90UL

/** @brief UTF-8 byte storage for turtlebot3_msgs/action/Patrol_Feedback.state; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[256];
} roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Feedback_state_text;

/** @brief Complete ROS2 turtlebot3_msgs/action/Patrol_Feedback value; no field projects away native data. */
typedef struct roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Feedback
{
    /** @brief Declared field state; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Feedback_state_text state;
} roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Feedback;

# define ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_ACTION_PATROL_FEEDBACK_MAX_WIRE_BYTES 260u
# define ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_ACTION_PATROL_FEEDBACK_MIN_WIRE_BYTES 4u
# define ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_ACTION_PATROL_FEEDBACK_CODEC_IDENTITY "UWVMROS1_7c2f3824653a3048e1b93fa95584543a01efae8bb67253d3371a2988407a601e"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Feedback_valid(roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Feedback const* value)
{
    if(!value)
        return 0;
    if(value->state.size > 256u || !uwvm_bounded_utf8(value->state.data, value->state.size))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Feedback_wire_size(roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Feedback const* value)
{
    size_t n = 0;
    n += 4 + value->state.size;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Feedback_write_fields(roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Feedback const* value,
                                                                           unsigned char* p,
                                                                           size_t* offset)
{
    uwvm_bounded_put(p + *offset, value->state.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->state.data, value->state.size);
    *offset += value->state.size;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Feedback_read_fields(unsigned char const* p,
                                                                                        size_t n,
                                                                                        size_t* offset,
                                                                                        roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Feedback* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    value->state.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->state.size > 256u || value->state.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->state.data, p + *offset, value->state.size);
    *offset += value->state.size;
    return roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Feedback_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Feedback_encode(roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Feedback const* value,
                                                                                        void* output,
                                                                                        size_t capacity,
                                                                                        size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Feedback_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Feedback_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Feedback_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Feedback_decode(void const* input,
                                                                                        size_t length,
                                                                                        roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Feedback* value)
{
    roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Feedback next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 4u || length > 260u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Feedback_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_MSG_SENSORSTATE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_MSG_SENSORSTATE_0 != 0x47083e9bUL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_MSG_SENSORSTATE_1 != 0x23ced8c0UL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_MSG_SENSORSTATE_2 != 0xf72333ebUL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_MSG_SENSORSTATE_3 != 0xb0b1e7e7UL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_MSG_SENSORSTATE_4 != 0x458d97e8UL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_MSG_SENSORSTATE_5 != 0x5bf5f713UL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_MSG_SENSORSTATE_6 != 0xd0bc6f3cUL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_MSG_SENSORSTATE_7 != 0x0a517c6dUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_MSG_SENSORSTATE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_MSG_SENSORSTATE_0 0x47083e9bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_MSG_SENSORSTATE_1 0x23ced8c0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_MSG_SENSORSTATE_2 0xf72333ebUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_MSG_SENSORSTATE_3 0xb0b1e7e7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_MSG_SENSORSTATE_4 0x458d97e8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_MSG_SENSORSTATE_5 0x5bf5f713UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_MSG_SENSORSTATE_6 0xd0bc6f3cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_MSG_SENSORSTATE_7 0x0a517c6dUL

/** @brief Complete ROS2 turtlebot3_msgs/msg/SensorState value; no field projects away native data. */
typedef struct roswasmc_bounded_2_turtlebot3_msgs_msg_SensorState
{
    /** @brief Declared field header; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_std_msgs_msg_Header header;
    /** @brief Declared field bumper; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t bumper;
    /** @brief Declared field cliff; canonical capacity is part of CODEC_IDENTITY. */
    float cliff;
    /** @brief Declared field sonar; canonical capacity is part of CODEC_IDENTITY. */
    float sonar;
    /** @brief Declared field illumination; canonical capacity is part of CODEC_IDENTITY. */
    float illumination;
    /** @brief Declared field led; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t led;
    /** @brief Declared field button; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t button;
    /** @brief Declared field torque; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t torque;
    /** @brief Declared field left_encoder; canonical capacity is part of CODEC_IDENTITY. */
    int32_t left_encoder;
    /** @brief Declared field right_encoder; canonical capacity is part of CODEC_IDENTITY. */
    int32_t right_encoder;
    /** @brief Declared field battery; canonical capacity is part of CODEC_IDENTITY. */
    float battery;
} roswasmc_bounded_2_turtlebot3_msgs_msg_SensorState;

# define ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_MSG_SENSORSTATE_MAX_WIRE_BYTES 168u
# define ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_MSG_SENSORSTATE_MIN_WIRE_BYTES 40u
# define ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_MSG_SENSORSTATE_CODEC_IDENTITY "UWVMROS1_7974ef7ca70ababf0e3f7a5e4099335a1398933833260798482f155291a62358"
/** @brief Original scalar constant BUMPER_FORWARD=1; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_MSG_SENSORSTATE_BUMPER_FORWARD UINT32_C(1)
/** @brief Original scalar constant BUMPER_BACKWARD=2; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_MSG_SENSORSTATE_BUMPER_BACKWARD UINT32_C(2)
/** @brief Original scalar constant CLIFF=1; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_MSG_SENSORSTATE_CLIFF UINT32_C(1)
/** @brief Original scalar constant SONAR=1; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_MSG_SENSORSTATE_SONAR UINT32_C(1)
/** @brief Original scalar constant ILLUMINATION=1; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_MSG_SENSORSTATE_ILLUMINATION UINT32_C(1)
/** @brief Original scalar constant BUTTON0=1; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_MSG_SENSORSTATE_BUTTON0 UINT32_C(1)
/** @brief Original scalar constant BUTTON1=2; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_MSG_SENSORSTATE_BUTTON1 UINT32_C(2)
/** @brief Original scalar constant ERROR_LEFT_MOTOR=1; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_MSG_SENSORSTATE_ERROR_LEFT_MOTOR UINT32_C(1)
/** @brief Original scalar constant ERROR_RIGHT_MOTOR=2; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_MSG_SENSORSTATE_ERROR_RIGHT_MOTOR UINT32_C(2)
/** @brief Original scalar constant TORQUE_ON=1; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_MSG_SENSORSTATE_TORQUE_ON UINT32_C(1)
/** @brief Original scalar constant TORQUE_OFF=2; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_MSG_SENSORSTATE_TORQUE_OFF UINT32_C(2)

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_turtlebot3_msgs_msg_SensorState_valid(roswasmc_bounded_2_turtlebot3_msgs_msg_SensorState const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_std_msgs_msg_Header_valid(&value->header))
        return 0;
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->cliff, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->sonar, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->illumination, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    if(value->torque > 1)
        return 0;
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->battery, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_turtlebot3_msgs_msg_SensorState_wire_size(roswasmc_bounded_2_turtlebot3_msgs_msg_SensorState const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_std_msgs_msg_Header_wire_size(&value->header);
    n += 1;
    n += 4;
    n += 4;
    n += 4;
    n += 1;
    n += 1;
    n += 1;
    n += 4;
    n += 4;
    n += 4;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_turtlebot3_msgs_msg_SensorState_write_fields(roswasmc_bounded_2_turtlebot3_msgs_msg_SensorState const* value,
                                                                                   unsigned char* p,
                                                                                   size_t* offset)
{
    roswasmc_bounded_2_std_msgs_msg_Header_write_fields(&value->header, p, offset);
    uwvm_bounded_put(p + *offset, (uint64_t)value->bumper, 1);
    *offset += 1;
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->cliff, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->sonar, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->illumination, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    uwvm_bounded_put(p + *offset, (uint64_t)value->led, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->button, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->torque, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->left_encoder, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, (uint64_t)value->right_encoder, 4);
    *offset += 4;
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->battery, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_turtlebot3_msgs_msg_SensorState_read_fields(unsigned char const* p,
                                                                                 size_t n,
                                                                                 size_t* offset,
                                                                                 roswasmc_bounded_2_turtlebot3_msgs_msg_SensorState* value)
{
    if(!roswasmc_bounded_2_std_msgs_msg_Header_read_fields(p, n, offset, &value->header))
        return 0;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->bumper, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->cliff, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->sonar, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->illumination, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->led, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->button, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->torque, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->left_encoder, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->right_encoder, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->battery, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_2_turtlebot3_msgs_msg_SensorState_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_turtlebot3_msgs_msg_SensorState_encode(roswasmc_bounded_2_turtlebot3_msgs_msg_SensorState const* value,
                                                                                 void* output,
                                                                                 size_t capacity,
                                                                                 size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_turtlebot3_msgs_msg_SensorState_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_turtlebot3_msgs_msg_SensorState_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_turtlebot3_msgs_msg_SensorState_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_turtlebot3_msgs_msg_SensorState_decode(void const* input, size_t length, roswasmc_bounded_2_turtlebot3_msgs_msg_SensorState* value)
{
    roswasmc_bounded_2_turtlebot3_msgs_msg_SensorState next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 40u || length > 168u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_turtlebot3_msgs_msg_SensorState_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_MSG_SOUND)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_MSG_SOUND_0 != 0x0b49a42fUL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_MSG_SOUND_1 != 0x82003aaeUL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_MSG_SOUND_2 != 0xe838d297UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_MSG_SOUND_3 != 0xae491344UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_MSG_SOUND_4 != 0xfcf7f232UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_MSG_SOUND_5 != 0x0eb9ae0fUL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_MSG_SOUND_6 != 0x666b59f2UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_MSG_SOUND_7 != 0x77db7ac0UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_MSG_SOUND 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_MSG_SOUND_0 0x0b49a42fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_MSG_SOUND_1 0x82003aaeUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_MSG_SOUND_2 0xe838d297UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_MSG_SOUND_3 0xae491344UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_MSG_SOUND_4 0xfcf7f232UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_MSG_SOUND_5 0x0eb9ae0fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_MSG_SOUND_6 0x666b59f2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_MSG_SOUND_7 0x77db7ac0UL

/** @brief Complete ROS2 turtlebot3_msgs/msg/Sound value; no field projects away native data. */
typedef struct roswasmc_bounded_2_turtlebot3_msgs_msg_Sound
{
    /** @brief Declared field value; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t value;
} roswasmc_bounded_2_turtlebot3_msgs_msg_Sound;

# define ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_MSG_SOUND_MAX_WIRE_BYTES 1u
# define ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_MSG_SOUND_MIN_WIRE_BYTES 1u
# define ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_MSG_SOUND_CODEC_IDENTITY "UWVMROS1_e8bd9a5fdf84ad1df0f264bd13a0e8966918de19ab62e91c7524dd8fc17a4e4b"
/** @brief Original scalar constant OFF=0; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_MSG_SOUND_OFF UINT32_C(0)
/** @brief Original scalar constant ON=1; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_MSG_SOUND_ON UINT32_C(1)
/** @brief Original scalar constant LOW_BATTERY=2; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_MSG_SOUND_LOW_BATTERY UINT32_C(2)
/** @brief Original scalar constant ERROR=3; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_MSG_SOUND_ERROR UINT32_C(3)
/** @brief Original scalar constant BUTTON1=4; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_MSG_SOUND_BUTTON1 UINT32_C(4)
/** @brief Original scalar constant BUTTON2=5; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_MSG_SOUND_BUTTON2 UINT32_C(5)

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_turtlebot3_msgs_msg_Sound_valid(roswasmc_bounded_2_turtlebot3_msgs_msg_Sound const* value)
{
    if(!value)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_turtlebot3_msgs_msg_Sound_wire_size(roswasmc_bounded_2_turtlebot3_msgs_msg_Sound const* value)
{
    size_t n = 0;
    n += 1;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_turtlebot3_msgs_msg_Sound_write_fields(roswasmc_bounded_2_turtlebot3_msgs_msg_Sound const* value, unsigned char* p, size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->value, 1);
    *offset += 1;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_turtlebot3_msgs_msg_Sound_read_fields(unsigned char const* p,
                                                                           size_t n,
                                                                           size_t* offset,
                                                                           roswasmc_bounded_2_turtlebot3_msgs_msg_Sound* value)
{
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->value, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_2_turtlebot3_msgs_msg_Sound_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_turtlebot3_msgs_msg_Sound_encode(roswasmc_bounded_2_turtlebot3_msgs_msg_Sound const* value,
                                                                           void* output,
                                                                           size_t capacity,
                                                                           size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_turtlebot3_msgs_msg_Sound_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_turtlebot3_msgs_msg_Sound_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_turtlebot3_msgs_msg_Sound_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_turtlebot3_msgs_msg_Sound_decode(void const* input, size_t length, roswasmc_bounded_2_turtlebot3_msgs_msg_Sound* value)
{
    roswasmc_bounded_2_turtlebot3_msgs_msg_Sound next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 1u || length > 1u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_turtlebot3_msgs_msg_Sound_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_MSG_VERSIONINFO)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_MSG_VERSIONINFO_0 != 0x17bb6067UL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_MSG_VERSIONINFO_1 != 0x5be7c84cUL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_MSG_VERSIONINFO_2 != 0xcbe31b0aUL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_MSG_VERSIONINFO_3 != 0x36d416fcUL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_MSG_VERSIONINFO_4 != 0x144ad9e4UL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_MSG_VERSIONINFO_5 != 0xae10cc14UL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_MSG_VERSIONINFO_6 != 0x1850053cUL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_MSG_VERSIONINFO_7 != 0xb2573942UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_MSG_VERSIONINFO 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_MSG_VERSIONINFO_0 0x17bb6067UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_MSG_VERSIONINFO_1 0x5be7c84cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_MSG_VERSIONINFO_2 0xcbe31b0aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_MSG_VERSIONINFO_3 0x36d416fcUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_MSG_VERSIONINFO_4 0x144ad9e4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_MSG_VERSIONINFO_5 0xae10cc14UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_MSG_VERSIONINFO_6 0x1850053cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_MSG_VERSIONINFO_7 0xb2573942UL

/** @brief UTF-8 byte storage for turtlebot3_msgs/msg/VersionInfo.hardware; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[256];
} roswasmc_bounded_2_turtlebot3_msgs_msg_VersionInfo_hardware_text;

/** @brief UTF-8 byte storage for turtlebot3_msgs/msg/VersionInfo.firmware; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[256];
} roswasmc_bounded_2_turtlebot3_msgs_msg_VersionInfo_firmware_text;

/** @brief UTF-8 byte storage for turtlebot3_msgs/msg/VersionInfo.software; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[256];
} roswasmc_bounded_2_turtlebot3_msgs_msg_VersionInfo_software_text;

/** @brief Complete ROS2 turtlebot3_msgs/msg/VersionInfo value; no field projects away native data. */
typedef struct roswasmc_bounded_2_turtlebot3_msgs_msg_VersionInfo
{
    /** @brief Declared field hardware; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_turtlebot3_msgs_msg_VersionInfo_hardware_text hardware;
    /** @brief Declared field firmware; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_turtlebot3_msgs_msg_VersionInfo_firmware_text firmware;
    /** @brief Declared field software; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_turtlebot3_msgs_msg_VersionInfo_software_text software;
} roswasmc_bounded_2_turtlebot3_msgs_msg_VersionInfo;

# define ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_MSG_VERSIONINFO_MAX_WIRE_BYTES 780u
# define ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_MSG_VERSIONINFO_MIN_WIRE_BYTES 12u
# define ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_MSG_VERSIONINFO_CODEC_IDENTITY "UWVMROS1_7668c77b01a05eeb8ba3c5f259f3f3a9dfad3d4fdf8aa566d65f6e8f1c0f2d6a"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_turtlebot3_msgs_msg_VersionInfo_valid(roswasmc_bounded_2_turtlebot3_msgs_msg_VersionInfo const* value)
{
    if(!value)
        return 0;
    if(value->hardware.size > 256u || !uwvm_bounded_utf8(value->hardware.data, value->hardware.size))
        return 0;
    if(value->firmware.size > 256u || !uwvm_bounded_utf8(value->firmware.data, value->firmware.size))
        return 0;
    if(value->software.size > 256u || !uwvm_bounded_utf8(value->software.data, value->software.size))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_turtlebot3_msgs_msg_VersionInfo_wire_size(roswasmc_bounded_2_turtlebot3_msgs_msg_VersionInfo const* value)
{
    size_t n = 0;
    n += 4 + value->hardware.size;
    n += 4 + value->firmware.size;
    n += 4 + value->software.size;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_turtlebot3_msgs_msg_VersionInfo_write_fields(roswasmc_bounded_2_turtlebot3_msgs_msg_VersionInfo const* value,
                                                                                   unsigned char* p,
                                                                                   size_t* offset)
{
    uwvm_bounded_put(p + *offset, value->hardware.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->hardware.data, value->hardware.size);
    *offset += value->hardware.size;
    uwvm_bounded_put(p + *offset, value->firmware.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->firmware.data, value->firmware.size);
    *offset += value->firmware.size;
    uwvm_bounded_put(p + *offset, value->software.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->software.data, value->software.size);
    *offset += value->software.size;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_turtlebot3_msgs_msg_VersionInfo_read_fields(unsigned char const* p,
                                                                                 size_t n,
                                                                                 size_t* offset,
                                                                                 roswasmc_bounded_2_turtlebot3_msgs_msg_VersionInfo* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    value->hardware.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->hardware.size > 256u || value->hardware.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->hardware.data, p + *offset, value->hardware.size);
    *offset += value->hardware.size;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->firmware.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->firmware.size > 256u || value->firmware.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->firmware.data, p + *offset, value->firmware.size);
    *offset += value->firmware.size;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->software.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->software.size > 256u || value->software.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->software.data, p + *offset, value->software.size);
    *offset += value->software.size;
    return roswasmc_bounded_2_turtlebot3_msgs_msg_VersionInfo_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_turtlebot3_msgs_msg_VersionInfo_encode(roswasmc_bounded_2_turtlebot3_msgs_msg_VersionInfo const* value,
                                                                                 void* output,
                                                                                 size_t capacity,
                                                                                 size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_turtlebot3_msgs_msg_VersionInfo_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_turtlebot3_msgs_msg_VersionInfo_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_turtlebot3_msgs_msg_VersionInfo_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_turtlebot3_msgs_msg_VersionInfo_decode(void const* input, size_t length, roswasmc_bounded_2_turtlebot3_msgs_msg_VersionInfo* value)
{
    roswasmc_bounded_2_turtlebot3_msgs_msg_VersionInfo next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 12u || length > 780u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_turtlebot3_msgs_msg_VersionInfo_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_DQN_REQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_DQN_REQUEST_0 != 0xf5349c9eUL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_DQN_REQUEST_1 != 0x3fe5c52cUL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_DQN_REQUEST_2 != 0xeb549f75UL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_DQN_REQUEST_3 != 0x1f85275eUL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_DQN_REQUEST_4 != 0x229f817cUL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_DQN_REQUEST_5 != 0xdcae7a69UL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_DQN_REQUEST_6 != 0x9a4ddd2eUL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_DQN_REQUEST_7 != 0xb17e9ff2UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_DQN_REQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_DQN_REQUEST_0 0xf5349c9eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_DQN_REQUEST_1 0x3fe5c52cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_DQN_REQUEST_2 0xeb549f75UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_DQN_REQUEST_3 0x1f85275eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_DQN_REQUEST_4 0x229f817cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_DQN_REQUEST_5 0xdcae7a69UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_DQN_REQUEST_6 0x9a4ddd2eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_DQN_REQUEST_7 0xb17e9ff2UL

/** @brief Complete ROS2 turtlebot3_msgs/srv/Dqn_Request value; no field projects away native data. */
typedef struct roswasmc_bounded_2_turtlebot3_msgs_srv_Dqn_Request
{
    /** @brief Declared field action; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t action;
    /** @brief Declared field init; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t init;
} roswasmc_bounded_2_turtlebot3_msgs_srv_Dqn_Request;

# define ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_DQN_REQUEST_MAX_WIRE_BYTES 2u
# define ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_DQN_REQUEST_MIN_WIRE_BYTES 2u
# define ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_DQN_REQUEST_CODEC_IDENTITY "UWVMROS1_14042e65db9f4feef7a43bfb44255795470bb0ed91a3cf301ebec98c2d4e2d0e"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_turtlebot3_msgs_srv_Dqn_Request_valid(roswasmc_bounded_2_turtlebot3_msgs_srv_Dqn_Request const* value)
{
    if(!value)
        return 0;
    if(value->init > 1)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_turtlebot3_msgs_srv_Dqn_Request_wire_size(roswasmc_bounded_2_turtlebot3_msgs_srv_Dqn_Request const* value)
{
    size_t n = 0;
    n += 1;
    n += 1;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_turtlebot3_msgs_srv_Dqn_Request_write_fields(roswasmc_bounded_2_turtlebot3_msgs_srv_Dqn_Request const* value,
                                                                                   unsigned char* p,
                                                                                   size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->action, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->init, 1);
    *offset += 1;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_turtlebot3_msgs_srv_Dqn_Request_read_fields(unsigned char const* p,
                                                                                 size_t n,
                                                                                 size_t* offset,
                                                                                 roswasmc_bounded_2_turtlebot3_msgs_srv_Dqn_Request* value)
{
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->action, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->init, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_2_turtlebot3_msgs_srv_Dqn_Request_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_turtlebot3_msgs_srv_Dqn_Request_encode(roswasmc_bounded_2_turtlebot3_msgs_srv_Dqn_Request const* value,
                                                                                 void* output,
                                                                                 size_t capacity,
                                                                                 size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_turtlebot3_msgs_srv_Dqn_Request_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_turtlebot3_msgs_srv_Dqn_Request_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_turtlebot3_msgs_srv_Dqn_Request_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_turtlebot3_msgs_srv_Dqn_Request_decode(void const* input, size_t length, roswasmc_bounded_2_turtlebot3_msgs_srv_Dqn_Request* value)
{
    roswasmc_bounded_2_turtlebot3_msgs_srv_Dqn_Request next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 2u || length > 2u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_turtlebot3_msgs_srv_Dqn_Request_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_DQN_RESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_DQN_RESPONSE_0 != 0xfe5f449dUL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_DQN_RESPONSE_1 != 0xe565a025UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_DQN_RESPONSE_2 != 0x2466a3b8UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_DQN_RESPONSE_3 != 0x4aeba768UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_DQN_RESPONSE_4 != 0x7cf581b8UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_DQN_RESPONSE_5 != 0x0ed34bfbUL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_DQN_RESPONSE_6 != 0x327b01adUL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_DQN_RESPONSE_7 != 0x4f7f4320UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_DQN_RESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_DQN_RESPONSE_0 0xfe5f449dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_DQN_RESPONSE_1 0xe565a025UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_DQN_RESPONSE_2 0x2466a3b8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_DQN_RESPONSE_3 0x4aeba768UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_DQN_RESPONSE_4 0x7cf581b8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_DQN_RESPONSE_5 0x0ed34bfbUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_DQN_RESPONSE_6 0x327b01adUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_DQN_RESPONSE_7 0x4f7f4320UL

/** @brief At most128 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    float data[128];
} roswasmc_bounded_2_turtlebot3_msgs_srv_Dqn_Response_state_sequence;

/** @brief Complete ROS2 turtlebot3_msgs/srv/Dqn_Response value; no field projects away native data. */
typedef struct roswasmc_bounded_2_turtlebot3_msgs_srv_Dqn_Response
{
    /** @brief Declared field state; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_turtlebot3_msgs_srv_Dqn_Response_state_sequence state;
    /** @brief Declared field reward; canonical capacity is part of CODEC_IDENTITY. */
    float reward;
    /** @brief Declared field done; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t done;
} roswasmc_bounded_2_turtlebot3_msgs_srv_Dqn_Response;

# define ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_DQN_RESPONSE_MAX_WIRE_BYTES 521u
# define ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_DQN_RESPONSE_MIN_WIRE_BYTES 9u
# define ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_DQN_RESPONSE_CODEC_IDENTITY "UWVMROS1_5d256e9c87d7959917f07e7cfcc0049fc18f79f547d83b72bd388a63c1417c6e"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_turtlebot3_msgs_srv_Dqn_Response_valid(roswasmc_bounded_2_turtlebot3_msgs_srv_Dqn_Response const* value)
{
    if(!value)
        return 0;
    if(value->state.size > 128u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->state.size; ++i)
        {
            {
                uint32_t bits;
                uwvm_bounded_copy(&bits, &value->state.data[i], 4);
                if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
                    return 0;
            }
        }
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->reward, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    if(value->done > 1)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_turtlebot3_msgs_srv_Dqn_Response_wire_size(roswasmc_bounded_2_turtlebot3_msgs_srv_Dqn_Response const* value)
{
    size_t n = 0;
    n += 4;
    if(value->state.size > 128u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->state.size; ++i)
        {
            n += 4;
        }
    }
    n += 4;
    n += 1;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_turtlebot3_msgs_srv_Dqn_Response_write_fields(roswasmc_bounded_2_turtlebot3_msgs_srv_Dqn_Response const* value,
                                                                                    unsigned char* p,
                                                                                    size_t* offset)
{
    uwvm_bounded_put(p + *offset, value->state.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->state.size; ++i)
        {
            {
                uint32_t bits;
                uwvm_bounded_copy(&bits, &value->state.data[i], 4);
                uwvm_bounded_put(p + *offset, bits, 4);
                *offset += 4;
            }
        }
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->reward, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    uwvm_bounded_put(p + *offset, (uint64_t)value->done, 1);
    *offset += 1;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_turtlebot3_msgs_srv_Dqn_Response_read_fields(unsigned char const* p,
                                                                                  size_t n,
                                                                                  size_t* offset,
                                                                                  roswasmc_bounded_2_turtlebot3_msgs_srv_Dqn_Response* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    value->state.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->state.size > 128u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->state.size; ++i)
        {
            if(*offset > n || n - *offset < 4)
                return 0;
            {
                uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
                uwvm_bounded_copy(&value->state.data[i], &bits, 4);
            }
            *offset += 4;
        }
    }
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->reward, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->done, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_2_turtlebot3_msgs_srv_Dqn_Response_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_turtlebot3_msgs_srv_Dqn_Response_encode(roswasmc_bounded_2_turtlebot3_msgs_srv_Dqn_Response const* value,
                                                                                  void* output,
                                                                                  size_t capacity,
                                                                                  size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_turtlebot3_msgs_srv_Dqn_Response_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_turtlebot3_msgs_srv_Dqn_Response_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_turtlebot3_msgs_srv_Dqn_Response_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_turtlebot3_msgs_srv_Dqn_Response_decode(void const* input, size_t length, roswasmc_bounded_2_turtlebot3_msgs_srv_Dqn_Response* value)
{
    roswasmc_bounded_2_turtlebot3_msgs_srv_Dqn_Response next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 9u || length > 521u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_turtlebot3_msgs_srv_Dqn_Response_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_GOAL_REQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_GOAL_REQUEST_0 != 0x86269a87UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_GOAL_REQUEST_1 != 0x1699c40eUL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_GOAL_REQUEST_2 != 0x3d60aff7UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_GOAL_REQUEST_3 != 0xbc58addaUL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_GOAL_REQUEST_4 != 0x7f8cfe19UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_GOAL_REQUEST_5 != 0x43765b6fUL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_GOAL_REQUEST_6 != 0xe7e0b598UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_GOAL_REQUEST_7 != 0x02970316UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_GOAL_REQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_GOAL_REQUEST_0 0x86269a87UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_GOAL_REQUEST_1 0x1699c40eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_GOAL_REQUEST_2 0x3d60aff7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_GOAL_REQUEST_3 0xbc58addaUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_GOAL_REQUEST_4 0x7f8cfe19UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_GOAL_REQUEST_5 0x43765b6fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_GOAL_REQUEST_6 0xe7e0b598UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_GOAL_REQUEST_7 0x02970316UL

/** @brief Complete ROS2 turtlebot3_msgs/srv/Goal_Request value; no field projects away native data. */
typedef struct roswasmc_bounded_2_turtlebot3_msgs_srv_Goal_Request
{
    /** @brief Local C layout placeholder; empty native component has exactly zero canonical bytes. */
    unsigned char local_empty_placeholder;
} roswasmc_bounded_2_turtlebot3_msgs_srv_Goal_Request;

# define ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_GOAL_REQUEST_MAX_WIRE_BYTES 0u
# define ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_GOAL_REQUEST_MIN_WIRE_BYTES 0u
# define ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_GOAL_REQUEST_CODEC_IDENTITY "UWVMROS1_f76094f3cf00772bb80b59e846f1160ae6255fc0d931bbcba362104081698ded"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_turtlebot3_msgs_srv_Goal_Request_valid(roswasmc_bounded_2_turtlebot3_msgs_srv_Goal_Request const* value)
{
    if(!value)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_turtlebot3_msgs_srv_Goal_Request_wire_size(roswasmc_bounded_2_turtlebot3_msgs_srv_Goal_Request const* value)
{
    size_t n = 0;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_turtlebot3_msgs_srv_Goal_Request_write_fields(roswasmc_bounded_2_turtlebot3_msgs_srv_Goal_Request const* value,
                                                                                    unsigned char* p,
                                                                                    size_t* offset)
{
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_turtlebot3_msgs_srv_Goal_Request_read_fields(unsigned char const* p,
                                                                                  size_t n,
                                                                                  size_t* offset,
                                                                                  roswasmc_bounded_2_turtlebot3_msgs_srv_Goal_Request* value)
{
    return roswasmc_bounded_2_turtlebot3_msgs_srv_Goal_Request_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_turtlebot3_msgs_srv_Goal_Request_encode(roswasmc_bounded_2_turtlebot3_msgs_srv_Goal_Request const* value,
                                                                                  void* output,
                                                                                  size_t capacity,
                                                                                  size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_turtlebot3_msgs_srv_Goal_Request_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_turtlebot3_msgs_srv_Goal_Request_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_turtlebot3_msgs_srv_Goal_Request_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_turtlebot3_msgs_srv_Goal_Request_decode(void const* input, size_t length, roswasmc_bounded_2_turtlebot3_msgs_srv_Goal_Request* value)
{
    roswasmc_bounded_2_turtlebot3_msgs_srv_Goal_Request next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 0u || length > 0u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_turtlebot3_msgs_srv_Goal_Request_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_GOAL_RESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_GOAL_RESPONSE_0 != 0xbc944eedUL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_GOAL_RESPONSE_1 != 0x98036ec3UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_GOAL_RESPONSE_2 != 0xcdc1ddc3UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_GOAL_RESPONSE_3 != 0x8669d0d3UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_GOAL_RESPONSE_4 != 0xa35ec15aUL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_GOAL_RESPONSE_5 != 0xa334ffffUL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_GOAL_RESPONSE_6 != 0x75259cf8UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_GOAL_RESPONSE_7 != 0x8b970229UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_GOAL_RESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_GOAL_RESPONSE_0 0xbc944eedUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_GOAL_RESPONSE_1 0x98036ec3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_GOAL_RESPONSE_2 0xcdc1ddc3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_GOAL_RESPONSE_3 0x8669d0d3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_GOAL_RESPONSE_4 0xa35ec15aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_GOAL_RESPONSE_5 0xa334ffffUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_GOAL_RESPONSE_6 0x75259cf8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_GOAL_RESPONSE_7 0x8b970229UL

/** @brief Complete ROS2 turtlebot3_msgs/srv/Goal_Response value; no field projects away native data. */
typedef struct roswasmc_bounded_2_turtlebot3_msgs_srv_Goal_Response
{
    /** @brief Declared field pose_x; canonical capacity is part of CODEC_IDENTITY. */
    float pose_x;
    /** @brief Declared field pose_y; canonical capacity is part of CODEC_IDENTITY. */
    float pose_y;
    /** @brief Declared field success; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t success;
} roswasmc_bounded_2_turtlebot3_msgs_srv_Goal_Response;

# define ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_GOAL_RESPONSE_MAX_WIRE_BYTES 9u
# define ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_GOAL_RESPONSE_MIN_WIRE_BYTES 9u
# define ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_GOAL_RESPONSE_CODEC_IDENTITY "UWVMROS1_8b9022a7fb8c68a0b063b080cd05c230b653169badbe205bcd8051b8020f7990"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_turtlebot3_msgs_srv_Goal_Response_valid(roswasmc_bounded_2_turtlebot3_msgs_srv_Goal_Response const* value)
{
    if(!value)
        return 0;
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->pose_x, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->pose_y, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    if(value->success > 1)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_turtlebot3_msgs_srv_Goal_Response_wire_size(roswasmc_bounded_2_turtlebot3_msgs_srv_Goal_Response const* value)
{
    size_t n = 0;
    n += 4;
    n += 4;
    n += 1;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_turtlebot3_msgs_srv_Goal_Response_write_fields(roswasmc_bounded_2_turtlebot3_msgs_srv_Goal_Response const* value,
                                                                                     unsigned char* p,
                                                                                     size_t* offset)
{
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->pose_x, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->pose_y, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    uwvm_bounded_put(p + *offset, (uint64_t)value->success, 1);
    *offset += 1;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_turtlebot3_msgs_srv_Goal_Response_read_fields(unsigned char const* p,
                                                                                   size_t n,
                                                                                   size_t* offset,
                                                                                   roswasmc_bounded_2_turtlebot3_msgs_srv_Goal_Response* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->pose_x, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->pose_y, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->success, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_2_turtlebot3_msgs_srv_Goal_Response_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_turtlebot3_msgs_srv_Goal_Response_encode(roswasmc_bounded_2_turtlebot3_msgs_srv_Goal_Response const* value,
                                                                                   void* output,
                                                                                   size_t capacity,
                                                                                   size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_turtlebot3_msgs_srv_Goal_Response_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_turtlebot3_msgs_srv_Goal_Response_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_turtlebot3_msgs_srv_Goal_Response_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_turtlebot3_msgs_srv_Goal_Response_decode(void const* input, size_t length, roswasmc_bounded_2_turtlebot3_msgs_srv_Goal_Response* value)
{
    roswasmc_bounded_2_turtlebot3_msgs_srv_Goal_Response next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 9u || length > 9u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_turtlebot3_msgs_srv_Goal_Response_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_SOUND_REQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_SOUND_REQUEST_0 != 0x39543802UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_SOUND_REQUEST_1 != 0xb9bb1074UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_SOUND_REQUEST_2 != 0x73592dbbUL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_SOUND_REQUEST_3 != 0x83042d4eUL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_SOUND_REQUEST_4 != 0xdff244d9UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_SOUND_REQUEST_5 != 0x7a9cf85aUL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_SOUND_REQUEST_6 != 0xbc740976UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_SOUND_REQUEST_7 != 0x5bccba07UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_SOUND_REQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_SOUND_REQUEST_0 0x39543802UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_SOUND_REQUEST_1 0xb9bb1074UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_SOUND_REQUEST_2 0x73592dbbUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_SOUND_REQUEST_3 0x83042d4eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_SOUND_REQUEST_4 0xdff244d9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_SOUND_REQUEST_5 0x7a9cf85aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_SOUND_REQUEST_6 0xbc740976UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_SOUND_REQUEST_7 0x5bccba07UL

/** @brief Complete ROS2 turtlebot3_msgs/srv/Sound_Request value; no field projects away native data. */
typedef struct roswasmc_bounded_2_turtlebot3_msgs_srv_Sound_Request
{
    /** @brief Declared field value; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t value;
} roswasmc_bounded_2_turtlebot3_msgs_srv_Sound_Request;

# define ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_SOUND_REQUEST_MAX_WIRE_BYTES 1u
# define ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_SOUND_REQUEST_MIN_WIRE_BYTES 1u
# define ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_SOUND_REQUEST_CODEC_IDENTITY "UWVMROS1_0dcba95f5ba646d9a24b0054ba603daf1d1e5e4e9a6ffe7387cd61bff2e4151a"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_turtlebot3_msgs_srv_Sound_Request_valid(roswasmc_bounded_2_turtlebot3_msgs_srv_Sound_Request const* value)
{
    if(!value)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_turtlebot3_msgs_srv_Sound_Request_wire_size(roswasmc_bounded_2_turtlebot3_msgs_srv_Sound_Request const* value)
{
    size_t n = 0;
    n += 1;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_turtlebot3_msgs_srv_Sound_Request_write_fields(roswasmc_bounded_2_turtlebot3_msgs_srv_Sound_Request const* value,
                                                                                     unsigned char* p,
                                                                                     size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->value, 1);
    *offset += 1;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_turtlebot3_msgs_srv_Sound_Request_read_fields(unsigned char const* p,
                                                                                   size_t n,
                                                                                   size_t* offset,
                                                                                   roswasmc_bounded_2_turtlebot3_msgs_srv_Sound_Request* value)
{
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->value, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_2_turtlebot3_msgs_srv_Sound_Request_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_turtlebot3_msgs_srv_Sound_Request_encode(roswasmc_bounded_2_turtlebot3_msgs_srv_Sound_Request const* value,
                                                                                   void* output,
                                                                                   size_t capacity,
                                                                                   size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_turtlebot3_msgs_srv_Sound_Request_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_turtlebot3_msgs_srv_Sound_Request_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_turtlebot3_msgs_srv_Sound_Request_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_turtlebot3_msgs_srv_Sound_Request_decode(void const* input, size_t length, roswasmc_bounded_2_turtlebot3_msgs_srv_Sound_Request* value)
{
    roswasmc_bounded_2_turtlebot3_msgs_srv_Sound_Request next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 1u || length > 1u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_turtlebot3_msgs_srv_Sound_Request_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_SOUND_RESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_SOUND_RESPONSE_0 != 0x4e8f6e19UL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_SOUND_RESPONSE_1 != 0x726b14b2UL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_SOUND_RESPONSE_2 != 0x856c6032UL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_SOUND_RESPONSE_3 != 0x9df43931UL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_SOUND_RESPONSE_4 != 0xeb84ade8UL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_SOUND_RESPONSE_5 != 0x48e646a4UL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_SOUND_RESPONSE_6 != 0xa578cb1dUL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_SOUND_RESPONSE_7 != 0xcbb9ec70UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_SOUND_RESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_SOUND_RESPONSE_0 0x4e8f6e19UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_SOUND_RESPONSE_1 0x726b14b2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_SOUND_RESPONSE_2 0x856c6032UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_SOUND_RESPONSE_3 0x9df43931UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_SOUND_RESPONSE_4 0xeb84ade8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_SOUND_RESPONSE_5 0x48e646a4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_SOUND_RESPONSE_6 0xa578cb1dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_SOUND_RESPONSE_7 0xcbb9ec70UL

/** @brief UTF-8 byte storage for turtlebot3_msgs/srv/Sound_Response.message; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[256];
} roswasmc_bounded_2_turtlebot3_msgs_srv_Sound_Response_message_text;

/** @brief Complete ROS2 turtlebot3_msgs/srv/Sound_Response value; no field projects away native data. */
typedef struct roswasmc_bounded_2_turtlebot3_msgs_srv_Sound_Response
{
    /** @brief Declared field success; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t success;
    /** @brief Declared field message; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_turtlebot3_msgs_srv_Sound_Response_message_text message;
} roswasmc_bounded_2_turtlebot3_msgs_srv_Sound_Response;

# define ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_SOUND_RESPONSE_MAX_WIRE_BYTES 261u
# define ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_SOUND_RESPONSE_MIN_WIRE_BYTES 5u
# define ROSWASMC_BOUNDED_2_TURTLEBOT3_MSGS_SRV_SOUND_RESPONSE_CODEC_IDENTITY "UWVMROS1_bc5a5fd3e2bf733a278b8a1315c8905b27fff49b4844df238d5574149068998e"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_turtlebot3_msgs_srv_Sound_Response_valid(roswasmc_bounded_2_turtlebot3_msgs_srv_Sound_Response const* value)
{
    if(!value)
        return 0;
    if(value->success > 1)
        return 0;
    if(value->message.size > 256u || !uwvm_bounded_utf8(value->message.data, value->message.size))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_turtlebot3_msgs_srv_Sound_Response_wire_size(roswasmc_bounded_2_turtlebot3_msgs_srv_Sound_Response const* value)
{
    size_t n = 0;
    n += 1;
    n += 4 + value->message.size;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_turtlebot3_msgs_srv_Sound_Response_write_fields(roswasmc_bounded_2_turtlebot3_msgs_srv_Sound_Response const* value,
                                                                                      unsigned char* p,
                                                                                      size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->success, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, value->message.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->message.data, value->message.size);
    *offset += value->message.size;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_turtlebot3_msgs_srv_Sound_Response_read_fields(unsigned char const* p,
                                                                                    size_t n,
                                                                                    size_t* offset,
                                                                                    roswasmc_bounded_2_turtlebot3_msgs_srv_Sound_Response* value)
{
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->success, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->message.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->message.size > 256u || value->message.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->message.data, p + *offset, value->message.size);
    *offset += value->message.size;
    return roswasmc_bounded_2_turtlebot3_msgs_srv_Sound_Response_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_turtlebot3_msgs_srv_Sound_Response_encode(roswasmc_bounded_2_turtlebot3_msgs_srv_Sound_Response const* value,
                                                                                    void* output,
                                                                                    size_t capacity,
                                                                                    size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_turtlebot3_msgs_srv_Sound_Response_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_turtlebot3_msgs_srv_Sound_Response_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_turtlebot3_msgs_srv_Sound_Response_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_turtlebot3_msgs_srv_Sound_Response_decode(void const* input, size_t length, roswasmc_bounded_2_turtlebot3_msgs_srv_Sound_Response* value)
{
    roswasmc_bounded_2_turtlebot3_msgs_srv_Sound_Response next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 5u || length > 261u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_turtlebot3_msgs_srv_Sound_Response_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#undef UWVM_BOUNDED_ASSERT
#endif
