/**
 * @file bounded_records.h
 * @brief Full leju c codecs and original record metadata.
 * @details Complete leju ros1_master_packaged_ik values in c. 17 original records retain 55 fields and 15 interface
 * descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native definitions.
 * Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the profile API
 * manual under document/platform/leju/en_US/catalog/.
 */
/** @file Generated bounded-v2 canonical values; no native ROS serialization or authority.
 * Every dynamic field has inline caller-owned capacity. Encode validates and measures
 * the full value before writes; decode commits one temporary only after full validation.
 * Supply distinct record, byte and size-output storage; overlap is explicitly refused.
 * Empty Service/Action components use a C layout dummy that is never a wire field. */
#ifndef UWVM_ROS_BOUNDED_RECORDS_9FFBBD73CCFD64D555D2247BDBF09F5936B6DEA6EC751ED15048E4C1397F03DF
#define UWVM_ROS_BOUNDED_RECORDS_9FFBBD73CCFD64D555D2247BDBF09F5936B6DEA6EC751ED15048E4C1397F03DF
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
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_ARMHANDPOSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_ARMHANDPOSE_0 != 0xe18408b1UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_ARMHANDPOSE_1 != 0xa565d414UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_ARMHANDPOSE_2 != 0x05d4cc2eUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_ARMHANDPOSE_3 != 0x4011f66eUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_ARMHANDPOSE_4 != 0x184e051cUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_ARMHANDPOSE_5 != 0xc3ceb253UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_ARMHANDPOSE_6 != 0x91de4d32UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_ARMHANDPOSE_7 != 0xf1c0926bUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_ARMHANDPOSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_ARMHANDPOSE_0 0xe18408b1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_ARMHANDPOSE_1 0xa565d414UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_ARMHANDPOSE_2 0x05d4cc2eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_ARMHANDPOSE_3 0x4011f66eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_ARMHANDPOSE_4 0x184e051cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_ARMHANDPOSE_5 0xc3ceb253UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_ARMHANDPOSE_6 0x91de4d32UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_ARMHANDPOSE_7 0xf1c0926bUL

/** Complete ROS1 motion_capture_ik/armHandPose value; no field projects away native data. */
typedef struct roswasmc_bounded_1_motion_capture_ik_armHandPose
{
    /** Declared field pos_xyz; canonical capacity is part of CODEC_IDENTITY. */
    double pos_xyz[3];
    /** Declared field quat_xyzw; canonical capacity is part of CODEC_IDENTITY. */
    double quat_xyzw[4];
    /** Declared field elbow_pos_xyz; canonical capacity is part of CODEC_IDENTITY. */
    double elbow_pos_xyz[3];
    /** Declared field joint_angles; canonical capacity is part of CODEC_IDENTITY. */
    double joint_angles[7];
} roswasmc_bounded_1_motion_capture_ik_armHandPose;

# define ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_ARMHANDPOSE_MAX_WIRE_BYTES 136u
# define ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_ARMHANDPOSE_MIN_WIRE_BYTES 136u
# define ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_ARMHANDPOSE_CODEC_IDENTITY "UWVMROS1_7cc97650a6f0bedb8bdbc0cc534eb422e8585c69f5b0ae92b6d4f213a2d90f08"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_motion_capture_ik_armHandPose_valid(roswasmc_bounded_1_motion_capture_ik_armHandPose const* value)
{
    if(!value)
        return 0;
    {
        size_t i;
        for(i = 0; i < 3u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->pos_xyz[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                    return 0;
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 4u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->quat_xyzw[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                    return 0;
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 3u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->elbow_pos_xyz[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                    return 0;
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 7u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->joint_angles[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                    return 0;
            }
        }
    }
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_1_motion_capture_ik_armHandPose_wire_size(roswasmc_bounded_1_motion_capture_ik_armHandPose const* value)
{
    size_t n = 0;
    {
        size_t i;
        for(i = 0; i < 3u; ++i)
        {
            n += 8;
        }
    }
    {
        size_t i;
        for(i = 0; i < 4u; ++i)
        {
            n += 8;
        }
    }
    {
        size_t i;
        for(i = 0; i < 3u; ++i)
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

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_1_motion_capture_ik_armHandPose_write_fields(roswasmc_bounded_1_motion_capture_ik_armHandPose const* value,
                                                                                 unsigned char* p,
                                                                                 size_t* offset)
{
    {
        size_t i;
        for(i = 0; i < 3u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->pos_xyz[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 4u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->quat_xyzw[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 3u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->elbow_pos_xyz[i], 8);
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
                uwvm_bounded_copy(&bits, &value->joint_angles[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_motion_capture_ik_armHandPose_read_fields(unsigned char const* p,
                                                                               size_t n,
                                                                               size_t* offset,
                                                                               roswasmc_bounded_1_motion_capture_ik_armHandPose* value)
{
    {
        size_t i;
        for(i = 0; i < 3u; ++i)
        {
            if(*offset > n || n - *offset < 8)
                return 0;
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->pos_xyz[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    {
        size_t i;
        for(i = 0; i < 4u; ++i)
        {
            if(*offset > n || n - *offset < 8)
                return 0;
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->quat_xyzw[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    {
        size_t i;
        for(i = 0; i < 3u; ++i)
        {
            if(*offset > n || n - *offset < 8)
                return 0;
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->elbow_pos_xyz[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    {
        size_t i;
        for(i = 0; i < 7u; ++i)
        {
            if(*offset > n || n - *offset < 8)
                return 0;
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->joint_angles[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    return roswasmc_bounded_1_motion_capture_ik_armHandPose_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_1_motion_capture_ik_armHandPose_encode(roswasmc_bounded_1_motion_capture_ik_armHandPose const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_motion_capture_ik_armHandPose_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_motion_capture_ik_armHandPose_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_motion_capture_ik_armHandPose_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_1_motion_capture_ik_armHandPose_decode(void const* input, size_t length, roswasmc_bounded_1_motion_capture_ik_armHandPose* value)
{
    roswasmc_bounded_1_motion_capture_ik_armHandPose next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 136u || length > 136u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_motion_capture_ik_armHandPose_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_ARMHANDPOSEFREE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_ARMHANDPOSEFREE_0 != 0xeb852af5UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_ARMHANDPOSEFREE_1 != 0xbcbb1e0fUL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_ARMHANDPOSEFREE_2 != 0xfbb14995UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_ARMHANDPOSEFREE_3 != 0x763a2b8eUL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_ARMHANDPOSEFREE_4 != 0x611a99d5UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_ARMHANDPOSEFREE_5 != 0x2d1d6542UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_ARMHANDPOSEFREE_6 != 0xb1658bf1UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_ARMHANDPOSEFREE_7 != 0x5d349292UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_ARMHANDPOSEFREE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_ARMHANDPOSEFREE_0 0xeb852af5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_ARMHANDPOSEFREE_1 0xbcbb1e0fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_ARMHANDPOSEFREE_2 0xfbb14995UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_ARMHANDPOSEFREE_3 0x763a2b8eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_ARMHANDPOSEFREE_4 0x611a99d5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_ARMHANDPOSEFREE_5 0x2d1d6542UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_ARMHANDPOSEFREE_6 0xb1658bf1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_ARMHANDPOSEFREE_7 0x5d349292UL

/** At most16 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[16];
} roswasmc_bounded_1_motion_capture_ik_armHandPoseFree_joint_angles_sequence;

/** Complete ROS1 motion_capture_ik/armHandPoseFree value; no field projects away native data. */
typedef struct roswasmc_bounded_1_motion_capture_ik_armHandPoseFree
{
    /** Declared field pos_xyz; canonical capacity is part of CODEC_IDENTITY. */
    double pos_xyz[3];
    /** Declared field quat_xyzw; canonical capacity is part of CODEC_IDENTITY. */
    double quat_xyzw[4];
    /** Declared field elbow_pos_xyz; canonical capacity is part of CODEC_IDENTITY. */
    double elbow_pos_xyz[3];
    /** Declared field joint_angles; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_motion_capture_ik_armHandPoseFree_joint_angles_sequence joint_angles;
} roswasmc_bounded_1_motion_capture_ik_armHandPoseFree;

# define ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_ARMHANDPOSEFREE_MAX_WIRE_BYTES 212u
# define ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_ARMHANDPOSEFREE_MIN_WIRE_BYTES 84u
# define ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_ARMHANDPOSEFREE_CODEC_IDENTITY "UWVMROS1_b46b274661ac382698a9bf1016ca647aecc41df8312020b740d73a87d2513caf"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_motion_capture_ik_armHandPoseFree_valid(roswasmc_bounded_1_motion_capture_ik_armHandPoseFree const* value)
{
    if(!value)
        return 0;
    {
        size_t i;
        for(i = 0; i < 3u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->pos_xyz[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                    return 0;
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 4u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->quat_xyzw[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                    return 0;
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 3u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->elbow_pos_xyz[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                    return 0;
            }
        }
    }
    if(value->joint_angles.size > 16u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->joint_angles.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->joint_angles.data[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                    return 0;
            }
        }
    }
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_1_motion_capture_ik_armHandPoseFree_wire_size(roswasmc_bounded_1_motion_capture_ik_armHandPoseFree const* value)
{
    size_t n = 0;
    {
        size_t i;
        for(i = 0; i < 3u; ++i)
        {
            n += 8;
        }
    }
    {
        size_t i;
        for(i = 0; i < 4u; ++i)
        {
            n += 8;
        }
    }
    {
        size_t i;
        for(i = 0; i < 3u; ++i)
        {
            n += 8;
        }
    }
    n += 4;
    if(value->joint_angles.size > 16u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->joint_angles.size; ++i)
        {
            n += 8;
        }
    }
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_1_motion_capture_ik_armHandPoseFree_write_fields(roswasmc_bounded_1_motion_capture_ik_armHandPoseFree const* value,
                                                                                     unsigned char* p,
                                                                                     size_t* offset)
{
    {
        size_t i;
        for(i = 0; i < 3u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->pos_xyz[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 4u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->quat_xyzw[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 3u; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->elbow_pos_xyz[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
    uwvm_bounded_put(p + *offset, value->joint_angles.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->joint_angles.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->joint_angles.data[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_motion_capture_ik_armHandPoseFree_read_fields(unsigned char const* p,
                                                                                   size_t n,
                                                                                   size_t* offset,
                                                                                   roswasmc_bounded_1_motion_capture_ik_armHandPoseFree* value)
{
    {
        size_t i;
        for(i = 0; i < 3u; ++i)
        {
            if(*offset > n || n - *offset < 8)
                return 0;
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->pos_xyz[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    {
        size_t i;
        for(i = 0; i < 4u; ++i)
        {
            if(*offset > n || n - *offset < 8)
                return 0;
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->quat_xyzw[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    {
        size_t i;
        for(i = 0; i < 3u; ++i)
        {
            if(*offset > n || n - *offset < 8)
                return 0;
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->elbow_pos_xyz[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    if(*offset > n || n - *offset < 4)
        return 0;
    value->joint_angles.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->joint_angles.size > 16u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->joint_angles.size; ++i)
        {
            if(*offset > n || n - *offset < 8)
                return 0;
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->joint_angles.data[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    return roswasmc_bounded_1_motion_capture_ik_armHandPoseFree_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_1_motion_capture_ik_armHandPoseFree_encode(roswasmc_bounded_1_motion_capture_ik_armHandPoseFree const* value,
                                                                                   void* output,
                                                                                   size_t capacity,
                                                                                   size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_motion_capture_ik_armHandPoseFree_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_motion_capture_ik_armHandPoseFree_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_motion_capture_ik_armHandPoseFree_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_1_motion_capture_ik_armHandPoseFree_decode(void const* input, size_t length, roswasmc_bounded_1_motion_capture_ik_armHandPoseFree* value)
{
    roswasmc_bounded_1_motion_capture_ik_armHandPoseFree next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 84u || length > 212u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_motion_capture_ik_armHandPoseFree_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_CHANGEARMCTRLMODEREQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_CHANGEARMCTRLMODEREQUEST_0 != 0x4b033a55UL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_CHANGEARMCTRLMODEREQUEST_1 != 0x98e96efcUL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_CHANGEARMCTRLMODEREQUEST_2 != 0xa735521eUL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_CHANGEARMCTRLMODEREQUEST_3 != 0x4181ff10UL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_CHANGEARMCTRLMODEREQUEST_4 != 0xcf0eafebUL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_CHANGEARMCTRLMODEREQUEST_5 != 0x07987227UL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_CHANGEARMCTRLMODEREQUEST_6 != 0xdcfb9318UL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_CHANGEARMCTRLMODEREQUEST_7 != 0xf96b0233UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_CHANGEARMCTRLMODEREQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_CHANGEARMCTRLMODEREQUEST_0 0x4b033a55UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_CHANGEARMCTRLMODEREQUEST_1 0x98e96efcUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_CHANGEARMCTRLMODEREQUEST_2 0xa735521eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_CHANGEARMCTRLMODEREQUEST_3 0x4181ff10UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_CHANGEARMCTRLMODEREQUEST_4 0xcf0eafebUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_CHANGEARMCTRLMODEREQUEST_5 0x07987227UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_CHANGEARMCTRLMODEREQUEST_6 0xdcfb9318UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_CHANGEARMCTRLMODEREQUEST_7 0xf96b0233UL

/** Complete ROS1 motion_capture_ik/changeArmCtrlModeRequest value; no field projects away native data. */
typedef struct roswasmc_bounded_1_motion_capture_ik_changeArmCtrlModeRequest
{
    /** Declared field control_mode; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t control_mode;
} roswasmc_bounded_1_motion_capture_ik_changeArmCtrlModeRequest;

# define ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_CHANGEARMCTRLMODEREQUEST_MAX_WIRE_BYTES 1u
# define ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_CHANGEARMCTRLMODEREQUEST_MIN_WIRE_BYTES 1u
# define ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_CHANGEARMCTRLMODEREQUEST_CODEC_IDENTITY                                                                          \
     "UWVMROS1_b73d3ed01f402673124afd1c6677ced89b5b55d207a1e8c4ff1312941fc00bbd"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int
    roswasmc_bounded_1_motion_capture_ik_changeArmCtrlModeRequest_valid(roswasmc_bounded_1_motion_capture_ik_changeArmCtrlModeRequest const* value)
{
    if(!value)
        return 0;
    if(value->control_mode > 1)
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_1_motion_capture_ik_changeArmCtrlModeRequest_wire_size(roswasmc_bounded_1_motion_capture_ik_changeArmCtrlModeRequest const* value)
{
    size_t n = 0;
    n += 1;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_1_motion_capture_ik_changeArmCtrlModeRequest_write_fields(roswasmc_bounded_1_motion_capture_ik_changeArmCtrlModeRequest const* value,
                                                                               unsigned char* p,
                                                                               size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->control_mode, 1);
    *offset += 1;
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int
    roswasmc_bounded_1_motion_capture_ik_changeArmCtrlModeRequest_read_fields(unsigned char const* p,
                                                                              size_t n,
                                                                              size_t* offset,
                                                                              roswasmc_bounded_1_motion_capture_ik_changeArmCtrlModeRequest* value)
{
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->control_mode, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_1_motion_capture_ik_changeArmCtrlModeRequest_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_1_motion_capture_ik_changeArmCtrlModeRequest_encode(roswasmc_bounded_1_motion_capture_ik_changeArmCtrlModeRequest const* value,
                                                                         void* output,
                                                                         size_t capacity,
                                                                         size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_motion_capture_ik_changeArmCtrlModeRequest_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_motion_capture_ik_changeArmCtrlModeRequest_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_motion_capture_ik_changeArmCtrlModeRequest_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_1_motion_capture_ik_changeArmCtrlModeRequest_decode(void const* input,
                                                                         size_t length,
                                                                         roswasmc_bounded_1_motion_capture_ik_changeArmCtrlModeRequest* value)
{
    roswasmc_bounded_1_motion_capture_ik_changeArmCtrlModeRequest next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 1u || length > 1u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_motion_capture_ik_changeArmCtrlModeRequest_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_CHANGEARMCTRLMODERESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_CHANGEARMCTRLMODERESPONSE_0 != 0xa2bbd40aUL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_CHANGEARMCTRLMODERESPONSE_1 != 0xa4fd568eUL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_CHANGEARMCTRLMODERESPONSE_2 != 0xf4de6dc2UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_CHANGEARMCTRLMODERESPONSE_3 != 0xca62d70cUL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_CHANGEARMCTRLMODERESPONSE_4 != 0x5ea0e5d9UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_CHANGEARMCTRLMODERESPONSE_5 != 0x7a3f8832UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_CHANGEARMCTRLMODERESPONSE_6 != 0xd6da15e5UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_CHANGEARMCTRLMODERESPONSE_7 != 0xe0315839UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_CHANGEARMCTRLMODERESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_CHANGEARMCTRLMODERESPONSE_0 0xa2bbd40aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_CHANGEARMCTRLMODERESPONSE_1 0xa4fd568eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_CHANGEARMCTRLMODERESPONSE_2 0xf4de6dc2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_CHANGEARMCTRLMODERESPONSE_3 0xca62d70cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_CHANGEARMCTRLMODERESPONSE_4 0x5ea0e5d9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_CHANGEARMCTRLMODERESPONSE_5 0x7a3f8832UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_CHANGEARMCTRLMODERESPONSE_6 0xd6da15e5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_CHANGEARMCTRLMODERESPONSE_7 0xe0315839UL

/** Complete ROS1 motion_capture_ik/changeArmCtrlModeResponse value; no field projects away native data. */
typedef struct roswasmc_bounded_1_motion_capture_ik_changeArmCtrlModeResponse
{
    /** Declared field result; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t result;
} roswasmc_bounded_1_motion_capture_ik_changeArmCtrlModeResponse;

# define ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_CHANGEARMCTRLMODERESPONSE_MAX_WIRE_BYTES 1u
# define ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_CHANGEARMCTRLMODERESPONSE_MIN_WIRE_BYTES 1u
# define ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_CHANGEARMCTRLMODERESPONSE_CODEC_IDENTITY                                                                         \
     "UWVMROS1_aee11b3bf042b1e989f7ed00d2f8e72821cfd8b6ee8232e14848ccf8ee754aac"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int
    roswasmc_bounded_1_motion_capture_ik_changeArmCtrlModeResponse_valid(roswasmc_bounded_1_motion_capture_ik_changeArmCtrlModeResponse const* value)
{
    if(!value)
        return 0;
    if(value->result > 1)
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_1_motion_capture_ik_changeArmCtrlModeResponse_wire_size(roswasmc_bounded_1_motion_capture_ik_changeArmCtrlModeResponse const* value)
{
    size_t n = 0;
    n += 1;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_1_motion_capture_ik_changeArmCtrlModeResponse_write_fields(roswasmc_bounded_1_motion_capture_ik_changeArmCtrlModeResponse const* value,
                                                                                unsigned char* p,
                                                                                size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->result, 1);
    *offset += 1;
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int
    roswasmc_bounded_1_motion_capture_ik_changeArmCtrlModeResponse_read_fields(unsigned char const* p,
                                                                               size_t n,
                                                                               size_t* offset,
                                                                               roswasmc_bounded_1_motion_capture_ik_changeArmCtrlModeResponse* value)
{
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->result, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_1_motion_capture_ik_changeArmCtrlModeResponse_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_1_motion_capture_ik_changeArmCtrlModeResponse_encode(roswasmc_bounded_1_motion_capture_ik_changeArmCtrlModeResponse const* value,
                                                                          void* output,
                                                                          size_t capacity,
                                                                          size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_motion_capture_ik_changeArmCtrlModeResponse_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_motion_capture_ik_changeArmCtrlModeResponse_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_motion_capture_ik_changeArmCtrlModeResponse_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_1_motion_capture_ik_changeArmCtrlModeResponse_decode(void const* input,
                                                                          size_t length,
                                                                          roswasmc_bounded_1_motion_capture_ik_changeArmCtrlModeResponse* value)
{
    roswasmc_bounded_1_motion_capture_ik_changeArmCtrlModeResponse next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 1u || length > 1u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_motion_capture_ik_changeArmCtrlModeResponse_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_HANDPOSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_HANDPOSE_0 != 0x9dbac214UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_HANDPOSE_1 != 0x6e71cbb1UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_HANDPOSE_2 != 0x71024961UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_HANDPOSE_3 != 0xe1d48ca2UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_HANDPOSE_4 != 0x79452a60UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_HANDPOSE_5 != 0x34c3c38eUL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_HANDPOSE_6 != 0x17470d38UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_HANDPOSE_7 != 0xb967a398UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_HANDPOSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_HANDPOSE_0 0x9dbac214UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_HANDPOSE_1 0x6e71cbb1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_HANDPOSE_2 0x71024961UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_HANDPOSE_3 0xe1d48ca2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_HANDPOSE_4 0x79452a60UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_HANDPOSE_5 0x34c3c38eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_HANDPOSE_6 0x17470d38UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_HANDPOSE_7 0xb967a398UL

/** Complete ROS1 motion_capture_ik/handPose value; no field projects away native data. */
typedef struct roswasmc_bounded_1_motion_capture_ik_handPose
{
    /** Declared field x; canonical capacity is part of CODEC_IDENTITY. */
    double x;
    /** Declared field y; canonical capacity is part of CODEC_IDENTITY. */
    double y;
    /** Declared field z; canonical capacity is part of CODEC_IDENTITY. */
    double z;
    /** Declared field roll; canonical capacity is part of CODEC_IDENTITY. */
    double roll;
    /** Declared field pitch; canonical capacity is part of CODEC_IDENTITY. */
    double pitch;
    /** Declared field yaw; canonical capacity is part of CODEC_IDENTITY. */
    double yaw;
} roswasmc_bounded_1_motion_capture_ik_handPose;

# define ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_HANDPOSE_MAX_WIRE_BYTES 48u
# define ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_HANDPOSE_MIN_WIRE_BYTES 48u
# define ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_HANDPOSE_CODEC_IDENTITY "UWVMROS1_dc924e15f38aa45188532c325292b2f9e3827f3dfa94ff946e30aa51f4fbee5f"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_motion_capture_ik_handPose_valid(roswasmc_bounded_1_motion_capture_ik_handPose const* value)
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
        uwvm_bounded_copy(&bits, &value->roll, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
            return 0;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->pitch, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
            return 0;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->yaw, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
            return 0;
    }
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_1_motion_capture_ik_handPose_wire_size(roswasmc_bounded_1_motion_capture_ik_handPose const* value)
{
    size_t n = 0;
    n += 8;
    n += 8;
    n += 8;
    n += 8;
    n += 8;
    n += 8;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_1_motion_capture_ik_handPose_write_fields(roswasmc_bounded_1_motion_capture_ik_handPose const* value, unsigned char* p, size_t* offset)
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
        uwvm_bounded_copy(&bits, &value->roll, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->pitch, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->yaw, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_motion_capture_ik_handPose_read_fields(unsigned char const* p,
                                                                            size_t n,
                                                                            size_t* offset,
                                                                            roswasmc_bounded_1_motion_capture_ik_handPose* value)
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
        uwvm_bounded_copy(&value->roll, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->pitch, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->yaw, &bits, 8);
    }
    *offset += 8;
    return roswasmc_bounded_1_motion_capture_ik_handPose_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_1_motion_capture_ik_handPose_encode(roswasmc_bounded_1_motion_capture_ik_handPose const* value,
                                                                            void* output,
                                                                            size_t capacity,
                                                                            size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_motion_capture_ik_handPose_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_motion_capture_ik_handPose_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_motion_capture_ik_handPose_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_1_motion_capture_ik_handPose_decode(void const* input, size_t length, roswasmc_bounded_1_motion_capture_ik_handPose* value)
{
    roswasmc_bounded_1_motion_capture_ik_handPose next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 48u || length > 48u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_motion_capture_ik_handPose_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_IKSOLVEERROR)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_IKSOLVEERROR_0 != 0x49fbe940UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_IKSOLVEERROR_1 != 0x75bc1941UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_IKSOLVEERROR_2 != 0x8f36abcdUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_IKSOLVEERROR_3 != 0x3ef6dea9UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_IKSOLVEERROR_4 != 0xb192ac6cUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_IKSOLVEERROR_5 != 0x3d357ce2UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_IKSOLVEERROR_6 != 0xbabf0e98UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_IKSOLVEERROR_7 != 0x256a4984UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_IKSOLVEERROR 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_IKSOLVEERROR_0 0x49fbe940UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_IKSOLVEERROR_1 0x75bc1941UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_IKSOLVEERROR_2 0x8f36abcdUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_IKSOLVEERROR_3 0x3ef6dea9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_IKSOLVEERROR_4 0xb192ac6cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_IKSOLVEERROR_5 0x3d357ce2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_IKSOLVEERROR_6 0xbabf0e98UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_IKSOLVEERROR_7 0x256a4984UL

/** UTF-8 byte storage for motion_capture_ik/ikSolveError.ik_type; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[256];
} roswasmc_bounded_1_motion_capture_ik_ikSolveError_ik_type_text;

/** Complete ROS1 motion_capture_ik/ikSolveError value; no field projects away native data. */
typedef struct roswasmc_bounded_1_motion_capture_ik_ikSolveError
{
    /** Declared field ik_type; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_motion_capture_ik_ikSolveError_ik_type_text ik_type;
    /** Declared field left_pose_error; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_motion_capture_ik_handPose left_pose_error;
    /** Declared field right_pose_error; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_motion_capture_ik_handPose right_pose_error;
} roswasmc_bounded_1_motion_capture_ik_ikSolveError;

# define ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_IKSOLVEERROR_MAX_WIRE_BYTES 356u
# define ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_IKSOLVEERROR_MIN_WIRE_BYTES 100u
# define ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_IKSOLVEERROR_CODEC_IDENTITY "UWVMROS1_a20039cf8bf301a7ef643884130619c2ceb96c1c91ed15482dd6f582917e1e94"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_motion_capture_ik_ikSolveError_valid(roswasmc_bounded_1_motion_capture_ik_ikSolveError const* value)
{
    if(!value)
        return 0;
    if(value->ik_type.size > 256u || !uwvm_bounded_utf8(value->ik_type.data, value->ik_type.size))
        return 0;
    if(!roswasmc_bounded_1_motion_capture_ik_handPose_valid(&value->left_pose_error))
        return 0;
    if(!roswasmc_bounded_1_motion_capture_ik_handPose_valid(&value->right_pose_error))
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_1_motion_capture_ik_ikSolveError_wire_size(roswasmc_bounded_1_motion_capture_ik_ikSolveError const* value)
{
    size_t n = 0;
    n += 4 + value->ik_type.size;
    n += roswasmc_bounded_1_motion_capture_ik_handPose_wire_size(&value->left_pose_error);
    n += roswasmc_bounded_1_motion_capture_ik_handPose_wire_size(&value->right_pose_error);
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_1_motion_capture_ik_ikSolveError_write_fields(roswasmc_bounded_1_motion_capture_ik_ikSolveError const* value,
                                                                                  unsigned char* p,
                                                                                  size_t* offset)
{
    uwvm_bounded_put(p + *offset, value->ik_type.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->ik_type.data, value->ik_type.size);
    *offset += value->ik_type.size;
    roswasmc_bounded_1_motion_capture_ik_handPose_write_fields(&value->left_pose_error, p, offset);
    roswasmc_bounded_1_motion_capture_ik_handPose_write_fields(&value->right_pose_error, p, offset);
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_motion_capture_ik_ikSolveError_read_fields(unsigned char const* p,
                                                                                size_t n,
                                                                                size_t* offset,
                                                                                roswasmc_bounded_1_motion_capture_ik_ikSolveError* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    value->ik_type.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->ik_type.size > 256u || value->ik_type.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->ik_type.data, p + *offset, value->ik_type.size);
    *offset += value->ik_type.size;
    if(!roswasmc_bounded_1_motion_capture_ik_handPose_read_fields(p, n, offset, &value->left_pose_error))
        return 0;
    if(!roswasmc_bounded_1_motion_capture_ik_handPose_read_fields(p, n, offset, &value->right_pose_error))
        return 0;
    return roswasmc_bounded_1_motion_capture_ik_ikSolveError_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_1_motion_capture_ik_ikSolveError_encode(roswasmc_bounded_1_motion_capture_ik_ikSolveError const* value,
                                                                                void* output,
                                                                                size_t capacity,
                                                                                size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_motion_capture_ik_ikSolveError_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_motion_capture_ik_ikSolveError_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_motion_capture_ik_ikSolveError_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_1_motion_capture_ik_ikSolveError_decode(void const* input, size_t length, roswasmc_bounded_1_motion_capture_ik_ikSolveError* value)
{
    roswasmc_bounded_1_motion_capture_ik_ikSolveError next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 100u || length > 356u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_motion_capture_ik_ikSolveError_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_IKSOLVEPARAM)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_IKSOLVEPARAM_0 != 0xf99be312UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_IKSOLVEPARAM_1 != 0x7bd1ec16UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_IKSOLVEPARAM_2 != 0x5436104bUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_IKSOLVEPARAM_3 != 0xe999c629UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_IKSOLVEPARAM_4 != 0xd5fdf970UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_IKSOLVEPARAM_5 != 0x41e469e1UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_IKSOLVEPARAM_6 != 0x3051880fUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_IKSOLVEPARAM_7 != 0x03f3dac6UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_IKSOLVEPARAM 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_IKSOLVEPARAM_0 0xf99be312UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_IKSOLVEPARAM_1 0x7bd1ec16UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_IKSOLVEPARAM_2 0x5436104bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_IKSOLVEPARAM_3 0xe999c629UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_IKSOLVEPARAM_4 0xd5fdf970UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_IKSOLVEPARAM_5 0x41e469e1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_IKSOLVEPARAM_6 0x3051880fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_IKSOLVEPARAM_7 0x03f3dac6UL

/** Complete ROS1 motion_capture_ik/ikSolveParam value; no field projects away native data. */
typedef struct roswasmc_bounded_1_motion_capture_ik_ikSolveParam
{
    /** Declared field major_optimality_tol; canonical capacity is part of CODEC_IDENTITY. */
    double major_optimality_tol;
    /** Declared field major_feasibility_tol; canonical capacity is part of CODEC_IDENTITY. */
    double major_feasibility_tol;
    /** Declared field minor_feasibility_tol; canonical capacity is part of CODEC_IDENTITY. */
    double minor_feasibility_tol;
    /** Declared field major_iterations_limit; canonical capacity is part of CODEC_IDENTITY. */
    double major_iterations_limit;
    /** Declared field oritation_constraint_tol; canonical capacity is part of CODEC_IDENTITY. */
    double oritation_constraint_tol;
    /** Declared field pos_constraint_tol; canonical capacity is part of CODEC_IDENTITY. */
    double pos_constraint_tol;
    /** Declared field pos_cost_weight; canonical capacity is part of CODEC_IDENTITY. */
    double pos_cost_weight;
} roswasmc_bounded_1_motion_capture_ik_ikSolveParam;

# define ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_IKSOLVEPARAM_MAX_WIRE_BYTES 56u
# define ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_IKSOLVEPARAM_MIN_WIRE_BYTES 56u
# define ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_IKSOLVEPARAM_CODEC_IDENTITY "UWVMROS1_8058ba64ed6070b821470b5560062e78f2ef0fa09169e7a249b584d2d158d981"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_motion_capture_ik_ikSolveParam_valid(roswasmc_bounded_1_motion_capture_ik_ikSolveParam const* value)
{
    if(!value)
        return 0;
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->major_optimality_tol, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
            return 0;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->major_feasibility_tol, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
            return 0;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->minor_feasibility_tol, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
            return 0;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->major_iterations_limit, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
            return 0;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->oritation_constraint_tol, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
            return 0;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->pos_constraint_tol, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
            return 0;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->pos_cost_weight, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
            return 0;
    }
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_1_motion_capture_ik_ikSolveParam_wire_size(roswasmc_bounded_1_motion_capture_ik_ikSolveParam const* value)
{
    size_t n = 0;
    n += 8;
    n += 8;
    n += 8;
    n += 8;
    n += 8;
    n += 8;
    n += 8;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_1_motion_capture_ik_ikSolveParam_write_fields(roswasmc_bounded_1_motion_capture_ik_ikSolveParam const* value,
                                                                                  unsigned char* p,
                                                                                  size_t* offset)
{
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->major_optimality_tol, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->major_feasibility_tol, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->minor_feasibility_tol, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->major_iterations_limit, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->oritation_constraint_tol, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->pos_constraint_tol, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->pos_cost_weight, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_motion_capture_ik_ikSolveParam_read_fields(unsigned char const* p,
                                                                                size_t n,
                                                                                size_t* offset,
                                                                                roswasmc_bounded_1_motion_capture_ik_ikSolveParam* value)
{
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->major_optimality_tol, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->major_feasibility_tol, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->minor_feasibility_tol, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->major_iterations_limit, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->oritation_constraint_tol, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->pos_constraint_tol, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->pos_cost_weight, &bits, 8);
    }
    *offset += 8;
    return roswasmc_bounded_1_motion_capture_ik_ikSolveParam_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_1_motion_capture_ik_ikSolveParam_encode(roswasmc_bounded_1_motion_capture_ik_ikSolveParam const* value,
                                                                                void* output,
                                                                                size_t capacity,
                                                                                size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_motion_capture_ik_ikSolveParam_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_motion_capture_ik_ikSolveParam_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_motion_capture_ik_ikSolveParam_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_1_motion_capture_ik_ikSolveParam_decode(void const* input, size_t length, roswasmc_bounded_1_motion_capture_ik_ikSolveParam* value)
{
    roswasmc_bounded_1_motion_capture_ik_ikSolveParam next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 56u || length > 56u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_motion_capture_ik_ikSolveParam_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_RECORDARMHANDPOSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_RECORDARMHANDPOSE_0 != 0xad74f311UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_RECORDARMHANDPOSE_1 != 0xbb8ea201UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_RECORDARMHANDPOSE_2 != 0x4180d5d8UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_RECORDARMHANDPOSE_3 != 0x4d9f4723UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_RECORDARMHANDPOSE_4 != 0x2c2313d9UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_RECORDARMHANDPOSE_5 != 0xdbdfc055UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_RECORDARMHANDPOSE_6 != 0x1f864368UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_RECORDARMHANDPOSE_7 != 0xd9ee5ec7UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_RECORDARMHANDPOSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_RECORDARMHANDPOSE_0 0xad74f311UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_RECORDARMHANDPOSE_1 0xbb8ea201UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_RECORDARMHANDPOSE_2 0x4180d5d8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_RECORDARMHANDPOSE_3 0x4d9f4723UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_RECORDARMHANDPOSE_4 0x2c2313d9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_RECORDARMHANDPOSE_5 0xdbdfc055UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_RECORDARMHANDPOSE_6 0x1f864368UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_RECORDARMHANDPOSE_7 0xd9ee5ec7UL

/** Complete ROS1 motion_capture_ik/recordArmHandPose value; no field projects away native data. */
typedef struct roswasmc_bounded_1_motion_capture_ik_recordArmHandPose
{
    /** Declared field left_pose; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_motion_capture_ik_armHandPose left_pose;
    /** Declared field right_pose; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_motion_capture_ik_armHandPose right_pose;
} roswasmc_bounded_1_motion_capture_ik_recordArmHandPose;

# define ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_RECORDARMHANDPOSE_MAX_WIRE_BYTES 272u
# define ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_RECORDARMHANDPOSE_MIN_WIRE_BYTES 272u
# define ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_RECORDARMHANDPOSE_CODEC_IDENTITY "UWVMROS1_815baf88f4e7fdf82316c06aa2baacbc2f30160c53eb73de10dfcbc1ecda2b4a"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_motion_capture_ik_recordArmHandPose_valid(roswasmc_bounded_1_motion_capture_ik_recordArmHandPose const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_1_motion_capture_ik_armHandPose_valid(&value->left_pose))
        return 0;
    if(!roswasmc_bounded_1_motion_capture_ik_armHandPose_valid(&value->right_pose))
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_1_motion_capture_ik_recordArmHandPose_wire_size(roswasmc_bounded_1_motion_capture_ik_recordArmHandPose const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_1_motion_capture_ik_armHandPose_wire_size(&value->left_pose);
    n += roswasmc_bounded_1_motion_capture_ik_armHandPose_wire_size(&value->right_pose);
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_1_motion_capture_ik_recordArmHandPose_write_fields(roswasmc_bounded_1_motion_capture_ik_recordArmHandPose const* value,
                                                                                       unsigned char* p,
                                                                                       size_t* offset)
{
    roswasmc_bounded_1_motion_capture_ik_armHandPose_write_fields(&value->left_pose, p, offset);
    roswasmc_bounded_1_motion_capture_ik_armHandPose_write_fields(&value->right_pose, p, offset);
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_motion_capture_ik_recordArmHandPose_read_fields(unsigned char const* p,
                                                                                     size_t n,
                                                                                     size_t* offset,
                                                                                     roswasmc_bounded_1_motion_capture_ik_recordArmHandPose* value)
{
    if(!roswasmc_bounded_1_motion_capture_ik_armHandPose_read_fields(p, n, offset, &value->left_pose))
        return 0;
    if(!roswasmc_bounded_1_motion_capture_ik_armHandPose_read_fields(p, n, offset, &value->right_pose))
        return 0;
    return roswasmc_bounded_1_motion_capture_ik_recordArmHandPose_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_1_motion_capture_ik_recordArmHandPose_encode(roswasmc_bounded_1_motion_capture_ik_recordArmHandPose const* value,
                                                                                     void* output,
                                                                                     size_t capacity,
                                                                                     size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_motion_capture_ik_recordArmHandPose_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_motion_capture_ik_recordArmHandPose_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_motion_capture_ik_recordArmHandPose_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_1_motion_capture_ik_recordArmHandPose_decode(void const* input,
                                                                                     size_t length,
                                                                                     roswasmc_bounded_1_motion_capture_ik_recordArmHandPose* value)
{
    roswasmc_bounded_1_motion_capture_ik_recordArmHandPose next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 272u || length > 272u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_motion_capture_ik_recordArmHandPose_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_RECORDARMHANDPOSEFREE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_RECORDARMHANDPOSEFREE_0 != 0xb4fc3d5fUL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_RECORDARMHANDPOSEFREE_1 != 0xf1a6145fUL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_RECORDARMHANDPOSEFREE_2 != 0x36d61645UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_RECORDARMHANDPOSEFREE_3 != 0x13f28ba7UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_RECORDARMHANDPOSEFREE_4 != 0xc76a5e54UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_RECORDARMHANDPOSEFREE_5 != 0x0339abf6UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_RECORDARMHANDPOSEFREE_6 != 0x6f643503UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_RECORDARMHANDPOSEFREE_7 != 0xa5a80882UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_RECORDARMHANDPOSEFREE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_RECORDARMHANDPOSEFREE_0 0xb4fc3d5fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_RECORDARMHANDPOSEFREE_1 0xf1a6145fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_RECORDARMHANDPOSEFREE_2 0x36d61645UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_RECORDARMHANDPOSEFREE_3 0x13f28ba7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_RECORDARMHANDPOSEFREE_4 0xc76a5e54UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_RECORDARMHANDPOSEFREE_5 0x0339abf6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_RECORDARMHANDPOSEFREE_6 0x6f643503UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_RECORDARMHANDPOSEFREE_7 0xa5a80882UL

/** Complete ROS1 motion_capture_ik/recordArmHandPoseFree value; no field projects away native data. */
typedef struct roswasmc_bounded_1_motion_capture_ik_recordArmHandPoseFree
{
    /** Declared field left_pose; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_motion_capture_ik_armHandPoseFree left_pose;
    /** Declared field right_pose; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_motion_capture_ik_armHandPoseFree right_pose;
} roswasmc_bounded_1_motion_capture_ik_recordArmHandPoseFree;

# define ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_RECORDARMHANDPOSEFREE_MAX_WIRE_BYTES 424u
# define ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_RECORDARMHANDPOSEFREE_MIN_WIRE_BYTES 168u
# define ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_RECORDARMHANDPOSEFREE_CODEC_IDENTITY "UWVMROS1_895dcfe228b573faa0911f4c5ca89094cae4497c06b57ba9b827356e62071811"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_motion_capture_ik_recordArmHandPoseFree_valid(roswasmc_bounded_1_motion_capture_ik_recordArmHandPoseFree const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_1_motion_capture_ik_armHandPoseFree_valid(&value->left_pose))
        return 0;
    if(!roswasmc_bounded_1_motion_capture_ik_armHandPoseFree_valid(&value->right_pose))
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_1_motion_capture_ik_recordArmHandPoseFree_wire_size(roswasmc_bounded_1_motion_capture_ik_recordArmHandPoseFree const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_1_motion_capture_ik_armHandPoseFree_wire_size(&value->left_pose);
    n += roswasmc_bounded_1_motion_capture_ik_armHandPoseFree_wire_size(&value->right_pose);
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_1_motion_capture_ik_recordArmHandPoseFree_write_fields(roswasmc_bounded_1_motion_capture_ik_recordArmHandPoseFree const* value,
                                                                            unsigned char* p,
                                                                            size_t* offset)
{
    roswasmc_bounded_1_motion_capture_ik_armHandPoseFree_write_fields(&value->left_pose, p, offset);
    roswasmc_bounded_1_motion_capture_ik_armHandPoseFree_write_fields(&value->right_pose, p, offset);
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_motion_capture_ik_recordArmHandPoseFree_read_fields(unsigned char const* p,
                                                                                         size_t n,
                                                                                         size_t* offset,
                                                                                         roswasmc_bounded_1_motion_capture_ik_recordArmHandPoseFree* value)
{
    if(!roswasmc_bounded_1_motion_capture_ik_armHandPoseFree_read_fields(p, n, offset, &value->left_pose))
        return 0;
    if(!roswasmc_bounded_1_motion_capture_ik_armHandPoseFree_read_fields(p, n, offset, &value->right_pose))
        return 0;
    return roswasmc_bounded_1_motion_capture_ik_recordArmHandPoseFree_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_1_motion_capture_ik_recordArmHandPoseFree_encode(roswasmc_bounded_1_motion_capture_ik_recordArmHandPoseFree const* value,
                                                                      void* output,
                                                                      size_t capacity,
                                                                      size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_motion_capture_ik_recordArmHandPoseFree_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_motion_capture_ik_recordArmHandPoseFree_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_motion_capture_ik_recordArmHandPoseFree_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_1_motion_capture_ik_recordArmHandPoseFree_decode(void const* input,
                                                                                         size_t length,
                                                                                         roswasmc_bounded_1_motion_capture_ik_recordArmHandPoseFree* value)
{
    roswasmc_bounded_1_motion_capture_ik_recordArmHandPoseFree next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 168u || length > 424u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_motion_capture_ik_recordArmHandPoseFree_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_ROBOTARMQVVD)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_ROBOTARMQVVD_0 != 0x6c6e7c6aUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_ROBOTARMQVVD_1 != 0xdb45ca25UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_ROBOTARMQVVD_2 != 0xc5a730a6UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_ROBOTARMQVVD_3 != 0x7e036546UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_ROBOTARMQVVD_4 != 0x875915a2UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_ROBOTARMQVVD_5 != 0x92e359d2UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_ROBOTARMQVVD_6 != 0x134b7957UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_ROBOTARMQVVD_7 != 0x5064cce9UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_ROBOTARMQVVD 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_ROBOTARMQVVD_0 0x6c6e7c6aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_ROBOTARMQVVD_1 0xdb45ca25UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_ROBOTARMQVVD_2 0xc5a730a6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_ROBOTARMQVVD_3 0x7e036546UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_ROBOTARMQVVD_4 0x875915a2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_ROBOTARMQVVD_5 0x92e359d2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_ROBOTARMQVVD_6 0x134b7957UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_ROBOTARMQVVD_7 0x5064cce9UL

/** At most16 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[16];
} roswasmc_bounded_1_motion_capture_ik_robotArmQVVD_q_sequence;

/** At most16 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[16];
} roswasmc_bounded_1_motion_capture_ik_robotArmQVVD_v_sequence;

/** At most16 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[16];
} roswasmc_bounded_1_motion_capture_ik_robotArmQVVD_vd_sequence;

/** Complete ROS1 motion_capture_ik/robotArmQVVD value; no field projects away native data. */
typedef struct roswasmc_bounded_1_motion_capture_ik_robotArmQVVD
{
    /** Declared field q; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_motion_capture_ik_robotArmQVVD_q_sequence q;
    /** Declared field v; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_motion_capture_ik_robotArmQVVD_v_sequence v;
    /** Declared field vd; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_motion_capture_ik_robotArmQVVD_vd_sequence vd;
} roswasmc_bounded_1_motion_capture_ik_robotArmQVVD;

# define ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_ROBOTARMQVVD_MAX_WIRE_BYTES 396u
# define ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_ROBOTARMQVVD_MIN_WIRE_BYTES 12u
# define ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_ROBOTARMQVVD_CODEC_IDENTITY "UWVMROS1_c5cfc8e6be023981b9b846a4e676e456a407479a9428f4fbe43e1af9df17fbbb"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_motion_capture_ik_robotArmQVVD_valid(roswasmc_bounded_1_motion_capture_ik_robotArmQVVD const* value)
{
    if(!value)
        return 0;
    if(value->q.size > 16u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->q.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->q.data[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                    return 0;
            }
        }
    }
    if(value->v.size > 16u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->v.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->v.data[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                    return 0;
            }
        }
    }
    if(value->vd.size > 16u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->vd.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->vd.data[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                    return 0;
            }
        }
    }
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_1_motion_capture_ik_robotArmQVVD_wire_size(roswasmc_bounded_1_motion_capture_ik_robotArmQVVD const* value)
{
    size_t n = 0;
    n += 4;
    if(value->q.size > 16u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->q.size; ++i)
        {
            n += 8;
        }
    }
    n += 4;
    if(value->v.size > 16u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->v.size; ++i)
        {
            n += 8;
        }
    }
    n += 4;
    if(value->vd.size > 16u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->vd.size; ++i)
        {
            n += 8;
        }
    }
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_1_motion_capture_ik_robotArmQVVD_write_fields(roswasmc_bounded_1_motion_capture_ik_robotArmQVVD const* value,
                                                                                  unsigned char* p,
                                                                                  size_t* offset)
{
    uwvm_bounded_put(p + *offset, value->q.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->q.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->q.data[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
    uwvm_bounded_put(p + *offset, value->v.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->v.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->v.data[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
    uwvm_bounded_put(p + *offset, value->vd.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->vd.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->vd.data[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_motion_capture_ik_robotArmQVVD_read_fields(unsigned char const* p,
                                                                                size_t n,
                                                                                size_t* offset,
                                                                                roswasmc_bounded_1_motion_capture_ik_robotArmQVVD* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    value->q.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->q.size > 16u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->q.size; ++i)
        {
            if(*offset > n || n - *offset < 8)
                return 0;
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->q.data[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    if(*offset > n || n - *offset < 4)
        return 0;
    value->v.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->v.size > 16u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->v.size; ++i)
        {
            if(*offset > n || n - *offset < 8)
                return 0;
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->v.data[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    if(*offset > n || n - *offset < 4)
        return 0;
    value->vd.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->vd.size > 16u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->vd.size; ++i)
        {
            if(*offset > n || n - *offset < 8)
                return 0;
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->vd.data[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    return roswasmc_bounded_1_motion_capture_ik_robotArmQVVD_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_1_motion_capture_ik_robotArmQVVD_encode(roswasmc_bounded_1_motion_capture_ik_robotArmQVVD const* value,
                                                                                void* output,
                                                                                size_t capacity,
                                                                                size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_motion_capture_ik_robotArmQVVD_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_motion_capture_ik_robotArmQVVD_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_motion_capture_ik_robotArmQVVD_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_1_motion_capture_ik_robotArmQVVD_decode(void const* input, size_t length, roswasmc_bounded_1_motion_capture_ik_robotArmQVVD* value)
{
    roswasmc_bounded_1_motion_capture_ik_robotArmQVVD next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 12u || length > 396u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_motion_capture_ik_robotArmQVVD_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
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

/** Complete ROS1 time value; no field projects away native data. */
typedef struct roswasmc_bounded_1_time
{
    /** Declared field sec; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t sec;
    /** Declared field nsec; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t nsec;
} roswasmc_bounded_1_time;

# define ROSWASMC_BOUNDED_1_TIME_MAX_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_1_TIME_MIN_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_1_TIME_CODEC_IDENTITY "UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_time_valid(roswasmc_bounded_1_time const* value)
{
    if(!value)
        return 0;
    if(value->nsec >= 1000000000)
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_1_time_wire_size(roswasmc_bounded_1_time const* value)
{
    size_t n = 0;
    n += 4;
    n += 4;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_1_time_write_fields(roswasmc_bounded_1_time const* value, unsigned char* p, size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->sec, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, (uint64_t)value->nsec, 4);
    *offset += 4;
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
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

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
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

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
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
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_MSGS_HEADER_0 != 0x0f6dbfffUL ||                                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_MSGS_HEADER_1 != 0xe472e026UL ||                                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_MSGS_HEADER_2 != 0x3a054297UL ||                                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_MSGS_HEADER_3 != 0xafa3cc0dUL ||                                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_MSGS_HEADER_4 != 0xe49c37c2UL ||                                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_MSGS_HEADER_5 != 0x5c7ea45fUL ||                                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_MSGS_HEADER_6 != 0x5f3e13b0UL ||                                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_MSGS_HEADER_7 != 0x76301343UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_MSGS_HEADER 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_MSGS_HEADER_0 0x0f6dbfffUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_MSGS_HEADER_1 0xe472e026UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_MSGS_HEADER_2 0x3a054297UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_MSGS_HEADER_3 0xafa3cc0dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_MSGS_HEADER_4 0xe49c37c2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_MSGS_HEADER_5 0x5c7ea45fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_MSGS_HEADER_6 0x5f3e13b0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_MSGS_HEADER_7 0x76301343UL

/** UTF-8 byte storage for std_msgs/Header.frame_id; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[256];
} roswasmc_bounded_1_std_msgs_Header_frame_id_text;

/** Complete ROS1 std_msgs/Header value; no field projects away native data. */
typedef struct roswasmc_bounded_1_std_msgs_Header
{
    /** Declared field seq; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t seq;
    /** Declared field stamp; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_time stamp;
    /** Declared field frame_id; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_std_msgs_Header_frame_id_text frame_id;
} roswasmc_bounded_1_std_msgs_Header;

# define ROSWASMC_BOUNDED_1_STD_MSGS_HEADER_MAX_WIRE_BYTES 272u
# define ROSWASMC_BOUNDED_1_STD_MSGS_HEADER_MIN_WIRE_BYTES 16u
# define ROSWASMC_BOUNDED_1_STD_MSGS_HEADER_CODEC_IDENTITY "UWVMROS1_5501bfd608c585c739688d051f0090563b3966c945bd84b7b2b3681fc61d47d7"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_std_msgs_Header_valid(roswasmc_bounded_1_std_msgs_Header const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_1_time_valid(&value->stamp))
        return 0;
    if(value->frame_id.size > 256u || !uwvm_bounded_utf8(value->frame_id.data, value->frame_id.size))
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_1_std_msgs_Header_wire_size(roswasmc_bounded_1_std_msgs_Header const* value)
{
    size_t n = 0;
    n += 4;
    n += roswasmc_bounded_1_time_wire_size(&value->stamp);
    n += 4 + value->frame_id.size;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
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

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
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
    if(value->frame_id.size > 256u || value->frame_id.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->frame_id.data, p + *offset, value->frame_id.size);
    *offset += value->frame_id.size;
    return roswasmc_bounded_1_std_msgs_Header_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
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

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_1_std_msgs_Header_decode(void const* input, size_t length, roswasmc_bounded_1_std_msgs_Header* value)
{
    roswasmc_bounded_1_std_msgs_Header next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 16u || length > 272u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_std_msgs_Header_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_ROBOTHANDPOSITION)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_ROBOTHANDPOSITION_0 != 0xa3dc8593UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_ROBOTHANDPOSITION_1 != 0x9cf91498UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_ROBOTHANDPOSITION_2 != 0xb20375feUL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_ROBOTHANDPOSITION_3 != 0xee2c0407UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_ROBOTHANDPOSITION_4 != 0x6268b41fUL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_ROBOTHANDPOSITION_5 != 0xa66096f4UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_ROBOTHANDPOSITION_6 != 0xf70516d5UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_ROBOTHANDPOSITION_7 != 0xfdea3e90UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_ROBOTHANDPOSITION 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_ROBOTHANDPOSITION_0 0xa3dc8593UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_ROBOTHANDPOSITION_1 0x9cf91498UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_ROBOTHANDPOSITION_2 0xb20375feUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_ROBOTHANDPOSITION_3 0xee2c0407UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_ROBOTHANDPOSITION_4 0x6268b41fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_ROBOTHANDPOSITION_5 0xa66096f4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_ROBOTHANDPOSITION_6 0xf70516d5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_ROBOTHANDPOSITION_7 0xfdea3e90UL

/** At most256 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    uint8_t data[256];
} roswasmc_bounded_1_motion_capture_ik_robotHandPosition_left_hand_position_sequence;

/** At most256 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    uint8_t data[256];
} roswasmc_bounded_1_motion_capture_ik_robotHandPosition_right_hand_position_sequence;

/** Complete ROS1 motion_capture_ik/robotHandPosition value; no field projects away native data. */
typedef struct roswasmc_bounded_1_motion_capture_ik_robotHandPosition
{
    /** Declared field header; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_std_msgs_Header header;
    /** Declared field left_hand_position; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_motion_capture_ik_robotHandPosition_left_hand_position_sequence left_hand_position;
    /** Declared field right_hand_position; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_motion_capture_ik_robotHandPosition_right_hand_position_sequence right_hand_position;
} roswasmc_bounded_1_motion_capture_ik_robotHandPosition;

# define ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_ROBOTHANDPOSITION_MAX_WIRE_BYTES 792u
# define ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_ROBOTHANDPOSITION_MIN_WIRE_BYTES 24u
# define ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_ROBOTHANDPOSITION_CODEC_IDENTITY "UWVMROS1_16c4f8c128cde34eba2cf878bad0706916193ba3b54f02dcd1e4556128e3b0aa"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_motion_capture_ik_robotHandPosition_valid(roswasmc_bounded_1_motion_capture_ik_robotHandPosition const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_1_std_msgs_Header_valid(&value->header))
        return 0;
    if(value->left_hand_position.size > 256u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->left_hand_position.size; ++i)
        {
        }
    }
    if(value->right_hand_position.size > 256u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->right_hand_position.size; ++i)
        {
        }
    }
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_1_motion_capture_ik_robotHandPosition_wire_size(roswasmc_bounded_1_motion_capture_ik_robotHandPosition const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_1_std_msgs_Header_wire_size(&value->header);
    n += 4;
    if(value->left_hand_position.size > 256u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->left_hand_position.size; ++i)
        {
            n += 1;
        }
    }
    n += 4;
    if(value->right_hand_position.size > 256u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->right_hand_position.size; ++i)
        {
            n += 1;
        }
    }
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_1_motion_capture_ik_robotHandPosition_write_fields(roswasmc_bounded_1_motion_capture_ik_robotHandPosition const* value,
                                                                                       unsigned char* p,
                                                                                       size_t* offset)
{
    roswasmc_bounded_1_std_msgs_Header_write_fields(&value->header, p, offset);
    uwvm_bounded_put(p + *offset, value->left_hand_position.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->left_hand_position.size; ++i)
        {
            uwvm_bounded_put(p + *offset, (uint64_t)value->left_hand_position.data[i], 1);
            *offset += 1;
        }
    }
    uwvm_bounded_put(p + *offset, value->right_hand_position.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->right_hand_position.size; ++i)
        {
            uwvm_bounded_put(p + *offset, (uint64_t)value->right_hand_position.data[i], 1);
            *offset += 1;
        }
    }
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_motion_capture_ik_robotHandPosition_read_fields(unsigned char const* p,
                                                                                     size_t n,
                                                                                     size_t* offset,
                                                                                     roswasmc_bounded_1_motion_capture_ik_robotHandPosition* value)
{
    if(!roswasmc_bounded_1_std_msgs_Header_read_fields(p, n, offset, &value->header))
        return 0;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->left_hand_position.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->left_hand_position.size > 256u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->left_hand_position.size; ++i)
        {
            if(*offset > n || n - *offset < 1)
                return 0;
            {
                uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
                uwvm_bounded_copy(&value->left_hand_position.data[i], &bits, 1);
            }
            *offset += 1;
        }
    }
    if(*offset > n || n - *offset < 4)
        return 0;
    value->right_hand_position.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->right_hand_position.size > 256u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->right_hand_position.size; ++i)
        {
            if(*offset > n || n - *offset < 1)
                return 0;
            {
                uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
                uwvm_bounded_copy(&value->right_hand_position.data[i], &bits, 1);
            }
            *offset += 1;
        }
    }
    return roswasmc_bounded_1_motion_capture_ik_robotHandPosition_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_1_motion_capture_ik_robotHandPosition_encode(roswasmc_bounded_1_motion_capture_ik_robotHandPosition const* value,
                                                                                     void* output,
                                                                                     size_t capacity,
                                                                                     size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_motion_capture_ik_robotHandPosition_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_motion_capture_ik_robotHandPosition_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_motion_capture_ik_robotHandPosition_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_1_motion_capture_ik_robotHandPosition_decode(void const* input,
                                                                                     size_t length,
                                                                                     roswasmc_bounded_1_motion_capture_ik_robotHandPosition* value)
{
    roswasmc_bounded_1_motion_capture_ik_robotHandPosition next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 24u || length > 792u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_motion_capture_ik_robotHandPosition_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_TWOARMHANDPOSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_TWOARMHANDPOSE_0 != 0x124bf166UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_TWOARMHANDPOSE_1 != 0x7ed430e5UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_TWOARMHANDPOSE_2 != 0x0234d0ebUL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_TWOARMHANDPOSE_3 != 0xb2a79686UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_TWOARMHANDPOSE_4 != 0xffa5bb44UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_TWOARMHANDPOSE_5 != 0x5587cf79UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_TWOARMHANDPOSE_6 != 0x35d6fbc7UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_TWOARMHANDPOSE_7 != 0x4d9dd769UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_TWOARMHANDPOSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_TWOARMHANDPOSE_0 0x124bf166UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_TWOARMHANDPOSE_1 0x7ed430e5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_TWOARMHANDPOSE_2 0x0234d0ebUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_TWOARMHANDPOSE_3 0xb2a79686UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_TWOARMHANDPOSE_4 0xffa5bb44UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_TWOARMHANDPOSE_5 0x5587cf79UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_TWOARMHANDPOSE_6 0x35d6fbc7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_TWOARMHANDPOSE_7 0x4d9dd769UL

/** Complete ROS1 motion_capture_ik/twoArmHandPose value; no field projects away native data. */
typedef struct roswasmc_bounded_1_motion_capture_ik_twoArmHandPose
{
    /** Declared field header; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_std_msgs_Header header;
    /** Declared field left_pose; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_motion_capture_ik_armHandPose left_pose;
    /** Declared field right_pose; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_motion_capture_ik_armHandPose right_pose;
} roswasmc_bounded_1_motion_capture_ik_twoArmHandPose;

# define ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_TWOARMHANDPOSE_MAX_WIRE_BYTES 544u
# define ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_TWOARMHANDPOSE_MIN_WIRE_BYTES 288u
# define ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_TWOARMHANDPOSE_CODEC_IDENTITY "UWVMROS1_12c87f2d727015a1dd0d5c344812528ae43bfd48168fdaa68bac006fe0bbc181"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_motion_capture_ik_twoArmHandPose_valid(roswasmc_bounded_1_motion_capture_ik_twoArmHandPose const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_1_std_msgs_Header_valid(&value->header))
        return 0;
    if(!roswasmc_bounded_1_motion_capture_ik_armHandPose_valid(&value->left_pose))
        return 0;
    if(!roswasmc_bounded_1_motion_capture_ik_armHandPose_valid(&value->right_pose))
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_1_motion_capture_ik_twoArmHandPose_wire_size(roswasmc_bounded_1_motion_capture_ik_twoArmHandPose const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_1_std_msgs_Header_wire_size(&value->header);
    n += roswasmc_bounded_1_motion_capture_ik_armHandPose_wire_size(&value->left_pose);
    n += roswasmc_bounded_1_motion_capture_ik_armHandPose_wire_size(&value->right_pose);
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_1_motion_capture_ik_twoArmHandPose_write_fields(roswasmc_bounded_1_motion_capture_ik_twoArmHandPose const* value,
                                                                                    unsigned char* p,
                                                                                    size_t* offset)
{
    roswasmc_bounded_1_std_msgs_Header_write_fields(&value->header, p, offset);
    roswasmc_bounded_1_motion_capture_ik_armHandPose_write_fields(&value->left_pose, p, offset);
    roswasmc_bounded_1_motion_capture_ik_armHandPose_write_fields(&value->right_pose, p, offset);
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_motion_capture_ik_twoArmHandPose_read_fields(unsigned char const* p,
                                                                                  size_t n,
                                                                                  size_t* offset,
                                                                                  roswasmc_bounded_1_motion_capture_ik_twoArmHandPose* value)
{
    if(!roswasmc_bounded_1_std_msgs_Header_read_fields(p, n, offset, &value->header))
        return 0;
    if(!roswasmc_bounded_1_motion_capture_ik_armHandPose_read_fields(p, n, offset, &value->left_pose))
        return 0;
    if(!roswasmc_bounded_1_motion_capture_ik_armHandPose_read_fields(p, n, offset, &value->right_pose))
        return 0;
    return roswasmc_bounded_1_motion_capture_ik_twoArmHandPose_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_1_motion_capture_ik_twoArmHandPose_encode(roswasmc_bounded_1_motion_capture_ik_twoArmHandPose const* value,
                                                                                  void* output,
                                                                                  size_t capacity,
                                                                                  size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_motion_capture_ik_twoArmHandPose_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_motion_capture_ik_twoArmHandPose_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_motion_capture_ik_twoArmHandPose_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_1_motion_capture_ik_twoArmHandPose_decode(void const* input, size_t length, roswasmc_bounded_1_motion_capture_ik_twoArmHandPose* value)
{
    roswasmc_bounded_1_motion_capture_ik_twoArmHandPose next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 288u || length > 544u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_motion_capture_ik_twoArmHandPose_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_TWOARMHANDPOSECMD)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_TWOARMHANDPOSECMD_0 != 0x9589eb57UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_TWOARMHANDPOSECMD_1 != 0xf694617aUL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_TWOARMHANDPOSECMD_2 != 0xd24e48e4UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_TWOARMHANDPOSECMD_3 != 0x1a3476e2UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_TWOARMHANDPOSECMD_4 != 0x7344ef2cUL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_TWOARMHANDPOSECMD_5 != 0xa9b72167UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_TWOARMHANDPOSECMD_6 != 0x9b79169cUL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_TWOARMHANDPOSECMD_7 != 0xf33f5d7bUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_TWOARMHANDPOSECMD 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_TWOARMHANDPOSECMD_0 0x9589eb57UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_TWOARMHANDPOSECMD_1 0xf694617aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_TWOARMHANDPOSECMD_2 0xd24e48e4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_TWOARMHANDPOSECMD_3 0x1a3476e2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_TWOARMHANDPOSECMD_4 0x7344ef2cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_TWOARMHANDPOSECMD_5 0xa9b72167UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_TWOARMHANDPOSECMD_6 0x9b79169cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_TWOARMHANDPOSECMD_7 0xf33f5d7bUL

/** Complete ROS1 motion_capture_ik/twoArmHandPoseCmd value; no field projects away native data. */
typedef struct roswasmc_bounded_1_motion_capture_ik_twoArmHandPoseCmd
{
    /** Declared field hand_poses; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_motion_capture_ik_twoArmHandPose hand_poses;
    /** Declared field use_custom_ik_param; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t use_custom_ik_param;
    /** Declared field joint_angles_as_q0; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t joint_angles_as_q0;
    /** Declared field ik_param; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_motion_capture_ik_ikSolveParam ik_param;
} roswasmc_bounded_1_motion_capture_ik_twoArmHandPoseCmd;

# define ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_TWOARMHANDPOSECMD_MAX_WIRE_BYTES 602u
# define ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_TWOARMHANDPOSECMD_MIN_WIRE_BYTES 346u
# define ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_TWOARMHANDPOSECMD_CODEC_IDENTITY "UWVMROS1_aa53de9aca25b5e5ad518a3e3fd6a36f9501d620da4fbd56721a15b693ce6acc"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_motion_capture_ik_twoArmHandPoseCmd_valid(roswasmc_bounded_1_motion_capture_ik_twoArmHandPoseCmd const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_1_motion_capture_ik_twoArmHandPose_valid(&value->hand_poses))
        return 0;
    if(value->use_custom_ik_param > 1)
        return 0;
    if(value->joint_angles_as_q0 > 1)
        return 0;
    if(!roswasmc_bounded_1_motion_capture_ik_ikSolveParam_valid(&value->ik_param))
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_1_motion_capture_ik_twoArmHandPoseCmd_wire_size(roswasmc_bounded_1_motion_capture_ik_twoArmHandPoseCmd const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_1_motion_capture_ik_twoArmHandPose_wire_size(&value->hand_poses);
    n += 1;
    n += 1;
    n += roswasmc_bounded_1_motion_capture_ik_ikSolveParam_wire_size(&value->ik_param);
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_1_motion_capture_ik_twoArmHandPoseCmd_write_fields(roswasmc_bounded_1_motion_capture_ik_twoArmHandPoseCmd const* value,
                                                                                       unsigned char* p,
                                                                                       size_t* offset)
{
    roswasmc_bounded_1_motion_capture_ik_twoArmHandPose_write_fields(&value->hand_poses, p, offset);
    uwvm_bounded_put(p + *offset, (uint64_t)value->use_custom_ik_param, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->joint_angles_as_q0, 1);
    *offset += 1;
    roswasmc_bounded_1_motion_capture_ik_ikSolveParam_write_fields(&value->ik_param, p, offset);
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_motion_capture_ik_twoArmHandPoseCmd_read_fields(unsigned char const* p,
                                                                                     size_t n,
                                                                                     size_t* offset,
                                                                                     roswasmc_bounded_1_motion_capture_ik_twoArmHandPoseCmd* value)
{
    if(!roswasmc_bounded_1_motion_capture_ik_twoArmHandPose_read_fields(p, n, offset, &value->hand_poses))
        return 0;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->use_custom_ik_param, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->joint_angles_as_q0, &bits, 1);
    }
    *offset += 1;
    if(!roswasmc_bounded_1_motion_capture_ik_ikSolveParam_read_fields(p, n, offset, &value->ik_param))
        return 0;
    return roswasmc_bounded_1_motion_capture_ik_twoArmHandPoseCmd_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_1_motion_capture_ik_twoArmHandPoseCmd_encode(roswasmc_bounded_1_motion_capture_ik_twoArmHandPoseCmd const* value,
                                                                                     void* output,
                                                                                     size_t capacity,
                                                                                     size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_motion_capture_ik_twoArmHandPoseCmd_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_motion_capture_ik_twoArmHandPoseCmd_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_motion_capture_ik_twoArmHandPoseCmd_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_1_motion_capture_ik_twoArmHandPoseCmd_decode(void const* input,
                                                                                     size_t length,
                                                                                     roswasmc_bounded_1_motion_capture_ik_twoArmHandPoseCmd* value)
{
    roswasmc_bounded_1_motion_capture_ik_twoArmHandPoseCmd next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 346u || length > 602u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_motion_capture_ik_twoArmHandPoseCmd_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_TWOARMHANDPOSEFREE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_TWOARMHANDPOSEFREE_0 != 0xa5826c69UL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_TWOARMHANDPOSEFREE_1 != 0x87fd99a6UL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_TWOARMHANDPOSEFREE_2 != 0x5eff00edUL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_TWOARMHANDPOSEFREE_3 != 0x5236c0cdUL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_TWOARMHANDPOSEFREE_4 != 0xd7f9ba2aUL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_TWOARMHANDPOSEFREE_5 != 0xb725f12dUL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_TWOARMHANDPOSEFREE_6 != 0x7b48bd3cUL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_TWOARMHANDPOSEFREE_7 != 0xe91ae960UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_TWOARMHANDPOSEFREE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_TWOARMHANDPOSEFREE_0 0xa5826c69UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_TWOARMHANDPOSEFREE_1 0x87fd99a6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_TWOARMHANDPOSEFREE_2 0x5eff00edUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_TWOARMHANDPOSEFREE_3 0x5236c0cdUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_TWOARMHANDPOSEFREE_4 0xd7f9ba2aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_TWOARMHANDPOSEFREE_5 0xb725f12dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_TWOARMHANDPOSEFREE_6 0x7b48bd3cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_TWOARMHANDPOSEFREE_7 0xe91ae960UL

/** Complete ROS1 motion_capture_ik/twoArmHandPoseFree value; no field projects away native data. */
typedef struct roswasmc_bounded_1_motion_capture_ik_twoArmHandPoseFree
{
    /** Declared field header; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_std_msgs_Header header;
    /** Declared field left_pose; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_motion_capture_ik_armHandPoseFree left_pose;
    /** Declared field right_pose; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_motion_capture_ik_armHandPoseFree right_pose;
} roswasmc_bounded_1_motion_capture_ik_twoArmHandPoseFree;

# define ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_TWOARMHANDPOSEFREE_MAX_WIRE_BYTES 696u
# define ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_TWOARMHANDPOSEFREE_MIN_WIRE_BYTES 184u
# define ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_TWOARMHANDPOSEFREE_CODEC_IDENTITY "UWVMROS1_2b0e1aadf4405084b26888548a9c33bb9be57ec8f606122857a3b18c2a6f572c"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_motion_capture_ik_twoArmHandPoseFree_valid(roswasmc_bounded_1_motion_capture_ik_twoArmHandPoseFree const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_1_std_msgs_Header_valid(&value->header))
        return 0;
    if(!roswasmc_bounded_1_motion_capture_ik_armHandPoseFree_valid(&value->left_pose))
        return 0;
    if(!roswasmc_bounded_1_motion_capture_ik_armHandPoseFree_valid(&value->right_pose))
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_1_motion_capture_ik_twoArmHandPoseFree_wire_size(roswasmc_bounded_1_motion_capture_ik_twoArmHandPoseFree const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_1_std_msgs_Header_wire_size(&value->header);
    n += roswasmc_bounded_1_motion_capture_ik_armHandPoseFree_wire_size(&value->left_pose);
    n += roswasmc_bounded_1_motion_capture_ik_armHandPoseFree_wire_size(&value->right_pose);
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_1_motion_capture_ik_twoArmHandPoseFree_write_fields(roswasmc_bounded_1_motion_capture_ik_twoArmHandPoseFree const* value,
                                                                                        unsigned char* p,
                                                                                        size_t* offset)
{
    roswasmc_bounded_1_std_msgs_Header_write_fields(&value->header, p, offset);
    roswasmc_bounded_1_motion_capture_ik_armHandPoseFree_write_fields(&value->left_pose, p, offset);
    roswasmc_bounded_1_motion_capture_ik_armHandPoseFree_write_fields(&value->right_pose, p, offset);
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_motion_capture_ik_twoArmHandPoseFree_read_fields(unsigned char const* p,
                                                                                      size_t n,
                                                                                      size_t* offset,
                                                                                      roswasmc_bounded_1_motion_capture_ik_twoArmHandPoseFree* value)
{
    if(!roswasmc_bounded_1_std_msgs_Header_read_fields(p, n, offset, &value->header))
        return 0;
    if(!roswasmc_bounded_1_motion_capture_ik_armHandPoseFree_read_fields(p, n, offset, &value->left_pose))
        return 0;
    if(!roswasmc_bounded_1_motion_capture_ik_armHandPoseFree_read_fields(p, n, offset, &value->right_pose))
        return 0;
    return roswasmc_bounded_1_motion_capture_ik_twoArmHandPoseFree_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_1_motion_capture_ik_twoArmHandPoseFree_encode(roswasmc_bounded_1_motion_capture_ik_twoArmHandPoseFree const* value,
                                                                                      void* output,
                                                                                      size_t capacity,
                                                                                      size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_motion_capture_ik_twoArmHandPoseFree_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_motion_capture_ik_twoArmHandPoseFree_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_motion_capture_ik_twoArmHandPoseFree_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_1_motion_capture_ik_twoArmHandPoseFree_decode(void const* input,
                                                                                      size_t length,
                                                                                      roswasmc_bounded_1_motion_capture_ik_twoArmHandPoseFree* value)
{
    roswasmc_bounded_1_motion_capture_ik_twoArmHandPoseFree next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 184u || length > 696u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_motion_capture_ik_twoArmHandPoseFree_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_TWOARMHANDPOSECMDFREE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_TWOARMHANDPOSECMDFREE_0 != 0x9f0bdf8fUL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_TWOARMHANDPOSECMDFREE_1 != 0x5c3cf631UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_TWOARMHANDPOSECMDFREE_2 != 0x9b5395d1UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_TWOARMHANDPOSECMDFREE_3 != 0x61af8432UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_TWOARMHANDPOSECMDFREE_4 != 0x81276c5bUL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_TWOARMHANDPOSECMDFREE_5 != 0x16fadadfUL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_TWOARMHANDPOSECMDFREE_6 != 0x3f15ceddUL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_TWOARMHANDPOSECMDFREE_7 != 0x8e341dd0UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_TWOARMHANDPOSECMDFREE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_TWOARMHANDPOSECMDFREE_0 0x9f0bdf8fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_TWOARMHANDPOSECMDFREE_1 0x5c3cf631UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_TWOARMHANDPOSECMDFREE_2 0x9b5395d1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_TWOARMHANDPOSECMDFREE_3 0x61af8432UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_TWOARMHANDPOSECMDFREE_4 0x81276c5bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_TWOARMHANDPOSECMDFREE_5 0x16fadadfUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_TWOARMHANDPOSECMDFREE_6 0x3f15ceddUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_TWOARMHANDPOSECMDFREE_7 0x8e341dd0UL

/** Complete ROS1 motion_capture_ik/twoArmHandPoseCmdFree value; no field projects away native data. */
typedef struct roswasmc_bounded_1_motion_capture_ik_twoArmHandPoseCmdFree
{
    /** Declared field hand_poses; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_motion_capture_ik_twoArmHandPoseFree hand_poses;
    /** Declared field use_custom_ik_param; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t use_custom_ik_param;
    /** Declared field joint_angles_as_q0; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t joint_angles_as_q0;
    /** Declared field ik_param; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_motion_capture_ik_ikSolveParam ik_param;
} roswasmc_bounded_1_motion_capture_ik_twoArmHandPoseCmdFree;

# define ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_TWOARMHANDPOSECMDFREE_MAX_WIRE_BYTES 754u
# define ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_TWOARMHANDPOSECMDFREE_MIN_WIRE_BYTES 242u
# define ROSWASMC_BOUNDED_1_MOTION_CAPTURE_IK_TWOARMHANDPOSECMDFREE_CODEC_IDENTITY "UWVMROS1_425b1b5b856ec8d0d019829cf48728723199ff79e2b6fa5aaa3f045f1c4f8773"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_motion_capture_ik_twoArmHandPoseCmdFree_valid(roswasmc_bounded_1_motion_capture_ik_twoArmHandPoseCmdFree const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_1_motion_capture_ik_twoArmHandPoseFree_valid(&value->hand_poses))
        return 0;
    if(value->use_custom_ik_param > 1)
        return 0;
    if(value->joint_angles_as_q0 > 1)
        return 0;
    if(!roswasmc_bounded_1_motion_capture_ik_ikSolveParam_valid(&value->ik_param))
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_1_motion_capture_ik_twoArmHandPoseCmdFree_wire_size(roswasmc_bounded_1_motion_capture_ik_twoArmHandPoseCmdFree const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_1_motion_capture_ik_twoArmHandPoseFree_wire_size(&value->hand_poses);
    n += 1;
    n += 1;
    n += roswasmc_bounded_1_motion_capture_ik_ikSolveParam_wire_size(&value->ik_param);
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_1_motion_capture_ik_twoArmHandPoseCmdFree_write_fields(roswasmc_bounded_1_motion_capture_ik_twoArmHandPoseCmdFree const* value,
                                                                            unsigned char* p,
                                                                            size_t* offset)
{
    roswasmc_bounded_1_motion_capture_ik_twoArmHandPoseFree_write_fields(&value->hand_poses, p, offset);
    uwvm_bounded_put(p + *offset, (uint64_t)value->use_custom_ik_param, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->joint_angles_as_q0, 1);
    *offset += 1;
    roswasmc_bounded_1_motion_capture_ik_ikSolveParam_write_fields(&value->ik_param, p, offset);
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_motion_capture_ik_twoArmHandPoseCmdFree_read_fields(unsigned char const* p,
                                                                                         size_t n,
                                                                                         size_t* offset,
                                                                                         roswasmc_bounded_1_motion_capture_ik_twoArmHandPoseCmdFree* value)
{
    if(!roswasmc_bounded_1_motion_capture_ik_twoArmHandPoseFree_read_fields(p, n, offset, &value->hand_poses))
        return 0;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->use_custom_ik_param, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->joint_angles_as_q0, &bits, 1);
    }
    *offset += 1;
    if(!roswasmc_bounded_1_motion_capture_ik_ikSolveParam_read_fields(p, n, offset, &value->ik_param))
        return 0;
    return roswasmc_bounded_1_motion_capture_ik_twoArmHandPoseCmdFree_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_1_motion_capture_ik_twoArmHandPoseCmdFree_encode(roswasmc_bounded_1_motion_capture_ik_twoArmHandPoseCmdFree const* value,
                                                                      void* output,
                                                                      size_t capacity,
                                                                      size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_motion_capture_ik_twoArmHandPoseCmdFree_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_motion_capture_ik_twoArmHandPoseCmdFree_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_motion_capture_ik_twoArmHandPoseCmdFree_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_1_motion_capture_ik_twoArmHandPoseCmdFree_decode(void const* input,
                                                                                         size_t length,
                                                                                         roswasmc_bounded_1_motion_capture_ik_twoArmHandPoseCmdFree* value)
{
    roswasmc_bounded_1_motion_capture_ik_twoArmHandPoseCmdFree next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 242u || length > 754u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_motion_capture_ik_twoArmHandPoseCmdFree_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#undef UWVM_BOUNDED_ASSERT
#endif
