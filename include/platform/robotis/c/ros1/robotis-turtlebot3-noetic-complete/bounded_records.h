/** @file Generated bounded-v2 canonical values; no native ROS serialization or authority.
 * Every dynamic field has inline caller-owned capacity. Encode validates and measures
 * the full value before writes; decode commits one temporary only after full validation.
 * Supply distinct record, byte and size-output storage; overlap is explicitly refused.
 * Empty Service/Action components use a C layout dummy that is never a wire field. */
#ifndef UWVM_ROS_BOUNDED_RECORDS_1B7A699B6852D61ABD780E613692F1E4D297D35D471F743A11548C4426CA848B
#define UWVM_ROS_BOUNDED_RECORDS_1B7A699B6852D61ABD780E613692F1E4D297D35D471F743A11548C4426CA848B
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
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POINT)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POINT_0 != 0x82ef1675UL ||                                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POINT_1 != 0xb97d1448UL ||                                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POINT_2 != 0xe124f62cUL ||                                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POINT_3 != 0x376f2131UL ||                                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POINT_4 != 0x7509cfe4UL ||                                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POINT_5 != 0xe47a0145UL ||                                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POINT_6 != 0x11d41d87UL ||                                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POINT_7 != 0x93e4d387UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POINT 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POINT_0 0x82ef1675UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POINT_1 0xb97d1448UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POINT_2 0xe124f62cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POINT_3 0x376f2131UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POINT_4 0x7509cfe4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POINT_5 0xe47a0145UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POINT_6 0x11d41d87UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POINT_7 0x93e4d387UL

/** @brief Complete ROS1 geometry_msgs/Point value; no field projects away native data. */
typedef struct roswasmc_bounded_1_geometry_msgs_Point
{
    /** @brief Declared field x; canonical capacity is part of CODEC_IDENTITY. */
    double x;
    /** @brief Declared field y; canonical capacity is part of CODEC_IDENTITY. */
    double y;
    /** @brief Declared field z; canonical capacity is part of CODEC_IDENTITY. */
    double z;
} roswasmc_bounded_1_geometry_msgs_Point;

# define ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POINT_MAX_WIRE_BYTES 24u
# define ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POINT_MIN_WIRE_BYTES 24u
# define ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POINT_CODEC_IDENTITY "UWVMROS1_b55e2bde60f6cedb426cada54bc7baefc536c7bc731bd49fb152d89a892de62b"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_geometry_msgs_Point_valid(roswasmc_bounded_1_geometry_msgs_Point const* value)
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
static inline size_t roswasmc_bounded_1_geometry_msgs_Point_wire_size(roswasmc_bounded_1_geometry_msgs_Point const* value)
{
    size_t n = 0;
    n += 8;
    n += 8;
    n += 8;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_1_geometry_msgs_Point_write_fields(roswasmc_bounded_1_geometry_msgs_Point const* value, unsigned char* p, size_t* offset)
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
    roswasmc_bounded_1_geometry_msgs_Point_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_1_geometry_msgs_Point* value)
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
    return roswasmc_bounded_1_geometry_msgs_Point_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_1_geometry_msgs_Point_encode(roswasmc_bounded_1_geometry_msgs_Point const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_geometry_msgs_Point_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_geometry_msgs_Point_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_geometry_msgs_Point_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_1_geometry_msgs_Point_decode(void const* input, size_t length, roswasmc_bounded_1_geometry_msgs_Point* value)
{
    roswasmc_bounded_1_geometry_msgs_Point next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 24u || length > 24u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_geometry_msgs_Point_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_QUATERNION)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_QUATERNION_0 != 0x84d7d1b4UL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_QUATERNION_1 != 0xc899d875UL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_QUATERNION_2 != 0xf288b383UL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_QUATERNION_3 != 0xca824e7cUL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_QUATERNION_4 != 0xd29586a3UL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_QUATERNION_5 != 0x60f1c1b7UL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_QUATERNION_6 != 0x78b067d2UL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_QUATERNION_7 != 0x5073f3c1UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_QUATERNION 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_QUATERNION_0 0x84d7d1b4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_QUATERNION_1 0xc899d875UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_QUATERNION_2 0xf288b383UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_QUATERNION_3 0xca824e7cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_QUATERNION_4 0xd29586a3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_QUATERNION_5 0x60f1c1b7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_QUATERNION_6 0x78b067d2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_QUATERNION_7 0x5073f3c1UL

/** @brief Complete ROS1 geometry_msgs/Quaternion value; no field projects away native data. */
typedef struct roswasmc_bounded_1_geometry_msgs_Quaternion
{
    /** @brief Declared field x; canonical capacity is part of CODEC_IDENTITY. */
    double x;
    /** @brief Declared field y; canonical capacity is part of CODEC_IDENTITY. */
    double y;
    /** @brief Declared field z; canonical capacity is part of CODEC_IDENTITY. */
    double z;
    /** @brief Declared field w; canonical capacity is part of CODEC_IDENTITY. */
    double w;
} roswasmc_bounded_1_geometry_msgs_Quaternion;

# define ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_QUATERNION_MAX_WIRE_BYTES 32u
# define ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_QUATERNION_MIN_WIRE_BYTES 32u
# define ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_QUATERNION_CODEC_IDENTITY "UWVMROS1_48fe20d5d29a8ca1a630605a58f80baacc52d9a65b1ca87efd50ffdd52882934"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_geometry_msgs_Quaternion_valid(roswasmc_bounded_1_geometry_msgs_Quaternion const* value)
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
static inline size_t roswasmc_bounded_1_geometry_msgs_Quaternion_wire_size(roswasmc_bounded_1_geometry_msgs_Quaternion const* value)
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
    roswasmc_bounded_1_geometry_msgs_Quaternion_write_fields(roswasmc_bounded_1_geometry_msgs_Quaternion const* value, unsigned char* p, size_t* offset)
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
static inline int roswasmc_bounded_1_geometry_msgs_Quaternion_read_fields(unsigned char const* p,
                                                                          size_t n,
                                                                          size_t* offset,
                                                                          roswasmc_bounded_1_geometry_msgs_Quaternion* value)
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
    return roswasmc_bounded_1_geometry_msgs_Quaternion_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_1_geometry_msgs_Quaternion_encode(roswasmc_bounded_1_geometry_msgs_Quaternion const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_geometry_msgs_Quaternion_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_geometry_msgs_Quaternion_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_geometry_msgs_Quaternion_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_1_geometry_msgs_Quaternion_decode(void const* input, size_t length, roswasmc_bounded_1_geometry_msgs_Quaternion* value)
{
    roswasmc_bounded_1_geometry_msgs_Quaternion next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 32u || length > 32u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_geometry_msgs_Quaternion_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POSE_0 != 0x0c47ed4dUL ||                                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POSE_1 != 0x41556936UL ||                                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POSE_2 != 0xd0740ee4UL ||                                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POSE_3 != 0x656e90dbUL ||                                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POSE_4 != 0xa818a89eUL ||                                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POSE_5 != 0xc3b14b61UL ||                                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POSE_6 != 0x526afc7cUL ||                                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POSE_7 != 0xc0133880UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POSE_0 0x0c47ed4dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POSE_1 0x41556936UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POSE_2 0xd0740ee4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POSE_3 0x656e90dbUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POSE_4 0xa818a89eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POSE_5 0xc3b14b61UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POSE_6 0x526afc7cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POSE_7 0xc0133880UL

/** @brief Complete ROS1 geometry_msgs/Pose value; no field projects away native data. */
typedef struct roswasmc_bounded_1_geometry_msgs_Pose
{
    /** @brief Declared field position; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_geometry_msgs_Point position;
    /** @brief Declared field orientation; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_geometry_msgs_Quaternion orientation;
} roswasmc_bounded_1_geometry_msgs_Pose;

# define ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POSE_MAX_WIRE_BYTES 56u
# define ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POSE_MIN_WIRE_BYTES 56u
# define ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POSE_CODEC_IDENTITY "UWVMROS1_e49ed287cd0de31a16c8cd49ad8f41f81d44e23306b8dcb61da6e0e789595471"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_geometry_msgs_Pose_valid(roswasmc_bounded_1_geometry_msgs_Pose const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_1_geometry_msgs_Point_valid(&value->position))
        return 0;
    if(!roswasmc_bounded_1_geometry_msgs_Quaternion_valid(&value->orientation))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_1_geometry_msgs_Pose_wire_size(roswasmc_bounded_1_geometry_msgs_Pose const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_1_geometry_msgs_Point_wire_size(&value->position);
    n += roswasmc_bounded_1_geometry_msgs_Quaternion_wire_size(&value->orientation);
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_1_geometry_msgs_Pose_write_fields(roswasmc_bounded_1_geometry_msgs_Pose const* value, unsigned char* p, size_t* offset)
{
    roswasmc_bounded_1_geometry_msgs_Point_write_fields(&value->position, p, offset);
    roswasmc_bounded_1_geometry_msgs_Quaternion_write_fields(&value->orientation, p, offset);
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int
    roswasmc_bounded_1_geometry_msgs_Pose_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_1_geometry_msgs_Pose* value)
{
    if(!roswasmc_bounded_1_geometry_msgs_Point_read_fields(p, n, offset, &value->position))
        return 0;
    if(!roswasmc_bounded_1_geometry_msgs_Quaternion_read_fields(p, n, offset, &value->orientation))
        return 0;
    return roswasmc_bounded_1_geometry_msgs_Pose_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_1_geometry_msgs_Pose_encode(roswasmc_bounded_1_geometry_msgs_Pose const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_geometry_msgs_Pose_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_geometry_msgs_Pose_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_geometry_msgs_Pose_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_1_geometry_msgs_Pose_decode(void const* input, size_t length, roswasmc_bounded_1_geometry_msgs_Pose* value)
{
    roswasmc_bounded_1_geometry_msgs_Pose next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 56u || length > 56u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_geometry_msgs_Pose_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POSEWITHCOVARIANCE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POSEWITHCOVARIANCE_0 != 0xbbe00473UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POSEWITHCOVARIANCE_1 != 0x9e7f4b92UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POSEWITHCOVARIANCE_2 != 0xa70ff651UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POSEWITHCOVARIANCE_3 != 0x1978319bUL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POSEWITHCOVARIANCE_4 != 0x79efd6d6UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POSEWITHCOVARIANCE_5 != 0x2649d066UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POSEWITHCOVARIANCE_6 != 0x04848314UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POSEWITHCOVARIANCE_7 != 0x24b3e73bUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POSEWITHCOVARIANCE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POSEWITHCOVARIANCE_0 0xbbe00473UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POSEWITHCOVARIANCE_1 0x9e7f4b92UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POSEWITHCOVARIANCE_2 0xa70ff651UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POSEWITHCOVARIANCE_3 0x1978319bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POSEWITHCOVARIANCE_4 0x79efd6d6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POSEWITHCOVARIANCE_5 0x2649d066UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POSEWITHCOVARIANCE_6 0x04848314UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POSEWITHCOVARIANCE_7 0x24b3e73bUL

/** @brief Complete ROS1 geometry_msgs/PoseWithCovariance value; no field projects away native data. */
typedef struct roswasmc_bounded_1_geometry_msgs_PoseWithCovariance
{
    /** @brief Declared field pose; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_geometry_msgs_Pose pose;
    /** @brief Declared field covariance; canonical capacity is part of CODEC_IDENTITY. */
    double covariance[36];
} roswasmc_bounded_1_geometry_msgs_PoseWithCovariance;

# define ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POSEWITHCOVARIANCE_MAX_WIRE_BYTES 344u
# define ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POSEWITHCOVARIANCE_MIN_WIRE_BYTES 344u
# define ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POSEWITHCOVARIANCE_CODEC_IDENTITY "UWVMROS1_17b25963aafb3adfd0432febe040c9b38a531a7a667949b89e0f3937585ef8cf"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_geometry_msgs_PoseWithCovariance_valid(roswasmc_bounded_1_geometry_msgs_PoseWithCovariance const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_1_geometry_msgs_Pose_valid(&value->pose))
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
static inline size_t roswasmc_bounded_1_geometry_msgs_PoseWithCovariance_wire_size(roswasmc_bounded_1_geometry_msgs_PoseWithCovariance const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_1_geometry_msgs_Pose_wire_size(&value->pose);
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
static inline void roswasmc_bounded_1_geometry_msgs_PoseWithCovariance_write_fields(roswasmc_bounded_1_geometry_msgs_PoseWithCovariance const* value,
                                                                                    unsigned char* p,
                                                                                    size_t* offset)
{
    roswasmc_bounded_1_geometry_msgs_Pose_write_fields(&value->pose, p, offset);
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
static inline int roswasmc_bounded_1_geometry_msgs_PoseWithCovariance_read_fields(unsigned char const* p,
                                                                                  size_t n,
                                                                                  size_t* offset,
                                                                                  roswasmc_bounded_1_geometry_msgs_PoseWithCovariance* value)
{
    if(!roswasmc_bounded_1_geometry_msgs_Pose_read_fields(p, n, offset, &value->pose))
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
    return roswasmc_bounded_1_geometry_msgs_PoseWithCovariance_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_1_geometry_msgs_PoseWithCovariance_encode(roswasmc_bounded_1_geometry_msgs_PoseWithCovariance const* value,
                                                                                  void* output,
                                                                                  size_t capacity,
                                                                                  size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_geometry_msgs_PoseWithCovariance_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_geometry_msgs_PoseWithCovariance_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_geometry_msgs_PoseWithCovariance_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_1_geometry_msgs_PoseWithCovariance_decode(void const* input, size_t length, roswasmc_bounded_1_geometry_msgs_PoseWithCovariance* value)
{
    roswasmc_bounded_1_geometry_msgs_PoseWithCovariance next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 344u || length > 344u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_geometry_msgs_PoseWithCovariance_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_VECTOR3)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_VECTOR3_0 != 0x25e2e60bUL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_VECTOR3_1 != 0x61af2f1fUL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_VECTOR3_2 != 0x591215eeUL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_VECTOR3_3 != 0xeb7cbc57UL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_VECTOR3_4 != 0xb3198afbUL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_VECTOR3_5 != 0xcf6eba5fUL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_VECTOR3_6 != 0x38b12492UL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_VECTOR3_7 != 0x14dd839bUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_VECTOR3 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_VECTOR3_0 0x25e2e60bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_VECTOR3_1 0x61af2f1fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_VECTOR3_2 0x591215eeUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_VECTOR3_3 0xeb7cbc57UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_VECTOR3_4 0xb3198afbUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_VECTOR3_5 0xcf6eba5fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_VECTOR3_6 0x38b12492UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_VECTOR3_7 0x14dd839bUL

/** @brief Complete ROS1 geometry_msgs/Vector3 value; no field projects away native data. */
typedef struct roswasmc_bounded_1_geometry_msgs_Vector3
{
    /** @brief Declared field x; canonical capacity is part of CODEC_IDENTITY. */
    double x;
    /** @brief Declared field y; canonical capacity is part of CODEC_IDENTITY. */
    double y;
    /** @brief Declared field z; canonical capacity is part of CODEC_IDENTITY. */
    double z;
} roswasmc_bounded_1_geometry_msgs_Vector3;

# define ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_VECTOR3_MAX_WIRE_BYTES 24u
# define ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_VECTOR3_MIN_WIRE_BYTES 24u
# define ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_VECTOR3_CODEC_IDENTITY "UWVMROS1_e90efcf4803d82763e0b83f8ef5502b5d042158873fcc91be32543d25d7632bc"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_geometry_msgs_Vector3_valid(roswasmc_bounded_1_geometry_msgs_Vector3 const* value)
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
static inline size_t roswasmc_bounded_1_geometry_msgs_Vector3_wire_size(roswasmc_bounded_1_geometry_msgs_Vector3 const* value)
{
    size_t n = 0;
    n += 8;
    n += 8;
    n += 8;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_1_geometry_msgs_Vector3_write_fields(roswasmc_bounded_1_geometry_msgs_Vector3 const* value, unsigned char* p, size_t* offset)
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
    roswasmc_bounded_1_geometry_msgs_Vector3_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_1_geometry_msgs_Vector3* value)
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
    return roswasmc_bounded_1_geometry_msgs_Vector3_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_1_geometry_msgs_Vector3_encode(roswasmc_bounded_1_geometry_msgs_Vector3 const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_geometry_msgs_Vector3_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_geometry_msgs_Vector3_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_geometry_msgs_Vector3_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_1_geometry_msgs_Vector3_decode(void const* input, size_t length, roswasmc_bounded_1_geometry_msgs_Vector3* value)
{
    roswasmc_bounded_1_geometry_msgs_Vector3 next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 24u || length > 24u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_geometry_msgs_Vector3_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TRANSFORM)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TRANSFORM_0 != 0x6946a859UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TRANSFORM_1 != 0xc5441925UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TRANSFORM_2 != 0xd6466d8bUL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TRANSFORM_3 != 0xd3ddb0c4UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TRANSFORM_4 != 0x0ae393d1UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TRANSFORM_5 != 0x7c821e61UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TRANSFORM_6 != 0x8404aefeUL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TRANSFORM_7 != 0x744ffdb1UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TRANSFORM 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TRANSFORM_0 0x6946a859UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TRANSFORM_1 0xc5441925UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TRANSFORM_2 0xd6466d8bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TRANSFORM_3 0xd3ddb0c4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TRANSFORM_4 0x0ae393d1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TRANSFORM_5 0x7c821e61UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TRANSFORM_6 0x8404aefeUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TRANSFORM_7 0x744ffdb1UL

/** @brief Complete ROS1 geometry_msgs/Transform value; no field projects away native data. */
typedef struct roswasmc_bounded_1_geometry_msgs_Transform
{
    /** @brief Declared field translation; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_geometry_msgs_Vector3 translation;
    /** @brief Declared field rotation; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_geometry_msgs_Quaternion rotation;
} roswasmc_bounded_1_geometry_msgs_Transform;

# define ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TRANSFORM_MAX_WIRE_BYTES 56u
# define ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TRANSFORM_MIN_WIRE_BYTES 56u
# define ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TRANSFORM_CODEC_IDENTITY "UWVMROS1_61aabab03e8f766ea05949c9e5f4989186d72a26f793b8d11752e53f1f300085"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_geometry_msgs_Transform_valid(roswasmc_bounded_1_geometry_msgs_Transform const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_1_geometry_msgs_Vector3_valid(&value->translation))
        return 0;
    if(!roswasmc_bounded_1_geometry_msgs_Quaternion_valid(&value->rotation))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_1_geometry_msgs_Transform_wire_size(roswasmc_bounded_1_geometry_msgs_Transform const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_1_geometry_msgs_Vector3_wire_size(&value->translation);
    n += roswasmc_bounded_1_geometry_msgs_Quaternion_wire_size(&value->rotation);
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_1_geometry_msgs_Transform_write_fields(roswasmc_bounded_1_geometry_msgs_Transform const* value, unsigned char* p, size_t* offset)
{
    roswasmc_bounded_1_geometry_msgs_Vector3_write_fields(&value->translation, p, offset);
    roswasmc_bounded_1_geometry_msgs_Quaternion_write_fields(&value->rotation, p, offset);
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int
    roswasmc_bounded_1_geometry_msgs_Transform_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_1_geometry_msgs_Transform* value)
{
    if(!roswasmc_bounded_1_geometry_msgs_Vector3_read_fields(p, n, offset, &value->translation))
        return 0;
    if(!roswasmc_bounded_1_geometry_msgs_Quaternion_read_fields(p, n, offset, &value->rotation))
        return 0;
    return roswasmc_bounded_1_geometry_msgs_Transform_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_1_geometry_msgs_Transform_encode(roswasmc_bounded_1_geometry_msgs_Transform const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_geometry_msgs_Transform_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_geometry_msgs_Transform_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_geometry_msgs_Transform_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_1_geometry_msgs_Transform_decode(void const* input, size_t length, roswasmc_bounded_1_geometry_msgs_Transform* value)
{
    roswasmc_bounded_1_geometry_msgs_Transform next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 56u || length > 56u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_geometry_msgs_Transform_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TIME)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TIME_0 != 0x230564cdUL || UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TIME_1 != 0x73d83bdaUL ||                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TIME_2 != 0x3c9e449dUL || UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TIME_3 != 0x3d16038eUL ||                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TIME_4 != 0x53dba45aUL || UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TIME_5 != 0x8c5fb8a0UL ||                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TIME_6 != 0xfc5b0b8aUL || UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TIME_7 != 0x9538341fUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TIME 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TIME_0 0x230564cdUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TIME_1 0x73d83bdaUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TIME_2 0x3c9e449dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TIME_3 0x3d16038eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TIME_4 0x53dba45aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TIME_5 0x8c5fb8a0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TIME_6 0xfc5b0b8aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TIME_7 0x9538341fUL

/** @brief Complete ROS1 time value; no field projects away native data. */
typedef struct roswasmc_bounded_1_time
{
    /** @brief Declared field sec; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t sec;
    /** @brief Declared field nsec; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t nsec;
} roswasmc_bounded_1_time;

# define ROSWASMC_BOUNDED_1_TIME_MAX_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_1_TIME_MIN_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_1_TIME_CODEC_IDENTITY "UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_time_valid(roswasmc_bounded_1_time const* value)
{
    if(!value)
        return 0;
    if(value->nsec >= 1000000000)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_1_time_wire_size(roswasmc_bounded_1_time const* value)
{
    size_t n = 0;
    n += 4;
    n += 4;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_1_time_write_fields(roswasmc_bounded_1_time const* value, unsigned char* p, size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->sec, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, (uint64_t)value->nsec, 4);
    *offset += 4;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_time_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_1_time* value)
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
        uwvm_bounded_copy(&value->nsec, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_1_time_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_1_time_encode(roswasmc_bounded_1_time const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_time_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_time_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_time_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_1_time_decode(void const* input, size_t length, roswasmc_bounded_1_time* value)
{
    roswasmc_bounded_1_time next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 8u || length > 8u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_time_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_MSGS_HEADER)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_MSGS_HEADER_0 != 0x708b5550UL ||                                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_MSGS_HEADER_1 != 0x16ddb9e1UL ||                                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_MSGS_HEADER_2 != 0x1bf29141UL ||                                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_MSGS_HEADER_3 != 0xd4312551UL ||                                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_MSGS_HEADER_4 != 0xa5f20741UL ||                                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_MSGS_HEADER_5 != 0xeedfd9b3UL ||                                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_MSGS_HEADER_6 != 0x0278a587UL ||                                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_MSGS_HEADER_7 != 0xb5ff5554UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_MSGS_HEADER 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_MSGS_HEADER_0 0x708b5550UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_MSGS_HEADER_1 0x16ddb9e1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_MSGS_HEADER_2 0x1bf29141UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_MSGS_HEADER_3 0xd4312551UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_MSGS_HEADER_4 0xa5f20741UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_MSGS_HEADER_5 0xeedfd9b3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_MSGS_HEADER_6 0x0278a587UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_MSGS_HEADER_7 0xb5ff5554UL

/** @brief UTF-8 byte storage for std_msgs/Header.frame_id; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_1_std_msgs_Header_frame_id_text;

/** @brief Complete ROS1 std_msgs/Header value; no field projects away native data. */
typedef struct roswasmc_bounded_1_std_msgs_Header
{
    /** @brief Declared field seq; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t seq;
    /** @brief Declared field stamp; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_time stamp;
    /** @brief Declared field frame_id; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_std_msgs_Header_frame_id_text frame_id;
} roswasmc_bounded_1_std_msgs_Header;

# define ROSWASMC_BOUNDED_1_STD_MSGS_HEADER_MAX_WIRE_BYTES 144u
# define ROSWASMC_BOUNDED_1_STD_MSGS_HEADER_MIN_WIRE_BYTES 16u
# define ROSWASMC_BOUNDED_1_STD_MSGS_HEADER_CODEC_IDENTITY "UWVMROS1_ee2b4e736d36ebcdb562d3ef7832777233d39d366837e9148a76aa2c36756435"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_std_msgs_Header_valid(roswasmc_bounded_1_std_msgs_Header const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_1_time_valid(&value->stamp))
        return 0;
    if(value->frame_id.size > 128u || !uwvm_bounded_utf8(value->frame_id.data, value->frame_id.size))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_1_std_msgs_Header_wire_size(roswasmc_bounded_1_std_msgs_Header const* value)
{
    size_t n = 0;
    n += 4;
    n += roswasmc_bounded_1_time_wire_size(&value->stamp);
    n += 4 + value->frame_id.size;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_1_std_msgs_Header_write_fields(roswasmc_bounded_1_std_msgs_Header const* value, unsigned char* p, size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->seq, 4);
    *offset += 4;
    roswasmc_bounded_1_time_write_fields(&value->stamp, p, offset);
    uwvm_bounded_put(p + *offset, value->frame_id.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->frame_id.data, value->frame_id.size);
    *offset += value->frame_id.size;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_std_msgs_Header_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_1_std_msgs_Header* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->seq, &bits, 4);
    }
    *offset += 4;
    if(!roswasmc_bounded_1_time_read_fields(p, n, offset, &value->stamp))
        return 0;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->frame_id.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->frame_id.size > 128u || value->frame_id.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->frame_id.data, p + *offset, value->frame_id.size);
    *offset += value->frame_id.size;
    return roswasmc_bounded_1_std_msgs_Header_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_1_std_msgs_Header_encode(roswasmc_bounded_1_std_msgs_Header const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_std_msgs_Header_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_std_msgs_Header_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_std_msgs_Header_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_1_std_msgs_Header_decode(void const* input, size_t length, roswasmc_bounded_1_std_msgs_Header* value)
{
    roswasmc_bounded_1_std_msgs_Header next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 16u || length > 144u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_std_msgs_Header_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TRANSFORMSTAMPED)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TRANSFORMSTAMPED_0 != 0x912899daUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TRANSFORMSTAMPED_1 != 0x15f5b6a2UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TRANSFORMSTAMPED_2 != 0x5f2c7c33UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TRANSFORMSTAMPED_3 != 0x56132b98UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TRANSFORMSTAMPED_4 != 0x380730d5UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TRANSFORMSTAMPED_5 != 0x8790868cUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TRANSFORMSTAMPED_6 != 0xb06dfeb4UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TRANSFORMSTAMPED_7 != 0x5697aba7UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TRANSFORMSTAMPED 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TRANSFORMSTAMPED_0 0x912899daUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TRANSFORMSTAMPED_1 0x15f5b6a2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TRANSFORMSTAMPED_2 0x5f2c7c33UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TRANSFORMSTAMPED_3 0x56132b98UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TRANSFORMSTAMPED_4 0x380730d5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TRANSFORMSTAMPED_5 0x8790868cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TRANSFORMSTAMPED_6 0xb06dfeb4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TRANSFORMSTAMPED_7 0x5697aba7UL

/** @brief UTF-8 byte storage for geometry_msgs/TransformStamped.child_frame_id; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[256];
} roswasmc_bounded_1_geometry_msgs_TransformStamped_child_frame_id_text;

/** @brief Complete ROS1 geometry_msgs/TransformStamped value; no field projects away native data. */
typedef struct roswasmc_bounded_1_geometry_msgs_TransformStamped
{
    /** @brief Declared field header; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_std_msgs_Header header;
    /** @brief Declared field child_frame_id; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_geometry_msgs_TransformStamped_child_frame_id_text child_frame_id;
    /** @brief Declared field transform; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_geometry_msgs_Transform transform;
} roswasmc_bounded_1_geometry_msgs_TransformStamped;

# define ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TRANSFORMSTAMPED_MAX_WIRE_BYTES 460u
# define ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TRANSFORMSTAMPED_MIN_WIRE_BYTES 76u
# define ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TRANSFORMSTAMPED_CODEC_IDENTITY "UWVMROS1_9237b5dc5d3beacf4310244ce746a4210b9864855b611d1bf54cf23c28d7b79a"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_geometry_msgs_TransformStamped_valid(roswasmc_bounded_1_geometry_msgs_TransformStamped const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_1_std_msgs_Header_valid(&value->header))
        return 0;
    if(value->child_frame_id.size > 256u || !uwvm_bounded_utf8(value->child_frame_id.data, value->child_frame_id.size))
        return 0;
    if(!roswasmc_bounded_1_geometry_msgs_Transform_valid(&value->transform))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_1_geometry_msgs_TransformStamped_wire_size(roswasmc_bounded_1_geometry_msgs_TransformStamped const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_1_std_msgs_Header_wire_size(&value->header);
    n += 4 + value->child_frame_id.size;
    n += roswasmc_bounded_1_geometry_msgs_Transform_wire_size(&value->transform);
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_1_geometry_msgs_TransformStamped_write_fields(roswasmc_bounded_1_geometry_msgs_TransformStamped const* value,
                                                                                  unsigned char* p,
                                                                                  size_t* offset)
{
    roswasmc_bounded_1_std_msgs_Header_write_fields(&value->header, p, offset);
    uwvm_bounded_put(p + *offset, value->child_frame_id.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->child_frame_id.data, value->child_frame_id.size);
    *offset += value->child_frame_id.size;
    roswasmc_bounded_1_geometry_msgs_Transform_write_fields(&value->transform, p, offset);
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_geometry_msgs_TransformStamped_read_fields(unsigned char const* p,
                                                                                size_t n,
                                                                                size_t* offset,
                                                                                roswasmc_bounded_1_geometry_msgs_TransformStamped* value)
{
    if(!roswasmc_bounded_1_std_msgs_Header_read_fields(p, n, offset, &value->header))
        return 0;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->child_frame_id.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->child_frame_id.size > 256u || value->child_frame_id.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->child_frame_id.data, p + *offset, value->child_frame_id.size);
    *offset += value->child_frame_id.size;
    if(!roswasmc_bounded_1_geometry_msgs_Transform_read_fields(p, n, offset, &value->transform))
        return 0;
    return roswasmc_bounded_1_geometry_msgs_TransformStamped_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_1_geometry_msgs_TransformStamped_encode(roswasmc_bounded_1_geometry_msgs_TransformStamped const* value,
                                                                                void* output,
                                                                                size_t capacity,
                                                                                size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_geometry_msgs_TransformStamped_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_geometry_msgs_TransformStamped_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_geometry_msgs_TransformStamped_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_1_geometry_msgs_TransformStamped_decode(void const* input, size_t length, roswasmc_bounded_1_geometry_msgs_TransformStamped* value)
{
    roswasmc_bounded_1_geometry_msgs_TransformStamped next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 76u || length > 460u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_geometry_msgs_TransformStamped_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TWIST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TWIST_0 != 0x30e32f4cUL ||                                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TWIST_1 != 0x5c827ea6UL ||                                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TWIST_2 != 0x20e6ca43UL ||                                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TWIST_3 != 0x0bcf74f8UL ||                                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TWIST_4 != 0x2f65502fUL ||                                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TWIST_5 != 0x3654d65fUL ||                                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TWIST_6 != 0x58d97c6dUL ||                                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TWIST_7 != 0x355293b8UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TWIST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TWIST_0 0x30e32f4cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TWIST_1 0x5c827ea6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TWIST_2 0x20e6ca43UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TWIST_3 0x0bcf74f8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TWIST_4 0x2f65502fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TWIST_5 0x3654d65fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TWIST_6 0x58d97c6dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TWIST_7 0x355293b8UL

/** @brief Complete ROS1 geometry_msgs/Twist value; no field projects away native data. */
typedef struct roswasmc_bounded_1_geometry_msgs_Twist
{
    /** @brief Declared field linear; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_geometry_msgs_Vector3 linear;
    /** @brief Declared field angular; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_geometry_msgs_Vector3 angular;
} roswasmc_bounded_1_geometry_msgs_Twist;

# define ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TWIST_MAX_WIRE_BYTES 48u
# define ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TWIST_MIN_WIRE_BYTES 48u
# define ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TWIST_CODEC_IDENTITY "UWVMROS1_d5a69cfff4380fcf3e9c131ddb3dfb6def041cd7308a7ebdbc150b6483dfd921"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_geometry_msgs_Twist_valid(roswasmc_bounded_1_geometry_msgs_Twist const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_1_geometry_msgs_Vector3_valid(&value->linear))
        return 0;
    if(!roswasmc_bounded_1_geometry_msgs_Vector3_valid(&value->angular))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_1_geometry_msgs_Twist_wire_size(roswasmc_bounded_1_geometry_msgs_Twist const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_1_geometry_msgs_Vector3_wire_size(&value->linear);
    n += roswasmc_bounded_1_geometry_msgs_Vector3_wire_size(&value->angular);
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_1_geometry_msgs_Twist_write_fields(roswasmc_bounded_1_geometry_msgs_Twist const* value, unsigned char* p, size_t* offset)
{
    roswasmc_bounded_1_geometry_msgs_Vector3_write_fields(&value->linear, p, offset);
    roswasmc_bounded_1_geometry_msgs_Vector3_write_fields(&value->angular, p, offset);
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int
    roswasmc_bounded_1_geometry_msgs_Twist_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_1_geometry_msgs_Twist* value)
{
    if(!roswasmc_bounded_1_geometry_msgs_Vector3_read_fields(p, n, offset, &value->linear))
        return 0;
    if(!roswasmc_bounded_1_geometry_msgs_Vector3_read_fields(p, n, offset, &value->angular))
        return 0;
    return roswasmc_bounded_1_geometry_msgs_Twist_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_1_geometry_msgs_Twist_encode(roswasmc_bounded_1_geometry_msgs_Twist const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_geometry_msgs_Twist_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_geometry_msgs_Twist_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_geometry_msgs_Twist_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_1_geometry_msgs_Twist_decode(void const* input, size_t length, roswasmc_bounded_1_geometry_msgs_Twist* value)
{
    roswasmc_bounded_1_geometry_msgs_Twist next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 48u || length > 48u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_geometry_msgs_Twist_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TWISTSTAMPED)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TWISTSTAMPED_0 != 0x15d89fe9UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TWISTSTAMPED_1 != 0x8b98c894UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TWISTSTAMPED_2 != 0x77362006UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TWISTSTAMPED_3 != 0x03d89244UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TWISTSTAMPED_4 != 0x56c65f12UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TWISTSTAMPED_5 != 0xe005ccf5UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TWISTSTAMPED_6 != 0xcf2b1d63UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TWISTSTAMPED_7 != 0x6ef65bbfUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TWISTSTAMPED 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TWISTSTAMPED_0 0x15d89fe9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TWISTSTAMPED_1 0x8b98c894UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TWISTSTAMPED_2 0x77362006UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TWISTSTAMPED_3 0x03d89244UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TWISTSTAMPED_4 0x56c65f12UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TWISTSTAMPED_5 0xe005ccf5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TWISTSTAMPED_6 0xcf2b1d63UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TWISTSTAMPED_7 0x6ef65bbfUL

/** @brief Complete ROS1 geometry_msgs/TwistStamped value; no field projects away native data. */
typedef struct roswasmc_bounded_1_geometry_msgs_TwistStamped
{
    /** @brief Declared field header; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_std_msgs_Header header;
    /** @brief Declared field twist; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_geometry_msgs_Twist twist;
} roswasmc_bounded_1_geometry_msgs_TwistStamped;

# define ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TWISTSTAMPED_MAX_WIRE_BYTES 192u
# define ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TWISTSTAMPED_MIN_WIRE_BYTES 64u
# define ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TWISTSTAMPED_CODEC_IDENTITY "UWVMROS1_27a31bcca6a50fbc6c6259b53d229872336a75628d6afd9de174eee2481946c7"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_geometry_msgs_TwistStamped_valid(roswasmc_bounded_1_geometry_msgs_TwistStamped const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_1_std_msgs_Header_valid(&value->header))
        return 0;
    if(!roswasmc_bounded_1_geometry_msgs_Twist_valid(&value->twist))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_1_geometry_msgs_TwistStamped_wire_size(roswasmc_bounded_1_geometry_msgs_TwistStamped const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_1_std_msgs_Header_wire_size(&value->header);
    n += roswasmc_bounded_1_geometry_msgs_Twist_wire_size(&value->twist);
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_1_geometry_msgs_TwistStamped_write_fields(roswasmc_bounded_1_geometry_msgs_TwistStamped const* value, unsigned char* p, size_t* offset)
{
    roswasmc_bounded_1_std_msgs_Header_write_fields(&value->header, p, offset);
    roswasmc_bounded_1_geometry_msgs_Twist_write_fields(&value->twist, p, offset);
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_geometry_msgs_TwistStamped_read_fields(unsigned char const* p,
                                                                            size_t n,
                                                                            size_t* offset,
                                                                            roswasmc_bounded_1_geometry_msgs_TwistStamped* value)
{
    if(!roswasmc_bounded_1_std_msgs_Header_read_fields(p, n, offset, &value->header))
        return 0;
    if(!roswasmc_bounded_1_geometry_msgs_Twist_read_fields(p, n, offset, &value->twist))
        return 0;
    return roswasmc_bounded_1_geometry_msgs_TwistStamped_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_1_geometry_msgs_TwistStamped_encode(roswasmc_bounded_1_geometry_msgs_TwistStamped const* value,
                                                                            void* output,
                                                                            size_t capacity,
                                                                            size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_geometry_msgs_TwistStamped_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_geometry_msgs_TwistStamped_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_geometry_msgs_TwistStamped_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_1_geometry_msgs_TwistStamped_decode(void const* input, size_t length, roswasmc_bounded_1_geometry_msgs_TwistStamped* value)
{
    roswasmc_bounded_1_geometry_msgs_TwistStamped next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 64u || length > 192u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_geometry_msgs_TwistStamped_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TWISTWITHCOVARIANCE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TWISTWITHCOVARIANCE_0 != 0xe64117edUL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TWISTWITHCOVARIANCE_1 != 0x7ae91b12UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TWISTWITHCOVARIANCE_2 != 0x5b53ff89UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TWISTWITHCOVARIANCE_3 != 0xdfe642f3UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TWISTWITHCOVARIANCE_4 != 0xb92e71e1UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TWISTWITHCOVARIANCE_5 != 0x5e22eb62UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TWISTWITHCOVARIANCE_6 != 0x543de624UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TWISTWITHCOVARIANCE_7 != 0x554fa4d6UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TWISTWITHCOVARIANCE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TWISTWITHCOVARIANCE_0 0xe64117edUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TWISTWITHCOVARIANCE_1 0x7ae91b12UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TWISTWITHCOVARIANCE_2 0x5b53ff89UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TWISTWITHCOVARIANCE_3 0xdfe642f3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TWISTWITHCOVARIANCE_4 0xb92e71e1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TWISTWITHCOVARIANCE_5 0x5e22eb62UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TWISTWITHCOVARIANCE_6 0x543de624UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TWISTWITHCOVARIANCE_7 0x554fa4d6UL

/** @brief Complete ROS1 geometry_msgs/TwistWithCovariance value; no field projects away native data. */
typedef struct roswasmc_bounded_1_geometry_msgs_TwistWithCovariance
{
    /** @brief Declared field twist; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_geometry_msgs_Twist twist;
    /** @brief Declared field covariance; canonical capacity is part of CODEC_IDENTITY. */
    double covariance[36];
} roswasmc_bounded_1_geometry_msgs_TwistWithCovariance;

# define ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TWISTWITHCOVARIANCE_MAX_WIRE_BYTES 336u
# define ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TWISTWITHCOVARIANCE_MIN_WIRE_BYTES 336u
# define ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TWISTWITHCOVARIANCE_CODEC_IDENTITY "UWVMROS1_ff6790d181503b424d84726c8f4a7852cef14c6dd93e6d32cf3c37023f74bcdf"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_geometry_msgs_TwistWithCovariance_valid(roswasmc_bounded_1_geometry_msgs_TwistWithCovariance const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_1_geometry_msgs_Twist_valid(&value->twist))
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
static inline size_t roswasmc_bounded_1_geometry_msgs_TwistWithCovariance_wire_size(roswasmc_bounded_1_geometry_msgs_TwistWithCovariance const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_1_geometry_msgs_Twist_wire_size(&value->twist);
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
static inline void roswasmc_bounded_1_geometry_msgs_TwistWithCovariance_write_fields(roswasmc_bounded_1_geometry_msgs_TwistWithCovariance const* value,
                                                                                     unsigned char* p,
                                                                                     size_t* offset)
{
    roswasmc_bounded_1_geometry_msgs_Twist_write_fields(&value->twist, p, offset);
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
static inline int roswasmc_bounded_1_geometry_msgs_TwistWithCovariance_read_fields(unsigned char const* p,
                                                                                   size_t n,
                                                                                   size_t* offset,
                                                                                   roswasmc_bounded_1_geometry_msgs_TwistWithCovariance* value)
{
    if(!roswasmc_bounded_1_geometry_msgs_Twist_read_fields(p, n, offset, &value->twist))
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
    return roswasmc_bounded_1_geometry_msgs_TwistWithCovariance_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_1_geometry_msgs_TwistWithCovariance_encode(roswasmc_bounded_1_geometry_msgs_TwistWithCovariance const* value,
                                                                                   void* output,
                                                                                   size_t capacity,
                                                                                   size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_geometry_msgs_TwistWithCovariance_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_geometry_msgs_TwistWithCovariance_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_geometry_msgs_TwistWithCovariance_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_1_geometry_msgs_TwistWithCovariance_decode(void const* input, size_t length, roswasmc_bounded_1_geometry_msgs_TwistWithCovariance* value)
{
    roswasmc_bounded_1_geometry_msgs_TwistWithCovariance next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 336u || length > 336u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_geometry_msgs_TwistWithCovariance_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_NAV_MSGS_ODOMETRY)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_NAV_MSGS_ODOMETRY_0 != 0x57db85a8UL ||                                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_NAV_MSGS_ODOMETRY_1 != 0xcb6a8ba2UL ||                                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_NAV_MSGS_ODOMETRY_2 != 0x4b9ec978UL ||                                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_NAV_MSGS_ODOMETRY_3 != 0x7f6260b8UL ||                                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_NAV_MSGS_ODOMETRY_4 != 0x0677f455UL ||                                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_NAV_MSGS_ODOMETRY_5 != 0x057c1a01UL ||                                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_NAV_MSGS_ODOMETRY_6 != 0x0c0cc6d9UL ||                                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_NAV_MSGS_ODOMETRY_7 != 0x669b9e52UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_NAV_MSGS_ODOMETRY 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_NAV_MSGS_ODOMETRY_0 0x57db85a8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_NAV_MSGS_ODOMETRY_1 0xcb6a8ba2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_NAV_MSGS_ODOMETRY_2 0x4b9ec978UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_NAV_MSGS_ODOMETRY_3 0x7f6260b8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_NAV_MSGS_ODOMETRY_4 0x0677f455UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_NAV_MSGS_ODOMETRY_5 0x057c1a01UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_NAV_MSGS_ODOMETRY_6 0x0c0cc6d9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_NAV_MSGS_ODOMETRY_7 0x669b9e52UL

/** @brief UTF-8 byte storage for nav_msgs/Odometry.child_frame_id; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[256];
} roswasmc_bounded_1_nav_msgs_Odometry_child_frame_id_text;

/** @brief Complete ROS1 nav_msgs/Odometry value; no field projects away native data. */
typedef struct roswasmc_bounded_1_nav_msgs_Odometry
{
    /** @brief Declared field header; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_std_msgs_Header header;
    /** @brief Declared field child_frame_id; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_nav_msgs_Odometry_child_frame_id_text child_frame_id;
    /** @brief Declared field pose; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_geometry_msgs_PoseWithCovariance pose;
    /** @brief Declared field twist; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_geometry_msgs_TwistWithCovariance twist;
} roswasmc_bounded_1_nav_msgs_Odometry;

# define ROSWASMC_BOUNDED_1_NAV_MSGS_ODOMETRY_MAX_WIRE_BYTES 1084u
# define ROSWASMC_BOUNDED_1_NAV_MSGS_ODOMETRY_MIN_WIRE_BYTES 700u
# define ROSWASMC_BOUNDED_1_NAV_MSGS_ODOMETRY_CODEC_IDENTITY "UWVMROS1_e0ff5eb7aef868891846ac7618249b12c18fcf0969653f24fdeaa7644e636ca0"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_nav_msgs_Odometry_valid(roswasmc_bounded_1_nav_msgs_Odometry const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_1_std_msgs_Header_valid(&value->header))
        return 0;
    if(value->child_frame_id.size > 256u || !uwvm_bounded_utf8(value->child_frame_id.data, value->child_frame_id.size))
        return 0;
    if(!roswasmc_bounded_1_geometry_msgs_PoseWithCovariance_valid(&value->pose))
        return 0;
    if(!roswasmc_bounded_1_geometry_msgs_TwistWithCovariance_valid(&value->twist))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_1_nav_msgs_Odometry_wire_size(roswasmc_bounded_1_nav_msgs_Odometry const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_1_std_msgs_Header_wire_size(&value->header);
    n += 4 + value->child_frame_id.size;
    n += roswasmc_bounded_1_geometry_msgs_PoseWithCovariance_wire_size(&value->pose);
    n += roswasmc_bounded_1_geometry_msgs_TwistWithCovariance_wire_size(&value->twist);
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_1_nav_msgs_Odometry_write_fields(roswasmc_bounded_1_nav_msgs_Odometry const* value, unsigned char* p, size_t* offset)
{
    roswasmc_bounded_1_std_msgs_Header_write_fields(&value->header, p, offset);
    uwvm_bounded_put(p + *offset, value->child_frame_id.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->child_frame_id.data, value->child_frame_id.size);
    *offset += value->child_frame_id.size;
    roswasmc_bounded_1_geometry_msgs_PoseWithCovariance_write_fields(&value->pose, p, offset);
    roswasmc_bounded_1_geometry_msgs_TwistWithCovariance_write_fields(&value->twist, p, offset);
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int
    roswasmc_bounded_1_nav_msgs_Odometry_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_1_nav_msgs_Odometry* value)
{
    if(!roswasmc_bounded_1_std_msgs_Header_read_fields(p, n, offset, &value->header))
        return 0;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->child_frame_id.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->child_frame_id.size > 256u || value->child_frame_id.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->child_frame_id.data, p + *offset, value->child_frame_id.size);
    *offset += value->child_frame_id.size;
    if(!roswasmc_bounded_1_geometry_msgs_PoseWithCovariance_read_fields(p, n, offset, &value->pose))
        return 0;
    if(!roswasmc_bounded_1_geometry_msgs_TwistWithCovariance_read_fields(p, n, offset, &value->twist))
        return 0;
    return roswasmc_bounded_1_nav_msgs_Odometry_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_1_nav_msgs_Odometry_encode(roswasmc_bounded_1_nav_msgs_Odometry const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_nav_msgs_Odometry_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_nav_msgs_Odometry_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_nav_msgs_Odometry_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_1_nav_msgs_Odometry_decode(void const* input, size_t length, roswasmc_bounded_1_nav_msgs_Odometry* value)
{
    roswasmc_bounded_1_nav_msgs_Odometry next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 700u || length > 1084u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_nav_msgs_Odometry_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_SENSOR_MSGS_BATTERYSTATE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_SENSOR_MSGS_BATTERYSTATE_0 != 0x8654aeaaUL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_SENSOR_MSGS_BATTERYSTATE_1 != 0x86626422UL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_SENSOR_MSGS_BATTERYSTATE_2 != 0x6d49864eUL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_SENSOR_MSGS_BATTERYSTATE_3 != 0x378371caUL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_SENSOR_MSGS_BATTERYSTATE_4 != 0xc0359239UL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_SENSOR_MSGS_BATTERYSTATE_5 != 0x33b9b130UL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_SENSOR_MSGS_BATTERYSTATE_6 != 0x8d8f02e8UL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_SENSOR_MSGS_BATTERYSTATE_7 != 0x8d78a3a8UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_SENSOR_MSGS_BATTERYSTATE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_SENSOR_MSGS_BATTERYSTATE_0 0x8654aeaaUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_SENSOR_MSGS_BATTERYSTATE_1 0x86626422UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_SENSOR_MSGS_BATTERYSTATE_2 0x6d49864eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_SENSOR_MSGS_BATTERYSTATE_3 0x378371caUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_SENSOR_MSGS_BATTERYSTATE_4 0xc0359239UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_SENSOR_MSGS_BATTERYSTATE_5 0x33b9b130UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_SENSOR_MSGS_BATTERYSTATE_6 0x8d8f02e8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_SENSOR_MSGS_BATTERYSTATE_7 0x8d78a3a8UL

/** @brief At most16 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    float data[16];
} roswasmc_bounded_1_sensor_msgs_BatteryState_cell_voltage_sequence;

/** @brief At most16 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    float data[16];
} roswasmc_bounded_1_sensor_msgs_BatteryState_cell_temperature_sequence;

/** @brief UTF-8 byte storage for sensor_msgs/BatteryState.location; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[256];
} roswasmc_bounded_1_sensor_msgs_BatteryState_location_text;

/** @brief UTF-8 byte storage for sensor_msgs/BatteryState.serial_number; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[256];
} roswasmc_bounded_1_sensor_msgs_BatteryState_serial_number_text;

/** @brief Complete ROS1 sensor_msgs/BatteryState value; no field projects away native data. */
typedef struct roswasmc_bounded_1_sensor_msgs_BatteryState
{
    /** @brief Declared field header; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_std_msgs_Header header;
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
    roswasmc_bounded_1_sensor_msgs_BatteryState_cell_voltage_sequence cell_voltage;
    /** @brief Declared field cell_temperature; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_sensor_msgs_BatteryState_cell_temperature_sequence cell_temperature;
    /** @brief Declared field location; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_sensor_msgs_BatteryState_location_text location;
    /** @brief Declared field serial_number; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_sensor_msgs_BatteryState_serial_number_text serial_number;
} roswasmc_bounded_1_sensor_msgs_BatteryState;

# define ROSWASMC_BOUNDED_1_SENSOR_MSGS_BATTERYSTATE_MAX_WIRE_BYTES 832u
# define ROSWASMC_BOUNDED_1_SENSOR_MSGS_BATTERYSTATE_MIN_WIRE_BYTES 64u
# define ROSWASMC_BOUNDED_1_SENSOR_MSGS_BATTERYSTATE_CODEC_IDENTITY "UWVMROS1_4b176902362348cd3b7eec6ae21e2035d33df6990b4682ddf5123ef6e0339441"
/** @brief Original scalar constant POWER_SUPPLY_STATUS_UNKNOWN=0; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_SENSOR_MSGS_BATTERYSTATE_POWER_SUPPLY_STATUS_UNKNOWN UINT32_C(0)
/** @brief Original scalar constant POWER_SUPPLY_STATUS_CHARGING=1; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_SENSOR_MSGS_BATTERYSTATE_POWER_SUPPLY_STATUS_CHARGING UINT32_C(1)
/** @brief Original scalar constant POWER_SUPPLY_STATUS_DISCHARGING=2; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_SENSOR_MSGS_BATTERYSTATE_POWER_SUPPLY_STATUS_DISCHARGING UINT32_C(2)
/** @brief Original scalar constant POWER_SUPPLY_STATUS_NOT_CHARGING=3; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_SENSOR_MSGS_BATTERYSTATE_POWER_SUPPLY_STATUS_NOT_CHARGING UINT32_C(3)
/** @brief Original scalar constant POWER_SUPPLY_STATUS_FULL=4; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_SENSOR_MSGS_BATTERYSTATE_POWER_SUPPLY_STATUS_FULL UINT32_C(4)
/** @brief Original scalar constant POWER_SUPPLY_HEALTH_UNKNOWN=0; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_SENSOR_MSGS_BATTERYSTATE_POWER_SUPPLY_HEALTH_UNKNOWN UINT32_C(0)
/** @brief Original scalar constant POWER_SUPPLY_HEALTH_GOOD=1; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_SENSOR_MSGS_BATTERYSTATE_POWER_SUPPLY_HEALTH_GOOD UINT32_C(1)
/** @brief Original scalar constant POWER_SUPPLY_HEALTH_OVERHEAT=2; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_SENSOR_MSGS_BATTERYSTATE_POWER_SUPPLY_HEALTH_OVERHEAT UINT32_C(2)
/** @brief Original scalar constant POWER_SUPPLY_HEALTH_DEAD=3; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_SENSOR_MSGS_BATTERYSTATE_POWER_SUPPLY_HEALTH_DEAD UINT32_C(3)
/** @brief Original scalar constant POWER_SUPPLY_HEALTH_OVERVOLTAGE=4; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_SENSOR_MSGS_BATTERYSTATE_POWER_SUPPLY_HEALTH_OVERVOLTAGE UINT32_C(4)
/** @brief Original scalar constant POWER_SUPPLY_HEALTH_UNSPEC_FAILURE=5; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_SENSOR_MSGS_BATTERYSTATE_POWER_SUPPLY_HEALTH_UNSPEC_FAILURE UINT32_C(5)
/** @brief Original scalar constant POWER_SUPPLY_HEALTH_COLD=6; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_SENSOR_MSGS_BATTERYSTATE_POWER_SUPPLY_HEALTH_COLD UINT32_C(6)
/** @brief Original scalar constant POWER_SUPPLY_HEALTH_WATCHDOG_TIMER_EXPIRE=7; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_SENSOR_MSGS_BATTERYSTATE_POWER_SUPPLY_HEALTH_WATCHDOG_TIMER_EXPIRE UINT32_C(7)
/** @brief Original scalar constant POWER_SUPPLY_HEALTH_SAFETY_TIMER_EXPIRE=8; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_SENSOR_MSGS_BATTERYSTATE_POWER_SUPPLY_HEALTH_SAFETY_TIMER_EXPIRE UINT32_C(8)
/** @brief Original scalar constant POWER_SUPPLY_TECHNOLOGY_UNKNOWN=0; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_SENSOR_MSGS_BATTERYSTATE_POWER_SUPPLY_TECHNOLOGY_UNKNOWN UINT32_C(0)
/** @brief Original scalar constant POWER_SUPPLY_TECHNOLOGY_NIMH=1; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_SENSOR_MSGS_BATTERYSTATE_POWER_SUPPLY_TECHNOLOGY_NIMH UINT32_C(1)
/** @brief Original scalar constant POWER_SUPPLY_TECHNOLOGY_LION=2; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_SENSOR_MSGS_BATTERYSTATE_POWER_SUPPLY_TECHNOLOGY_LION UINT32_C(2)
/** @brief Original scalar constant POWER_SUPPLY_TECHNOLOGY_LIPO=3; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_SENSOR_MSGS_BATTERYSTATE_POWER_SUPPLY_TECHNOLOGY_LIPO UINT32_C(3)
/** @brief Original scalar constant POWER_SUPPLY_TECHNOLOGY_LIFE=4; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_SENSOR_MSGS_BATTERYSTATE_POWER_SUPPLY_TECHNOLOGY_LIFE UINT32_C(4)
/** @brief Original scalar constant POWER_SUPPLY_TECHNOLOGY_NICD=5; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_SENSOR_MSGS_BATTERYSTATE_POWER_SUPPLY_TECHNOLOGY_NICD UINT32_C(5)
/** @brief Original scalar constant POWER_SUPPLY_TECHNOLOGY_LIMN=6; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_SENSOR_MSGS_BATTERYSTATE_POWER_SUPPLY_TECHNOLOGY_LIMN UINT32_C(6)

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_sensor_msgs_BatteryState_valid(roswasmc_bounded_1_sensor_msgs_BatteryState const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_1_std_msgs_Header_valid(&value->header))
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
static inline size_t roswasmc_bounded_1_sensor_msgs_BatteryState_wire_size(roswasmc_bounded_1_sensor_msgs_BatteryState const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_1_std_msgs_Header_wire_size(&value->header);
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
    roswasmc_bounded_1_sensor_msgs_BatteryState_write_fields(roswasmc_bounded_1_sensor_msgs_BatteryState const* value, unsigned char* p, size_t* offset)
{
    roswasmc_bounded_1_std_msgs_Header_write_fields(&value->header, p, offset);
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
static inline int roswasmc_bounded_1_sensor_msgs_BatteryState_read_fields(unsigned char const* p,
                                                                          size_t n,
                                                                          size_t* offset,
                                                                          roswasmc_bounded_1_sensor_msgs_BatteryState* value)
{
    if(!roswasmc_bounded_1_std_msgs_Header_read_fields(p, n, offset, &value->header))
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
    return roswasmc_bounded_1_sensor_msgs_BatteryState_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_1_sensor_msgs_BatteryState_encode(roswasmc_bounded_1_sensor_msgs_BatteryState const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_sensor_msgs_BatteryState_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_sensor_msgs_BatteryState_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_sensor_msgs_BatteryState_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_1_sensor_msgs_BatteryState_decode(void const* input, size_t length, roswasmc_bounded_1_sensor_msgs_BatteryState* value)
{
    roswasmc_bounded_1_sensor_msgs_BatteryState next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 64u || length > 832u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_sensor_msgs_BatteryState_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_SENSOR_MSGS_IMU)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_SENSOR_MSGS_IMU_0 != 0x6447efdbUL ||                                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_SENSOR_MSGS_IMU_1 != 0x90c3edd3UL ||                                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_SENSOR_MSGS_IMU_2 != 0xe28a5993UL ||                                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_SENSOR_MSGS_IMU_3 != 0xc7d26380UL ||                                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_SENSOR_MSGS_IMU_4 != 0x48b4ffbbUL ||                                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_SENSOR_MSGS_IMU_5 != 0xe4739397UL ||                                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_SENSOR_MSGS_IMU_6 != 0xbbbb7a1eUL ||                                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_SENSOR_MSGS_IMU_7 != 0x8d1df5e3UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_SENSOR_MSGS_IMU 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_SENSOR_MSGS_IMU_0 0x6447efdbUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_SENSOR_MSGS_IMU_1 0x90c3edd3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_SENSOR_MSGS_IMU_2 0xe28a5993UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_SENSOR_MSGS_IMU_3 0xc7d26380UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_SENSOR_MSGS_IMU_4 0x48b4ffbbUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_SENSOR_MSGS_IMU_5 0xe4739397UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_SENSOR_MSGS_IMU_6 0xbbbb7a1eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_SENSOR_MSGS_IMU_7 0x8d1df5e3UL

/** @brief Complete ROS1 sensor_msgs/Imu value; no field projects away native data. */
typedef struct roswasmc_bounded_1_sensor_msgs_Imu
{
    /** @brief Declared field header; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_std_msgs_Header header;
    /** @brief Declared field orientation; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_geometry_msgs_Quaternion orientation;
    /** @brief Declared field orientation_covariance; canonical capacity is part of CODEC_IDENTITY. */
    double orientation_covariance[9];
    /** @brief Declared field angular_velocity; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_geometry_msgs_Vector3 angular_velocity;
    /** @brief Declared field angular_velocity_covariance; canonical capacity is part of CODEC_IDENTITY. */
    double angular_velocity_covariance[9];
    /** @brief Declared field linear_acceleration; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_geometry_msgs_Vector3 linear_acceleration;
    /** @brief Declared field linear_acceleration_covariance; canonical capacity is part of CODEC_IDENTITY. */
    double linear_acceleration_covariance[9];
} roswasmc_bounded_1_sensor_msgs_Imu;

# define ROSWASMC_BOUNDED_1_SENSOR_MSGS_IMU_MAX_WIRE_BYTES 440u
# define ROSWASMC_BOUNDED_1_SENSOR_MSGS_IMU_MIN_WIRE_BYTES 312u
# define ROSWASMC_BOUNDED_1_SENSOR_MSGS_IMU_CODEC_IDENTITY "UWVMROS1_de9c3f5bb37e1dc20be73cb44f614a9ff8645c4cfbc305dc18425d8d9f130bc3"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_sensor_msgs_Imu_valid(roswasmc_bounded_1_sensor_msgs_Imu const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_1_std_msgs_Header_valid(&value->header))
        return 0;
    if(!roswasmc_bounded_1_geometry_msgs_Quaternion_valid(&value->orientation))
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
    if(!roswasmc_bounded_1_geometry_msgs_Vector3_valid(&value->angular_velocity))
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
    if(!roswasmc_bounded_1_geometry_msgs_Vector3_valid(&value->linear_acceleration))
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
static inline size_t roswasmc_bounded_1_sensor_msgs_Imu_wire_size(roswasmc_bounded_1_sensor_msgs_Imu const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_1_std_msgs_Header_wire_size(&value->header);
    n += roswasmc_bounded_1_geometry_msgs_Quaternion_wire_size(&value->orientation);
    {
        size_t i;
        for(i = 0; i < 9u; ++i)
        {
            n += 8;
        }
    }
    n += roswasmc_bounded_1_geometry_msgs_Vector3_wire_size(&value->angular_velocity);
    {
        size_t i;
        for(i = 0; i < 9u; ++i)
        {
            n += 8;
        }
    }
    n += roswasmc_bounded_1_geometry_msgs_Vector3_wire_size(&value->linear_acceleration);
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
static inline void roswasmc_bounded_1_sensor_msgs_Imu_write_fields(roswasmc_bounded_1_sensor_msgs_Imu const* value, unsigned char* p, size_t* offset)
{
    roswasmc_bounded_1_std_msgs_Header_write_fields(&value->header, p, offset);
    roswasmc_bounded_1_geometry_msgs_Quaternion_write_fields(&value->orientation, p, offset);
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
    roswasmc_bounded_1_geometry_msgs_Vector3_write_fields(&value->angular_velocity, p, offset);
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
    roswasmc_bounded_1_geometry_msgs_Vector3_write_fields(&value->linear_acceleration, p, offset);
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
static inline int roswasmc_bounded_1_sensor_msgs_Imu_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_1_sensor_msgs_Imu* value)
{
    if(!roswasmc_bounded_1_std_msgs_Header_read_fields(p, n, offset, &value->header))
        return 0;
    if(!roswasmc_bounded_1_geometry_msgs_Quaternion_read_fields(p, n, offset, &value->orientation))
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
    if(!roswasmc_bounded_1_geometry_msgs_Vector3_read_fields(p, n, offset, &value->angular_velocity))
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
    if(!roswasmc_bounded_1_geometry_msgs_Vector3_read_fields(p, n, offset, &value->linear_acceleration))
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
    return roswasmc_bounded_1_sensor_msgs_Imu_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_1_sensor_msgs_Imu_encode(roswasmc_bounded_1_sensor_msgs_Imu const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_sensor_msgs_Imu_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_sensor_msgs_Imu_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_sensor_msgs_Imu_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_1_sensor_msgs_Imu_decode(void const* input, size_t length, roswasmc_bounded_1_sensor_msgs_Imu* value)
{
    roswasmc_bounded_1_sensor_msgs_Imu next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 312u || length > 440u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_sensor_msgs_Imu_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_SENSOR_MSGS_JOINTSTATE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_SENSOR_MSGS_JOINTSTATE_0 != 0x291fa9deUL ||                                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_SENSOR_MSGS_JOINTSTATE_1 != 0x2c839958UL ||                                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_SENSOR_MSGS_JOINTSTATE_2 != 0xe0f72093UL ||                                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_SENSOR_MSGS_JOINTSTATE_3 != 0x24ea7128UL ||                                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_SENSOR_MSGS_JOINTSTATE_4 != 0x892ba2acUL ||                                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_SENSOR_MSGS_JOINTSTATE_5 != 0x2cf69a8eUL ||                                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_SENSOR_MSGS_JOINTSTATE_6 != 0x060c86e9UL ||                                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_SENSOR_MSGS_JOINTSTATE_7 != 0x15152976UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_SENSOR_MSGS_JOINTSTATE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_SENSOR_MSGS_JOINTSTATE_0 0x291fa9deUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_SENSOR_MSGS_JOINTSTATE_1 0x2c839958UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_SENSOR_MSGS_JOINTSTATE_2 0xe0f72093UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_SENSOR_MSGS_JOINTSTATE_3 0x24ea7128UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_SENSOR_MSGS_JOINTSTATE_4 0x892ba2acUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_SENSOR_MSGS_JOINTSTATE_5 0x2cf69a8eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_SENSOR_MSGS_JOINTSTATE_6 0x060c86e9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_SENSOR_MSGS_JOINTSTATE_7 0x15152976UL

/** @brief UTF-8 byte storage for sensor_msgs/JointState.name; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_1_sensor_msgs_JointState_name_text;

/** @brief At most2 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_1_sensor_msgs_JointState_name_text data[2];
} roswasmc_bounded_1_sensor_msgs_JointState_name_sequence;

/** @brief At most2 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[2];
} roswasmc_bounded_1_sensor_msgs_JointState_position_sequence;

/** @brief At most2 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[2];
} roswasmc_bounded_1_sensor_msgs_JointState_velocity_sequence;

/** @brief At most2 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[2];
} roswasmc_bounded_1_sensor_msgs_JointState_effort_sequence;

/** @brief Complete ROS1 sensor_msgs/JointState value; no field projects away native data. */
typedef struct roswasmc_bounded_1_sensor_msgs_JointState
{
    /** @brief Declared field header; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_std_msgs_Header header;
    /** @brief Declared field name; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_sensor_msgs_JointState_name_sequence name;
    /** @brief Declared field position; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_sensor_msgs_JointState_position_sequence position;
    /** @brief Declared field velocity; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_sensor_msgs_JointState_velocity_sequence velocity;
    /** @brief Declared field effort; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_sensor_msgs_JointState_effort_sequence effort;
} roswasmc_bounded_1_sensor_msgs_JointState;

# define ROSWASMC_BOUNDED_1_SENSOR_MSGS_JOINTSTATE_MAX_WIRE_BYTES 472u
# define ROSWASMC_BOUNDED_1_SENSOR_MSGS_JOINTSTATE_MIN_WIRE_BYTES 32u
# define ROSWASMC_BOUNDED_1_SENSOR_MSGS_JOINTSTATE_CODEC_IDENTITY "UWVMROS1_f27093d33cca1405ec35a9e525a95aa4002421a579cb78c6da3be3719f3cb66e"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_sensor_msgs_JointState_valid(roswasmc_bounded_1_sensor_msgs_JointState const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_1_std_msgs_Header_valid(&value->header))
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
static inline size_t roswasmc_bounded_1_sensor_msgs_JointState_wire_size(roswasmc_bounded_1_sensor_msgs_JointState const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_1_std_msgs_Header_wire_size(&value->header);
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
    roswasmc_bounded_1_sensor_msgs_JointState_write_fields(roswasmc_bounded_1_sensor_msgs_JointState const* value, unsigned char* p, size_t* offset)
{
    roswasmc_bounded_1_std_msgs_Header_write_fields(&value->header, p, offset);
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
static inline int
    roswasmc_bounded_1_sensor_msgs_JointState_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_1_sensor_msgs_JointState* value)
{
    if(!roswasmc_bounded_1_std_msgs_Header_read_fields(p, n, offset, &value->header))
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
    return roswasmc_bounded_1_sensor_msgs_JointState_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_1_sensor_msgs_JointState_encode(roswasmc_bounded_1_sensor_msgs_JointState const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_sensor_msgs_JointState_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_sensor_msgs_JointState_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_sensor_msgs_JointState_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_1_sensor_msgs_JointState_decode(void const* input, size_t length, roswasmc_bounded_1_sensor_msgs_JointState* value)
{
    roswasmc_bounded_1_sensor_msgs_JointState next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 32u || length > 472u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_sensor_msgs_JointState_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_SENSOR_MSGS_LASERSCAN)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_SENSOR_MSGS_LASERSCAN_0 != 0x7ca44d3bUL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_SENSOR_MSGS_LASERSCAN_1 != 0xab8bc9aaUL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_SENSOR_MSGS_LASERSCAN_2 != 0x6d60ebb4UL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_SENSOR_MSGS_LASERSCAN_3 != 0xf6f552d8UL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_SENSOR_MSGS_LASERSCAN_4 != 0xe2d3b996UL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_SENSOR_MSGS_LASERSCAN_5 != 0x879e433eUL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_SENSOR_MSGS_LASERSCAN_6 != 0x90013bf6UL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_SENSOR_MSGS_LASERSCAN_7 != 0x6715477cUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_SENSOR_MSGS_LASERSCAN 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_SENSOR_MSGS_LASERSCAN_0 0x7ca44d3bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_SENSOR_MSGS_LASERSCAN_1 0xab8bc9aaUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_SENSOR_MSGS_LASERSCAN_2 0x6d60ebb4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_SENSOR_MSGS_LASERSCAN_3 0xf6f552d8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_SENSOR_MSGS_LASERSCAN_4 0xe2d3b996UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_SENSOR_MSGS_LASERSCAN_5 0x879e433eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_SENSOR_MSGS_LASERSCAN_6 0x90013bf6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_SENSOR_MSGS_LASERSCAN_7 0x6715477cUL

/** @brief At most1024 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    float data[1024];
} roswasmc_bounded_1_sensor_msgs_LaserScan_ranges_sequence;

/** @brief At most1024 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    float data[1024];
} roswasmc_bounded_1_sensor_msgs_LaserScan_intensities_sequence;

/** @brief Complete ROS1 sensor_msgs/LaserScan value; no field projects away native data. */
typedef struct roswasmc_bounded_1_sensor_msgs_LaserScan
{
    /** @brief Declared field header; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_std_msgs_Header header;
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
    roswasmc_bounded_1_sensor_msgs_LaserScan_ranges_sequence ranges;
    /** @brief Declared field intensities; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_sensor_msgs_LaserScan_intensities_sequence intensities;
} roswasmc_bounded_1_sensor_msgs_LaserScan;

# define ROSWASMC_BOUNDED_1_SENSOR_MSGS_LASERSCAN_MAX_WIRE_BYTES 8372u
# define ROSWASMC_BOUNDED_1_SENSOR_MSGS_LASERSCAN_MIN_WIRE_BYTES 52u
# define ROSWASMC_BOUNDED_1_SENSOR_MSGS_LASERSCAN_CODEC_IDENTITY "UWVMROS1_f7aee00335bf7d165004957149192f58abe5a27b5c4884bdf8d1ae9be06b366b"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_sensor_msgs_LaserScan_valid(roswasmc_bounded_1_sensor_msgs_LaserScan const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_1_std_msgs_Header_valid(&value->header))
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
static inline size_t roswasmc_bounded_1_sensor_msgs_LaserScan_wire_size(roswasmc_bounded_1_sensor_msgs_LaserScan const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_1_std_msgs_Header_wire_size(&value->header);
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
    roswasmc_bounded_1_sensor_msgs_LaserScan_write_fields(roswasmc_bounded_1_sensor_msgs_LaserScan const* value, unsigned char* p, size_t* offset)
{
    roswasmc_bounded_1_std_msgs_Header_write_fields(&value->header, p, offset);
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
static inline int
    roswasmc_bounded_1_sensor_msgs_LaserScan_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_1_sensor_msgs_LaserScan* value)
{
    if(!roswasmc_bounded_1_std_msgs_Header_read_fields(p, n, offset, &value->header))
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
    return roswasmc_bounded_1_sensor_msgs_LaserScan_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_1_sensor_msgs_LaserScan_encode(roswasmc_bounded_1_sensor_msgs_LaserScan const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_sensor_msgs_LaserScan_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_sensor_msgs_LaserScan_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_sensor_msgs_LaserScan_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_1_sensor_msgs_LaserScan_decode(void const* input, size_t length, roswasmc_bounded_1_sensor_msgs_LaserScan* value)
{
    roswasmc_bounded_1_sensor_msgs_LaserScan next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 52u || length > 8372u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_sensor_msgs_LaserScan_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_SENSOR_MSGS_MAGNETICFIELD)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_SENSOR_MSGS_MAGNETICFIELD_0 != 0xf51fbe01UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_SENSOR_MSGS_MAGNETICFIELD_1 != 0x1617debeUL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_SENSOR_MSGS_MAGNETICFIELD_2 != 0xef83cd43UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_SENSOR_MSGS_MAGNETICFIELD_3 != 0x0b98ad1dUL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_SENSOR_MSGS_MAGNETICFIELD_4 != 0x4de3e8d7UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_SENSOR_MSGS_MAGNETICFIELD_5 != 0xd2558d8bUL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_SENSOR_MSGS_MAGNETICFIELD_6 != 0x62ebd216UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_SENSOR_MSGS_MAGNETICFIELD_7 != 0xc3df61ceUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_SENSOR_MSGS_MAGNETICFIELD 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_SENSOR_MSGS_MAGNETICFIELD_0 0xf51fbe01UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_SENSOR_MSGS_MAGNETICFIELD_1 0x1617debeUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_SENSOR_MSGS_MAGNETICFIELD_2 0xef83cd43UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_SENSOR_MSGS_MAGNETICFIELD_3 0x0b98ad1dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_SENSOR_MSGS_MAGNETICFIELD_4 0x4de3e8d7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_SENSOR_MSGS_MAGNETICFIELD_5 0xd2558d8bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_SENSOR_MSGS_MAGNETICFIELD_6 0x62ebd216UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_SENSOR_MSGS_MAGNETICFIELD_7 0xc3df61ceUL

/** @brief Complete ROS1 sensor_msgs/MagneticField value; no field projects away native data. */
typedef struct roswasmc_bounded_1_sensor_msgs_MagneticField
{
    /** @brief Declared field header; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_std_msgs_Header header;
    /** @brief Declared field magnetic_field; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_geometry_msgs_Vector3 magnetic_field;
    /** @brief Declared field magnetic_field_covariance; canonical capacity is part of CODEC_IDENTITY. */
    double magnetic_field_covariance[9];
} roswasmc_bounded_1_sensor_msgs_MagneticField;

# define ROSWASMC_BOUNDED_1_SENSOR_MSGS_MAGNETICFIELD_MAX_WIRE_BYTES 240u
# define ROSWASMC_BOUNDED_1_SENSOR_MSGS_MAGNETICFIELD_MIN_WIRE_BYTES 112u
# define ROSWASMC_BOUNDED_1_SENSOR_MSGS_MAGNETICFIELD_CODEC_IDENTITY "UWVMROS1_1817b7ce8903797288ccf293373f81890c75af59d03d948339943a531ab754fe"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_sensor_msgs_MagneticField_valid(roswasmc_bounded_1_sensor_msgs_MagneticField const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_1_std_msgs_Header_valid(&value->header))
        return 0;
    if(!roswasmc_bounded_1_geometry_msgs_Vector3_valid(&value->magnetic_field))
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
static inline size_t roswasmc_bounded_1_sensor_msgs_MagneticField_wire_size(roswasmc_bounded_1_sensor_msgs_MagneticField const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_1_std_msgs_Header_wire_size(&value->header);
    n += roswasmc_bounded_1_geometry_msgs_Vector3_wire_size(&value->magnetic_field);
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
static inline void
    roswasmc_bounded_1_sensor_msgs_MagneticField_write_fields(roswasmc_bounded_1_sensor_msgs_MagneticField const* value, unsigned char* p, size_t* offset)
{
    roswasmc_bounded_1_std_msgs_Header_write_fields(&value->header, p, offset);
    roswasmc_bounded_1_geometry_msgs_Vector3_write_fields(&value->magnetic_field, p, offset);
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
static inline int roswasmc_bounded_1_sensor_msgs_MagneticField_read_fields(unsigned char const* p,
                                                                           size_t n,
                                                                           size_t* offset,
                                                                           roswasmc_bounded_1_sensor_msgs_MagneticField* value)
{
    if(!roswasmc_bounded_1_std_msgs_Header_read_fields(p, n, offset, &value->header))
        return 0;
    if(!roswasmc_bounded_1_geometry_msgs_Vector3_read_fields(p, n, offset, &value->magnetic_field))
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
    return roswasmc_bounded_1_sensor_msgs_MagneticField_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_1_sensor_msgs_MagneticField_encode(roswasmc_bounded_1_sensor_msgs_MagneticField const* value,
                                                                           void* output,
                                                                           size_t capacity,
                                                                           size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_sensor_msgs_MagneticField_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_sensor_msgs_MagneticField_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_sensor_msgs_MagneticField_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_1_sensor_msgs_MagneticField_decode(void const* input, size_t length, roswasmc_bounded_1_sensor_msgs_MagneticField* value)
{
    roswasmc_bounded_1_sensor_msgs_MagneticField next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 112u || length > 240u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_sensor_msgs_MagneticField_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_SRVS_SETBOOLREQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_SRVS_SETBOOLREQUEST_0 != 0xcab98ce9UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_SRVS_SETBOOLREQUEST_1 != 0x82c835c6UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_SRVS_SETBOOLREQUEST_2 != 0xf8678de1UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_SRVS_SETBOOLREQUEST_3 != 0xa5e6d7afUL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_SRVS_SETBOOLREQUEST_4 != 0x159d61c9UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_SRVS_SETBOOLREQUEST_5 != 0xd3762caaUL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_SRVS_SETBOOLREQUEST_6 != 0x4f540141UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_SRVS_SETBOOLREQUEST_7 != 0xd35a6785UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_SRVS_SETBOOLREQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_SRVS_SETBOOLREQUEST_0 0xcab98ce9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_SRVS_SETBOOLREQUEST_1 0x82c835c6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_SRVS_SETBOOLREQUEST_2 0xf8678de1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_SRVS_SETBOOLREQUEST_3 0xa5e6d7afUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_SRVS_SETBOOLREQUEST_4 0x159d61c9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_SRVS_SETBOOLREQUEST_5 0xd3762caaUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_SRVS_SETBOOLREQUEST_6 0x4f540141UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_SRVS_SETBOOLREQUEST_7 0xd35a6785UL

/** @brief Complete ROS1 std_srvs/SetBoolRequest value; no field projects away native data. */
typedef struct roswasmc_bounded_1_std_srvs_SetBoolRequest
{
    /** @brief Declared field data; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t data;
} roswasmc_bounded_1_std_srvs_SetBoolRequest;

# define ROSWASMC_BOUNDED_1_STD_SRVS_SETBOOLREQUEST_MAX_WIRE_BYTES 1u
# define ROSWASMC_BOUNDED_1_STD_SRVS_SETBOOLREQUEST_MIN_WIRE_BYTES 1u
# define ROSWASMC_BOUNDED_1_STD_SRVS_SETBOOLREQUEST_CODEC_IDENTITY "UWVMROS1_1621dbb16e2455a199cc871a0e784642a73bc57e76a4d524778163fab97f6aac"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_std_srvs_SetBoolRequest_valid(roswasmc_bounded_1_std_srvs_SetBoolRequest const* value)
{
    if(!value)
        return 0;
    if(value->data > 1)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_1_std_srvs_SetBoolRequest_wire_size(roswasmc_bounded_1_std_srvs_SetBoolRequest const* value)
{
    size_t n = 0;
    n += 1;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_1_std_srvs_SetBoolRequest_write_fields(roswasmc_bounded_1_std_srvs_SetBoolRequest const* value, unsigned char* p, size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->data, 1);
    *offset += 1;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int
    roswasmc_bounded_1_std_srvs_SetBoolRequest_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_1_std_srvs_SetBoolRequest* value)
{
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->data, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_1_std_srvs_SetBoolRequest_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_1_std_srvs_SetBoolRequest_encode(roswasmc_bounded_1_std_srvs_SetBoolRequest const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_std_srvs_SetBoolRequest_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_std_srvs_SetBoolRequest_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_std_srvs_SetBoolRequest_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_1_std_srvs_SetBoolRequest_decode(void const* input, size_t length, roswasmc_bounded_1_std_srvs_SetBoolRequest* value)
{
    roswasmc_bounded_1_std_srvs_SetBoolRequest next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 1u || length > 1u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_std_srvs_SetBoolRequest_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_SRVS_SETBOOLRESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_SRVS_SETBOOLRESPONSE_0 != 0x7a35d1e1UL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_SRVS_SETBOOLRESPONSE_1 != 0x4d5c1252UL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_SRVS_SETBOOLRESPONSE_2 != 0x9fc6f832UL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_SRVS_SETBOOLRESPONSE_3 != 0x38f61c60UL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_SRVS_SETBOOLRESPONSE_4 != 0x7daf1413UL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_SRVS_SETBOOLRESPONSE_5 != 0x57cacb39UL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_SRVS_SETBOOLRESPONSE_6 != 0x8af1a03dUL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_SRVS_SETBOOLRESPONSE_7 != 0xee1fc8aeUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_SRVS_SETBOOLRESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_SRVS_SETBOOLRESPONSE_0 0x7a35d1e1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_SRVS_SETBOOLRESPONSE_1 0x4d5c1252UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_SRVS_SETBOOLRESPONSE_2 0x9fc6f832UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_SRVS_SETBOOLRESPONSE_3 0x38f61c60UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_SRVS_SETBOOLRESPONSE_4 0x7daf1413UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_SRVS_SETBOOLRESPONSE_5 0x57cacb39UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_SRVS_SETBOOLRESPONSE_6 0x8af1a03dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_SRVS_SETBOOLRESPONSE_7 0xee1fc8aeUL

/** @brief UTF-8 byte storage for std_srvs/SetBoolResponse.message; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[256];
} roswasmc_bounded_1_std_srvs_SetBoolResponse_message_text;

/** @brief Complete ROS1 std_srvs/SetBoolResponse value; no field projects away native data. */
typedef struct roswasmc_bounded_1_std_srvs_SetBoolResponse
{
    /** @brief Declared field success; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t success;
    /** @brief Declared field message; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_std_srvs_SetBoolResponse_message_text message;
} roswasmc_bounded_1_std_srvs_SetBoolResponse;

# define ROSWASMC_BOUNDED_1_STD_SRVS_SETBOOLRESPONSE_MAX_WIRE_BYTES 261u
# define ROSWASMC_BOUNDED_1_STD_SRVS_SETBOOLRESPONSE_MIN_WIRE_BYTES 5u
# define ROSWASMC_BOUNDED_1_STD_SRVS_SETBOOLRESPONSE_CODEC_IDENTITY "UWVMROS1_1e12b91618f540070e34e170e12db7659f8686cdf5fb8e1bf098b8d483522cd6"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_std_srvs_SetBoolResponse_valid(roswasmc_bounded_1_std_srvs_SetBoolResponse const* value)
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
static inline size_t roswasmc_bounded_1_std_srvs_SetBoolResponse_wire_size(roswasmc_bounded_1_std_srvs_SetBoolResponse const* value)
{
    size_t n = 0;
    n += 1;
    n += 4 + value->message.size;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_1_std_srvs_SetBoolResponse_write_fields(roswasmc_bounded_1_std_srvs_SetBoolResponse const* value, unsigned char* p, size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->success, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, value->message.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->message.data, value->message.size);
    *offset += value->message.size;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_std_srvs_SetBoolResponse_read_fields(unsigned char const* p,
                                                                          size_t n,
                                                                          size_t* offset,
                                                                          roswasmc_bounded_1_std_srvs_SetBoolResponse* value)
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
    return roswasmc_bounded_1_std_srvs_SetBoolResponse_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_1_std_srvs_SetBoolResponse_encode(roswasmc_bounded_1_std_srvs_SetBoolResponse const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_std_srvs_SetBoolResponse_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_std_srvs_SetBoolResponse_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_std_srvs_SetBoolResponse_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_1_std_srvs_SetBoolResponse_decode(void const* input, size_t length, roswasmc_bounded_1_std_srvs_SetBoolResponse* value)
{
    roswasmc_bounded_1_std_srvs_SetBoolResponse next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 5u || length > 261u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_std_srvs_SetBoolResponse_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_SRVS_TRIGGERREQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_SRVS_TRIGGERREQUEST_0 != 0xa70f5c1dUL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_SRVS_TRIGGERREQUEST_1 != 0xe2fcaed3UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_SRVS_TRIGGERREQUEST_2 != 0x1ded1f3cUL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_SRVS_TRIGGERREQUEST_3 != 0x46b0ade5UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_SRVS_TRIGGERREQUEST_4 != 0x658d644eUL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_SRVS_TRIGGERREQUEST_5 != 0x6a1841a9UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_SRVS_TRIGGERREQUEST_6 != 0xf4a4b0c1UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_SRVS_TRIGGERREQUEST_7 != 0x7901f552UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_SRVS_TRIGGERREQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_SRVS_TRIGGERREQUEST_0 0xa70f5c1dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_SRVS_TRIGGERREQUEST_1 0xe2fcaed3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_SRVS_TRIGGERREQUEST_2 0x1ded1f3cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_SRVS_TRIGGERREQUEST_3 0x46b0ade5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_SRVS_TRIGGERREQUEST_4 0x658d644eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_SRVS_TRIGGERREQUEST_5 0x6a1841a9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_SRVS_TRIGGERREQUEST_6 0xf4a4b0c1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_SRVS_TRIGGERREQUEST_7 0x7901f552UL

/** @brief Complete ROS1 std_srvs/TriggerRequest value; no field projects away native data. */
typedef struct roswasmc_bounded_1_std_srvs_TriggerRequest
{
    /** @brief Local C layout placeholder; empty native component has exactly zero canonical bytes. */
    unsigned char local_empty_placeholder;
} roswasmc_bounded_1_std_srvs_TriggerRequest;

# define ROSWASMC_BOUNDED_1_STD_SRVS_TRIGGERREQUEST_MAX_WIRE_BYTES 0u
# define ROSWASMC_BOUNDED_1_STD_SRVS_TRIGGERREQUEST_MIN_WIRE_BYTES 0u
# define ROSWASMC_BOUNDED_1_STD_SRVS_TRIGGERREQUEST_CODEC_IDENTITY "UWVMROS1_d4e98dca9dc9a031d6b0f51937613f4f29c36156f0f05475339149794d47db1e"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_std_srvs_TriggerRequest_valid(roswasmc_bounded_1_std_srvs_TriggerRequest const* value)
{
    if(!value)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_1_std_srvs_TriggerRequest_wire_size(roswasmc_bounded_1_std_srvs_TriggerRequest const* value)
{
    size_t n = 0;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_1_std_srvs_TriggerRequest_write_fields(roswasmc_bounded_1_std_srvs_TriggerRequest const* value, unsigned char* p, size_t* offset)
{
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int
    roswasmc_bounded_1_std_srvs_TriggerRequest_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_1_std_srvs_TriggerRequest* value)
{
    return roswasmc_bounded_1_std_srvs_TriggerRequest_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_1_std_srvs_TriggerRequest_encode(roswasmc_bounded_1_std_srvs_TriggerRequest const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_std_srvs_TriggerRequest_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_std_srvs_TriggerRequest_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_std_srvs_TriggerRequest_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_1_std_srvs_TriggerRequest_decode(void const* input, size_t length, roswasmc_bounded_1_std_srvs_TriggerRequest* value)
{
    roswasmc_bounded_1_std_srvs_TriggerRequest next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 0u || length > 0u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_std_srvs_TriggerRequest_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_SRVS_TRIGGERRESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_SRVS_TRIGGERRESPONSE_0 != 0x44ebfad8UL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_SRVS_TRIGGERRESPONSE_1 != 0x4ff9ed37UL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_SRVS_TRIGGERRESPONSE_2 != 0x5994523bUL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_SRVS_TRIGGERRESPONSE_3 != 0x5fcee862UL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_SRVS_TRIGGERRESPONSE_4 != 0xc6094045UL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_SRVS_TRIGGERRESPONSE_5 != 0xec573679UL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_SRVS_TRIGGERRESPONSE_6 != 0x97613435UL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_SRVS_TRIGGERRESPONSE_7 != 0xcd18d07bUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_SRVS_TRIGGERRESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_SRVS_TRIGGERRESPONSE_0 0x44ebfad8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_SRVS_TRIGGERRESPONSE_1 0x4ff9ed37UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_SRVS_TRIGGERRESPONSE_2 0x5994523bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_SRVS_TRIGGERRESPONSE_3 0x5fcee862UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_SRVS_TRIGGERRESPONSE_4 0xc6094045UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_SRVS_TRIGGERRESPONSE_5 0xec573679UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_SRVS_TRIGGERRESPONSE_6 0x97613435UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_SRVS_TRIGGERRESPONSE_7 0xcd18d07bUL

/** @brief UTF-8 byte storage for std_srvs/TriggerResponse.message; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[256];
} roswasmc_bounded_1_std_srvs_TriggerResponse_message_text;

/** @brief Complete ROS1 std_srvs/TriggerResponse value; no field projects away native data. */
typedef struct roswasmc_bounded_1_std_srvs_TriggerResponse
{
    /** @brief Declared field success; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t success;
    /** @brief Declared field message; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_std_srvs_TriggerResponse_message_text message;
} roswasmc_bounded_1_std_srvs_TriggerResponse;

# define ROSWASMC_BOUNDED_1_STD_SRVS_TRIGGERRESPONSE_MAX_WIRE_BYTES 261u
# define ROSWASMC_BOUNDED_1_STD_SRVS_TRIGGERRESPONSE_MIN_WIRE_BYTES 5u
# define ROSWASMC_BOUNDED_1_STD_SRVS_TRIGGERRESPONSE_CODEC_IDENTITY "UWVMROS1_e625281ddea64aff38d8647e2673b418b77474cae0501500b280cabb3d247d1d"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_std_srvs_TriggerResponse_valid(roswasmc_bounded_1_std_srvs_TriggerResponse const* value)
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
static inline size_t roswasmc_bounded_1_std_srvs_TriggerResponse_wire_size(roswasmc_bounded_1_std_srvs_TriggerResponse const* value)
{
    size_t n = 0;
    n += 1;
    n += 4 + value->message.size;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_1_std_srvs_TriggerResponse_write_fields(roswasmc_bounded_1_std_srvs_TriggerResponse const* value, unsigned char* p, size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->success, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, value->message.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->message.data, value->message.size);
    *offset += value->message.size;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_std_srvs_TriggerResponse_read_fields(unsigned char const* p,
                                                                          size_t n,
                                                                          size_t* offset,
                                                                          roswasmc_bounded_1_std_srvs_TriggerResponse* value)
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
    return roswasmc_bounded_1_std_srvs_TriggerResponse_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_1_std_srvs_TriggerResponse_encode(roswasmc_bounded_1_std_srvs_TriggerResponse const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_std_srvs_TriggerResponse_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_std_srvs_TriggerResponse_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_std_srvs_TriggerResponse_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_1_std_srvs_TriggerResponse_decode(void const* input, size_t length, roswasmc_bounded_1_std_srvs_TriggerResponse* value)
{
    roswasmc_bounded_1_std_srvs_TriggerResponse next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 5u || length > 261u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_std_srvs_TriggerResponse_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_EXAMPLE_TURTLEBOT3GOAL)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_EXAMPLE_TURTLEBOT3GOAL_0 != 0x4a52c401UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_EXAMPLE_TURTLEBOT3GOAL_1 != 0x98e8fe3eUL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_EXAMPLE_TURTLEBOT3GOAL_2 != 0xff557e31UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_EXAMPLE_TURTLEBOT3GOAL_3 != 0xda4c826bUL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_EXAMPLE_TURTLEBOT3GOAL_4 != 0x4c8a23ebUL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_EXAMPLE_TURTLEBOT3GOAL_5 != 0x78fc357bUL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_EXAMPLE_TURTLEBOT3GOAL_6 != 0xbe7ea5deUL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_EXAMPLE_TURTLEBOT3GOAL_7 != 0xf87d3accUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_EXAMPLE_TURTLEBOT3GOAL 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_EXAMPLE_TURTLEBOT3GOAL_0 0x4a52c401UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_EXAMPLE_TURTLEBOT3GOAL_1 0x98e8fe3eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_EXAMPLE_TURTLEBOT3GOAL_2 0xff557e31UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_EXAMPLE_TURTLEBOT3GOAL_3 0xda4c826bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_EXAMPLE_TURTLEBOT3GOAL_4 0x4c8a23ebUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_EXAMPLE_TURTLEBOT3GOAL_5 0x78fc357bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_EXAMPLE_TURTLEBOT3GOAL_6 0xbe7ea5deUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_EXAMPLE_TURTLEBOT3GOAL_7 0xf87d3accUL

/** @brief Complete ROS1 turtlebot3_example/Turtlebot3Goal value; no field projects away native data. */
typedef struct roswasmc_bounded_1_turtlebot3_example_Turtlebot3Goal
{
    /** @brief Declared field goal; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_geometry_msgs_Vector3 goal;
} roswasmc_bounded_1_turtlebot3_example_Turtlebot3Goal;

# define ROSWASMC_BOUNDED_1_TURTLEBOT3_EXAMPLE_TURTLEBOT3GOAL_MAX_WIRE_BYTES 24u
# define ROSWASMC_BOUNDED_1_TURTLEBOT3_EXAMPLE_TURTLEBOT3GOAL_MIN_WIRE_BYTES 24u
# define ROSWASMC_BOUNDED_1_TURTLEBOT3_EXAMPLE_TURTLEBOT3GOAL_CODEC_IDENTITY "UWVMROS1_f6eb642301e239005c1790cfd5b9ff00388d98d27a17cbb0edb103b6ac7bfad5"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_turtlebot3_example_Turtlebot3Goal_valid(roswasmc_bounded_1_turtlebot3_example_Turtlebot3Goal const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_1_geometry_msgs_Vector3_valid(&value->goal))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_1_turtlebot3_example_Turtlebot3Goal_wire_size(roswasmc_bounded_1_turtlebot3_example_Turtlebot3Goal const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_1_geometry_msgs_Vector3_wire_size(&value->goal);
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_1_turtlebot3_example_Turtlebot3Goal_write_fields(roswasmc_bounded_1_turtlebot3_example_Turtlebot3Goal const* value,
                                                                                     unsigned char* p,
                                                                                     size_t* offset)
{
    roswasmc_bounded_1_geometry_msgs_Vector3_write_fields(&value->goal, p, offset);
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_turtlebot3_example_Turtlebot3Goal_read_fields(unsigned char const* p,
                                                                                   size_t n,
                                                                                   size_t* offset,
                                                                                   roswasmc_bounded_1_turtlebot3_example_Turtlebot3Goal* value)
{
    if(!roswasmc_bounded_1_geometry_msgs_Vector3_read_fields(p, n, offset, &value->goal))
        return 0;
    return roswasmc_bounded_1_turtlebot3_example_Turtlebot3Goal_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_1_turtlebot3_example_Turtlebot3Goal_encode(roswasmc_bounded_1_turtlebot3_example_Turtlebot3Goal const* value,
                                                                                   void* output,
                                                                                   size_t capacity,
                                                                                   size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_turtlebot3_example_Turtlebot3Goal_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_turtlebot3_example_Turtlebot3Goal_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_turtlebot3_example_Turtlebot3Goal_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_1_turtlebot3_example_Turtlebot3Goal_decode(void const* input, size_t length, roswasmc_bounded_1_turtlebot3_example_Turtlebot3Goal* value)
{
    roswasmc_bounded_1_turtlebot3_example_Turtlebot3Goal next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 24u || length > 24u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_turtlebot3_example_Turtlebot3Goal_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_EXAMPLE_TURTLEBOT3RESULT)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_EXAMPLE_TURTLEBOT3RESULT_0 != 0x0f9df768UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_EXAMPLE_TURTLEBOT3RESULT_1 != 0x4e2fdc24UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_EXAMPLE_TURTLEBOT3RESULT_2 != 0xc88eb32bUL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_EXAMPLE_TURTLEBOT3RESULT_3 != 0x1c872bebUL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_EXAMPLE_TURTLEBOT3RESULT_4 != 0x54f662e8UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_EXAMPLE_TURTLEBOT3RESULT_5 != 0xdb85c331UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_EXAMPLE_TURTLEBOT3RESULT_6 != 0x0f693117UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_EXAMPLE_TURTLEBOT3RESULT_7 != 0x4dc1e3ffUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_EXAMPLE_TURTLEBOT3RESULT 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_EXAMPLE_TURTLEBOT3RESULT_0 0x0f9df768UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_EXAMPLE_TURTLEBOT3RESULT_1 0x4e2fdc24UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_EXAMPLE_TURTLEBOT3RESULT_2 0xc88eb32bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_EXAMPLE_TURTLEBOT3RESULT_3 0x1c872bebUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_EXAMPLE_TURTLEBOT3RESULT_4 0x54f662e8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_EXAMPLE_TURTLEBOT3RESULT_5 0xdb85c331UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_EXAMPLE_TURTLEBOT3RESULT_6 0x0f693117UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_EXAMPLE_TURTLEBOT3RESULT_7 0x4dc1e3ffUL

/** @brief UTF-8 byte storage for turtlebot3_example/Turtlebot3Result.result; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[256];
} roswasmc_bounded_1_turtlebot3_example_Turtlebot3Result_result_text;

/** @brief Complete ROS1 turtlebot3_example/Turtlebot3Result value; no field projects away native data. */
typedef struct roswasmc_bounded_1_turtlebot3_example_Turtlebot3Result
{
    /** @brief Declared field result; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_turtlebot3_example_Turtlebot3Result_result_text result;
} roswasmc_bounded_1_turtlebot3_example_Turtlebot3Result;

# define ROSWASMC_BOUNDED_1_TURTLEBOT3_EXAMPLE_TURTLEBOT3RESULT_MAX_WIRE_BYTES 260u
# define ROSWASMC_BOUNDED_1_TURTLEBOT3_EXAMPLE_TURTLEBOT3RESULT_MIN_WIRE_BYTES 4u
# define ROSWASMC_BOUNDED_1_TURTLEBOT3_EXAMPLE_TURTLEBOT3RESULT_CODEC_IDENTITY "UWVMROS1_c749a56ed9a0c74d1b167f69cc9b4435f9549d49144ef2951a4c3db501bad528"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_turtlebot3_example_Turtlebot3Result_valid(roswasmc_bounded_1_turtlebot3_example_Turtlebot3Result const* value)
{
    if(!value)
        return 0;
    if(value->result.size > 256u || !uwvm_bounded_utf8(value->result.data, value->result.size))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_1_turtlebot3_example_Turtlebot3Result_wire_size(roswasmc_bounded_1_turtlebot3_example_Turtlebot3Result const* value)
{
    size_t n = 0;
    n += 4 + value->result.size;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_1_turtlebot3_example_Turtlebot3Result_write_fields(roswasmc_bounded_1_turtlebot3_example_Turtlebot3Result const* value,
                                                                                       unsigned char* p,
                                                                                       size_t* offset)
{
    uwvm_bounded_put(p + *offset, value->result.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->result.data, value->result.size);
    *offset += value->result.size;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_turtlebot3_example_Turtlebot3Result_read_fields(unsigned char const* p,
                                                                                     size_t n,
                                                                                     size_t* offset,
                                                                                     roswasmc_bounded_1_turtlebot3_example_Turtlebot3Result* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    value->result.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->result.size > 256u || value->result.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->result.data, p + *offset, value->result.size);
    *offset += value->result.size;
    return roswasmc_bounded_1_turtlebot3_example_Turtlebot3Result_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_1_turtlebot3_example_Turtlebot3Result_encode(roswasmc_bounded_1_turtlebot3_example_Turtlebot3Result const* value,
                                                                                     void* output,
                                                                                     size_t capacity,
                                                                                     size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_turtlebot3_example_Turtlebot3Result_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_turtlebot3_example_Turtlebot3Result_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_turtlebot3_example_Turtlebot3Result_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_1_turtlebot3_example_Turtlebot3Result_decode(void const* input,
                                                                                     size_t length,
                                                                                     roswasmc_bounded_1_turtlebot3_example_Turtlebot3Result* value)
{
    roswasmc_bounded_1_turtlebot3_example_Turtlebot3Result next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 4u || length > 260u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_turtlebot3_example_Turtlebot3Result_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_EXAMPLE_TURTLEBOT3FEEDBACK)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_EXAMPLE_TURTLEBOT3FEEDBACK_0 != 0x18725e9aUL ||                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_EXAMPLE_TURTLEBOT3FEEDBACK_1 != 0x3592a12eUL ||                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_EXAMPLE_TURTLEBOT3FEEDBACK_2 != 0x6da900afUL ||                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_EXAMPLE_TURTLEBOT3FEEDBACK_3 != 0x6aa2840aUL ||                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_EXAMPLE_TURTLEBOT3FEEDBACK_4 != 0x543922e9UL ||                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_EXAMPLE_TURTLEBOT3FEEDBACK_5 != 0x7fd962a2UL ||                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_EXAMPLE_TURTLEBOT3FEEDBACK_6 != 0xa402c7cdUL ||                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_EXAMPLE_TURTLEBOT3FEEDBACK_7 != 0xe1dad1e8UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_EXAMPLE_TURTLEBOT3FEEDBACK 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_EXAMPLE_TURTLEBOT3FEEDBACK_0 0x18725e9aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_EXAMPLE_TURTLEBOT3FEEDBACK_1 0x3592a12eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_EXAMPLE_TURTLEBOT3FEEDBACK_2 0x6da900afUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_EXAMPLE_TURTLEBOT3FEEDBACK_3 0x6aa2840aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_EXAMPLE_TURTLEBOT3FEEDBACK_4 0x543922e9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_EXAMPLE_TURTLEBOT3FEEDBACK_5 0x7fd962a2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_EXAMPLE_TURTLEBOT3FEEDBACK_6 0xa402c7cdUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_EXAMPLE_TURTLEBOT3FEEDBACK_7 0xe1dad1e8UL

/** @brief UTF-8 byte storage for turtlebot3_example/Turtlebot3Feedback.state; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[256];
} roswasmc_bounded_1_turtlebot3_example_Turtlebot3Feedback_state_text;

/** @brief Complete ROS1 turtlebot3_example/Turtlebot3Feedback value; no field projects away native data. */
typedef struct roswasmc_bounded_1_turtlebot3_example_Turtlebot3Feedback
{
    /** @brief Declared field state; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_turtlebot3_example_Turtlebot3Feedback_state_text state;
} roswasmc_bounded_1_turtlebot3_example_Turtlebot3Feedback;

# define ROSWASMC_BOUNDED_1_TURTLEBOT3_EXAMPLE_TURTLEBOT3FEEDBACK_MAX_WIRE_BYTES 260u
# define ROSWASMC_BOUNDED_1_TURTLEBOT3_EXAMPLE_TURTLEBOT3FEEDBACK_MIN_WIRE_BYTES 4u
# define ROSWASMC_BOUNDED_1_TURTLEBOT3_EXAMPLE_TURTLEBOT3FEEDBACK_CODEC_IDENTITY "UWVMROS1_077b5593a1e4c23c89c4d6a87dc1d67d8fa1bf04fa3aa440f54c8eda60b688f8"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_turtlebot3_example_Turtlebot3Feedback_valid(roswasmc_bounded_1_turtlebot3_example_Turtlebot3Feedback const* value)
{
    if(!value)
        return 0;
    if(value->state.size > 256u || !uwvm_bounded_utf8(value->state.data, value->state.size))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_1_turtlebot3_example_Turtlebot3Feedback_wire_size(roswasmc_bounded_1_turtlebot3_example_Turtlebot3Feedback const* value)
{
    size_t n = 0;
    n += 4 + value->state.size;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_1_turtlebot3_example_Turtlebot3Feedback_write_fields(roswasmc_bounded_1_turtlebot3_example_Turtlebot3Feedback const* value,
                                                                                         unsigned char* p,
                                                                                         size_t* offset)
{
    uwvm_bounded_put(p + *offset, value->state.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->state.data, value->state.size);
    *offset += value->state.size;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_turtlebot3_example_Turtlebot3Feedback_read_fields(unsigned char const* p,
                                                                                       size_t n,
                                                                                       size_t* offset,
                                                                                       roswasmc_bounded_1_turtlebot3_example_Turtlebot3Feedback* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    value->state.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->state.size > 256u || value->state.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->state.data, p + *offset, value->state.size);
    *offset += value->state.size;
    return roswasmc_bounded_1_turtlebot3_example_Turtlebot3Feedback_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_1_turtlebot3_example_Turtlebot3Feedback_encode(roswasmc_bounded_1_turtlebot3_example_Turtlebot3Feedback const* value,
                                                                                       void* output,
                                                                                       size_t capacity,
                                                                                       size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_turtlebot3_example_Turtlebot3Feedback_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_turtlebot3_example_Turtlebot3Feedback_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_turtlebot3_example_Turtlebot3Feedback_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_1_turtlebot3_example_Turtlebot3Feedback_decode(void const* input,
                                                                                       size_t length,
                                                                                       roswasmc_bounded_1_turtlebot3_example_Turtlebot3Feedback* value)
{
    roswasmc_bounded_1_turtlebot3_example_Turtlebot3Feedback next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 4u || length > 260u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_turtlebot3_example_Turtlebot3Feedback_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_MSGS_SENSORSTATE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_MSGS_SENSORSTATE_0 != 0x1a02881dUL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_MSGS_SENSORSTATE_1 != 0x583c060cUL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_MSGS_SENSORSTATE_2 != 0xcbe5782bUL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_MSGS_SENSORSTATE_3 != 0x92d6e452UL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_MSGS_SENSORSTATE_4 != 0x2b2067feUL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_MSGS_SENSORSTATE_5 != 0x9d00ad38UL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_MSGS_SENSORSTATE_6 != 0x156515c2UL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_MSGS_SENSORSTATE_7 != 0xffe5ce39UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_MSGS_SENSORSTATE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_MSGS_SENSORSTATE_0 0x1a02881dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_MSGS_SENSORSTATE_1 0x583c060cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_MSGS_SENSORSTATE_2 0xcbe5782bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_MSGS_SENSORSTATE_3 0x92d6e452UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_MSGS_SENSORSTATE_4 0x2b2067feUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_MSGS_SENSORSTATE_5 0x9d00ad38UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_MSGS_SENSORSTATE_6 0x156515c2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_MSGS_SENSORSTATE_7 0xffe5ce39UL

/** @brief Complete ROS1 turtlebot3_msgs/SensorState value; no field projects away native data. */
typedef struct roswasmc_bounded_1_turtlebot3_msgs_SensorState
{
    /** @brief Declared field header; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_std_msgs_Header header;
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
} roswasmc_bounded_1_turtlebot3_msgs_SensorState;

# define ROSWASMC_BOUNDED_1_TURTLEBOT3_MSGS_SENSORSTATE_MAX_WIRE_BYTES 172u
# define ROSWASMC_BOUNDED_1_TURTLEBOT3_MSGS_SENSORSTATE_MIN_WIRE_BYTES 44u
# define ROSWASMC_BOUNDED_1_TURTLEBOT3_MSGS_SENSORSTATE_CODEC_IDENTITY "UWVMROS1_0ef7dd1a4b965ae027b081a6b34f111731a3adfbabcc6fd547d4da7378fcb81f"
/** @brief Original scalar constant BUMPER_FORWARD=1; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_TURTLEBOT3_MSGS_SENSORSTATE_BUMPER_FORWARD UINT32_C(1)
/** @brief Original scalar constant BUMPER_BACKWARD=2; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_TURTLEBOT3_MSGS_SENSORSTATE_BUMPER_BACKWARD UINT32_C(2)
/** @brief Original scalar constant CLIFF=1; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_TURTLEBOT3_MSGS_SENSORSTATE_CLIFF UINT32_C(1)
/** @brief Original scalar constant SONAR=1; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_TURTLEBOT3_MSGS_SENSORSTATE_SONAR UINT32_C(1)
/** @brief Original scalar constant ILLUMINATION=1; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_TURTLEBOT3_MSGS_SENSORSTATE_ILLUMINATION UINT32_C(1)
/** @brief Original scalar constant BUTTON0=1; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_TURTLEBOT3_MSGS_SENSORSTATE_BUTTON0 UINT32_C(1)
/** @brief Original scalar constant BUTTON1=2; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_TURTLEBOT3_MSGS_SENSORSTATE_BUTTON1 UINT32_C(2)
/** @brief Original scalar constant ERROR_LEFT_MOTOR=1; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_TURTLEBOT3_MSGS_SENSORSTATE_ERROR_LEFT_MOTOR UINT32_C(1)
/** @brief Original scalar constant ERROR_RIGHT_MOTOR=2; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_TURTLEBOT3_MSGS_SENSORSTATE_ERROR_RIGHT_MOTOR UINT32_C(2)
/** @brief Original scalar constant TORQUE_ON=1; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_TURTLEBOT3_MSGS_SENSORSTATE_TORQUE_ON UINT32_C(1)
/** @brief Original scalar constant TORQUE_OFF=2; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_TURTLEBOT3_MSGS_SENSORSTATE_TORQUE_OFF UINT32_C(2)

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_turtlebot3_msgs_SensorState_valid(roswasmc_bounded_1_turtlebot3_msgs_SensorState const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_1_std_msgs_Header_valid(&value->header))
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
static inline size_t roswasmc_bounded_1_turtlebot3_msgs_SensorState_wire_size(roswasmc_bounded_1_turtlebot3_msgs_SensorState const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_1_std_msgs_Header_wire_size(&value->header);
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
static inline void
    roswasmc_bounded_1_turtlebot3_msgs_SensorState_write_fields(roswasmc_bounded_1_turtlebot3_msgs_SensorState const* value, unsigned char* p, size_t* offset)
{
    roswasmc_bounded_1_std_msgs_Header_write_fields(&value->header, p, offset);
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
static inline int roswasmc_bounded_1_turtlebot3_msgs_SensorState_read_fields(unsigned char const* p,
                                                                             size_t n,
                                                                             size_t* offset,
                                                                             roswasmc_bounded_1_turtlebot3_msgs_SensorState* value)
{
    if(!roswasmc_bounded_1_std_msgs_Header_read_fields(p, n, offset, &value->header))
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
    return roswasmc_bounded_1_turtlebot3_msgs_SensorState_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_1_turtlebot3_msgs_SensorState_encode(roswasmc_bounded_1_turtlebot3_msgs_SensorState const* value,
                                                                             void* output,
                                                                             size_t capacity,
                                                                             size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_turtlebot3_msgs_SensorState_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_turtlebot3_msgs_SensorState_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_turtlebot3_msgs_SensorState_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_1_turtlebot3_msgs_SensorState_decode(void const* input, size_t length, roswasmc_bounded_1_turtlebot3_msgs_SensorState* value)
{
    roswasmc_bounded_1_turtlebot3_msgs_SensorState next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 44u || length > 172u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_turtlebot3_msgs_SensorState_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_MSGS_SOUND)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_MSGS_SOUND_0 != 0x8d1e25c1UL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_MSGS_SOUND_1 != 0xf78026d4UL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_MSGS_SOUND_2 != 0xeced1e76UL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_MSGS_SOUND_3 != 0x0b7b1a08UL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_MSGS_SOUND_4 != 0x78f91f31UL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_MSGS_SOUND_5 != 0xc905a918UL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_MSGS_SOUND_6 != 0x2f9ea81bUL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_MSGS_SOUND_7 != 0xa78dcb1eUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_MSGS_SOUND 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_MSGS_SOUND_0 0x8d1e25c1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_MSGS_SOUND_1 0xf78026d4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_MSGS_SOUND_2 0xeced1e76UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_MSGS_SOUND_3 0x0b7b1a08UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_MSGS_SOUND_4 0x78f91f31UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_MSGS_SOUND_5 0xc905a918UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_MSGS_SOUND_6 0x2f9ea81bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_MSGS_SOUND_7 0xa78dcb1eUL

/** @brief Complete ROS1 turtlebot3_msgs/Sound value; no field projects away native data. */
typedef struct roswasmc_bounded_1_turtlebot3_msgs_Sound
{
    /** @brief Declared field value; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t value;
} roswasmc_bounded_1_turtlebot3_msgs_Sound;

# define ROSWASMC_BOUNDED_1_TURTLEBOT3_MSGS_SOUND_MAX_WIRE_BYTES 1u
# define ROSWASMC_BOUNDED_1_TURTLEBOT3_MSGS_SOUND_MIN_WIRE_BYTES 1u
# define ROSWASMC_BOUNDED_1_TURTLEBOT3_MSGS_SOUND_CODEC_IDENTITY "UWVMROS1_0e5af3d5a2acbfff5bf5ba94c1520490fe281e70aff02cfb6ad31acd89e7536a"
/** @brief Original scalar constant OFF=0; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_TURTLEBOT3_MSGS_SOUND_OFF UINT32_C(0)
/** @brief Original scalar constant ON=1; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_TURTLEBOT3_MSGS_SOUND_ON UINT32_C(1)
/** @brief Original scalar constant LOW_BATTERY=2; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_TURTLEBOT3_MSGS_SOUND_LOW_BATTERY UINT32_C(2)
/** @brief Original scalar constant ERROR=3; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_TURTLEBOT3_MSGS_SOUND_ERROR UINT32_C(3)
/** @brief Original scalar constant BUTTON1=4; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_TURTLEBOT3_MSGS_SOUND_BUTTON1 UINT32_C(4)
/** @brief Original scalar constant BUTTON2=5; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_TURTLEBOT3_MSGS_SOUND_BUTTON2 UINT32_C(5)

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_turtlebot3_msgs_Sound_valid(roswasmc_bounded_1_turtlebot3_msgs_Sound const* value)
{
    if(!value)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_1_turtlebot3_msgs_Sound_wire_size(roswasmc_bounded_1_turtlebot3_msgs_Sound const* value)
{
    size_t n = 0;
    n += 1;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_1_turtlebot3_msgs_Sound_write_fields(roswasmc_bounded_1_turtlebot3_msgs_Sound const* value, unsigned char* p, size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->value, 1);
    *offset += 1;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int
    roswasmc_bounded_1_turtlebot3_msgs_Sound_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_1_turtlebot3_msgs_Sound* value)
{
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->value, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_1_turtlebot3_msgs_Sound_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_1_turtlebot3_msgs_Sound_encode(roswasmc_bounded_1_turtlebot3_msgs_Sound const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_turtlebot3_msgs_Sound_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_turtlebot3_msgs_Sound_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_turtlebot3_msgs_Sound_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_1_turtlebot3_msgs_Sound_decode(void const* input, size_t length, roswasmc_bounded_1_turtlebot3_msgs_Sound* value)
{
    roswasmc_bounded_1_turtlebot3_msgs_Sound next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 1u || length > 1u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_turtlebot3_msgs_Sound_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_MSGS_VERSIONINFO)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_MSGS_VERSIONINFO_0 != 0x0e712f67UL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_MSGS_VERSIONINFO_1 != 0x1e47ceecUL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_MSGS_VERSIONINFO_2 != 0xc2e4ea6cUL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_MSGS_VERSIONINFO_3 != 0xd8510eabUL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_MSGS_VERSIONINFO_4 != 0xff7ad056UL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_MSGS_VERSIONINFO_5 != 0xf3d0131dUL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_MSGS_VERSIONINFO_6 != 0x66fe1c96UL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_MSGS_VERSIONINFO_7 != 0x3ff7bf1eUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_MSGS_VERSIONINFO 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_MSGS_VERSIONINFO_0 0x0e712f67UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_MSGS_VERSIONINFO_1 0x1e47ceecUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_MSGS_VERSIONINFO_2 0xc2e4ea6cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_MSGS_VERSIONINFO_3 0xd8510eabUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_MSGS_VERSIONINFO_4 0xff7ad056UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_MSGS_VERSIONINFO_5 0xf3d0131dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_MSGS_VERSIONINFO_6 0x66fe1c96UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_TURTLEBOT3_MSGS_VERSIONINFO_7 0x3ff7bf1eUL

/** @brief UTF-8 byte storage for turtlebot3_msgs/VersionInfo.hardware; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[256];
} roswasmc_bounded_1_turtlebot3_msgs_VersionInfo_hardware_text;

/** @brief UTF-8 byte storage for turtlebot3_msgs/VersionInfo.firmware; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[256];
} roswasmc_bounded_1_turtlebot3_msgs_VersionInfo_firmware_text;

/** @brief UTF-8 byte storage for turtlebot3_msgs/VersionInfo.software; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[256];
} roswasmc_bounded_1_turtlebot3_msgs_VersionInfo_software_text;

/** @brief Complete ROS1 turtlebot3_msgs/VersionInfo value; no field projects away native data. */
typedef struct roswasmc_bounded_1_turtlebot3_msgs_VersionInfo
{
    /** @brief Declared field hardware; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_turtlebot3_msgs_VersionInfo_hardware_text hardware;
    /** @brief Declared field firmware; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_turtlebot3_msgs_VersionInfo_firmware_text firmware;
    /** @brief Declared field software; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_turtlebot3_msgs_VersionInfo_software_text software;
} roswasmc_bounded_1_turtlebot3_msgs_VersionInfo;

# define ROSWASMC_BOUNDED_1_TURTLEBOT3_MSGS_VERSIONINFO_MAX_WIRE_BYTES 780u
# define ROSWASMC_BOUNDED_1_TURTLEBOT3_MSGS_VERSIONINFO_MIN_WIRE_BYTES 12u
# define ROSWASMC_BOUNDED_1_TURTLEBOT3_MSGS_VERSIONINFO_CODEC_IDENTITY "UWVMROS1_8f41d37cf43fda2e3649d85fcca83ad735dc5a8122f7829a98b18659bcad8b3a"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_turtlebot3_msgs_VersionInfo_valid(roswasmc_bounded_1_turtlebot3_msgs_VersionInfo const* value)
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
static inline size_t roswasmc_bounded_1_turtlebot3_msgs_VersionInfo_wire_size(roswasmc_bounded_1_turtlebot3_msgs_VersionInfo const* value)
{
    size_t n = 0;
    n += 4 + value->hardware.size;
    n += 4 + value->firmware.size;
    n += 4 + value->software.size;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_1_turtlebot3_msgs_VersionInfo_write_fields(roswasmc_bounded_1_turtlebot3_msgs_VersionInfo const* value, unsigned char* p, size_t* offset)
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
static inline int roswasmc_bounded_1_turtlebot3_msgs_VersionInfo_read_fields(unsigned char const* p,
                                                                             size_t n,
                                                                             size_t* offset,
                                                                             roswasmc_bounded_1_turtlebot3_msgs_VersionInfo* value)
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
    return roswasmc_bounded_1_turtlebot3_msgs_VersionInfo_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_1_turtlebot3_msgs_VersionInfo_encode(roswasmc_bounded_1_turtlebot3_msgs_VersionInfo const* value,
                                                                             void* output,
                                                                             size_t capacity,
                                                                             size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_turtlebot3_msgs_VersionInfo_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_turtlebot3_msgs_VersionInfo_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_turtlebot3_msgs_VersionInfo_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_1_turtlebot3_msgs_VersionInfo_decode(void const* input, size_t length, roswasmc_bounded_1_turtlebot3_msgs_VersionInfo* value)
{
    roswasmc_bounded_1_turtlebot3_msgs_VersionInfo next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 12u || length > 780u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_turtlebot3_msgs_VersionInfo_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#undef UWVM_BOUNDED_ASSERT
#endif
