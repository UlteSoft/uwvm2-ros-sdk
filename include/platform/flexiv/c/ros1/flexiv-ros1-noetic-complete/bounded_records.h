/** @file Generated bounded-v2 canonical values; no native ROS serialization or authority.
 * Every dynamic field has inline caller-owned capacity. Encode validates and measures
 * the full value before writes; decode commits one temporary only after full validation.
 * Supply distinct record, byte and size-output storage; overlap is explicitly refused.
 * Empty Service/Action components use a C layout dummy that is never a wire field. */
#ifndef UWVM_ROS_BOUNDED_RECORDS_7E4E4D32458FE3D1E9FEB17EFF83F8546ECBDDED92D311168E11E74847143C87
#define UWVM_ROS_BOUNDED_RECORDS_7E4E4D32458FE3D1E9FEB17EFF83F8546ECBDDED92D311168E11E74847143C87
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
inline static void uwvm_bounded_copy(void* out, void const* in, size_t n)
{
# if defined(__GNUC__) || defined(__clang__)
    __builtin_memcpy(out, in, n);
# else
    size_t i;
    for(i = 0; i < n; ++i)
    {
        ((unsigned char*)out)[i] = ((unsigned char const*)in)[i];
    }
# endif
}

inline static uint64_t uwvm_bounded_get(unsigned char const* p, unsigned n)
{
    uint64_t v = 0;
    unsigned i;
    for(i = 0; i < n; ++i)
    {
        v |= (uint64_t)p[i] << (8 * i);
    }
    return v;
}

inline static void uwvm_bounded_put(unsigned char* p, uint64_t v, unsigned n)
{
    unsigned i;
    for(i = 0; i < n; ++i)
    {
        p[i] = (unsigned char)(v >> (8 * i));
    }
}

/** @brief Strict Unicode scalar UTF-8, rejecting embedded NUL as required by this profile. */
inline static int uwvm_bounded_utf8(unsigned char const* p, size_t n)
{
    size_t i = 0;
    while(i < n)
    {
        unsigned b = p[i++], k, code, minimum;
        if(!b)
        {
            return 0;
        }
        if(b < 128)
        {
            continue;
        }
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
        {
            return 0;
        }
        if(k > n - i)
        {
            return 0;
        }
        while(k--)
        {
            b = p[i++];
            if((b & 192) != 128)
            {
                return 0;
            }
            code = (code << 6) | (b & 63);
        }
        if(code < minimum || code > 1114111 || (code >= 55296 && code <= 57343))
        {
            return 0;
        }
    }
    return 1;
}

inline static int uwvm_bounded_overlap(void const* a, size_t an, void const* b, size_t bn)
{
    uintptr_t x = (uintptr_t)a, y = (uintptr_t)b;
    if((an && !a) || (bn && !b) || an > UINTPTR_MAX - x || bn > UINTPTR_MAX - y)
    {
        return 1;
    }
    return an && bn && x < y + bn && y < x + an;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FLEXIV_MSGS_JOINTPOSVEL)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FLEXIV_MSGS_JOINTPOSVEL_0 != 0xa4ac4505UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FLEXIV_MSGS_JOINTPOSVEL_1 != 0x60c9188cUL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FLEXIV_MSGS_JOINTPOSVEL_2 != 0x4f3593e7UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FLEXIV_MSGS_JOINTPOSVEL_3 != 0x2e1b69e3UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FLEXIV_MSGS_JOINTPOSVEL_4 != 0xcd1c1ea2UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FLEXIV_MSGS_JOINTPOSVEL_5 != 0x0ce17cf5UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FLEXIV_MSGS_JOINTPOSVEL_6 != 0x510895f6UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FLEXIV_MSGS_JOINTPOSVEL_7 != 0xdfef6f31UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FLEXIV_MSGS_JOINTPOSVEL 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FLEXIV_MSGS_JOINTPOSVEL_0 0xa4ac4505UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FLEXIV_MSGS_JOINTPOSVEL_1 0x60c9188cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FLEXIV_MSGS_JOINTPOSVEL_2 0x4f3593e7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FLEXIV_MSGS_JOINTPOSVEL_3 0x2e1b69e3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FLEXIV_MSGS_JOINTPOSVEL_4 0xcd1c1ea2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FLEXIV_MSGS_JOINTPOSVEL_5 0x0ce17cf5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FLEXIV_MSGS_JOINTPOSVEL_6 0x510895f6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FLEXIV_MSGS_JOINTPOSVEL_7 0xdfef6f31UL

/** @brief Complete ROS1 flexiv_msgs/JointPosVel value; no field projects away native data. */
typedef struct roswasmc_bounded_1_flexiv_msgs_JointPosVel
{
    /**
     * @brief Retain the complete original float64 field.
     * @details Original flexiv_msgs/JointPosVel.positions; native type float64. Exactly 7 elements. Finite
     * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    double positions[7];
    /**
     * @brief Retain the complete original float64 field.
     * @details Original flexiv_msgs/JointPosVel.velocities; native type float64. Exactly 7 elements.
     * Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
     * no ROS resource.
     */
    double velocities[7];
} roswasmc_bounded_1_flexiv_msgs_JointPosVel;

# define ROSWASMC_BOUNDED_1_FLEXIV_MSGS_JOINTPOSVEL_MAX_WIRE_BYTES 112u
# define ROSWASMC_BOUNDED_1_FLEXIV_MSGS_JOINTPOSVEL_MIN_WIRE_BYTES 112u
# define ROSWASMC_BOUNDED_1_FLEXIV_MSGS_JOINTPOSVEL_CODEC_IDENTITY "UWVMROS1_60868295fe1798f349d7f675035bd476f0f6caa8b7568e7a66487c32459fdfaa"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_1_flexiv_msgs_JointPosVel_valid(roswasmc_bounded_1_flexiv_msgs_JointPosVel const* value)
{
    if(!value)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < 7u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->positions[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                {
                    return 0;
                }
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 7u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->velocities[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                {
                    return 0;
                }
            }
        }
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t roswasmc_bounded_1_flexiv_msgs_JointPosVel_wire_size(roswasmc_bounded_1_flexiv_msgs_JointPosVel const* value)
{
    size_t n = 0;
    {
        size_t i;
        for(i = 0; i < 7u; ++i)
        {
            n += 8;
        }
    }
    {
        size_t i;
        for(i = 0; i < 7u; ++i)
        {
            n += 8;
        }
    }
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void
    roswasmc_bounded_1_flexiv_msgs_JointPosVel_write_fields(roswasmc_bounded_1_flexiv_msgs_JointPosVel const* value, unsigned char* p, size_t* offset)
{
    {
        size_t i;
        for(i = 0; i < 7u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->positions[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 7u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->velocities[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int
    roswasmc_bounded_1_flexiv_msgs_JointPosVel_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_1_flexiv_msgs_JointPosVel* value)
{
    {
        size_t i;
        for(i = 0; i < 7u; ++i)
        {
            if(*offset > n || n - *offset < 8)
            {
                return 0;
            }
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->positions[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    {
        size_t i;
        for(i = 0; i < 7u; ++i)
        {
            if(*offset > n || n - *offset < 8)
            {
                return 0;
            }
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->velocities[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    return roswasmc_bounded_1_flexiv_msgs_JointPosVel_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t
    roswasmc_bounded_1_flexiv_msgs_JointPosVel_encode(roswasmc_bounded_1_flexiv_msgs_JointPosVel const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_flexiv_msgs_JointPosVel_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_1_flexiv_msgs_JointPosVel_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_1_flexiv_msgs_JointPosVel_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t roswasmc_bounded_1_flexiv_msgs_JointPosVel_decode(void const* input, size_t length, roswasmc_bounded_1_flexiv_msgs_JointPosVel* value)
{
    roswasmc_bounded_1_flexiv_msgs_JointPosVel next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 112u || length > 112u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_1_flexiv_msgs_JointPosVel_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FLEXIV_MSGS_MODE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FLEXIV_MSGS_MODE_0 != 0xd83dc5f0UL ||                                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FLEXIV_MSGS_MODE_1 != 0xb08bfbbdUL ||                                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FLEXIV_MSGS_MODE_2 != 0x2f178889UL ||                                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FLEXIV_MSGS_MODE_3 != 0xae21e15aUL ||                                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FLEXIV_MSGS_MODE_4 != 0x0616493dUL ||                                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FLEXIV_MSGS_MODE_5 != 0xd38fcb8dUL ||                                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FLEXIV_MSGS_MODE_6 != 0x608c1fbeUL ||                                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FLEXIV_MSGS_MODE_7 != 0x952c9f05UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FLEXIV_MSGS_MODE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FLEXIV_MSGS_MODE_0 0xd83dc5f0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FLEXIV_MSGS_MODE_1 0xb08bfbbdUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FLEXIV_MSGS_MODE_2 0x2f178889UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FLEXIV_MSGS_MODE_3 0xae21e15aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FLEXIV_MSGS_MODE_4 0x0616493dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FLEXIV_MSGS_MODE_5 0xd38fcb8dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FLEXIV_MSGS_MODE_6 0x608c1fbeUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FLEXIV_MSGS_MODE_7 0x952c9f05UL

/** @brief Complete ROS1 flexiv_msgs/Mode value; no field projects away native data. */
typedef struct roswasmc_bounded_1_flexiv_msgs_Mode
{
    /**
     * @brief Retain the complete original int8 field.
     * @details Original flexiv_msgs/Mode.mode; native type int8. Scalar value. Storage belongs to the
     * complete value and acquires no ROS resource.
     */
    int8_t mode;
} roswasmc_bounded_1_flexiv_msgs_Mode;

# define ROSWASMC_BOUNDED_1_FLEXIV_MSGS_MODE_MAX_WIRE_BYTES 1u
# define ROSWASMC_BOUNDED_1_FLEXIV_MSGS_MODE_MIN_WIRE_BYTES 1u
# define ROSWASMC_BOUNDED_1_FLEXIV_MSGS_MODE_CODEC_IDENTITY "UWVMROS1_85789f97962c70edfe4703d5a78ed198655e3ebe300f5a9c588d739bae87f422"
/** @brief Original scalar constant MODE_UNKNOWN=-1; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_FLEXIV_MSGS_MODE_MODE_UNKNOWN -INT32_C(1)
/** @brief Original scalar constant MODE_IDLE=0; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_FLEXIV_MSGS_MODE_MODE_IDLE INT32_C(0)
/** @brief Original scalar constant MODE_RT_JOINT_TORQUE=1; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_FLEXIV_MSGS_MODE_MODE_RT_JOINT_TORQUE INT32_C(1)
/** @brief Original scalar constant MODE_RT_JOINT_POSITION=2; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_FLEXIV_MSGS_MODE_MODE_RT_JOINT_POSITION INT32_C(2)
/** @brief Original scalar constant MODE_NRT_JOINT_POSITION=3; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_FLEXIV_MSGS_MODE_MODE_NRT_JOINT_POSITION INT32_C(3)
/** @brief Original scalar constant MODE_NRT_PLAN_EXECUTION=4; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_FLEXIV_MSGS_MODE_MODE_NRT_PLAN_EXECUTION INT32_C(4)
/** @brief Original scalar constant MODE_NRT_PRIMITIVE_EXECUTION=5; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_FLEXIV_MSGS_MODE_MODE_NRT_PRIMITIVE_EXECUTION INT32_C(5)
/** @brief Original scalar constant MODE_RT_CARTESIAN_MOTION_FORCE_BASE=6; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_FLEXIV_MSGS_MODE_MODE_RT_CARTESIAN_MOTION_FORCE_BASE INT32_C(6)
/** @brief Original scalar constant MODE_RT_CARTESIAN_MOTION_FORCE_TCP=7; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_FLEXIV_MSGS_MODE_MODE_RT_CARTESIAN_MOTION_FORCE_TCP INT32_C(7)
/** @brief Original scalar constant MODE_NRT_CARTESIAN_MOTION_FORCE_BASE=8; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_FLEXIV_MSGS_MODE_MODE_NRT_CARTESIAN_MOTION_FORCE_BASE INT32_C(8)
/** @brief Original scalar constant MODE_NRT_CARTESIAN_MOTION_FORCE_TCP=9; no instance/wire field. */
# define ROSWASMC_BOUNDED_1_FLEXIV_MSGS_MODE_MODE_NRT_CARTESIAN_MOTION_FORCE_TCP INT32_C(9)

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_1_flexiv_msgs_Mode_valid(roswasmc_bounded_1_flexiv_msgs_Mode const* value)
{
    if(!value)
    {
        return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t roswasmc_bounded_1_flexiv_msgs_Mode_wire_size(roswasmc_bounded_1_flexiv_msgs_Mode const* value)
{
    size_t n = 0;
    n += 1;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void roswasmc_bounded_1_flexiv_msgs_Mode_write_fields(roswasmc_bounded_1_flexiv_msgs_Mode const* value, unsigned char* p, size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->mode, 1);
    *offset += 1;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int roswasmc_bounded_1_flexiv_msgs_Mode_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_1_flexiv_msgs_Mode* value)
{
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->mode, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_1_flexiv_msgs_Mode_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t
    roswasmc_bounded_1_flexiv_msgs_Mode_encode(roswasmc_bounded_1_flexiv_msgs_Mode const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_flexiv_msgs_Mode_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_1_flexiv_msgs_Mode_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_1_flexiv_msgs_Mode_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t roswasmc_bounded_1_flexiv_msgs_Mode_decode(void const* input, size_t length, roswasmc_bounded_1_flexiv_msgs_Mode* value)
{
    roswasmc_bounded_1_flexiv_msgs_Mode next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 1u || length > 1u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_1_flexiv_msgs_Mode_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
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
    /**
     * @brief This contains the position of a point in free space
     * @details Original geometry_msgs/Point.x; native type float64. Scalar value. Finite IEEE values; no
     * implicit unit conversion. Storage belongs to the complete value and acquires no ROS resource.
     */
    double x;
    /**
     * @brief Retain the complete original float64 field.
     * @details Original geometry_msgs/Point.y; native type float64. Scalar value. Finite IEEE values; no
     * implicit unit conversion. Storage belongs to the complete value and acquires no ROS resource.
     */
    double y;
    /**
     * @brief Retain the complete original float64 field.
     * @details Original geometry_msgs/Point.z; native type float64. Scalar value. Finite IEEE values; no
     * implicit unit conversion. Storage belongs to the complete value and acquires no ROS resource.
     */
    double z;
} roswasmc_bounded_1_geometry_msgs_Point;

# define ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POINT_MAX_WIRE_BYTES 24u
# define ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POINT_MIN_WIRE_BYTES 24u
# define ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POINT_CODEC_IDENTITY "UWVMROS1_b55e2bde60f6cedb426cada54bc7baefc536c7bc731bd49fb152d89a892de62b"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_1_geometry_msgs_Point_valid(roswasmc_bounded_1_geometry_msgs_Point const* value)
{
    if(!value)
    {
        return 0;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->x, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
        {
            return 0;
        }
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->y, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
        {
            return 0;
        }
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->z, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
        {
            return 0;
        }
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t roswasmc_bounded_1_geometry_msgs_Point_wire_size(roswasmc_bounded_1_geometry_msgs_Point const* value)
{
    size_t n = 0;
    n += 8;
    n += 8;
    n += 8;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void roswasmc_bounded_1_geometry_msgs_Point_write_fields(roswasmc_bounded_1_geometry_msgs_Point const* value, unsigned char* p, size_t* offset)
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
inline static int
    roswasmc_bounded_1_geometry_msgs_Point_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_1_geometry_msgs_Point* value)
{
    if(*offset > n || n - *offset < 8)
    {
        return 0;
    }
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->x, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 8)
    {
        return 0;
    }
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->y, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 8)
    {
        return 0;
    }
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->z, &bits, 8);
    }
    *offset += 8;
    return roswasmc_bounded_1_geometry_msgs_Point_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t
    roswasmc_bounded_1_geometry_msgs_Point_encode(roswasmc_bounded_1_geometry_msgs_Point const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_geometry_msgs_Point_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_1_geometry_msgs_Point_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_1_geometry_msgs_Point_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t roswasmc_bounded_1_geometry_msgs_Point_decode(void const* input, size_t length, roswasmc_bounded_1_geometry_msgs_Point* value)
{
    roswasmc_bounded_1_geometry_msgs_Point next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 24u || length > 24u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_1_geometry_msgs_Point_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
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
    /**
     * @brief This represents an orientation in free space in quaternion form.
     * @details Original geometry_msgs/Quaternion.x; native type float64. Scalar value. Finite IEEE values;
     * no implicit unit conversion. Storage belongs to the complete value and acquires no ROS resource.
     */
    double x;
    /**
     * @brief Retain the complete original float64 field.
     * @details Original geometry_msgs/Quaternion.y; native type float64. Scalar value. Finite IEEE values;
     * no implicit unit conversion. Storage belongs to the complete value and acquires no ROS resource.
     */
    double y;
    /**
     * @brief Retain the complete original float64 field.
     * @details Original geometry_msgs/Quaternion.z; native type float64. Scalar value. Finite IEEE values;
     * no implicit unit conversion. Storage belongs to the complete value and acquires no ROS resource.
     */
    double z;
    /**
     * @brief Retain the complete original float64 field.
     * @details Original geometry_msgs/Quaternion.w; native type float64. Scalar value. Finite IEEE values;
     * no implicit unit conversion. Storage belongs to the complete value and acquires no ROS resource.
     */
    double w;
} roswasmc_bounded_1_geometry_msgs_Quaternion;

# define ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_QUATERNION_MAX_WIRE_BYTES 32u
# define ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_QUATERNION_MIN_WIRE_BYTES 32u
# define ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_QUATERNION_CODEC_IDENTITY "UWVMROS1_48fe20d5d29a8ca1a630605a58f80baacc52d9a65b1ca87efd50ffdd52882934"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_1_geometry_msgs_Quaternion_valid(roswasmc_bounded_1_geometry_msgs_Quaternion const* value)
{
    if(!value)
    {
        return 0;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->x, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
        {
            return 0;
        }
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->y, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
        {
            return 0;
        }
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->z, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
        {
            return 0;
        }
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->w, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
        {
            return 0;
        }
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t roswasmc_bounded_1_geometry_msgs_Quaternion_wire_size(roswasmc_bounded_1_geometry_msgs_Quaternion const* value)
{
    size_t n = 0;
    n += 8;
    n += 8;
    n += 8;
    n += 8;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void
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
inline static int roswasmc_bounded_1_geometry_msgs_Quaternion_read_fields(unsigned char const* p,
                                                                          size_t n,
                                                                          size_t* offset,
                                                                          roswasmc_bounded_1_geometry_msgs_Quaternion* value)
{
    if(*offset > n || n - *offset < 8)
    {
        return 0;
    }
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->x, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 8)
    {
        return 0;
    }
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->y, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 8)
    {
        return 0;
    }
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->z, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 8)
    {
        return 0;
    }
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->w, &bits, 8);
    }
    *offset += 8;
    return roswasmc_bounded_1_geometry_msgs_Quaternion_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t
    roswasmc_bounded_1_geometry_msgs_Quaternion_encode(roswasmc_bounded_1_geometry_msgs_Quaternion const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_geometry_msgs_Quaternion_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_1_geometry_msgs_Quaternion_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_1_geometry_msgs_Quaternion_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t roswasmc_bounded_1_geometry_msgs_Quaternion_decode(void const* input, size_t length, roswasmc_bounded_1_geometry_msgs_Quaternion* value)
{
    roswasmc_bounded_1_geometry_msgs_Quaternion next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 32u || length > 32u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_1_geometry_msgs_Quaternion_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
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
    /**
     * @brief A representation of pose in free space, composed of position and orientation.
     * @details Original geometry_msgs/Pose.position; native type geometry_msgs/Point. Scalar value.
     * Storage belongs to the complete value and acquires no ROS resource.
     */
    roswasmc_bounded_1_geometry_msgs_Point position;
    /**
     * @brief Retain the complete original geometry_msgs/Quaternion field.
     * @details Original geometry_msgs/Pose.orientation; native type geometry_msgs/Quaternion. Scalar
     * value. Storage belongs to the complete value and acquires no ROS resource.
     */
    roswasmc_bounded_1_geometry_msgs_Quaternion orientation;
} roswasmc_bounded_1_geometry_msgs_Pose;

# define ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POSE_MAX_WIRE_BYTES 56u
# define ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POSE_MIN_WIRE_BYTES 56u
# define ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POSE_CODEC_IDENTITY "UWVMROS1_e49ed287cd0de31a16c8cd49ad8f41f81d44e23306b8dcb61da6e0e789595471"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_1_geometry_msgs_Pose_valid(roswasmc_bounded_1_geometry_msgs_Pose const* value)
{
    if(!value)
    {
        return 0;
    }
    if(!roswasmc_bounded_1_geometry_msgs_Point_valid(&value->position))
    {
        return 0;
    }
    if(!roswasmc_bounded_1_geometry_msgs_Quaternion_valid(&value->orientation))
    {
        return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t roswasmc_bounded_1_geometry_msgs_Pose_wire_size(roswasmc_bounded_1_geometry_msgs_Pose const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_1_geometry_msgs_Point_wire_size(&value->position);
    n += roswasmc_bounded_1_geometry_msgs_Quaternion_wire_size(&value->orientation);
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void roswasmc_bounded_1_geometry_msgs_Pose_write_fields(roswasmc_bounded_1_geometry_msgs_Pose const* value, unsigned char* p, size_t* offset)
{
    roswasmc_bounded_1_geometry_msgs_Point_write_fields(&value->position, p, offset);
    roswasmc_bounded_1_geometry_msgs_Quaternion_write_fields(&value->orientation, p, offset);
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int
    roswasmc_bounded_1_geometry_msgs_Pose_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_1_geometry_msgs_Pose* value)
{
    if(!roswasmc_bounded_1_geometry_msgs_Point_read_fields(p, n, offset, &value->position))
    {
        return 0;
    }
    if(!roswasmc_bounded_1_geometry_msgs_Quaternion_read_fields(p, n, offset, &value->orientation))
    {
        return 0;
    }
    return roswasmc_bounded_1_geometry_msgs_Pose_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t
    roswasmc_bounded_1_geometry_msgs_Pose_encode(roswasmc_bounded_1_geometry_msgs_Pose const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_geometry_msgs_Pose_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_1_geometry_msgs_Pose_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_1_geometry_msgs_Pose_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t roswasmc_bounded_1_geometry_msgs_Pose_decode(void const* input, size_t length, roswasmc_bounded_1_geometry_msgs_Pose* value)
{
    roswasmc_bounded_1_geometry_msgs_Pose next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 56u || length > 56u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_1_geometry_msgs_Pose_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
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
    /**
     * @brief This represents a vector in free space. It is only meant to represent a direction. Therefore,
     * it does not make sense to apply a translation to it (e.g., when applying a generic rigid
     * transformation to a Vector3, tf2 will only apply the rotation). If you want your data to be
     * translatable too, use the geometry_msgs/Point message instead.
     * @details Original geometry_msgs/Vector3.x; native type float64. Scalar value. Finite IEEE values; no
     * implicit unit conversion. Storage belongs to the complete value and acquires no ROS resource.
     */
    double x;
    /**
     * @brief Retain the complete original float64 field.
     * @details Original geometry_msgs/Vector3.y; native type float64. Scalar value. Finite IEEE values; no
     * implicit unit conversion. Storage belongs to the complete value and acquires no ROS resource.
     */
    double y;
    /**
     * @brief Retain the complete original float64 field.
     * @details Original geometry_msgs/Vector3.z; native type float64. Scalar value. Finite IEEE values; no
     * implicit unit conversion. Storage belongs to the complete value and acquires no ROS resource.
     */
    double z;
} roswasmc_bounded_1_geometry_msgs_Vector3;

# define ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_VECTOR3_MAX_WIRE_BYTES 24u
# define ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_VECTOR3_MIN_WIRE_BYTES 24u
# define ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_VECTOR3_CODEC_IDENTITY "UWVMROS1_e90efcf4803d82763e0b83f8ef5502b5d042158873fcc91be32543d25d7632bc"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_1_geometry_msgs_Vector3_valid(roswasmc_bounded_1_geometry_msgs_Vector3 const* value)
{
    if(!value)
    {
        return 0;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->x, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
        {
            return 0;
        }
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->y, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
        {
            return 0;
        }
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->z, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
        {
            return 0;
        }
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t roswasmc_bounded_1_geometry_msgs_Vector3_wire_size(roswasmc_bounded_1_geometry_msgs_Vector3 const* value)
{
    size_t n = 0;
    n += 8;
    n += 8;
    n += 8;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void
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
inline static int
    roswasmc_bounded_1_geometry_msgs_Vector3_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_1_geometry_msgs_Vector3* value)
{
    if(*offset > n || n - *offset < 8)
    {
        return 0;
    }
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->x, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 8)
    {
        return 0;
    }
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->y, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 8)
    {
        return 0;
    }
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->z, &bits, 8);
    }
    *offset += 8;
    return roswasmc_bounded_1_geometry_msgs_Vector3_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t
    roswasmc_bounded_1_geometry_msgs_Vector3_encode(roswasmc_bounded_1_geometry_msgs_Vector3 const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_geometry_msgs_Vector3_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_1_geometry_msgs_Vector3_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_1_geometry_msgs_Vector3_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t roswasmc_bounded_1_geometry_msgs_Vector3_decode(void const* input, size_t length, roswasmc_bounded_1_geometry_msgs_Vector3* value)
{
    roswasmc_bounded_1_geometry_msgs_Vector3 next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 24u || length > 24u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_1_geometry_msgs_Vector3_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_ACCEL)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_ACCEL_0 != 0x8364f1cbUL ||                                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_ACCEL_1 != 0x997fc3f4UL ||                                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_ACCEL_2 != 0xdac9fca3UL ||                                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_ACCEL_3 != 0x6ddca0cdUL ||                                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_ACCEL_4 != 0xf3cdb7b0UL ||                                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_ACCEL_5 != 0x3a78804dUL ||                                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_ACCEL_6 != 0x612874b9UL ||                                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_ACCEL_7 != 0x18269656UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_ACCEL 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_ACCEL_0 0x8364f1cbUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_ACCEL_1 0x997fc3f4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_ACCEL_2 0xdac9fca3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_ACCEL_3 0x6ddca0cdUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_ACCEL_4 0xf3cdb7b0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_ACCEL_5 0x3a78804dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_ACCEL_6 0x612874b9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_ACCEL_7 0x18269656UL

/** @brief Complete ROS1 geometry_msgs/Accel value; no field projects away native data. */
typedef struct roswasmc_bounded_1_geometry_msgs_Accel
{
    /**
     * @brief This expresses acceleration in free space broken into its linear and angular parts.
     * @details Original geometry_msgs/Accel.linear; native type geometry_msgs/Vector3. Scalar value.
     * Storage belongs to the complete value and acquires no ROS resource.
     */
    roswasmc_bounded_1_geometry_msgs_Vector3 linear;
    /**
     * @brief Retain the complete original geometry_msgs/Vector3 field.
     * @details Original geometry_msgs/Accel.angular; native type geometry_msgs/Vector3. Scalar value.
     * Storage belongs to the complete value and acquires no ROS resource.
     */
    roswasmc_bounded_1_geometry_msgs_Vector3 angular;
} roswasmc_bounded_1_geometry_msgs_Accel;

# define ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_ACCEL_MAX_WIRE_BYTES 48u
# define ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_ACCEL_MIN_WIRE_BYTES 48u
# define ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_ACCEL_CODEC_IDENTITY "UWVMROS1_3345762fc354a5698d41098276702c7d3cee87fe9a531b0229111b9b3bf700ed"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_1_geometry_msgs_Accel_valid(roswasmc_bounded_1_geometry_msgs_Accel const* value)
{
    if(!value)
    {
        return 0;
    }
    if(!roswasmc_bounded_1_geometry_msgs_Vector3_valid(&value->linear))
    {
        return 0;
    }
    if(!roswasmc_bounded_1_geometry_msgs_Vector3_valid(&value->angular))
    {
        return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t roswasmc_bounded_1_geometry_msgs_Accel_wire_size(roswasmc_bounded_1_geometry_msgs_Accel const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_1_geometry_msgs_Vector3_wire_size(&value->linear);
    n += roswasmc_bounded_1_geometry_msgs_Vector3_wire_size(&value->angular);
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void roswasmc_bounded_1_geometry_msgs_Accel_write_fields(roswasmc_bounded_1_geometry_msgs_Accel const* value, unsigned char* p, size_t* offset)
{
    roswasmc_bounded_1_geometry_msgs_Vector3_write_fields(&value->linear, p, offset);
    roswasmc_bounded_1_geometry_msgs_Vector3_write_fields(&value->angular, p, offset);
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int
    roswasmc_bounded_1_geometry_msgs_Accel_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_1_geometry_msgs_Accel* value)
{
    if(!roswasmc_bounded_1_geometry_msgs_Vector3_read_fields(p, n, offset, &value->linear))
    {
        return 0;
    }
    if(!roswasmc_bounded_1_geometry_msgs_Vector3_read_fields(p, n, offset, &value->angular))
    {
        return 0;
    }
    return roswasmc_bounded_1_geometry_msgs_Accel_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t
    roswasmc_bounded_1_geometry_msgs_Accel_encode(roswasmc_bounded_1_geometry_msgs_Accel const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_geometry_msgs_Accel_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_1_geometry_msgs_Accel_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_1_geometry_msgs_Accel_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t roswasmc_bounded_1_geometry_msgs_Accel_decode(void const* input, size_t length, roswasmc_bounded_1_geometry_msgs_Accel* value)
{
    roswasmc_bounded_1_geometry_msgs_Accel next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 48u || length > 48u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_1_geometry_msgs_Accel_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_WRENCH)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_WRENCH_0 != 0xc84fc141UL ||                                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_WRENCH_1 != 0x9a74173bUL ||                                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_WRENCH_2 != 0x918e447bUL ||                                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_WRENCH_3 != 0x80ef5b38UL ||                                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_WRENCH_4 != 0x6d457cf3UL ||                                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_WRENCH_5 != 0xe36e76d1UL ||                                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_WRENCH_6 != 0xbe3ba53eUL ||                                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_WRENCH_7 != 0x105dbac2UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_WRENCH 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_WRENCH_0 0xc84fc141UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_WRENCH_1 0x9a74173bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_WRENCH_2 0x918e447bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_WRENCH_3 0x80ef5b38UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_WRENCH_4 0x6d457cf3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_WRENCH_5 0xe36e76d1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_WRENCH_6 0xbe3ba53eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_WRENCH_7 0x105dbac2UL

/** @brief Complete ROS1 geometry_msgs/Wrench value; no field projects away native data. */
typedef struct roswasmc_bounded_1_geometry_msgs_Wrench
{
    /**
     * @brief This represents force in free space, separated into its linear and angular parts.
     * @details Original geometry_msgs/Wrench.force; native type geometry_msgs/Vector3. Scalar value.
     * Storage belongs to the complete value and acquires no ROS resource.
     */
    roswasmc_bounded_1_geometry_msgs_Vector3 force;
    /**
     * @brief Retain the complete original geometry_msgs/Vector3 field.
     * @details Original geometry_msgs/Wrench.torque; native type geometry_msgs/Vector3. Scalar value.
     * Storage belongs to the complete value and acquires no ROS resource.
     */
    roswasmc_bounded_1_geometry_msgs_Vector3 torque;
} roswasmc_bounded_1_geometry_msgs_Wrench;

# define ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_WRENCH_MAX_WIRE_BYTES 48u
# define ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_WRENCH_MIN_WIRE_BYTES 48u
# define ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_WRENCH_CODEC_IDENTITY "UWVMROS1_b0938c4e084df68cf7c46445070ac3e9305d06f678275845aec6055db77617c3"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_1_geometry_msgs_Wrench_valid(roswasmc_bounded_1_geometry_msgs_Wrench const* value)
{
    if(!value)
    {
        return 0;
    }
    if(!roswasmc_bounded_1_geometry_msgs_Vector3_valid(&value->force))
    {
        return 0;
    }
    if(!roswasmc_bounded_1_geometry_msgs_Vector3_valid(&value->torque))
    {
        return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t roswasmc_bounded_1_geometry_msgs_Wrench_wire_size(roswasmc_bounded_1_geometry_msgs_Wrench const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_1_geometry_msgs_Vector3_wire_size(&value->force);
    n += roswasmc_bounded_1_geometry_msgs_Vector3_wire_size(&value->torque);
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void roswasmc_bounded_1_geometry_msgs_Wrench_write_fields(roswasmc_bounded_1_geometry_msgs_Wrench const* value, unsigned char* p, size_t* offset)
{
    roswasmc_bounded_1_geometry_msgs_Vector3_write_fields(&value->force, p, offset);
    roswasmc_bounded_1_geometry_msgs_Vector3_write_fields(&value->torque, p, offset);
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int
    roswasmc_bounded_1_geometry_msgs_Wrench_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_1_geometry_msgs_Wrench* value)
{
    if(!roswasmc_bounded_1_geometry_msgs_Vector3_read_fields(p, n, offset, &value->force))
    {
        return 0;
    }
    if(!roswasmc_bounded_1_geometry_msgs_Vector3_read_fields(p, n, offset, &value->torque))
    {
        return 0;
    }
    return roswasmc_bounded_1_geometry_msgs_Wrench_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t
    roswasmc_bounded_1_geometry_msgs_Wrench_encode(roswasmc_bounded_1_geometry_msgs_Wrench const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_geometry_msgs_Wrench_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_1_geometry_msgs_Wrench_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_1_geometry_msgs_Wrench_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t roswasmc_bounded_1_geometry_msgs_Wrench_decode(void const* input, size_t length, roswasmc_bounded_1_geometry_msgs_Wrench* value)
{
    roswasmc_bounded_1_geometry_msgs_Wrench next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 48u || length > 48u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_1_geometry_msgs_Wrench_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FLEXIV_MSGS_ROBOTSTATES)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FLEXIV_MSGS_ROBOTSTATES_0 != 0x8163cd74UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FLEXIV_MSGS_ROBOTSTATES_1 != 0xbd37e706UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FLEXIV_MSGS_ROBOTSTATES_2 != 0xfac73bc4UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FLEXIV_MSGS_ROBOTSTATES_3 != 0xc603510eUL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FLEXIV_MSGS_ROBOTSTATES_4 != 0x8db9697cUL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FLEXIV_MSGS_ROBOTSTATES_5 != 0xfe56faa1UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FLEXIV_MSGS_ROBOTSTATES_6 != 0x0ada2c27UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FLEXIV_MSGS_ROBOTSTATES_7 != 0x6520a52dUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FLEXIV_MSGS_ROBOTSTATES 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FLEXIV_MSGS_ROBOTSTATES_0 0x8163cd74UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FLEXIV_MSGS_ROBOTSTATES_1 0xbd37e706UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FLEXIV_MSGS_ROBOTSTATES_2 0xfac73bc4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FLEXIV_MSGS_ROBOTSTATES_3 0xc603510eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FLEXIV_MSGS_ROBOTSTATES_4 0x8db9697cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FLEXIV_MSGS_ROBOTSTATES_5 0xfe56faa1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FLEXIV_MSGS_ROBOTSTATES_6 0x0ada2c27UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_FLEXIV_MSGS_ROBOTSTATES_7 0x6520a52dUL

/** @brief Complete ROS1 flexiv_msgs/RobotStates value; no field projects away native data. */
typedef struct roswasmc_bounded_1_flexiv_msgs_RobotStates
{
    /**
     * @brief Retain the complete original float64 field.
     * @details Original flexiv_msgs/RobotStates.q; native type float64. Exactly 7 elements. Finite IEEE
     * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    double q[7];
    /**
     * @brief Retain the complete original float64 field.
     * @details Original flexiv_msgs/RobotStates.theta; native type float64. Exactly 7 elements. Finite
     * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    double theta[7];
    /**
     * @brief Retain the complete original float64 field.
     * @details Original flexiv_msgs/RobotStates.dq; native type float64. Exactly 7 elements. Finite IEEE
     * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    double dq[7];
    /**
     * @brief Retain the complete original float64 field.
     * @details Original flexiv_msgs/RobotStates.dtheta; native type float64. Exactly 7 elements. Finite
     * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    double dtheta[7];
    /**
     * @brief Retain the complete original float64 field.
     * @details Original flexiv_msgs/RobotStates.tau; native type float64. Exactly 7 elements. Finite IEEE
     * values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    double tau[7];
    /**
     * @brief Retain the complete original float64 field.
     * @details Original flexiv_msgs/RobotStates.tau_des; native type float64. Exactly 7 elements. Finite
     * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    double tau_des[7];
    /**
     * @brief Retain the complete original float64 field.
     * @details Original flexiv_msgs/RobotStates.tau_dot; native type float64. Exactly 7 elements. Finite
     * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    double tau_dot[7];
    /**
     * @brief Retain the complete original float64 field.
     * @details Original flexiv_msgs/RobotStates.tau_ext; native type float64. Exactly 7 elements. Finite
     * IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
     * resource.
     */
    double tau_ext[7];
    /**
     * @brief Retain the complete original geometry_msgs/Pose field.
     * @details Original flexiv_msgs/RobotStates.tcp_pose; native type geometry_msgs/Pose. Scalar value.
     * Storage belongs to the complete value and acquires no ROS resource.
     */
    roswasmc_bounded_1_geometry_msgs_Pose tcp_pose;
    /**
     * @brief Retain the complete original geometry_msgs/Pose field.
     * @details Original flexiv_msgs/RobotStates.tcp_pose_des; native type geometry_msgs/Pose. Scalar
     * value. Storage belongs to the complete value and acquires no ROS resource.
     */
    roswasmc_bounded_1_geometry_msgs_Pose tcp_pose_des;
    /**
     * @brief Retain the complete original geometry_msgs/Accel field.
     * @details Original flexiv_msgs/RobotStates.tcp_vel; native type geometry_msgs/Accel. Scalar value.
     * Storage belongs to the complete value and acquires no ROS resource.
     */
    roswasmc_bounded_1_geometry_msgs_Accel tcp_vel;
    /**
     * @brief Retain the complete original geometry_msgs/Pose field.
     * @details Original flexiv_msgs/RobotStates.cam_pose; native type geometry_msgs/Pose. Scalar value.
     * Storage belongs to the complete value and acquires no ROS resource.
     */
    roswasmc_bounded_1_geometry_msgs_Pose cam_pose;
    /**
     * @brief Retain the complete original geometry_msgs/Pose field.
     * @details Original flexiv_msgs/RobotStates.flange_pose; native type geometry_msgs/Pose. Scalar value.
     * Storage belongs to the complete value and acquires no ROS resource.
     */
    roswasmc_bounded_1_geometry_msgs_Pose flange_pose;
    /**
     * @brief Retain the complete original geometry_msgs/Wrench field.
     * @details Original flexiv_msgs/RobotStates.ft_sensor_raw; native type geometry_msgs/Wrench. Scalar
     * value. Storage belongs to the complete value and acquires no ROS resource.
     */
    roswasmc_bounded_1_geometry_msgs_Wrench ft_sensor_raw;
    /**
     * @brief Retain the complete original geometry_msgs/Wrench field.
     * @details Original flexiv_msgs/RobotStates.ext_wrench_tcp_frame; native type geometry_msgs/Wrench.
     * Scalar value. Storage belongs to the complete value and acquires no ROS resource.
     */
    roswasmc_bounded_1_geometry_msgs_Wrench ext_wrench_tcp_frame;
    /**
     * @brief Retain the complete original geometry_msgs/Wrench field.
     * @details Original flexiv_msgs/RobotStates.ext_wrench_base_frame; native type geometry_msgs/Wrench.
     * Scalar value. Storage belongs to the complete value and acquires no ROS resource.
     */
    roswasmc_bounded_1_geometry_msgs_Wrench ext_wrench_base_frame;
} roswasmc_bounded_1_flexiv_msgs_RobotStates;

# define ROSWASMC_BOUNDED_1_FLEXIV_MSGS_ROBOTSTATES_MAX_WIRE_BYTES 864u
# define ROSWASMC_BOUNDED_1_FLEXIV_MSGS_ROBOTSTATES_MIN_WIRE_BYTES 864u
# define ROSWASMC_BOUNDED_1_FLEXIV_MSGS_ROBOTSTATES_CODEC_IDENTITY "UWVMROS1_a64419da913e6fafce645177a491cc77a1dcee9ef785bc04380e7aebaeeb12a8"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
inline static int roswasmc_bounded_1_flexiv_msgs_RobotStates_valid(roswasmc_bounded_1_flexiv_msgs_RobotStates const* value)
{
    if(!value)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < 7u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->q[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                {
                    return 0;
                }
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 7u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->theta[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                {
                    return 0;
                }
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 7u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->dq[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                {
                    return 0;
                }
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 7u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->dtheta[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                {
                    return 0;
                }
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 7u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->tau[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                {
                    return 0;
                }
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 7u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->tau_des[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                {
                    return 0;
                }
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 7u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->tau_dot[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                {
                    return 0;
                }
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 7u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->tau_ext[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                {
                    return 0;
                }
            }
        }
    }
    if(!roswasmc_bounded_1_geometry_msgs_Pose_valid(&value->tcp_pose))
    {
        return 0;
    }
    if(!roswasmc_bounded_1_geometry_msgs_Pose_valid(&value->tcp_pose_des))
    {
        return 0;
    }
    if(!roswasmc_bounded_1_geometry_msgs_Accel_valid(&value->tcp_vel))
    {
        return 0;
    }
    if(!roswasmc_bounded_1_geometry_msgs_Pose_valid(&value->cam_pose))
    {
        return 0;
    }
    if(!roswasmc_bounded_1_geometry_msgs_Pose_valid(&value->flange_pose))
    {
        return 0;
    }
    if(!roswasmc_bounded_1_geometry_msgs_Wrench_valid(&value->ft_sensor_raw))
    {
        return 0;
    }
    if(!roswasmc_bounded_1_geometry_msgs_Wrench_valid(&value->ext_wrench_tcp_frame))
    {
        return 0;
    }
    if(!roswasmc_bounded_1_geometry_msgs_Wrench_valid(&value->ext_wrench_base_frame))
    {
        return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
inline static size_t roswasmc_bounded_1_flexiv_msgs_RobotStates_wire_size(roswasmc_bounded_1_flexiv_msgs_RobotStates const* value)
{
    size_t n = 0;
    {
        size_t i;
        for(i = 0; i < 7u; ++i)
        {
            n += 8;
        }
    }
    {
        size_t i;
        for(i = 0; i < 7u; ++i)
        {
            n += 8;
        }
    }
    {
        size_t i;
        for(i = 0; i < 7u; ++i)
        {
            n += 8;
        }
    }
    {
        size_t i;
        for(i = 0; i < 7u; ++i)
        {
            n += 8;
        }
    }
    {
        size_t i;
        for(i = 0; i < 7u; ++i)
        {
            n += 8;
        }
    }
    {
        size_t i;
        for(i = 0; i < 7u; ++i)
        {
            n += 8;
        }
    }
    {
        size_t i;
        for(i = 0; i < 7u; ++i)
        {
            n += 8;
        }
    }
    {
        size_t i;
        for(i = 0; i < 7u; ++i)
        {
            n += 8;
        }
    }
    n += roswasmc_bounded_1_geometry_msgs_Pose_wire_size(&value->tcp_pose);
    n += roswasmc_bounded_1_geometry_msgs_Pose_wire_size(&value->tcp_pose_des);
    n += roswasmc_bounded_1_geometry_msgs_Accel_wire_size(&value->tcp_vel);
    n += roswasmc_bounded_1_geometry_msgs_Pose_wire_size(&value->cam_pose);
    n += roswasmc_bounded_1_geometry_msgs_Pose_wire_size(&value->flange_pose);
    n += roswasmc_bounded_1_geometry_msgs_Wrench_wire_size(&value->ft_sensor_raw);
    n += roswasmc_bounded_1_geometry_msgs_Wrench_wire_size(&value->ext_wrench_tcp_frame);
    n += roswasmc_bounded_1_geometry_msgs_Wrench_wire_size(&value->ext_wrench_base_frame);
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
inline static void
    roswasmc_bounded_1_flexiv_msgs_RobotStates_write_fields(roswasmc_bounded_1_flexiv_msgs_RobotStates const* value, unsigned char* p, size_t* offset)
{
    {
        size_t i;
        for(i = 0; i < 7u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->q[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 7u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->theta[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 7u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->dq[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 7u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->dtheta[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 7u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->tau[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 7u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->tau_des[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 7u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->tau_dot[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 7u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->tau_ext[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
    roswasmc_bounded_1_geometry_msgs_Pose_write_fields(&value->tcp_pose, p, offset);
    roswasmc_bounded_1_geometry_msgs_Pose_write_fields(&value->tcp_pose_des, p, offset);
    roswasmc_bounded_1_geometry_msgs_Accel_write_fields(&value->tcp_vel, p, offset);
    roswasmc_bounded_1_geometry_msgs_Pose_write_fields(&value->cam_pose, p, offset);
    roswasmc_bounded_1_geometry_msgs_Pose_write_fields(&value->flange_pose, p, offset);
    roswasmc_bounded_1_geometry_msgs_Wrench_write_fields(&value->ft_sensor_raw, p, offset);
    roswasmc_bounded_1_geometry_msgs_Wrench_write_fields(&value->ext_wrench_tcp_frame, p, offset);
    roswasmc_bounded_1_geometry_msgs_Wrench_write_fields(&value->ext_wrench_base_frame, p, offset);
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
inline static int
    roswasmc_bounded_1_flexiv_msgs_RobotStates_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_1_flexiv_msgs_RobotStates* value)
{
    {
        size_t i;
        for(i = 0; i < 7u; ++i)
        {
            if(*offset > n || n - *offset < 8)
            {
                return 0;
            }
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->q[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    {
        size_t i;
        for(i = 0; i < 7u; ++i)
        {
            if(*offset > n || n - *offset < 8)
            {
                return 0;
            }
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->theta[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    {
        size_t i;
        for(i = 0; i < 7u; ++i)
        {
            if(*offset > n || n - *offset < 8)
            {
                return 0;
            }
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->dq[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    {
        size_t i;
        for(i = 0; i < 7u; ++i)
        {
            if(*offset > n || n - *offset < 8)
            {
                return 0;
            }
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->dtheta[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    {
        size_t i;
        for(i = 0; i < 7u; ++i)
        {
            if(*offset > n || n - *offset < 8)
            {
                return 0;
            }
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->tau[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    {
        size_t i;
        for(i = 0; i < 7u; ++i)
        {
            if(*offset > n || n - *offset < 8)
            {
                return 0;
            }
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->tau_des[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    {
        size_t i;
        for(i = 0; i < 7u; ++i)
        {
            if(*offset > n || n - *offset < 8)
            {
                return 0;
            }
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->tau_dot[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    {
        size_t i;
        for(i = 0; i < 7u; ++i)
        {
            if(*offset > n || n - *offset < 8)
            {
                return 0;
            }
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->tau_ext[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    if(!roswasmc_bounded_1_geometry_msgs_Pose_read_fields(p, n, offset, &value->tcp_pose))
    {
        return 0;
    }
    if(!roswasmc_bounded_1_geometry_msgs_Pose_read_fields(p, n, offset, &value->tcp_pose_des))
    {
        return 0;
    }
    if(!roswasmc_bounded_1_geometry_msgs_Accel_read_fields(p, n, offset, &value->tcp_vel))
    {
        return 0;
    }
    if(!roswasmc_bounded_1_geometry_msgs_Pose_read_fields(p, n, offset, &value->cam_pose))
    {
        return 0;
    }
    if(!roswasmc_bounded_1_geometry_msgs_Pose_read_fields(p, n, offset, &value->flange_pose))
    {
        return 0;
    }
    if(!roswasmc_bounded_1_geometry_msgs_Wrench_read_fields(p, n, offset, &value->ft_sensor_raw))
    {
        return 0;
    }
    if(!roswasmc_bounded_1_geometry_msgs_Wrench_read_fields(p, n, offset, &value->ext_wrench_tcp_frame))
    {
        return 0;
    }
    if(!roswasmc_bounded_1_geometry_msgs_Wrench_read_fields(p, n, offset, &value->ext_wrench_base_frame))
    {
        return 0;
    }
    return roswasmc_bounded_1_flexiv_msgs_RobotStates_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
inline static uint32_t
    roswasmc_bounded_1_flexiv_msgs_RobotStates_encode(roswasmc_bounded_1_flexiv_msgs_RobotStates const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_flexiv_msgs_RobotStates_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_1_flexiv_msgs_RobotStates_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_1_flexiv_msgs_RobotStates_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
inline static uint32_t roswasmc_bounded_1_flexiv_msgs_RobotStates_decode(void const* input, size_t length, roswasmc_bounded_1_flexiv_msgs_RobotStates* value)
{
    roswasmc_bounded_1_flexiv_msgs_RobotStates next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 864u || length > 864u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_1_flexiv_msgs_RobotStates_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#undef UWVM_BOUNDED_ASSERT
#endif
