/**
 * @file bounded_records.h
 * @brief Full leju c codecs and original record metadata.
 * @details Complete leju ros1_master_unregistered_dtos values in c. 2 original records retain 5 fields and 2
 * interface descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native
 * definitions. Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the
 * profile API manual under document/platform/leju/en_US/catalog/.
 */
/** @file Generated bounded-v2 canonical values; no native ROS serialization or authority.
 * Every dynamic field has inline caller-owned capacity. Encode validates and measures
 * the full value before writes; decode commits one temporary only after full validation.
 * Supply distinct record, byte and size-output storage; overlap is explicitly refused.
 * Empty Service/Action components use a C layout dummy that is never a wire field. */
#ifndef UWVM_ROS_BOUNDED_RECORDS_243CEC4133EA6901AA0D0FDD1C3293213FC76B271FD5C6675445935FC4B221B3
#define UWVM_ROS_BOUNDED_RECORDS_243CEC4133EA6901AA0D0FDD1C3293213FC76B271FD5C6675445935FC4B221B3
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
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_KUAVO_SDK_QV)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_KUAVO_SDK_QV_0 != 0xe92e42f3UL || UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_KUAVO_SDK_QV_1 != 0x84179535UL || \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_KUAVO_SDK_QV_2 != 0x355f32eaUL || UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_KUAVO_SDK_QV_3 != 0x40628fafUL || \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_KUAVO_SDK_QV_4 != 0x8f288165UL || UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_KUAVO_SDK_QV_5 != 0x460a27f9UL || \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_KUAVO_SDK_QV_6 != 0x1dc6329fUL || UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_KUAVO_SDK_QV_7 != 0xa308d265UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_KUAVO_SDK_QV 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_KUAVO_SDK_QV_0 0xe92e42f3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_KUAVO_SDK_QV_1 0x84179535UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_KUAVO_SDK_QV_2 0x355f32eaUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_KUAVO_SDK_QV_3 0x40628fafUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_KUAVO_SDK_QV_4 0x8f288165UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_KUAVO_SDK_QV_5 0x460a27f9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_KUAVO_SDK_QV_6 0x1dc6329fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_KUAVO_SDK_QV_7 0xa308d265UL

/** At most16 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[16];
} roswasmc_bounded_1_kuavo_sdk_qv_value_sequence;

/** Complete ROS1 kuavo_sdk/qv value; no field projects away native data. */
typedef struct roswasmc_bounded_1_kuavo_sdk_qv
{
    /** Declared field value; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_kuavo_sdk_qv_value_sequence value;
} roswasmc_bounded_1_kuavo_sdk_qv;

# define ROSWASMC_BOUNDED_1_KUAVO_SDK_QV_MAX_WIRE_BYTES 132u
# define ROSWASMC_BOUNDED_1_KUAVO_SDK_QV_MIN_WIRE_BYTES 4u
# define ROSWASMC_BOUNDED_1_KUAVO_SDK_QV_CODEC_IDENTITY "UWVMROS1_99d76f2c912c99d52786d5e2aa42bb256e1a6c997d3cf9daa2a6918697563e32"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_kuavo_sdk_qv_valid(roswasmc_bounded_1_kuavo_sdk_qv const* value)
{
    if(!value)
        return 0;
    if(value->value.size > 16u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->value.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->value.data[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                    return 0;
            }
        }
    }
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_1_kuavo_sdk_qv_wire_size(roswasmc_bounded_1_kuavo_sdk_qv const* value)
{
    size_t n = 0;
    n += 4;
    if(value->value.size > 16u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->value.size; ++i)
        {
            n += 8;
        }
    }
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_1_kuavo_sdk_qv_write_fields(roswasmc_bounded_1_kuavo_sdk_qv const* value, unsigned char* p, size_t* offset)
{
    uwvm_bounded_put(p + *offset, value->value.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->value.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->value.data[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_kuavo_sdk_qv_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_1_kuavo_sdk_qv* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    value->value.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->value.size > 16u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->value.size; ++i)
        {
            if(*offset > n || n - *offset < 8)
                return 0;
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->value.data[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    return roswasmc_bounded_1_kuavo_sdk_qv_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_1_kuavo_sdk_qv_encode(roswasmc_bounded_1_kuavo_sdk_qv const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_kuavo_sdk_qv_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_kuavo_sdk_qv_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_kuavo_sdk_qv_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_1_kuavo_sdk_qv_decode(void const* input, size_t length, roswasmc_bounded_1_kuavo_sdk_qv* value)
{
    roswasmc_bounded_1_kuavo_sdk_qv next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 4u || length > 132u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_kuavo_sdk_qv_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_KUAVO_SDK_FULLBODYTARGETTRAJECTORIES)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_KUAVO_SDK_FULLBODYTARGETTRAJECTORIES_0 != 0xea8c14ceUL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_KUAVO_SDK_FULLBODYTARGETTRAJECTORIES_1 != 0x36922060UL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_KUAVO_SDK_FULLBODYTARGETTRAJECTORIES_2 != 0xb28bc1f7UL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_KUAVO_SDK_FULLBODYTARGETTRAJECTORIES_3 != 0x08223757UL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_KUAVO_SDK_FULLBODYTARGETTRAJECTORIES_4 != 0xaa5c4648UL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_KUAVO_SDK_FULLBODYTARGETTRAJECTORIES_5 != 0x53735bb6UL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_KUAVO_SDK_FULLBODYTARGETTRAJECTORIES_6 != 0x1000b606UL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_KUAVO_SDK_FULLBODYTARGETTRAJECTORIES_7 != 0xf0ef5b73UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_KUAVO_SDK_FULLBODYTARGETTRAJECTORIES 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_KUAVO_SDK_FULLBODYTARGETTRAJECTORIES_0 0xea8c14ceUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_KUAVO_SDK_FULLBODYTARGETTRAJECTORIES_1 0x36922060UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_KUAVO_SDK_FULLBODYTARGETTRAJECTORIES_2 0xb28bc1f7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_KUAVO_SDK_FULLBODYTARGETTRAJECTORIES_3 0x08223757UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_KUAVO_SDK_FULLBODYTARGETTRAJECTORIES_4 0xaa5c4648UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_KUAVO_SDK_FULLBODYTARGETTRAJECTORIES_5 0x53735bb6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_KUAVO_SDK_FULLBODYTARGETTRAJECTORIES_6 0x1000b606UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_KUAVO_SDK_FULLBODYTARGETTRAJECTORIES_7 0xf0ef5b73UL

/** At most16 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[16];
} roswasmc_bounded_1_kuavo_sdk_fullBodyTargetTrajectories_timeTrajectory_sequence;

/** At most16 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    int32_t data[16];
} roswasmc_bounded_1_kuavo_sdk_fullBodyTargetTrajectories_footIndexTrajectory_sequence;

/** At most8 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_1_kuavo_sdk_qv data[8];
} roswasmc_bounded_1_kuavo_sdk_fullBodyTargetTrajectories_fullBodyQTrajectory_sequence;

/** At most8 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_1_kuavo_sdk_qv data[8];
} roswasmc_bounded_1_kuavo_sdk_fullBodyTargetTrajectories_fullBodyVTrajectory_sequence;

/** Complete ROS1 kuavo_sdk/fullBodyTargetTrajectories value; no field projects away native data. */
typedef struct roswasmc_bounded_1_kuavo_sdk_fullBodyTargetTrajectories
{
    /** Declared field timeTrajectory; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_kuavo_sdk_fullBodyTargetTrajectories_timeTrajectory_sequence timeTrajectory;
    /** Declared field footIndexTrajectory; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_kuavo_sdk_fullBodyTargetTrajectories_footIndexTrajectory_sequence footIndexTrajectory;
    /** Declared field fullBodyQTrajectory; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_kuavo_sdk_fullBodyTargetTrajectories_fullBodyQTrajectory_sequence fullBodyQTrajectory;
    /** Declared field fullBodyVTrajectory; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_kuavo_sdk_fullBodyTargetTrajectories_fullBodyVTrajectory_sequence fullBodyVTrajectory;
} roswasmc_bounded_1_kuavo_sdk_fullBodyTargetTrajectories;

# define ROSWASMC_BOUNDED_1_KUAVO_SDK_FULLBODYTARGETTRAJECTORIES_MAX_WIRE_BYTES 2320u
# define ROSWASMC_BOUNDED_1_KUAVO_SDK_FULLBODYTARGETTRAJECTORIES_MIN_WIRE_BYTES 16u
# define ROSWASMC_BOUNDED_1_KUAVO_SDK_FULLBODYTARGETTRAJECTORIES_CODEC_IDENTITY "UWVMROS1_670fdba890f7bf41db3f446366ef88d583de4966c54a58646b74ebdd07bbfb32"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_kuavo_sdk_fullBodyTargetTrajectories_valid(roswasmc_bounded_1_kuavo_sdk_fullBodyTargetTrajectories const* value)
{
    if(!value)
        return 0;
    if(value->timeTrajectory.size > 16u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->timeTrajectory.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->timeTrajectory.data[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                    return 0;
            }
        }
    }
    if(value->footIndexTrajectory.size > 16u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->footIndexTrajectory.size; ++i)
        {
        }
    }
    if(value->fullBodyQTrajectory.size > 8u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->fullBodyQTrajectory.size; ++i)
        {
            if(!roswasmc_bounded_1_kuavo_sdk_qv_valid(&value->fullBodyQTrajectory.data[i]))
                return 0;
        }
    }
    if(value->fullBodyVTrajectory.size > 8u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->fullBodyVTrajectory.size; ++i)
        {
            if(!roswasmc_bounded_1_kuavo_sdk_qv_valid(&value->fullBodyVTrajectory.data[i]))
                return 0;
        }
    }
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_1_kuavo_sdk_fullBodyTargetTrajectories_wire_size(roswasmc_bounded_1_kuavo_sdk_fullBodyTargetTrajectories const* value)
{
    size_t n = 0;
    n += 4;
    if(value->timeTrajectory.size > 16u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->timeTrajectory.size; ++i)
        {
            n += 8;
        }
    }
    n += 4;
    if(value->footIndexTrajectory.size > 16u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->footIndexTrajectory.size; ++i)
        {
            n += 4;
        }
    }
    n += 4;
    if(value->fullBodyQTrajectory.size > 8u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->fullBodyQTrajectory.size; ++i)
        {
            n += roswasmc_bounded_1_kuavo_sdk_qv_wire_size(&value->fullBodyQTrajectory.data[i]);
        }
    }
    n += 4;
    if(value->fullBodyVTrajectory.size > 8u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->fullBodyVTrajectory.size; ++i)
        {
            n += roswasmc_bounded_1_kuavo_sdk_qv_wire_size(&value->fullBodyVTrajectory.data[i]);
        }
    }
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_1_kuavo_sdk_fullBodyTargetTrajectories_write_fields(roswasmc_bounded_1_kuavo_sdk_fullBodyTargetTrajectories const* value,
                                                                                        unsigned char* p,
                                                                                        size_t* offset)
{
    uwvm_bounded_put(p + *offset, value->timeTrajectory.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->timeTrajectory.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->timeTrajectory.data[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
    uwvm_bounded_put(p + *offset, value->footIndexTrajectory.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->footIndexTrajectory.size; ++i)
        {
            uwvm_bounded_put(p + *offset, (uint64_t)value->footIndexTrajectory.data[i], 4);
            *offset += 4;
        }
    }
    uwvm_bounded_put(p + *offset, value->fullBodyQTrajectory.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->fullBodyQTrajectory.size; ++i)
        {
            roswasmc_bounded_1_kuavo_sdk_qv_write_fields(&value->fullBodyQTrajectory.data[i], p, offset);
        }
    }
    uwvm_bounded_put(p + *offset, value->fullBodyVTrajectory.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->fullBodyVTrajectory.size; ++i)
        {
            roswasmc_bounded_1_kuavo_sdk_qv_write_fields(&value->fullBodyVTrajectory.data[i], p, offset);
        }
    }
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_kuavo_sdk_fullBodyTargetTrajectories_read_fields(unsigned char const* p,
                                                                                      size_t n,
                                                                                      size_t* offset,
                                                                                      roswasmc_bounded_1_kuavo_sdk_fullBodyTargetTrajectories* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    value->timeTrajectory.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->timeTrajectory.size > 16u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->timeTrajectory.size; ++i)
        {
            if(*offset > n || n - *offset < 8)
                return 0;
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->timeTrajectory.data[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    if(*offset > n || n - *offset < 4)
        return 0;
    value->footIndexTrajectory.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->footIndexTrajectory.size > 16u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->footIndexTrajectory.size; ++i)
        {
            if(*offset > n || n - *offset < 4)
                return 0;
            {
                uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
                uwvm_bounded_copy(&value->footIndexTrajectory.data[i], &bits, 4);
            }
            *offset += 4;
        }
    }
    if(*offset > n || n - *offset < 4)
        return 0;
    value->fullBodyQTrajectory.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->fullBodyQTrajectory.size > 8u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->fullBodyQTrajectory.size; ++i)
        {
            if(!roswasmc_bounded_1_kuavo_sdk_qv_read_fields(p, n, offset, &value->fullBodyQTrajectory.data[i]))
                return 0;
        }
    }
    if(*offset > n || n - *offset < 4)
        return 0;
    value->fullBodyVTrajectory.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->fullBodyVTrajectory.size > 8u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->fullBodyVTrajectory.size; ++i)
        {
            if(!roswasmc_bounded_1_kuavo_sdk_qv_read_fields(p, n, offset, &value->fullBodyVTrajectory.data[i]))
                return 0;
        }
    }
    return roswasmc_bounded_1_kuavo_sdk_fullBodyTargetTrajectories_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_1_kuavo_sdk_fullBodyTargetTrajectories_encode(roswasmc_bounded_1_kuavo_sdk_fullBodyTargetTrajectories const* value,
                                                                                      void* output,
                                                                                      size_t capacity,
                                                                                      size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_kuavo_sdk_fullBodyTargetTrajectories_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_kuavo_sdk_fullBodyTargetTrajectories_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_kuavo_sdk_fullBodyTargetTrajectories_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_1_kuavo_sdk_fullBodyTargetTrajectories_decode(void const* input,
                                                                                      size_t length,
                                                                                      roswasmc_bounded_1_kuavo_sdk_fullBodyTargetTrajectories* value)
{
    roswasmc_bounded_1_kuavo_sdk_fullBodyTargetTrajectories next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 16u || length > 2320u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_kuavo_sdk_fullBodyTargetTrajectories_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#undef UWVM_BOUNDED_ASSERT
#endif
