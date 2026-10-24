/**
 * @file bounded_records.h
 * @brief Full fourier c codecs and original record metadata.
 * @details Complete fourier ros1_aurora_bridge_v1 values in c. 51 original records retain 138 fields and 28
 * interface descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native
 * definitions. Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the
 * profile API manual under document/platform/fourier/en_US/catalog/.
 */
/** @file Generated bounded-v2 canonical values; no native ROS serialization or authority.
 * Every dynamic field has inline caller-owned capacity. Encode validates and measures
 * the full value before writes; decode commits one temporary only after full validation.
 * Supply distinct record, byte and size-output storage; overlap is explicitly refused.
 * Empty Service/Action components use a C layout dummy that is never a wire field. */
#ifndef UWVM_ROS_BOUNDED_RECORDS_472708179BE60837183F09B9CAFB88A6D4C900FF53272697E7AA849D0991E3FD
#define UWVM_ROS_BOUNDED_RECORDS_472708179BE60837183F09B9CAFB88A6D4C900FF53272697E7AA849D0991E3FD
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
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_MOTIONRECIPE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_MOTIONRECIPE_0 != 0x6aef7c65UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_MOTIONRECIPE_1 != 0x3dd14122UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_MOTIONRECIPE_2 != 0xa91a3beeUL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_MOTIONRECIPE_3 != 0xfca8b0ebUL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_MOTIONRECIPE_4 != 0x0fe29f2eUL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_MOTIONRECIPE_5 != 0xeb066747UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_MOTIONRECIPE_6 != 0xd72e439aUL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_MOTIONRECIPE_7 != 0x9f1f07baUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_MOTIONRECIPE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_MOTIONRECIPE_0 0x6aef7c65UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_MOTIONRECIPE_1 0x3dd14122UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_MOTIONRECIPE_2 0xa91a3beeUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_MOTIONRECIPE_3 0xfca8b0ebUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_MOTIONRECIPE_4 0x0fe29f2eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_MOTIONRECIPE_5 0xeb066747UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_MOTIONRECIPE_6 0xd72e439aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_MOTIONRECIPE_7 0x9f1f07baUL

/** UTF-8 byte storage for uwvm_fourier_bridge/MotionRecipe.group; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_1_uwvm_fourier_bridge_MotionRecipe_group_text;

/** At most64 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[64];
} roswasmc_bounded_1_uwvm_fourier_bridge_MotionRecipe_position_sequence;

/** At most64 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[64];
} roswasmc_bounded_1_uwvm_fourier_bridge_MotionRecipe_velocity_sequence;

/** Complete ROS1 uwvm_fourier_bridge/MotionRecipe value; no field projects away native data. */
typedef struct roswasmc_bounded_1_uwvm_fourier_bridge_MotionRecipe
{
    /** Declared field move_type; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t move_type;
    /** Declared field group; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_uwvm_fourier_bridge_MotionRecipe_group_text group;
    /** Declared field position; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_uwvm_fourier_bridge_MotionRecipe_position_sequence position;
    /** Declared field has_velocity; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t has_velocity;
    /** Declared field velocity; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_uwvm_fourier_bridge_MotionRecipe_velocity_sequence velocity;
    /** Declared field expected_velocity; canonical capacity is part of CODEC_IDENTITY. */
    int32_t expected_velocity;
} roswasmc_bounded_1_uwvm_fourier_bridge_MotionRecipe;

# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_MOTIONRECIPE_MAX_WIRE_BYTES 1170u
# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_MOTIONRECIPE_MIN_WIRE_BYTES 18u
# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_MOTIONRECIPE_CODEC_IDENTITY "UWVMROS1_f154f5af7297a77af5c7ab98bc78c54cb0163760dfe7b1eadedb02318cfbfd8a"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_uwvm_fourier_bridge_MotionRecipe_valid(roswasmc_bounded_1_uwvm_fourier_bridge_MotionRecipe const* value)
{
    if(!value)
        return 0;
    if(value->group.size > 128u || !uwvm_bounded_utf8(value->group.data, value->group.size))
        return 0;
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
    if(value->has_velocity > 1)
        return 0;
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
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_1_uwvm_fourier_bridge_MotionRecipe_wire_size(roswasmc_bounded_1_uwvm_fourier_bridge_MotionRecipe const* value)
{
    size_t n = 0;
    n += 1;
    n += 4 + value->group.size;
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
    n += 1;
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
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_1_uwvm_fourier_bridge_MotionRecipe_write_fields(roswasmc_bounded_1_uwvm_fourier_bridge_MotionRecipe const* value,
                                                                                    unsigned char* p,
                                                                                    size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->move_type, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, value->group.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->group.data, value->group.size);
    *offset += value->group.size;
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
    uwvm_bounded_put(p + *offset, (uint64_t)value->has_velocity, 1);
    *offset += 1;
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
    uwvm_bounded_put(p + *offset, (uint64_t)value->expected_velocity, 4);
    *offset += 4;
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_uwvm_fourier_bridge_MotionRecipe_read_fields(unsigned char const* p,
                                                                                  size_t n,
                                                                                  size_t* offset,
                                                                                  roswasmc_bounded_1_uwvm_fourier_bridge_MotionRecipe* value)
{
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->move_type, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->group.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->group.size > 128u || value->group.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->group.data, p + *offset, value->group.size);
    *offset += value->group.size;
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
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->has_velocity, &bits, 1);
    }
    *offset += 1;
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
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->expected_velocity, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_1_uwvm_fourier_bridge_MotionRecipe_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_1_uwvm_fourier_bridge_MotionRecipe_encode(roswasmc_bounded_1_uwvm_fourier_bridge_MotionRecipe const* value,
                                                                                  void* output,
                                                                                  size_t capacity,
                                                                                  size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_uwvm_fourier_bridge_MotionRecipe_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_uwvm_fourier_bridge_MotionRecipe_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_uwvm_fourier_bridge_MotionRecipe_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_1_uwvm_fourier_bridge_MotionRecipe_decode(void const* input, size_t length, roswasmc_bounded_1_uwvm_fourier_bridge_MotionRecipe* value)
{
    roswasmc_bounded_1_uwvm_fourier_bridge_MotionRecipe next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 18u || length > 1170u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_uwvm_fourier_bridge_MotionRecipe_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_EXECUTEMOVEREQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_EXECUTEMOVEREQUEST_0 != 0x5145c621UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_EXECUTEMOVEREQUEST_1 != 0x16d40739UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_EXECUTEMOVEREQUEST_2 != 0xb60b6526UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_EXECUTEMOVEREQUEST_3 != 0x30a58577UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_EXECUTEMOVEREQUEST_4 != 0xeae47c13UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_EXECUTEMOVEREQUEST_5 != 0x994d9efaUL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_EXECUTEMOVEREQUEST_6 != 0xf075af7bUL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_EXECUTEMOVEREQUEST_7 != 0x7c776ee3UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_EXECUTEMOVEREQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_EXECUTEMOVEREQUEST_0 0x5145c621UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_EXECUTEMOVEREQUEST_1 0x16d40739UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_EXECUTEMOVEREQUEST_2 0xb60b6526UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_EXECUTEMOVEREQUEST_3 0x30a58577UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_EXECUTEMOVEREQUEST_4 0xeae47c13UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_EXECUTEMOVEREQUEST_5 0x994d9efaUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_EXECUTEMOVEREQUEST_6 0xf075af7bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_EXECUTEMOVEREQUEST_7 0x7c776ee3UL

/** At most8 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_1_uwvm_fourier_bridge_MotionRecipe data[8];
} roswasmc_bounded_1_uwvm_fourier_bridge_ExecuteMoveRequest_moves_sequence;

/** Complete ROS1 uwvm_fourier_bridge/ExecuteMoveRequest value; no field projects away native data. */
typedef struct roswasmc_bounded_1_uwvm_fourier_bridge_ExecuteMoveRequest
{
    /** Declared field sequence; canonical capacity is part of CODEC_IDENTITY. */
    uint64_t sequence;
    /** Declared field moves; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_uwvm_fourier_bridge_ExecuteMoveRequest_moves_sequence moves;
} roswasmc_bounded_1_uwvm_fourier_bridge_ExecuteMoveRequest;

# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_EXECUTEMOVEREQUEST_MAX_WIRE_BYTES 9372u
# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_EXECUTEMOVEREQUEST_MIN_WIRE_BYTES 12u
# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_EXECUTEMOVEREQUEST_CODEC_IDENTITY "UWVMROS1_25e369f6b32bdc9983664fd4d857000a6a664364cb8bd0ff3d123cbc3c87e61b"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_uwvm_fourier_bridge_ExecuteMoveRequest_valid(roswasmc_bounded_1_uwvm_fourier_bridge_ExecuteMoveRequest const* value)
{
    if(!value)
        return 0;
    if(value->moves.size > 8u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->moves.size; ++i)
        {
            if(!roswasmc_bounded_1_uwvm_fourier_bridge_MotionRecipe_valid(&value->moves.data[i]))
                return 0;
        }
    }
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_1_uwvm_fourier_bridge_ExecuteMoveRequest_wire_size(roswasmc_bounded_1_uwvm_fourier_bridge_ExecuteMoveRequest const* value)
{
    size_t n = 0;
    n += 8;
    n += 4;
    if(value->moves.size > 8u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->moves.size; ++i)
        {
            n += roswasmc_bounded_1_uwvm_fourier_bridge_MotionRecipe_wire_size(&value->moves.data[i]);
        }
    }
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_1_uwvm_fourier_bridge_ExecuteMoveRequest_write_fields(roswasmc_bounded_1_uwvm_fourier_bridge_ExecuteMoveRequest const* value,
                                                                           unsigned char* p,
                                                                           size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->sequence, 8);
    *offset += 8;
    uwvm_bounded_put(p + *offset, value->moves.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->moves.size; ++i)
        {
            roswasmc_bounded_1_uwvm_fourier_bridge_MotionRecipe_write_fields(&value->moves.data[i], p, offset);
        }
    }
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_uwvm_fourier_bridge_ExecuteMoveRequest_read_fields(unsigned char const* p,
                                                                                        size_t n,
                                                                                        size_t* offset,
                                                                                        roswasmc_bounded_1_uwvm_fourier_bridge_ExecuteMoveRequest* value)
{
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->sequence, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->moves.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->moves.size > 8u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->moves.size; ++i)
        {
            if(!roswasmc_bounded_1_uwvm_fourier_bridge_MotionRecipe_read_fields(p, n, offset, &value->moves.data[i]))
                return 0;
        }
    }
    return roswasmc_bounded_1_uwvm_fourier_bridge_ExecuteMoveRequest_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_1_uwvm_fourier_bridge_ExecuteMoveRequest_encode(roswasmc_bounded_1_uwvm_fourier_bridge_ExecuteMoveRequest const* value,
                                                                                        void* output,
                                                                                        size_t capacity,
                                                                                        size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_uwvm_fourier_bridge_ExecuteMoveRequest_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_uwvm_fourier_bridge_ExecuteMoveRequest_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_uwvm_fourier_bridge_ExecuteMoveRequest_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_1_uwvm_fourier_bridge_ExecuteMoveRequest_decode(void const* input,
                                                                                        size_t length,
                                                                                        roswasmc_bounded_1_uwvm_fourier_bridge_ExecuteMoveRequest* value)
{
    roswasmc_bounded_1_uwvm_fourier_bridge_ExecuteMoveRequest next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 12u || length > 9372u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_uwvm_fourier_bridge_ExecuteMoveRequest_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_EXECUTEMOVERESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_EXECUTEMOVERESPONSE_0 != 0x92e62e44UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_EXECUTEMOVERESPONSE_1 != 0xa1f01fc9UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_EXECUTEMOVERESPONSE_2 != 0xd6961f11UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_EXECUTEMOVERESPONSE_3 != 0xdb9d0052UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_EXECUTEMOVERESPONSE_4 != 0x556fceedUL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_EXECUTEMOVERESPONSE_5 != 0x233ea6c0UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_EXECUTEMOVERESPONSE_6 != 0xbd304278UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_EXECUTEMOVERESPONSE_7 != 0x33698cb0UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_EXECUTEMOVERESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_EXECUTEMOVERESPONSE_0 0x92e62e44UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_EXECUTEMOVERESPONSE_1 0xa1f01fc9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_EXECUTEMOVERESPONSE_2 0xd6961f11UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_EXECUTEMOVERESPONSE_3 0xdb9d0052UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_EXECUTEMOVERESPONSE_4 0x556fceedUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_EXECUTEMOVERESPONSE_5 0x233ea6c0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_EXECUTEMOVERESPONSE_6 0xbd304278UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_EXECUTEMOVERESPONSE_7 0x33698cb0UL

/** UTF-8 byte storage for uwvm_fourier_bridge/ExecuteMoveResponse.error; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_1_uwvm_fourier_bridge_ExecuteMoveResponse_error_text;

/** Complete ROS1 uwvm_fourier_bridge/ExecuteMoveResponse value; no field projects away native data. */
typedef struct roswasmc_bounded_1_uwvm_fourier_bridge_ExecuteMoveResponse
{
    /** Declared field status; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t status;
    /** Declared field error; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_uwvm_fourier_bridge_ExecuteMoveResponse_error_text error;
} roswasmc_bounded_1_uwvm_fourier_bridge_ExecuteMoveResponse;

# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_EXECUTEMOVERESPONSE_MAX_WIRE_BYTES 136u
# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_EXECUTEMOVERESPONSE_MIN_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_EXECUTEMOVERESPONSE_CODEC_IDENTITY "UWVMROS1_9a801e77130d12c30d67a874cb1e8c5a7cc912a2968af304d1cfd263e6242115"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_uwvm_fourier_bridge_ExecuteMoveResponse_valid(roswasmc_bounded_1_uwvm_fourier_bridge_ExecuteMoveResponse const* value)
{
    if(!value)
        return 0;
    if(value->error.size > 128u || !uwvm_bounded_utf8(value->error.data, value->error.size))
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_1_uwvm_fourier_bridge_ExecuteMoveResponse_wire_size(roswasmc_bounded_1_uwvm_fourier_bridge_ExecuteMoveResponse const* value)
{
    size_t n = 0;
    n += 4;
    n += 4 + value->error.size;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_1_uwvm_fourier_bridge_ExecuteMoveResponse_write_fields(roswasmc_bounded_1_uwvm_fourier_bridge_ExecuteMoveResponse const* value,
                                                                            unsigned char* p,
                                                                            size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->status, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, value->error.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->error.data, value->error.size);
    *offset += value->error.size;
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_uwvm_fourier_bridge_ExecuteMoveResponse_read_fields(unsigned char const* p,
                                                                                         size_t n,
                                                                                         size_t* offset,
                                                                                         roswasmc_bounded_1_uwvm_fourier_bridge_ExecuteMoveResponse* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->status, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->error.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->error.size > 128u || value->error.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->error.data, p + *offset, value->error.size);
    *offset += value->error.size;
    return roswasmc_bounded_1_uwvm_fourier_bridge_ExecuteMoveResponse_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_1_uwvm_fourier_bridge_ExecuteMoveResponse_encode(roswasmc_bounded_1_uwvm_fourier_bridge_ExecuteMoveResponse const* value,
                                                                      void* output,
                                                                      size_t capacity,
                                                                      size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_uwvm_fourier_bridge_ExecuteMoveResponse_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_uwvm_fourier_bridge_ExecuteMoveResponse_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_uwvm_fourier_bridge_ExecuteMoveResponse_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_1_uwvm_fourier_bridge_ExecuteMoveResponse_decode(void const* input,
                                                                                         size_t length,
                                                                                         roswasmc_bounded_1_uwvm_fourier_bridge_ExecuteMoveResponse* value)
{
    roswasmc_bounded_1_uwvm_fourier_bridge_ExecuteMoveResponse next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 8u || length > 136u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_uwvm_fourier_bridge_ExecuteMoveResponse_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETBASEDATAREQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETBASEDATAREQUEST_0 != 0x29a023e7UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETBASEDATAREQUEST_1 != 0xb677a6cdUL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETBASEDATAREQUEST_2 != 0x08ebabe4UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETBASEDATAREQUEST_3 != 0xaf6238e7UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETBASEDATAREQUEST_4 != 0xafddc4baUL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETBASEDATAREQUEST_5 != 0xb8cb1e35UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETBASEDATAREQUEST_6 != 0xb037ee96UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETBASEDATAREQUEST_7 != 0x53b323a2UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETBASEDATAREQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETBASEDATAREQUEST_0 0x29a023e7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETBASEDATAREQUEST_1 0xb677a6cdUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETBASEDATAREQUEST_2 0x08ebabe4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETBASEDATAREQUEST_3 0xaf6238e7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETBASEDATAREQUEST_4 0xafddc4baUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETBASEDATAREQUEST_5 0xb8cb1e35UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETBASEDATAREQUEST_6 0xb037ee96UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETBASEDATAREQUEST_7 0x53b323a2UL

/** UTF-8 byte storage for uwvm_fourier_bridge/GetBaseDataRequest.key; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_1_uwvm_fourier_bridge_GetBaseDataRequest_key_text;

/** Complete ROS1 uwvm_fourier_bridge/GetBaseDataRequest value; no field projects away native data. */
typedef struct roswasmc_bounded_1_uwvm_fourier_bridge_GetBaseDataRequest
{
    /** Declared field sequence; canonical capacity is part of CODEC_IDENTITY. */
    uint64_t sequence;
    /** Declared field key; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_uwvm_fourier_bridge_GetBaseDataRequest_key_text key;
} roswasmc_bounded_1_uwvm_fourier_bridge_GetBaseDataRequest;

# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETBASEDATAREQUEST_MAX_WIRE_BYTES 140u
# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETBASEDATAREQUEST_MIN_WIRE_BYTES 12u
# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETBASEDATAREQUEST_CODEC_IDENTITY "UWVMROS1_17883b19f1dcc3d68263b6196eb5ec7afb8c902b8ab4f9b7eb66a58ef5e78528"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_uwvm_fourier_bridge_GetBaseDataRequest_valid(roswasmc_bounded_1_uwvm_fourier_bridge_GetBaseDataRequest const* value)
{
    if(!value)
        return 0;
    if(value->key.size > 128u || !uwvm_bounded_utf8(value->key.data, value->key.size))
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_1_uwvm_fourier_bridge_GetBaseDataRequest_wire_size(roswasmc_bounded_1_uwvm_fourier_bridge_GetBaseDataRequest const* value)
{
    size_t n = 0;
    n += 8;
    n += 4 + value->key.size;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_1_uwvm_fourier_bridge_GetBaseDataRequest_write_fields(roswasmc_bounded_1_uwvm_fourier_bridge_GetBaseDataRequest const* value,
                                                                           unsigned char* p,
                                                                           size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->sequence, 8);
    *offset += 8;
    uwvm_bounded_put(p + *offset, value->key.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->key.data, value->key.size);
    *offset += value->key.size;
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_uwvm_fourier_bridge_GetBaseDataRequest_read_fields(unsigned char const* p,
                                                                                        size_t n,
                                                                                        size_t* offset,
                                                                                        roswasmc_bounded_1_uwvm_fourier_bridge_GetBaseDataRequest* value)
{
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->sequence, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->key.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->key.size > 128u || value->key.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->key.data, p + *offset, value->key.size);
    *offset += value->key.size;
    return roswasmc_bounded_1_uwvm_fourier_bridge_GetBaseDataRequest_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_1_uwvm_fourier_bridge_GetBaseDataRequest_encode(roswasmc_bounded_1_uwvm_fourier_bridge_GetBaseDataRequest const* value,
                                                                                        void* output,
                                                                                        size_t capacity,
                                                                                        size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_uwvm_fourier_bridge_GetBaseDataRequest_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_uwvm_fourier_bridge_GetBaseDataRequest_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_uwvm_fourier_bridge_GetBaseDataRequest_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_1_uwvm_fourier_bridge_GetBaseDataRequest_decode(void const* input,
                                                                                        size_t length,
                                                                                        roswasmc_bounded_1_uwvm_fourier_bridge_GetBaseDataRequest* value)
{
    roswasmc_bounded_1_uwvm_fourier_bridge_GetBaseDataRequest next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 12u || length > 140u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_uwvm_fourier_bridge_GetBaseDataRequest_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETBASEDATARESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETBASEDATARESPONSE_0 != 0x198d5ac0UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETBASEDATARESPONSE_1 != 0xfcf2c05eUL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETBASEDATARESPONSE_2 != 0xc49749adUL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETBASEDATARESPONSE_3 != 0x4710eb97UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETBASEDATARESPONSE_4 != 0xddc25b04UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETBASEDATARESPONSE_5 != 0xc05a98eaUL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETBASEDATARESPONSE_6 != 0x4a4dc6beUL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETBASEDATARESPONSE_7 != 0xa1cfce7dUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETBASEDATARESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETBASEDATARESPONSE_0 0x198d5ac0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETBASEDATARESPONSE_1 0xfcf2c05eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETBASEDATARESPONSE_2 0xc49749adUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETBASEDATARESPONSE_3 0x4710eb97UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETBASEDATARESPONSE_4 0xddc25b04UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETBASEDATARESPONSE_5 0xc05a98eaUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETBASEDATARESPONSE_6 0x4a4dc6beUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETBASEDATARESPONSE_7 0xa1cfce7dUL

/** UTF-8 byte storage for uwvm_fourier_bridge/GetBaseDataResponse.error; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_1_uwvm_fourier_bridge_GetBaseDataResponse_error_text;

/** At most64 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[64];
} roswasmc_bounded_1_uwvm_fourier_bridge_GetBaseDataResponse_values_sequence;

/** Complete ROS1 uwvm_fourier_bridge/GetBaseDataResponse value; no field projects away native data. */
typedef struct roswasmc_bounded_1_uwvm_fourier_bridge_GetBaseDataResponse
{
    /** Declared field status; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t status;
    /** Declared field error; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_uwvm_fourier_bridge_GetBaseDataResponse_error_text error;
    /** Declared field values; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_uwvm_fourier_bridge_GetBaseDataResponse_values_sequence values;
} roswasmc_bounded_1_uwvm_fourier_bridge_GetBaseDataResponse;

# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETBASEDATARESPONSE_MAX_WIRE_BYTES 652u
# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETBASEDATARESPONSE_MIN_WIRE_BYTES 12u
# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETBASEDATARESPONSE_CODEC_IDENTITY "UWVMROS1_e8928e07d6dd18cfa8a7031e0a947fa6b2f36bb608f5d2178ec01b92bb78b79a"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_uwvm_fourier_bridge_GetBaseDataResponse_valid(roswasmc_bounded_1_uwvm_fourier_bridge_GetBaseDataResponse const* value)
{
    if(!value)
        return 0;
    if(value->error.size > 128u || !uwvm_bounded_utf8(value->error.data, value->error.size))
        return 0;
    if(value->values.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->values.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->values.data[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                    return 0;
            }
        }
    }
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_1_uwvm_fourier_bridge_GetBaseDataResponse_wire_size(roswasmc_bounded_1_uwvm_fourier_bridge_GetBaseDataResponse const* value)
{
    size_t n = 0;
    n += 4;
    n += 4 + value->error.size;
    n += 4;
    if(value->values.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->values.size; ++i)
        {
            n += 8;
        }
    }
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_1_uwvm_fourier_bridge_GetBaseDataResponse_write_fields(roswasmc_bounded_1_uwvm_fourier_bridge_GetBaseDataResponse const* value,
                                                                            unsigned char* p,
                                                                            size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->status, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, value->error.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->error.data, value->error.size);
    *offset += value->error.size;
    uwvm_bounded_put(p + *offset, value->values.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->values.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->values.data[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_uwvm_fourier_bridge_GetBaseDataResponse_read_fields(unsigned char const* p,
                                                                                         size_t n,
                                                                                         size_t* offset,
                                                                                         roswasmc_bounded_1_uwvm_fourier_bridge_GetBaseDataResponse* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->status, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->error.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->error.size > 128u || value->error.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->error.data, p + *offset, value->error.size);
    *offset += value->error.size;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->values.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->values.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->values.size; ++i)
        {
            if(*offset > n || n - *offset < 8)
                return 0;
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->values.data[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    return roswasmc_bounded_1_uwvm_fourier_bridge_GetBaseDataResponse_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_1_uwvm_fourier_bridge_GetBaseDataResponse_encode(roswasmc_bounded_1_uwvm_fourier_bridge_GetBaseDataResponse const* value,
                                                                      void* output,
                                                                      size_t capacity,
                                                                      size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_uwvm_fourier_bridge_GetBaseDataResponse_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_uwvm_fourier_bridge_GetBaseDataResponse_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_uwvm_fourier_bridge_GetBaseDataResponse_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_1_uwvm_fourier_bridge_GetBaseDataResponse_decode(void const* input,
                                                                                         size_t length,
                                                                                         roswasmc_bounded_1_uwvm_fourier_bridge_GetBaseDataResponse* value)
{
    roswasmc_bounded_1_uwvm_fourier_bridge_GetBaseDataResponse next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 12u || length > 652u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_uwvm_fourier_bridge_GetBaseDataResponse_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETCARTESIANSTATEREQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETCARTESIANSTATEREQUEST_0 != 0xb589ca8fUL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETCARTESIANSTATEREQUEST_1 != 0xaa02fcf7UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETCARTESIANSTATEREQUEST_2 != 0x90774dc2UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETCARTESIANSTATEREQUEST_3 != 0x6854d82bUL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETCARTESIANSTATEREQUEST_4 != 0x4967bb46UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETCARTESIANSTATEREQUEST_5 != 0x7bb778a4UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETCARTESIANSTATEREQUEST_6 != 0xfc777478UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETCARTESIANSTATEREQUEST_7 != 0xc2e8b529UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETCARTESIANSTATEREQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETCARTESIANSTATEREQUEST_0 0xb589ca8fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETCARTESIANSTATEREQUEST_1 0xaa02fcf7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETCARTESIANSTATEREQUEST_2 0x90774dc2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETCARTESIANSTATEREQUEST_3 0x6854d82bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETCARTESIANSTATEREQUEST_4 0x4967bb46UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETCARTESIANSTATEREQUEST_5 0x7bb778a4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETCARTESIANSTATEREQUEST_6 0xfc777478UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETCARTESIANSTATEREQUEST_7 0xc2e8b529UL

/** UTF-8 byte storage for uwvm_fourier_bridge/GetCartesianStateRequest.group; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_1_uwvm_fourier_bridge_GetCartesianStateRequest_group_text;

/** UTF-8 byte storage for uwvm_fourier_bridge/GetCartesianStateRequest.key; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_1_uwvm_fourier_bridge_GetCartesianStateRequest_key_text;

/** Complete ROS1 uwvm_fourier_bridge/GetCartesianStateRequest value; no field projects away native data. */
typedef struct roswasmc_bounded_1_uwvm_fourier_bridge_GetCartesianStateRequest
{
    /** Declared field sequence; canonical capacity is part of CODEC_IDENTITY. */
    uint64_t sequence;
    /** Declared field group; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_uwvm_fourier_bridge_GetCartesianStateRequest_group_text group;
    /** Declared field key; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_uwvm_fourier_bridge_GetCartesianStateRequest_key_text key;
} roswasmc_bounded_1_uwvm_fourier_bridge_GetCartesianStateRequest;

# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETCARTESIANSTATEREQUEST_MAX_WIRE_BYTES 272u
# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETCARTESIANSTATEREQUEST_MIN_WIRE_BYTES 16u
# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETCARTESIANSTATEREQUEST_CODEC_IDENTITY                                                                        \
     "UWVMROS1_658626f7fbd0f788149208230f03cef299bcb2a6ca4cf96d4e3af807d9b336ae"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int
    roswasmc_bounded_1_uwvm_fourier_bridge_GetCartesianStateRequest_valid(roswasmc_bounded_1_uwvm_fourier_bridge_GetCartesianStateRequest const* value)
{
    if(!value)
        return 0;
    if(value->group.size > 128u || !uwvm_bounded_utf8(value->group.data, value->group.size))
        return 0;
    if(value->key.size > 128u || !uwvm_bounded_utf8(value->key.data, value->key.size))
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_1_uwvm_fourier_bridge_GetCartesianStateRequest_wire_size(roswasmc_bounded_1_uwvm_fourier_bridge_GetCartesianStateRequest const* value)
{
    size_t n = 0;
    n += 8;
    n += 4 + value->group.size;
    n += 4 + value->key.size;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_1_uwvm_fourier_bridge_GetCartesianStateRequest_write_fields(roswasmc_bounded_1_uwvm_fourier_bridge_GetCartesianStateRequest const* value,
                                                                                 unsigned char* p,
                                                                                 size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->sequence, 8);
    *offset += 8;
    uwvm_bounded_put(p + *offset, value->group.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->group.data, value->group.size);
    *offset += value->group.size;
    uwvm_bounded_put(p + *offset, value->key.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->key.data, value->key.size);
    *offset += value->key.size;
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int
    roswasmc_bounded_1_uwvm_fourier_bridge_GetCartesianStateRequest_read_fields(unsigned char const* p,
                                                                                size_t n,
                                                                                size_t* offset,
                                                                                roswasmc_bounded_1_uwvm_fourier_bridge_GetCartesianStateRequest* value)
{
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->sequence, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->group.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->group.size > 128u || value->group.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->group.data, p + *offset, value->group.size);
    *offset += value->group.size;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->key.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->key.size > 128u || value->key.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->key.data, p + *offset, value->key.size);
    *offset += value->key.size;
    return roswasmc_bounded_1_uwvm_fourier_bridge_GetCartesianStateRequest_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_1_uwvm_fourier_bridge_GetCartesianStateRequest_encode(roswasmc_bounded_1_uwvm_fourier_bridge_GetCartesianStateRequest const* value,
                                                                           void* output,
                                                                           size_t capacity,
                                                                           size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_uwvm_fourier_bridge_GetCartesianStateRequest_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_uwvm_fourier_bridge_GetCartesianStateRequest_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_uwvm_fourier_bridge_GetCartesianStateRequest_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_1_uwvm_fourier_bridge_GetCartesianStateRequest_decode(void const* input,
                                                                           size_t length,
                                                                           roswasmc_bounded_1_uwvm_fourier_bridge_GetCartesianStateRequest* value)
{
    roswasmc_bounded_1_uwvm_fourier_bridge_GetCartesianStateRequest next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 16u || length > 272u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_uwvm_fourier_bridge_GetCartesianStateRequest_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETCARTESIANSTATERESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETCARTESIANSTATERESPONSE_0 != 0xd5f97843UL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETCARTESIANSTATERESPONSE_1 != 0x573aec82UL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETCARTESIANSTATERESPONSE_2 != 0xbb443dd1UL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETCARTESIANSTATERESPONSE_3 != 0xbc7ba3fcUL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETCARTESIANSTATERESPONSE_4 != 0x7462cb02UL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETCARTESIANSTATERESPONSE_5 != 0x04e64633UL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETCARTESIANSTATERESPONSE_6 != 0xa9202fb4UL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETCARTESIANSTATERESPONSE_7 != 0xbb463392UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETCARTESIANSTATERESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETCARTESIANSTATERESPONSE_0 0xd5f97843UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETCARTESIANSTATERESPONSE_1 0x573aec82UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETCARTESIANSTATERESPONSE_2 0xbb443dd1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETCARTESIANSTATERESPONSE_3 0xbc7ba3fcUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETCARTESIANSTATERESPONSE_4 0x7462cb02UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETCARTESIANSTATERESPONSE_5 0x04e64633UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETCARTESIANSTATERESPONSE_6 0xa9202fb4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETCARTESIANSTATERESPONSE_7 0xbb463392UL

/** UTF-8 byte storage for uwvm_fourier_bridge/GetCartesianStateResponse.error; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_1_uwvm_fourier_bridge_GetCartesianStateResponse_error_text;

/** At most64 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[64];
} roswasmc_bounded_1_uwvm_fourier_bridge_GetCartesianStateResponse_values_sequence;

/** Complete ROS1 uwvm_fourier_bridge/GetCartesianStateResponse value; no field projects away native data. */
typedef struct roswasmc_bounded_1_uwvm_fourier_bridge_GetCartesianStateResponse
{
    /** Declared field status; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t status;
    /** Declared field error; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_uwvm_fourier_bridge_GetCartesianStateResponse_error_text error;
    /** Declared field values; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_uwvm_fourier_bridge_GetCartesianStateResponse_values_sequence values;
} roswasmc_bounded_1_uwvm_fourier_bridge_GetCartesianStateResponse;

# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETCARTESIANSTATERESPONSE_MAX_WIRE_BYTES 652u
# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETCARTESIANSTATERESPONSE_MIN_WIRE_BYTES 12u
# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETCARTESIANSTATERESPONSE_CODEC_IDENTITY                                                                       \
     "UWVMROS1_a4fcd5f01a992b9aed4089b2c77ecda4656fe9aeb11c40777603805af964f671"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int
    roswasmc_bounded_1_uwvm_fourier_bridge_GetCartesianStateResponse_valid(roswasmc_bounded_1_uwvm_fourier_bridge_GetCartesianStateResponse const* value)
{
    if(!value)
        return 0;
    if(value->error.size > 128u || !uwvm_bounded_utf8(value->error.data, value->error.size))
        return 0;
    if(value->values.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->values.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->values.data[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                    return 0;
            }
        }
    }
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_1_uwvm_fourier_bridge_GetCartesianStateResponse_wire_size(roswasmc_bounded_1_uwvm_fourier_bridge_GetCartesianStateResponse const* value)
{
    size_t n = 0;
    n += 4;
    n += 4 + value->error.size;
    n += 4;
    if(value->values.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->values.size; ++i)
        {
            n += 8;
        }
    }
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_1_uwvm_fourier_bridge_GetCartesianStateResponse_write_fields(roswasmc_bounded_1_uwvm_fourier_bridge_GetCartesianStateResponse const* value,
                                                                                  unsigned char* p,
                                                                                  size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->status, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, value->error.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->error.data, value->error.size);
    *offset += value->error.size;
    uwvm_bounded_put(p + *offset, value->values.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->values.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->values.data[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int
    roswasmc_bounded_1_uwvm_fourier_bridge_GetCartesianStateResponse_read_fields(unsigned char const* p,
                                                                                 size_t n,
                                                                                 size_t* offset,
                                                                                 roswasmc_bounded_1_uwvm_fourier_bridge_GetCartesianStateResponse* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->status, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->error.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->error.size > 128u || value->error.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->error.data, p + *offset, value->error.size);
    *offset += value->error.size;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->values.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->values.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->values.size; ++i)
        {
            if(*offset > n || n - *offset < 8)
                return 0;
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->values.data[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    return roswasmc_bounded_1_uwvm_fourier_bridge_GetCartesianStateResponse_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_1_uwvm_fourier_bridge_GetCartesianStateResponse_encode(roswasmc_bounded_1_uwvm_fourier_bridge_GetCartesianStateResponse const* value,
                                                                            void* output,
                                                                            size_t capacity,
                                                                            size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_uwvm_fourier_bridge_GetCartesianStateResponse_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_uwvm_fourier_bridge_GetCartesianStateResponse_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_uwvm_fourier_bridge_GetCartesianStateResponse_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_1_uwvm_fourier_bridge_GetCartesianStateResponse_decode(void const* input,
                                                                            size_t length,
                                                                            roswasmc_bounded_1_uwvm_fourier_bridge_GetCartesianStateResponse* value)
{
    roswasmc_bounded_1_uwvm_fourier_bridge_GetCartesianStateResponse next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 12u || length > 652u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_uwvm_fourier_bridge_GetCartesianStateResponse_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETCONTACTDATAREQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETCONTACTDATAREQUEST_0 != 0x7ef20477UL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETCONTACTDATAREQUEST_1 != 0x8c15862dUL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETCONTACTDATAREQUEST_2 != 0xb5f3c316UL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETCONTACTDATAREQUEST_3 != 0x5267193cUL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETCONTACTDATAREQUEST_4 != 0x06ba5bffUL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETCONTACTDATAREQUEST_5 != 0x3bb4030bUL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETCONTACTDATAREQUEST_6 != 0x9d5fa1abUL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETCONTACTDATAREQUEST_7 != 0x929e1a48UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETCONTACTDATAREQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETCONTACTDATAREQUEST_0 0x7ef20477UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETCONTACTDATAREQUEST_1 0x8c15862dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETCONTACTDATAREQUEST_2 0xb5f3c316UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETCONTACTDATAREQUEST_3 0x5267193cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETCONTACTDATAREQUEST_4 0x06ba5bffUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETCONTACTDATAREQUEST_5 0x3bb4030bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETCONTACTDATAREQUEST_6 0x9d5fa1abUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETCONTACTDATAREQUEST_7 0x929e1a48UL

/** UTF-8 byte storage for uwvm_fourier_bridge/GetContactDataRequest.key; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_1_uwvm_fourier_bridge_GetContactDataRequest_key_text;

/** Complete ROS1 uwvm_fourier_bridge/GetContactDataRequest value; no field projects away native data. */
typedef struct roswasmc_bounded_1_uwvm_fourier_bridge_GetContactDataRequest
{
    /** Declared field sequence; canonical capacity is part of CODEC_IDENTITY. */
    uint64_t sequence;
    /** Declared field key; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_uwvm_fourier_bridge_GetContactDataRequest_key_text key;
} roswasmc_bounded_1_uwvm_fourier_bridge_GetContactDataRequest;

# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETCONTACTDATAREQUEST_MAX_WIRE_BYTES 140u
# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETCONTACTDATAREQUEST_MIN_WIRE_BYTES 12u
# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETCONTACTDATAREQUEST_CODEC_IDENTITY "UWVMROS1_38d1fa3409948748e19fdff39259fbb51503a98e03e996addb560cb404931787"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_uwvm_fourier_bridge_GetContactDataRequest_valid(roswasmc_bounded_1_uwvm_fourier_bridge_GetContactDataRequest const* value)
{
    if(!value)
        return 0;
    if(value->key.size > 128u || !uwvm_bounded_utf8(value->key.data, value->key.size))
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_1_uwvm_fourier_bridge_GetContactDataRequest_wire_size(roswasmc_bounded_1_uwvm_fourier_bridge_GetContactDataRequest const* value)
{
    size_t n = 0;
    n += 8;
    n += 4 + value->key.size;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_1_uwvm_fourier_bridge_GetContactDataRequest_write_fields(roswasmc_bounded_1_uwvm_fourier_bridge_GetContactDataRequest const* value,
                                                                              unsigned char* p,
                                                                              size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->sequence, 8);
    *offset += 8;
    uwvm_bounded_put(p + *offset, value->key.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->key.data, value->key.size);
    *offset += value->key.size;
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_uwvm_fourier_bridge_GetContactDataRequest_read_fields(unsigned char const* p,
                                                                                           size_t n,
                                                                                           size_t* offset,
                                                                                           roswasmc_bounded_1_uwvm_fourier_bridge_GetContactDataRequest* value)
{
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->sequence, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->key.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->key.size > 128u || value->key.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->key.data, p + *offset, value->key.size);
    *offset += value->key.size;
    return roswasmc_bounded_1_uwvm_fourier_bridge_GetContactDataRequest_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_1_uwvm_fourier_bridge_GetContactDataRequest_encode(roswasmc_bounded_1_uwvm_fourier_bridge_GetContactDataRequest const* value,
                                                                        void* output,
                                                                        size_t capacity,
                                                                        size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_uwvm_fourier_bridge_GetContactDataRequest_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_uwvm_fourier_bridge_GetContactDataRequest_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_uwvm_fourier_bridge_GetContactDataRequest_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_1_uwvm_fourier_bridge_GetContactDataRequest_decode(void const* input,
                                                                                           size_t length,
                                                                                           roswasmc_bounded_1_uwvm_fourier_bridge_GetContactDataRequest* value)
{
    roswasmc_bounded_1_uwvm_fourier_bridge_GetContactDataRequest next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 12u || length > 140u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_uwvm_fourier_bridge_GetContactDataRequest_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETCONTACTDATARESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETCONTACTDATARESPONSE_0 != 0xa38bdc6bUL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETCONTACTDATARESPONSE_1 != 0x24324d8eUL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETCONTACTDATARESPONSE_2 != 0x87e55a5bUL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETCONTACTDATARESPONSE_3 != 0x2c94b3a4UL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETCONTACTDATARESPONSE_4 != 0xef0002beUL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETCONTACTDATARESPONSE_5 != 0xe922afbaUL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETCONTACTDATARESPONSE_6 != 0x621b25bdUL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETCONTACTDATARESPONSE_7 != 0xadf1fbbbUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETCONTACTDATARESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETCONTACTDATARESPONSE_0 0xa38bdc6bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETCONTACTDATARESPONSE_1 0x24324d8eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETCONTACTDATARESPONSE_2 0x87e55a5bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETCONTACTDATARESPONSE_3 0x2c94b3a4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETCONTACTDATARESPONSE_4 0xef0002beUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETCONTACTDATARESPONSE_5 0xe922afbaUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETCONTACTDATARESPONSE_6 0x621b25bdUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETCONTACTDATARESPONSE_7 0xadf1fbbbUL

/** UTF-8 byte storage for uwvm_fourier_bridge/GetContactDataResponse.error; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_1_uwvm_fourier_bridge_GetContactDataResponse_error_text;

/** At most64 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[64];
} roswasmc_bounded_1_uwvm_fourier_bridge_GetContactDataResponse_values_sequence;

/** Complete ROS1 uwvm_fourier_bridge/GetContactDataResponse value; no field projects away native data. */
typedef struct roswasmc_bounded_1_uwvm_fourier_bridge_GetContactDataResponse
{
    /** Declared field status; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t status;
    /** Declared field error; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_uwvm_fourier_bridge_GetContactDataResponse_error_text error;
    /** Declared field values; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_uwvm_fourier_bridge_GetContactDataResponse_values_sequence values;
} roswasmc_bounded_1_uwvm_fourier_bridge_GetContactDataResponse;

# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETCONTACTDATARESPONSE_MAX_WIRE_BYTES 652u
# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETCONTACTDATARESPONSE_MIN_WIRE_BYTES 12u
# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETCONTACTDATARESPONSE_CODEC_IDENTITY                                                                          \
     "UWVMROS1_c4381d31ad73640e2f4302bd200d4507cd5a1a4ca4ee180ad009589864f3f293"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int
    roswasmc_bounded_1_uwvm_fourier_bridge_GetContactDataResponse_valid(roswasmc_bounded_1_uwvm_fourier_bridge_GetContactDataResponse const* value)
{
    if(!value)
        return 0;
    if(value->error.size > 128u || !uwvm_bounded_utf8(value->error.data, value->error.size))
        return 0;
    if(value->values.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->values.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->values.data[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                    return 0;
            }
        }
    }
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_1_uwvm_fourier_bridge_GetContactDataResponse_wire_size(roswasmc_bounded_1_uwvm_fourier_bridge_GetContactDataResponse const* value)
{
    size_t n = 0;
    n += 4;
    n += 4 + value->error.size;
    n += 4;
    if(value->values.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->values.size; ++i)
        {
            n += 8;
        }
    }
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_1_uwvm_fourier_bridge_GetContactDataResponse_write_fields(roswasmc_bounded_1_uwvm_fourier_bridge_GetContactDataResponse const* value,
                                                                               unsigned char* p,
                                                                               size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->status, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, value->error.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->error.data, value->error.size);
    *offset += value->error.size;
    uwvm_bounded_put(p + *offset, value->values.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->values.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->values.data[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int
    roswasmc_bounded_1_uwvm_fourier_bridge_GetContactDataResponse_read_fields(unsigned char const* p,
                                                                              size_t n,
                                                                              size_t* offset,
                                                                              roswasmc_bounded_1_uwvm_fourier_bridge_GetContactDataResponse* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->status, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->error.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->error.size > 128u || value->error.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->error.data, p + *offset, value->error.size);
    *offset += value->error.size;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->values.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->values.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->values.size; ++i)
        {
            if(*offset > n || n - *offset < 8)
                return 0;
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->values.data[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    return roswasmc_bounded_1_uwvm_fourier_bridge_GetContactDataResponse_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_1_uwvm_fourier_bridge_GetContactDataResponse_encode(roswasmc_bounded_1_uwvm_fourier_bridge_GetContactDataResponse const* value,
                                                                         void* output,
                                                                         size_t capacity,
                                                                         size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_uwvm_fourier_bridge_GetContactDataResponse_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_uwvm_fourier_bridge_GetContactDataResponse_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_uwvm_fourier_bridge_GetContactDataResponse_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_1_uwvm_fourier_bridge_GetContactDataResponse_decode(void const* input,
                                                                         size_t length,
                                                                         roswasmc_bounded_1_uwvm_fourier_bridge_GetContactDataResponse* value)
{
    roswasmc_bounded_1_uwvm_fourier_bridge_GetContactDataResponse next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 12u || length > 652u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_uwvm_fourier_bridge_GetContactDataResponse_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETFSMNAMEREQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETFSMNAMEREQUEST_0 != 0x40458153UL ||                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETFSMNAMEREQUEST_1 != 0x900c3913UL ||                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETFSMNAMEREQUEST_2 != 0x128eea14UL ||                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETFSMNAMEREQUEST_3 != 0xcaf17c66UL ||                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETFSMNAMEREQUEST_4 != 0x41de2d03UL ||                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETFSMNAMEREQUEST_5 != 0xb94dadb2UL ||                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETFSMNAMEREQUEST_6 != 0x835e65d1UL ||                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETFSMNAMEREQUEST_7 != 0x544830a0UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETFSMNAMEREQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETFSMNAMEREQUEST_0 0x40458153UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETFSMNAMEREQUEST_1 0x900c3913UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETFSMNAMEREQUEST_2 0x128eea14UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETFSMNAMEREQUEST_3 0xcaf17c66UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETFSMNAMEREQUEST_4 0x41de2d03UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETFSMNAMEREQUEST_5 0xb94dadb2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETFSMNAMEREQUEST_6 0x835e65d1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETFSMNAMEREQUEST_7 0x544830a0UL

/** Complete ROS1 uwvm_fourier_bridge/GetFsmNameRequest value; no field projects away native data. */
typedef struct roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmNameRequest
{
    /** Declared field sequence; canonical capacity is part of CODEC_IDENTITY. */
    uint64_t sequence;
} roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmNameRequest;

# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETFSMNAMEREQUEST_MAX_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETFSMNAMEREQUEST_MIN_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETFSMNAMEREQUEST_CODEC_IDENTITY "UWVMROS1_4257279fd241dee60ef24d1d5ebdcadbc84701b2e8709a6e269d2259b9293b33"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmNameRequest_valid(roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmNameRequest const* value)
{
    if(!value)
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmNameRequest_wire_size(roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmNameRequest const* value)
{
    size_t n = 0;
    n += 8;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmNameRequest_write_fields(roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmNameRequest const* value,
                                                                                         unsigned char* p,
                                                                                         size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->sequence, 8);
    *offset += 8;
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmNameRequest_read_fields(unsigned char const* p,
                                                                                       size_t n,
                                                                                       size_t* offset,
                                                                                       roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmNameRequest* value)
{
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->sequence, &bits, 8);
    }
    *offset += 8;
    return roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmNameRequest_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmNameRequest_encode(roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmNameRequest const* value,
                                                                                       void* output,
                                                                                       size_t capacity,
                                                                                       size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmNameRequest_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmNameRequest_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmNameRequest_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmNameRequest_decode(void const* input,
                                                                                       size_t length,
                                                                                       roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmNameRequest* value)
{
    roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmNameRequest next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 8u || length > 8u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmNameRequest_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETFSMNAMERESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETFSMNAMERESPONSE_0 != 0x70db4ad0UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETFSMNAMERESPONSE_1 != 0xd1912163UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETFSMNAMERESPONSE_2 != 0x857b51c4UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETFSMNAMERESPONSE_3 != 0x720aadd5UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETFSMNAMERESPONSE_4 != 0x08e701e9UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETFSMNAMERESPONSE_5 != 0x6d874135UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETFSMNAMERESPONSE_6 != 0x6e4dde91UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETFSMNAMERESPONSE_7 != 0xfaba5814UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETFSMNAMERESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETFSMNAMERESPONSE_0 0x70db4ad0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETFSMNAMERESPONSE_1 0xd1912163UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETFSMNAMERESPONSE_2 0x857b51c4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETFSMNAMERESPONSE_3 0x720aadd5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETFSMNAMERESPONSE_4 0x08e701e9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETFSMNAMERESPONSE_5 0x6d874135UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETFSMNAMERESPONSE_6 0x6e4dde91UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETFSMNAMERESPONSE_7 0xfaba5814UL

/** UTF-8 byte storage for uwvm_fourier_bridge/GetFsmNameResponse.error; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmNameResponse_error_text;

/** UTF-8 byte storage for uwvm_fourier_bridge/GetFsmNameResponse.value; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmNameResponse_value_text;

/** Complete ROS1 uwvm_fourier_bridge/GetFsmNameResponse value; no field projects away native data. */
typedef struct roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmNameResponse
{
    /** Declared field status; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t status;
    /** Declared field error; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmNameResponse_error_text error;
    /** Declared field value; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmNameResponse_value_text value;
} roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmNameResponse;

# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETFSMNAMERESPONSE_MAX_WIRE_BYTES 268u
# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETFSMNAMERESPONSE_MIN_WIRE_BYTES 12u
# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETFSMNAMERESPONSE_CODEC_IDENTITY "UWVMROS1_9016d706e2afed027dd150f1534e615e551c3f26d581313bb3d36a279e1d7c55"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmNameResponse_valid(roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmNameResponse const* value)
{
    if(!value)
        return 0;
    if(value->error.size > 128u || !uwvm_bounded_utf8(value->error.data, value->error.size))
        return 0;
    if(value->value.size > 128u || !uwvm_bounded_utf8(value->value.data, value->value.size))
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmNameResponse_wire_size(roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmNameResponse const* value)
{
    size_t n = 0;
    n += 4;
    n += 4 + value->error.size;
    n += 4 + value->value.size;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmNameResponse_write_fields(roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmNameResponse const* value,
                                                                           unsigned char* p,
                                                                           size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->status, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, value->error.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->error.data, value->error.size);
    *offset += value->error.size;
    uwvm_bounded_put(p + *offset, value->value.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->value.data, value->value.size);
    *offset += value->value.size;
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmNameResponse_read_fields(unsigned char const* p,
                                                                                        size_t n,
                                                                                        size_t* offset,
                                                                                        roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmNameResponse* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->status, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->error.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->error.size > 128u || value->error.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->error.data, p + *offset, value->error.size);
    *offset += value->error.size;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->value.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->value.size > 128u || value->value.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->value.data, p + *offset, value->value.size);
    *offset += value->value.size;
    return roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmNameResponse_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmNameResponse_encode(roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmNameResponse const* value,
                                                                                        void* output,
                                                                                        size_t capacity,
                                                                                        size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmNameResponse_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmNameResponse_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmNameResponse_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmNameResponse_decode(void const* input,
                                                                                        size_t length,
                                                                                        roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmNameResponse* value)
{
    roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmNameResponse next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 12u || length > 268u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmNameResponse_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETFSMSTATEREQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETFSMSTATEREQUEST_0 != 0x4d3e70e4UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETFSMSTATEREQUEST_1 != 0x9dcff899UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETFSMSTATEREQUEST_2 != 0x50011b4eUL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETFSMSTATEREQUEST_3 != 0xf5d756d8UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETFSMSTATEREQUEST_4 != 0xee799b79UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETFSMSTATEREQUEST_5 != 0x88134141UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETFSMSTATEREQUEST_6 != 0x9679cca5UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETFSMSTATEREQUEST_7 != 0x357a57fbUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETFSMSTATEREQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETFSMSTATEREQUEST_0 0x4d3e70e4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETFSMSTATEREQUEST_1 0x9dcff899UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETFSMSTATEREQUEST_2 0x50011b4eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETFSMSTATEREQUEST_3 0xf5d756d8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETFSMSTATEREQUEST_4 0xee799b79UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETFSMSTATEREQUEST_5 0x88134141UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETFSMSTATEREQUEST_6 0x9679cca5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETFSMSTATEREQUEST_7 0x357a57fbUL

/** Complete ROS1 uwvm_fourier_bridge/GetFsmStateRequest value; no field projects away native data. */
typedef struct roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmStateRequest
{
    /** Declared field sequence; canonical capacity is part of CODEC_IDENTITY. */
    uint64_t sequence;
} roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmStateRequest;

# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETFSMSTATEREQUEST_MAX_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETFSMSTATEREQUEST_MIN_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETFSMSTATEREQUEST_CODEC_IDENTITY "UWVMROS1_573f497168578dce3680e1d423f64993e9fccf7774cc2fc0db38ccce8286ee3e"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmStateRequest_valid(roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmStateRequest const* value)
{
    if(!value)
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmStateRequest_wire_size(roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmStateRequest const* value)
{
    size_t n = 0;
    n += 8;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmStateRequest_write_fields(roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmStateRequest const* value,
                                                                           unsigned char* p,
                                                                           size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->sequence, 8);
    *offset += 8;
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmStateRequest_read_fields(unsigned char const* p,
                                                                                        size_t n,
                                                                                        size_t* offset,
                                                                                        roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmStateRequest* value)
{
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->sequence, &bits, 8);
    }
    *offset += 8;
    return roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmStateRequest_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmStateRequest_encode(roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmStateRequest const* value,
                                                                                        void* output,
                                                                                        size_t capacity,
                                                                                        size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmStateRequest_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmStateRequest_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmStateRequest_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmStateRequest_decode(void const* input,
                                                                                        size_t length,
                                                                                        roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmStateRequest* value)
{
    roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmStateRequest next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 8u || length > 8u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmStateRequest_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETFSMSTATERESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETFSMSTATERESPONSE_0 != 0xfb67caa8UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETFSMSTATERESPONSE_1 != 0xa5c3bfadUL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETFSMSTATERESPONSE_2 != 0x2f6edb06UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETFSMSTATERESPONSE_3 != 0x90d21457UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETFSMSTATERESPONSE_4 != 0x2b0efec4UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETFSMSTATERESPONSE_5 != 0x863692d2UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETFSMSTATERESPONSE_6 != 0xa01da5b0UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETFSMSTATERESPONSE_7 != 0x6ad0bd5bUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETFSMSTATERESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETFSMSTATERESPONSE_0 0xfb67caa8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETFSMSTATERESPONSE_1 0xa5c3bfadUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETFSMSTATERESPONSE_2 0x2f6edb06UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETFSMSTATERESPONSE_3 0x90d21457UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETFSMSTATERESPONSE_4 0x2b0efec4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETFSMSTATERESPONSE_5 0x863692d2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETFSMSTATERESPONSE_6 0xa01da5b0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETFSMSTATERESPONSE_7 0x6ad0bd5bUL

/** UTF-8 byte storage for uwvm_fourier_bridge/GetFsmStateResponse.error; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmStateResponse_error_text;

/** Complete ROS1 uwvm_fourier_bridge/GetFsmStateResponse value; no field projects away native data. */
typedef struct roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmStateResponse
{
    /** Declared field status; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t status;
    /** Declared field error; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmStateResponse_error_text error;
    /** Declared field value; canonical capacity is part of CODEC_IDENTITY. */
    int32_t value;
} roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmStateResponse;

# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETFSMSTATERESPONSE_MAX_WIRE_BYTES 140u
# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETFSMSTATERESPONSE_MIN_WIRE_BYTES 12u
# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETFSMSTATERESPONSE_CODEC_IDENTITY "UWVMROS1_1d25f46d335312a766f3c0a7f410a45f283515396c8c6bfc4a49bcf6bc37a812"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmStateResponse_valid(roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmStateResponse const* value)
{
    if(!value)
        return 0;
    if(value->error.size > 128u || !uwvm_bounded_utf8(value->error.data, value->error.size))
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmStateResponse_wire_size(roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmStateResponse const* value)
{
    size_t n = 0;
    n += 4;
    n += 4 + value->error.size;
    n += 4;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmStateResponse_write_fields(roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmStateResponse const* value,
                                                                            unsigned char* p,
                                                                            size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->status, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, value->error.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->error.data, value->error.size);
    *offset += value->error.size;
    uwvm_bounded_put(p + *offset, (uint64_t)value->value, 4);
    *offset += 4;
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmStateResponse_read_fields(unsigned char const* p,
                                                                                         size_t n,
                                                                                         size_t* offset,
                                                                                         roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmStateResponse* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->status, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->error.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->error.size > 128u || value->error.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->error.data, p + *offset, value->error.size);
    *offset += value->error.size;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->value, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmStateResponse_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmStateResponse_encode(roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmStateResponse const* value,
                                                                      void* output,
                                                                      size_t capacity,
                                                                      size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmStateResponse_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmStateResponse_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmStateResponse_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmStateResponse_decode(void const* input,
                                                                                         size_t length,
                                                                                         roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmStateResponse* value)
{
    roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmStateResponse next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 12u || length > 140u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_uwvm_fourier_bridge_GetFsmStateResponse_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPMOTIONSTATEREQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPMOTIONSTATEREQUEST_0 != 0xc931d217UL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPMOTIONSTATEREQUEST_1 != 0xba311c49UL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPMOTIONSTATEREQUEST_2 != 0x114f7e83UL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPMOTIONSTATEREQUEST_3 != 0x45a1b2ccUL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPMOTIONSTATEREQUEST_4 != 0xe403703dUL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPMOTIONSTATEREQUEST_5 != 0x3d51c070UL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPMOTIONSTATEREQUEST_6 != 0xe63cd0f1UL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPMOTIONSTATEREQUEST_7 != 0x436a2be0UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPMOTIONSTATEREQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPMOTIONSTATEREQUEST_0 0xc931d217UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPMOTIONSTATEREQUEST_1 0xba311c49UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPMOTIONSTATEREQUEST_2 0x114f7e83UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPMOTIONSTATEREQUEST_3 0x45a1b2ccUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPMOTIONSTATEREQUEST_4 0xe403703dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPMOTIONSTATEREQUEST_5 0x3d51c070UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPMOTIONSTATEREQUEST_6 0xe63cd0f1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPMOTIONSTATEREQUEST_7 0x436a2be0UL

/** UTF-8 byte storage for uwvm_fourier_bridge/GetGroupMotionStateRequest.group; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotionStateRequest_group_text;

/** Complete ROS1 uwvm_fourier_bridge/GetGroupMotionStateRequest value; no field projects away native data. */
typedef struct roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotionStateRequest
{
    /** Declared field sequence; canonical capacity is part of CODEC_IDENTITY. */
    uint64_t sequence;
    /** Declared field group; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotionStateRequest_group_text group;
} roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotionStateRequest;

# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPMOTIONSTATEREQUEST_MAX_WIRE_BYTES 140u
# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPMOTIONSTATEREQUEST_MIN_WIRE_BYTES 12u
# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPMOTIONSTATEREQUEST_CODEC_IDENTITY                                                                      \
     "UWVMROS1_a2b6c77c903d5d4dc5ca20805e1ed2fa7dfa0852bc3f590638a577cec9d7248f"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int
    roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotionStateRequest_valid(roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotionStateRequest const* value)
{
    if(!value)
        return 0;
    if(value->group.size > 128u || !uwvm_bounded_utf8(value->group.data, value->group.size))
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotionStateRequest_wire_size(roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotionStateRequest const* value)
{
    size_t n = 0;
    n += 8;
    n += 4 + value->group.size;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotionStateRequest_write_fields(
    roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotionStateRequest const* value,
    unsigned char* p,
    size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->sequence, 8);
    *offset += 8;
    uwvm_bounded_put(p + *offset, value->group.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->group.data, value->group.size);
    *offset += value->group.size;
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int
    roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotionStateRequest_read_fields(unsigned char const* p,
                                                                                  size_t n,
                                                                                  size_t* offset,
                                                                                  roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotionStateRequest* value)
{
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->sequence, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->group.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->group.size > 128u || value->group.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->group.data, p + *offset, value->group.size);
    *offset += value->group.size;
    return roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotionStateRequest_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotionStateRequest_encode(roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotionStateRequest const* value,
                                                                             void* output,
                                                                             size_t capacity,
                                                                             size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotionStateRequest_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotionStateRequest_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotionStateRequest_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotionStateRequest_decode(void const* input,
                                                                             size_t length,
                                                                             roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotionStateRequest* value)
{
    roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotionStateRequest next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 12u || length > 140u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotionStateRequest_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPMOTIONSTATERESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPMOTIONSTATERESPONSE_0 != 0x6799d698UL ||                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPMOTIONSTATERESPONSE_1 != 0x62d060eaUL ||                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPMOTIONSTATERESPONSE_2 != 0xa6dbb567UL ||                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPMOTIONSTATERESPONSE_3 != 0x08881e6eUL ||                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPMOTIONSTATERESPONSE_4 != 0xb3be5429UL ||                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPMOTIONSTATERESPONSE_5 != 0x2093e4c1UL ||                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPMOTIONSTATERESPONSE_6 != 0x0c2cecd2UL ||                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPMOTIONSTATERESPONSE_7 != 0x9d1cf1f2UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPMOTIONSTATERESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPMOTIONSTATERESPONSE_0 0x6799d698UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPMOTIONSTATERESPONSE_1 0x62d060eaUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPMOTIONSTATERESPONSE_2 0xa6dbb567UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPMOTIONSTATERESPONSE_3 0x08881e6eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPMOTIONSTATERESPONSE_4 0xb3be5429UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPMOTIONSTATERESPONSE_5 0x2093e4c1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPMOTIONSTATERESPONSE_6 0x0c2cecd2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPMOTIONSTATERESPONSE_7 0x9d1cf1f2UL

/** UTF-8 byte storage for uwvm_fourier_bridge/GetGroupMotionStateResponse.error; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotionStateResponse_error_text;

/** Complete ROS1 uwvm_fourier_bridge/GetGroupMotionStateResponse value; no field projects away native data. */
typedef struct roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotionStateResponse
{
    /** Declared field status; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t status;
    /** Declared field error; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotionStateResponse_error_text error;
    /** Declared field value; canonical capacity is part of CODEC_IDENTITY. */
    int32_t value;
} roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotionStateResponse;

# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPMOTIONSTATERESPONSE_MAX_WIRE_BYTES 140u
# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPMOTIONSTATERESPONSE_MIN_WIRE_BYTES 12u
# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPMOTIONSTATERESPONSE_CODEC_IDENTITY                                                                     \
     "UWVMROS1_e41b911990c306e8f264f1f9d961b822fb6669ad1ca5ee8f81609ba13a0fc8a2"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int
    roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotionStateResponse_valid(roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotionStateResponse const* value)
{
    if(!value)
        return 0;
    if(value->error.size > 128u || !uwvm_bounded_utf8(value->error.data, value->error.size))
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotionStateResponse_wire_size(
    roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotionStateResponse const* value)
{
    size_t n = 0;
    n += 4;
    n += 4 + value->error.size;
    n += 4;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotionStateResponse_write_fields(
    roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotionStateResponse const* value,
    unsigned char* p,
    size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->status, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, value->error.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->error.data, value->error.size);
    *offset += value->error.size;
    uwvm_bounded_put(p + *offset, (uint64_t)value->value, 4);
    *offset += 4;
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int
    roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotionStateResponse_read_fields(unsigned char const* p,
                                                                                   size_t n,
                                                                                   size_t* offset,
                                                                                   roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotionStateResponse* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->status, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->error.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->error.size > 128u || value->error.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->error.data, p + *offset, value->error.size);
    *offset += value->error.size;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->value, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotionStateResponse_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotionStateResponse_encode(roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotionStateResponse const* value,
                                                                              void* output,
                                                                              size_t capacity,
                                                                              size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotionStateResponse_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotionStateResponse_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotionStateResponse_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotionStateResponse_decode(void const* input,
                                                                              size_t length,
                                                                              roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotionStateResponse* value)
{
    roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotionStateResponse next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 12u || length > 140u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotionStateResponse_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPMOTORCFGREQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPMOTORCFGREQUEST_0 != 0x700798e1UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPMOTORCFGREQUEST_1 != 0xf9127288UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPMOTORCFGREQUEST_2 != 0x75b96a88UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPMOTORCFGREQUEST_3 != 0xb4bceb68UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPMOTORCFGREQUEST_4 != 0x1fd827c6UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPMOTORCFGREQUEST_5 != 0xbeedf7aaUL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPMOTORCFGREQUEST_6 != 0x9e694167UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPMOTORCFGREQUEST_7 != 0x0a9fd681UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPMOTORCFGREQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPMOTORCFGREQUEST_0 0x700798e1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPMOTORCFGREQUEST_1 0xf9127288UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPMOTORCFGREQUEST_2 0x75b96a88UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPMOTORCFGREQUEST_3 0xb4bceb68UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPMOTORCFGREQUEST_4 0x1fd827c6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPMOTORCFGREQUEST_5 0xbeedf7aaUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPMOTORCFGREQUEST_6 0x9e694167UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPMOTORCFGREQUEST_7 0x0a9fd681UL

/** UTF-8 byte storage for uwvm_fourier_bridge/GetGroupMotorCfgRequest.group; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotorCfgRequest_group_text;

/** UTF-8 byte storage for uwvm_fourier_bridge/GetGroupMotorCfgRequest.key; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotorCfgRequest_key_text;

/** Complete ROS1 uwvm_fourier_bridge/GetGroupMotorCfgRequest value; no field projects away native data. */
typedef struct roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotorCfgRequest
{
    /** Declared field sequence; canonical capacity is part of CODEC_IDENTITY. */
    uint64_t sequence;
    /** Declared field group; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotorCfgRequest_group_text group;
    /** Declared field key; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotorCfgRequest_key_text key;
} roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotorCfgRequest;

# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPMOTORCFGREQUEST_MAX_WIRE_BYTES 272u
# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPMOTORCFGREQUEST_MIN_WIRE_BYTES 16u
# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPMOTORCFGREQUEST_CODEC_IDENTITY                                                                         \
     "UWVMROS1_bbcfb5561a970d7d086aa5a3a832dfbd8c3e2c2a9b4c5e9bea8224c6c7fc0576"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int
    roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotorCfgRequest_valid(roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotorCfgRequest const* value)
{
    if(!value)
        return 0;
    if(value->group.size > 128u || !uwvm_bounded_utf8(value->group.data, value->group.size))
        return 0;
    if(value->key.size > 128u || !uwvm_bounded_utf8(value->key.data, value->key.size))
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotorCfgRequest_wire_size(roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotorCfgRequest const* value)
{
    size_t n = 0;
    n += 8;
    n += 4 + value->group.size;
    n += 4 + value->key.size;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotorCfgRequest_write_fields(roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotorCfgRequest const* value,
                                                                                unsigned char* p,
                                                                                size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->sequence, 8);
    *offset += 8;
    uwvm_bounded_put(p + *offset, value->group.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->group.data, value->group.size);
    *offset += value->group.size;
    uwvm_bounded_put(p + *offset, value->key.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->key.data, value->key.size);
    *offset += value->key.size;
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int
    roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotorCfgRequest_read_fields(unsigned char const* p,
                                                                               size_t n,
                                                                               size_t* offset,
                                                                               roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotorCfgRequest* value)
{
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->sequence, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->group.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->group.size > 128u || value->group.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->group.data, p + *offset, value->group.size);
    *offset += value->group.size;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->key.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->key.size > 128u || value->key.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->key.data, p + *offset, value->key.size);
    *offset += value->key.size;
    return roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotorCfgRequest_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotorCfgRequest_encode(roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotorCfgRequest const* value,
                                                                          void* output,
                                                                          size_t capacity,
                                                                          size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotorCfgRequest_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotorCfgRequest_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotorCfgRequest_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotorCfgRequest_decode(void const* input,
                                                                          size_t length,
                                                                          roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotorCfgRequest* value)
{
    roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotorCfgRequest next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 16u || length > 272u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotorCfgRequest_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPMOTORCFGRESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPMOTORCFGRESPONSE_0 != 0x714a1171UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPMOTORCFGRESPONSE_1 != 0x93098240UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPMOTORCFGRESPONSE_2 != 0x36d879e5UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPMOTORCFGRESPONSE_3 != 0xc77f8ef3UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPMOTORCFGRESPONSE_4 != 0x824bddb3UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPMOTORCFGRESPONSE_5 != 0x4df4fef6UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPMOTORCFGRESPONSE_6 != 0xd8c80033UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPMOTORCFGRESPONSE_7 != 0xe8889ebcUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPMOTORCFGRESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPMOTORCFGRESPONSE_0 0x714a1171UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPMOTORCFGRESPONSE_1 0x93098240UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPMOTORCFGRESPONSE_2 0x36d879e5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPMOTORCFGRESPONSE_3 0xc77f8ef3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPMOTORCFGRESPONSE_4 0x824bddb3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPMOTORCFGRESPONSE_5 0x4df4fef6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPMOTORCFGRESPONSE_6 0xd8c80033UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPMOTORCFGRESPONSE_7 0xe8889ebcUL

/** UTF-8 byte storage for uwvm_fourier_bridge/GetGroupMotorCfgResponse.error; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotorCfgResponse_error_text;

/** At most64 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[64];
} roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotorCfgResponse_values_sequence;

/** Complete ROS1 uwvm_fourier_bridge/GetGroupMotorCfgResponse value; no field projects away native data. */
typedef struct roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotorCfgResponse
{
    /** Declared field status; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t status;
    /** Declared field error; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotorCfgResponse_error_text error;
    /** Declared field values; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotorCfgResponse_values_sequence values;
} roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotorCfgResponse;

# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPMOTORCFGRESPONSE_MAX_WIRE_BYTES 652u
# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPMOTORCFGRESPONSE_MIN_WIRE_BYTES 12u
# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPMOTORCFGRESPONSE_CODEC_IDENTITY                                                                        \
     "UWVMROS1_cf7f2a81246842d851104edb7d422ff5342fc65dc56e573d552b10d02c81ad72"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int
    roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotorCfgResponse_valid(roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotorCfgResponse const* value)
{
    if(!value)
        return 0;
    if(value->error.size > 128u || !uwvm_bounded_utf8(value->error.data, value->error.size))
        return 0;
    if(value->values.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->values.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->values.data[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                    return 0;
            }
        }
    }
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotorCfgResponse_wire_size(roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotorCfgResponse const* value)
{
    size_t n = 0;
    n += 4;
    n += 4 + value->error.size;
    n += 4;
    if(value->values.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->values.size; ++i)
        {
            n += 8;
        }
    }
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotorCfgResponse_write_fields(roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotorCfgResponse const* value,
                                                                                 unsigned char* p,
                                                                                 size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->status, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, value->error.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->error.data, value->error.size);
    *offset += value->error.size;
    uwvm_bounded_put(p + *offset, value->values.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->values.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->values.data[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int
    roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotorCfgResponse_read_fields(unsigned char const* p,
                                                                                size_t n,
                                                                                size_t* offset,
                                                                                roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotorCfgResponse* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->status, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->error.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->error.size > 128u || value->error.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->error.data, p + *offset, value->error.size);
    *offset += value->error.size;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->values.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->values.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->values.size; ++i)
        {
            if(*offset > n || n - *offset < 8)
                return 0;
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->values.data[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    return roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotorCfgResponse_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotorCfgResponse_encode(roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotorCfgResponse const* value,
                                                                           void* output,
                                                                           size_t capacity,
                                                                           size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotorCfgResponse_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotorCfgResponse_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotorCfgResponse_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotorCfgResponse_decode(void const* input,
                                                                           size_t length,
                                                                           roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotorCfgResponse* value)
{
    roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotorCfgResponse next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 12u || length > 652u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupMotorCfgResponse_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPSTATEREQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPSTATEREQUEST_0 != 0xc3459217UL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPSTATEREQUEST_1 != 0x23024063UL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPSTATEREQUEST_2 != 0x8c046931UL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPSTATEREQUEST_3 != 0xa470b855UL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPSTATEREQUEST_4 != 0xd1a193d1UL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPSTATEREQUEST_5 != 0xfe513abaUL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPSTATEREQUEST_6 != 0x28b249efUL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPSTATEREQUEST_7 != 0x24d95d84UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPSTATEREQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPSTATEREQUEST_0 0xc3459217UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPSTATEREQUEST_1 0x23024063UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPSTATEREQUEST_2 0x8c046931UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPSTATEREQUEST_3 0xa470b855UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPSTATEREQUEST_4 0xd1a193d1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPSTATEREQUEST_5 0xfe513abaUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPSTATEREQUEST_6 0x28b249efUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPSTATEREQUEST_7 0x24d95d84UL

/** UTF-8 byte storage for uwvm_fourier_bridge/GetGroupStateRequest.group; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupStateRequest_group_text;

/** UTF-8 byte storage for uwvm_fourier_bridge/GetGroupStateRequest.key; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupStateRequest_key_text;

/** Complete ROS1 uwvm_fourier_bridge/GetGroupStateRequest value; no field projects away native data. */
typedef struct roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupStateRequest
{
    /** Declared field sequence; canonical capacity is part of CODEC_IDENTITY. */
    uint64_t sequence;
    /** Declared field group; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupStateRequest_group_text group;
    /** Declared field key; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupStateRequest_key_text key;
} roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupStateRequest;

# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPSTATEREQUEST_MAX_WIRE_BYTES 272u
# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPSTATEREQUEST_MIN_WIRE_BYTES 16u
# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPSTATEREQUEST_CODEC_IDENTITY "UWVMROS1_d24ebea89b1c6e7963c8058109704033c9e1f1f74673732093412c5ac453b8fc"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupStateRequest_valid(roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupStateRequest const* value)
{
    if(!value)
        return 0;
    if(value->group.size > 128u || !uwvm_bounded_utf8(value->group.data, value->group.size))
        return 0;
    if(value->key.size > 128u || !uwvm_bounded_utf8(value->key.data, value->key.size))
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupStateRequest_wire_size(roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupStateRequest const* value)
{
    size_t n = 0;
    n += 8;
    n += 4 + value->group.size;
    n += 4 + value->key.size;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupStateRequest_write_fields(roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupStateRequest const* value,
                                                                             unsigned char* p,
                                                                             size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->sequence, 8);
    *offset += 8;
    uwvm_bounded_put(p + *offset, value->group.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->group.data, value->group.size);
    *offset += value->group.size;
    uwvm_bounded_put(p + *offset, value->key.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->key.data, value->key.size);
    *offset += value->key.size;
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupStateRequest_read_fields(unsigned char const* p,
                                                                                          size_t n,
                                                                                          size_t* offset,
                                                                                          roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupStateRequest* value)
{
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->sequence, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->group.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->group.size > 128u || value->group.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->group.data, p + *offset, value->group.size);
    *offset += value->group.size;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->key.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->key.size > 128u || value->key.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->key.data, p + *offset, value->key.size);
    *offset += value->key.size;
    return roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupStateRequest_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupStateRequest_encode(roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupStateRequest const* value,
                                                                       void* output,
                                                                       size_t capacity,
                                                                       size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupStateRequest_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupStateRequest_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupStateRequest_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupStateRequest_decode(void const* input,
                                                                                          size_t length,
                                                                                          roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupStateRequest* value)
{
    roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupStateRequest next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 16u || length > 272u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupStateRequest_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPSTATERESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPSTATERESPONSE_0 != 0xc32011eaUL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPSTATERESPONSE_1 != 0xd5025f45UL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPSTATERESPONSE_2 != 0x0d8cc9aeUL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPSTATERESPONSE_3 != 0x251f3bf0UL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPSTATERESPONSE_4 != 0xc8862976UL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPSTATERESPONSE_5 != 0xaa3de166UL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPSTATERESPONSE_6 != 0x2eace4faUL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPSTATERESPONSE_7 != 0x23d828afUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPSTATERESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPSTATERESPONSE_0 0xc32011eaUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPSTATERESPONSE_1 0xd5025f45UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPSTATERESPONSE_2 0x0d8cc9aeUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPSTATERESPONSE_3 0x251f3bf0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPSTATERESPONSE_4 0xc8862976UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPSTATERESPONSE_5 0xaa3de166UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPSTATERESPONSE_6 0x2eace4faUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPSTATERESPONSE_7 0x23d828afUL

/** UTF-8 byte storage for uwvm_fourier_bridge/GetGroupStateResponse.error; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupStateResponse_error_text;

/** At most64 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[64];
} roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupStateResponse_values_sequence;

/** Complete ROS1 uwvm_fourier_bridge/GetGroupStateResponse value; no field projects away native data. */
typedef struct roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupStateResponse
{
    /** Declared field status; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t status;
    /** Declared field error; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupStateResponse_error_text error;
    /** Declared field values; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupStateResponse_values_sequence values;
} roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupStateResponse;

# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPSTATERESPONSE_MAX_WIRE_BYTES 652u
# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPSTATERESPONSE_MIN_WIRE_BYTES 12u
# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETGROUPSTATERESPONSE_CODEC_IDENTITY "UWVMROS1_e21f17f91821b5a3154e108d0bcdb027a320b948d32e5637d20745c85edb0acb"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupStateResponse_valid(roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupStateResponse const* value)
{
    if(!value)
        return 0;
    if(value->error.size > 128u || !uwvm_bounded_utf8(value->error.data, value->error.size))
        return 0;
    if(value->values.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->values.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->values.data[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                    return 0;
            }
        }
    }
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupStateResponse_wire_size(roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupStateResponse const* value)
{
    size_t n = 0;
    n += 4;
    n += 4 + value->error.size;
    n += 4;
    if(value->values.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->values.size; ++i)
        {
            n += 8;
        }
    }
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupStateResponse_write_fields(roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupStateResponse const* value,
                                                                              unsigned char* p,
                                                                              size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->status, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, value->error.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->error.data, value->error.size);
    *offset += value->error.size;
    uwvm_bounded_put(p + *offset, value->values.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->values.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->values.data[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupStateResponse_read_fields(unsigned char const* p,
                                                                                           size_t n,
                                                                                           size_t* offset,
                                                                                           roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupStateResponse* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->status, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->error.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->error.size > 128u || value->error.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->error.data, p + *offset, value->error.size);
    *offset += value->error.size;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->values.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->values.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->values.size; ++i)
        {
            if(*offset > n || n - *offset < 8)
                return 0;
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->values.data[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    return roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupStateResponse_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupStateResponse_encode(roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupStateResponse const* value,
                                                                        void* output,
                                                                        size_t capacity,
                                                                        size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupStateResponse_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupStateResponse_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupStateResponse_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupStateResponse_decode(void const* input,
                                                                                           size_t length,
                                                                                           roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupStateResponse* value)
{
    roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupStateResponse next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 12u || length > 652u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_uwvm_fourier_bridge_GetGroupStateResponse_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETSNAPSHOTREQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETSNAPSHOTREQUEST_0 != 0xb42522d4UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETSNAPSHOTREQUEST_1 != 0xc9c1ef5aUL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETSNAPSHOTREQUEST_2 != 0x821e9d4eUL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETSNAPSHOTREQUEST_3 != 0x0b2f0192UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETSNAPSHOTREQUEST_4 != 0xf489f295UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETSNAPSHOTREQUEST_5 != 0x9a922fdeUL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETSNAPSHOTREQUEST_6 != 0xfd506b48UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETSNAPSHOTREQUEST_7 != 0x0749da12UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETSNAPSHOTREQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETSNAPSHOTREQUEST_0 0xb42522d4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETSNAPSHOTREQUEST_1 0xc9c1ef5aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETSNAPSHOTREQUEST_2 0x821e9d4eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETSNAPSHOTREQUEST_3 0x0b2f0192UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETSNAPSHOTREQUEST_4 0xf489f295UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETSNAPSHOTREQUEST_5 0x9a922fdeUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETSNAPSHOTREQUEST_6 0xfd506b48UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETSNAPSHOTREQUEST_7 0x0749da12UL

/** Complete ROS1 uwvm_fourier_bridge/GetSnapshotRequest value; no field projects away native data. */
typedef struct roswasmc_bounded_1_uwvm_fourier_bridge_GetSnapshotRequest
{
    /** Declared field sequence; canonical capacity is part of CODEC_IDENTITY. */
    uint64_t sequence;
} roswasmc_bounded_1_uwvm_fourier_bridge_GetSnapshotRequest;

# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETSNAPSHOTREQUEST_MAX_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETSNAPSHOTREQUEST_MIN_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETSNAPSHOTREQUEST_CODEC_IDENTITY "UWVMROS1_384b9be938d41321afe3ef0765bdd442baa4f0c10049efd656c52d5ac1c89d4c"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_uwvm_fourier_bridge_GetSnapshotRequest_valid(roswasmc_bounded_1_uwvm_fourier_bridge_GetSnapshotRequest const* value)
{
    if(!value)
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_1_uwvm_fourier_bridge_GetSnapshotRequest_wire_size(roswasmc_bounded_1_uwvm_fourier_bridge_GetSnapshotRequest const* value)
{
    size_t n = 0;
    n += 8;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_1_uwvm_fourier_bridge_GetSnapshotRequest_write_fields(roswasmc_bounded_1_uwvm_fourier_bridge_GetSnapshotRequest const* value,
                                                                           unsigned char* p,
                                                                           size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->sequence, 8);
    *offset += 8;
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_uwvm_fourier_bridge_GetSnapshotRequest_read_fields(unsigned char const* p,
                                                                                        size_t n,
                                                                                        size_t* offset,
                                                                                        roswasmc_bounded_1_uwvm_fourier_bridge_GetSnapshotRequest* value)
{
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->sequence, &bits, 8);
    }
    *offset += 8;
    return roswasmc_bounded_1_uwvm_fourier_bridge_GetSnapshotRequest_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_1_uwvm_fourier_bridge_GetSnapshotRequest_encode(roswasmc_bounded_1_uwvm_fourier_bridge_GetSnapshotRequest const* value,
                                                                                        void* output,
                                                                                        size_t capacity,
                                                                                        size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_uwvm_fourier_bridge_GetSnapshotRequest_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_uwvm_fourier_bridge_GetSnapshotRequest_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_uwvm_fourier_bridge_GetSnapshotRequest_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_1_uwvm_fourier_bridge_GetSnapshotRequest_decode(void const* input,
                                                                                        size_t length,
                                                                                        roswasmc_bounded_1_uwvm_fourier_bridge_GetSnapshotRequest* value)
{
    roswasmc_bounded_1_uwvm_fourier_bridge_GetSnapshotRequest next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 8u || length > 8u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_uwvm_fourier_bridge_GetSnapshotRequest_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GROUPSTATE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GROUPSTATE_0 != 0xfa58bb66UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GROUPSTATE_1 != 0x79fdefbcUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GROUPSTATE_2 != 0x97d4639cUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GROUPSTATE_3 != 0x0cf2dda0UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GROUPSTATE_4 != 0x354c42d8UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GROUPSTATE_5 != 0x9a63030aUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GROUPSTATE_6 != 0x3e46897bUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GROUPSTATE_7 != 0x5411adf7UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GROUPSTATE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GROUPSTATE_0 0xfa58bb66UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GROUPSTATE_1 0x79fdefbcUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GROUPSTATE_2 0x97d4639cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GROUPSTATE_3 0x0cf2dda0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GROUPSTATE_4 0x354c42d8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GROUPSTATE_5 0x9a63030aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GROUPSTATE_6 0x3e46897bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GROUPSTATE_7 0x5411adf7UL

/** UTF-8 byte storage for uwvm_fourier_bridge/GroupState.group; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_1_uwvm_fourier_bridge_GroupState_group_text;

/** At most64 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[64];
} roswasmc_bounded_1_uwvm_fourier_bridge_GroupState_position_sequence;

/** At most64 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[64];
} roswasmc_bounded_1_uwvm_fourier_bridge_GroupState_velocity_sequence;

/** At most64 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[64];
} roswasmc_bounded_1_uwvm_fourier_bridge_GroupState_effort_sequence;

/** Complete ROS1 uwvm_fourier_bridge/GroupState value; no field projects away native data. */
typedef struct roswasmc_bounded_1_uwvm_fourier_bridge_GroupState
{
    /** Declared field group; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_uwvm_fourier_bridge_GroupState_group_text group;
    /** Declared field position; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_uwvm_fourier_bridge_GroupState_position_sequence position;
    /** Declared field velocity; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_uwvm_fourier_bridge_GroupState_velocity_sequence velocity;
    /** Declared field effort; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_uwvm_fourier_bridge_GroupState_effort_sequence effort;
    /** Declared field motion_state; canonical capacity is part of CODEC_IDENTITY. */
    int32_t motion_state;
} roswasmc_bounded_1_uwvm_fourier_bridge_GroupState;

# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GROUPSTATE_MAX_WIRE_BYTES 1684u
# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GROUPSTATE_MIN_WIRE_BYTES 20u
# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GROUPSTATE_CODEC_IDENTITY "UWVMROS1_473838de7c48b3719be265fd7c7554bb35a8a1a111e2e9290953d6a660650855"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_uwvm_fourier_bridge_GroupState_valid(roswasmc_bounded_1_uwvm_fourier_bridge_GroupState const* value)
{
    if(!value)
        return 0;
    if(value->group.size > 128u || !uwvm_bounded_utf8(value->group.data, value->group.size))
        return 0;
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
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_1_uwvm_fourier_bridge_GroupState_wire_size(roswasmc_bounded_1_uwvm_fourier_bridge_GroupState const* value)
{
    size_t n = 0;
    n += 4 + value->group.size;
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
    n += 4;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_1_uwvm_fourier_bridge_GroupState_write_fields(roswasmc_bounded_1_uwvm_fourier_bridge_GroupState const* value,
                                                                                  unsigned char* p,
                                                                                  size_t* offset)
{
    uwvm_bounded_put(p + *offset, value->group.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->group.data, value->group.size);
    *offset += value->group.size;
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
    uwvm_bounded_put(p + *offset, (uint64_t)value->motion_state, 4);
    *offset += 4;
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_uwvm_fourier_bridge_GroupState_read_fields(unsigned char const* p,
                                                                                size_t n,
                                                                                size_t* offset,
                                                                                roswasmc_bounded_1_uwvm_fourier_bridge_GroupState* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    value->group.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->group.size > 128u || value->group.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->group.data, p + *offset, value->group.size);
    *offset += value->group.size;
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
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->motion_state, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_1_uwvm_fourier_bridge_GroupState_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_1_uwvm_fourier_bridge_GroupState_encode(roswasmc_bounded_1_uwvm_fourier_bridge_GroupState const* value,
                                                                                void* output,
                                                                                size_t capacity,
                                                                                size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_uwvm_fourier_bridge_GroupState_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_uwvm_fourier_bridge_GroupState_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_uwvm_fourier_bridge_GroupState_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_1_uwvm_fourier_bridge_GroupState_decode(void const* input, size_t length, roswasmc_bounded_1_uwvm_fourier_bridge_GroupState* value)
{
    roswasmc_bounded_1_uwvm_fourier_bridge_GroupState next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 20u || length > 1684u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_uwvm_fourier_bridge_GroupState_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_STATUS)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_STATUS_0 != 0x52363168UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_STATUS_1 != 0x6096b0bbUL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_STATUS_2 != 0x463b78dfUL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_STATUS_3 != 0x72b10210UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_STATUS_4 != 0x03d3f1f2UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_STATUS_5 != 0xbbd80819UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_STATUS_6 != 0x8955cebaUL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_STATUS_7 != 0xa41929eeUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_STATUS 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_STATUS_0 0x52363168UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_STATUS_1 0x6096b0bbUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_STATUS_2 0x463b78dfUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_STATUS_3 0x72b10210UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_STATUS_4 0x03d3f1f2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_STATUS_5 0xbbd80819UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_STATUS_6 0x8955cebaUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_STATUS_7 0xa41929eeUL

/** UTF-8 byte storage for uwvm_fourier_bridge/Status.fsm_name; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_1_uwvm_fourier_bridge_Status_fsm_name_text;

/** UTF-8 byte storage for uwvm_fourier_bridge/Status.upper_fsm_name; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_1_uwvm_fourier_bridge_Status_upper_fsm_name_text;

/** UTF-8 byte storage for uwvm_fourier_bridge/Status.velocity_source_name; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_1_uwvm_fourier_bridge_Status_velocity_source_name_text;

/** At most64 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[64];
} roswasmc_bounded_1_uwvm_fourier_bridge_Status_stand_pose_sequence;

/** At most8 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_1_uwvm_fourier_bridge_GroupState data[8];
} roswasmc_bounded_1_uwvm_fourier_bridge_Status_groups_sequence;

/** Complete ROS1 uwvm_fourier_bridge/Status value; no field projects away native data. */
typedef struct roswasmc_bounded_1_uwvm_fourier_bridge_Status
{
    /** Declared field fsm_state; canonical capacity is part of CODEC_IDENTITY. */
    int32_t fsm_state;
    /** Declared field fsm_name; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_uwvm_fourier_bridge_Status_fsm_name_text fsm_name;
    /** Declared field upper_fsm_state; canonical capacity is part of CODEC_IDENTITY. */
    int32_t upper_fsm_state;
    /** Declared field upper_fsm_name; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_uwvm_fourier_bridge_Status_upper_fsm_name_text upper_fsm_name;
    /** Declared field velocity_source; canonical capacity is part of CODEC_IDENTITY. */
    int32_t velocity_source;
    /** Declared field velocity_source_name; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_uwvm_fourier_bridge_Status_velocity_source_name_text velocity_source_name;
    /** Declared field stand_pose; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_uwvm_fourier_bridge_Status_stand_pose_sequence stand_pose;
    /** Declared field groups; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_uwvm_fourier_bridge_Status_groups_sequence groups;
} roswasmc_bounded_1_uwvm_fourier_bridge_Status;

# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_STATUS_MAX_WIRE_BYTES 14400u
# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_STATUS_MIN_WIRE_BYTES 32u
# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_STATUS_CODEC_IDENTITY "UWVMROS1_b08737c90dd86078c8ef968fc86b5b77562148b569cd8c271195c7b758190e3e"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_uwvm_fourier_bridge_Status_valid(roswasmc_bounded_1_uwvm_fourier_bridge_Status const* value)
{
    if(!value)
        return 0;
    if(value->fsm_name.size > 128u || !uwvm_bounded_utf8(value->fsm_name.data, value->fsm_name.size))
        return 0;
    if(value->upper_fsm_name.size > 128u || !uwvm_bounded_utf8(value->upper_fsm_name.data, value->upper_fsm_name.size))
        return 0;
    if(value->velocity_source_name.size > 128u || !uwvm_bounded_utf8(value->velocity_source_name.data, value->velocity_source_name.size))
        return 0;
    if(value->stand_pose.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->stand_pose.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->stand_pose.data[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                    return 0;
            }
        }
    }
    if(value->groups.size > 8u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->groups.size; ++i)
        {
            if(!roswasmc_bounded_1_uwvm_fourier_bridge_GroupState_valid(&value->groups.data[i]))
                return 0;
        }
    }
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_1_uwvm_fourier_bridge_Status_wire_size(roswasmc_bounded_1_uwvm_fourier_bridge_Status const* value)
{
    size_t n = 0;
    n += 4;
    n += 4 + value->fsm_name.size;
    n += 4;
    n += 4 + value->upper_fsm_name.size;
    n += 4;
    n += 4 + value->velocity_source_name.size;
    n += 4;
    if(value->stand_pose.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->stand_pose.size; ++i)
        {
            n += 8;
        }
    }
    n += 4;
    if(value->groups.size > 8u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->groups.size; ++i)
        {
            n += roswasmc_bounded_1_uwvm_fourier_bridge_GroupState_wire_size(&value->groups.data[i]);
        }
    }
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_1_uwvm_fourier_bridge_Status_write_fields(roswasmc_bounded_1_uwvm_fourier_bridge_Status const* value, unsigned char* p, size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->fsm_state, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, value->fsm_name.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->fsm_name.data, value->fsm_name.size);
    *offset += value->fsm_name.size;
    uwvm_bounded_put(p + *offset, (uint64_t)value->upper_fsm_state, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, value->upper_fsm_name.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->upper_fsm_name.data, value->upper_fsm_name.size);
    *offset += value->upper_fsm_name.size;
    uwvm_bounded_put(p + *offset, (uint64_t)value->velocity_source, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, value->velocity_source_name.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->velocity_source_name.data, value->velocity_source_name.size);
    *offset += value->velocity_source_name.size;
    uwvm_bounded_put(p + *offset, value->stand_pose.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->stand_pose.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->stand_pose.data[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
    uwvm_bounded_put(p + *offset, value->groups.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->groups.size; ++i)
        {
            roswasmc_bounded_1_uwvm_fourier_bridge_GroupState_write_fields(&value->groups.data[i], p, offset);
        }
    }
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_uwvm_fourier_bridge_Status_read_fields(unsigned char const* p,
                                                                            size_t n,
                                                                            size_t* offset,
                                                                            roswasmc_bounded_1_uwvm_fourier_bridge_Status* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->fsm_state, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->fsm_name.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->fsm_name.size > 128u || value->fsm_name.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->fsm_name.data, p + *offset, value->fsm_name.size);
    *offset += value->fsm_name.size;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->upper_fsm_state, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->upper_fsm_name.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->upper_fsm_name.size > 128u || value->upper_fsm_name.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->upper_fsm_name.data, p + *offset, value->upper_fsm_name.size);
    *offset += value->upper_fsm_name.size;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->velocity_source, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->velocity_source_name.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->velocity_source_name.size > 128u || value->velocity_source_name.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->velocity_source_name.data, p + *offset, value->velocity_source_name.size);
    *offset += value->velocity_source_name.size;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->stand_pose.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->stand_pose.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->stand_pose.size; ++i)
        {
            if(*offset > n || n - *offset < 8)
                return 0;
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->stand_pose.data[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    if(*offset > n || n - *offset < 4)
        return 0;
    value->groups.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->groups.size > 8u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->groups.size; ++i)
        {
            if(!roswasmc_bounded_1_uwvm_fourier_bridge_GroupState_read_fields(p, n, offset, &value->groups.data[i]))
                return 0;
        }
    }
    return roswasmc_bounded_1_uwvm_fourier_bridge_Status_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_1_uwvm_fourier_bridge_Status_encode(roswasmc_bounded_1_uwvm_fourier_bridge_Status const* value,
                                                                            void* output,
                                                                            size_t capacity,
                                                                            size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_uwvm_fourier_bridge_Status_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_uwvm_fourier_bridge_Status_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_uwvm_fourier_bridge_Status_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_1_uwvm_fourier_bridge_Status_decode(void const* input, size_t length, roswasmc_bounded_1_uwvm_fourier_bridge_Status* value)
{
    roswasmc_bounded_1_uwvm_fourier_bridge_Status next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 32u || length > 14400u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_uwvm_fourier_bridge_Status_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETSNAPSHOTRESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETSNAPSHOTRESPONSE_0 != 0x389c26f6UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETSNAPSHOTRESPONSE_1 != 0x7d25e2b2UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETSNAPSHOTRESPONSE_2 != 0x8aae76e7UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETSNAPSHOTRESPONSE_3 != 0x79bee7f7UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETSNAPSHOTRESPONSE_4 != 0x8cf34363UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETSNAPSHOTRESPONSE_5 != 0x0fd639f3UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETSNAPSHOTRESPONSE_6 != 0x7d16c691UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETSNAPSHOTRESPONSE_7 != 0x6be973cbUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETSNAPSHOTRESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETSNAPSHOTRESPONSE_0 0x389c26f6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETSNAPSHOTRESPONSE_1 0x7d25e2b2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETSNAPSHOTRESPONSE_2 0x8aae76e7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETSNAPSHOTRESPONSE_3 0x79bee7f7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETSNAPSHOTRESPONSE_4 0x8cf34363UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETSNAPSHOTRESPONSE_5 0x0fd639f3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETSNAPSHOTRESPONSE_6 0x7d16c691UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETSNAPSHOTRESPONSE_7 0x6be973cbUL

/** UTF-8 byte storage for uwvm_fourier_bridge/GetSnapshotResponse.error; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_1_uwvm_fourier_bridge_GetSnapshotResponse_error_text;

/** Complete ROS1 uwvm_fourier_bridge/GetSnapshotResponse value; no field projects away native data. */
typedef struct roswasmc_bounded_1_uwvm_fourier_bridge_GetSnapshotResponse
{
    /** Declared field status; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t status;
    /** Declared field error; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_uwvm_fourier_bridge_GetSnapshotResponse_error_text error;
    /** Declared field value; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_uwvm_fourier_bridge_Status value;
} roswasmc_bounded_1_uwvm_fourier_bridge_GetSnapshotResponse;

# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETSNAPSHOTRESPONSE_MAX_WIRE_BYTES 14536u
# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETSNAPSHOTRESPONSE_MIN_WIRE_BYTES 40u
# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETSNAPSHOTRESPONSE_CODEC_IDENTITY "UWVMROS1_3b8b79195d53d3e0d22ac318e8f0898cb774cfaed35bebbc5210288273137c6a"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_uwvm_fourier_bridge_GetSnapshotResponse_valid(roswasmc_bounded_1_uwvm_fourier_bridge_GetSnapshotResponse const* value)
{
    if(!value)
        return 0;
    if(value->error.size > 128u || !uwvm_bounded_utf8(value->error.data, value->error.size))
        return 0;
    if(!roswasmc_bounded_1_uwvm_fourier_bridge_Status_valid(&value->value))
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_1_uwvm_fourier_bridge_GetSnapshotResponse_wire_size(roswasmc_bounded_1_uwvm_fourier_bridge_GetSnapshotResponse const* value)
{
    size_t n = 0;
    n += 4;
    n += 4 + value->error.size;
    n += roswasmc_bounded_1_uwvm_fourier_bridge_Status_wire_size(&value->value);
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_1_uwvm_fourier_bridge_GetSnapshotResponse_write_fields(roswasmc_bounded_1_uwvm_fourier_bridge_GetSnapshotResponse const* value,
                                                                            unsigned char* p,
                                                                            size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->status, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, value->error.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->error.data, value->error.size);
    *offset += value->error.size;
    roswasmc_bounded_1_uwvm_fourier_bridge_Status_write_fields(&value->value, p, offset);
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_uwvm_fourier_bridge_GetSnapshotResponse_read_fields(unsigned char const* p,
                                                                                         size_t n,
                                                                                         size_t* offset,
                                                                                         roswasmc_bounded_1_uwvm_fourier_bridge_GetSnapshotResponse* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->status, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->error.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->error.size > 128u || value->error.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->error.data, p + *offset, value->error.size);
    *offset += value->error.size;
    if(!roswasmc_bounded_1_uwvm_fourier_bridge_Status_read_fields(p, n, offset, &value->value))
        return 0;
    return roswasmc_bounded_1_uwvm_fourier_bridge_GetSnapshotResponse_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_1_uwvm_fourier_bridge_GetSnapshotResponse_encode(roswasmc_bounded_1_uwvm_fourier_bridge_GetSnapshotResponse const* value,
                                                                      void* output,
                                                                      size_t capacity,
                                                                      size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_uwvm_fourier_bridge_GetSnapshotResponse_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_uwvm_fourier_bridge_GetSnapshotResponse_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_uwvm_fourier_bridge_GetSnapshotResponse_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_1_uwvm_fourier_bridge_GetSnapshotResponse_decode(void const* input,
                                                                                         size_t length,
                                                                                         roswasmc_bounded_1_uwvm_fourier_bridge_GetSnapshotResponse* value)
{
    roswasmc_bounded_1_uwvm_fourier_bridge_GetSnapshotResponse next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 40u || length > 14536u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_uwvm_fourier_bridge_GetSnapshotResponse_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETSTANDPOSEREQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETSTANDPOSEREQUEST_0 != 0x11e12141UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETSTANDPOSEREQUEST_1 != 0xc76a9f76UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETSTANDPOSEREQUEST_2 != 0x83eaa5e8UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETSTANDPOSEREQUEST_3 != 0x8656f42cUL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETSTANDPOSEREQUEST_4 != 0x00ef67cfUL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETSTANDPOSEREQUEST_5 != 0xa2b1a8ceUL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETSTANDPOSEREQUEST_6 != 0xb2095833UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETSTANDPOSEREQUEST_7 != 0xc7c11388UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETSTANDPOSEREQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETSTANDPOSEREQUEST_0 0x11e12141UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETSTANDPOSEREQUEST_1 0xc76a9f76UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETSTANDPOSEREQUEST_2 0x83eaa5e8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETSTANDPOSEREQUEST_3 0x8656f42cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETSTANDPOSEREQUEST_4 0x00ef67cfUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETSTANDPOSEREQUEST_5 0xa2b1a8ceUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETSTANDPOSEREQUEST_6 0xb2095833UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETSTANDPOSEREQUEST_7 0xc7c11388UL

/** Complete ROS1 uwvm_fourier_bridge/GetStandPoseRequest value; no field projects away native data. */
typedef struct roswasmc_bounded_1_uwvm_fourier_bridge_GetStandPoseRequest
{
    /** Declared field sequence; canonical capacity is part of CODEC_IDENTITY. */
    uint64_t sequence;
} roswasmc_bounded_1_uwvm_fourier_bridge_GetStandPoseRequest;

# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETSTANDPOSEREQUEST_MAX_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETSTANDPOSEREQUEST_MIN_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETSTANDPOSEREQUEST_CODEC_IDENTITY "UWVMROS1_5c3b18c383a9a9a162bf3b656007f56e791c26125e0dc59fd8dc87bd3ef54738"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_uwvm_fourier_bridge_GetStandPoseRequest_valid(roswasmc_bounded_1_uwvm_fourier_bridge_GetStandPoseRequest const* value)
{
    if(!value)
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_1_uwvm_fourier_bridge_GetStandPoseRequest_wire_size(roswasmc_bounded_1_uwvm_fourier_bridge_GetStandPoseRequest const* value)
{
    size_t n = 0;
    n += 8;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_1_uwvm_fourier_bridge_GetStandPoseRequest_write_fields(roswasmc_bounded_1_uwvm_fourier_bridge_GetStandPoseRequest const* value,
                                                                            unsigned char* p,
                                                                            size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->sequence, 8);
    *offset += 8;
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_uwvm_fourier_bridge_GetStandPoseRequest_read_fields(unsigned char const* p,
                                                                                         size_t n,
                                                                                         size_t* offset,
                                                                                         roswasmc_bounded_1_uwvm_fourier_bridge_GetStandPoseRequest* value)
{
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->sequence, &bits, 8);
    }
    *offset += 8;
    return roswasmc_bounded_1_uwvm_fourier_bridge_GetStandPoseRequest_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_1_uwvm_fourier_bridge_GetStandPoseRequest_encode(roswasmc_bounded_1_uwvm_fourier_bridge_GetStandPoseRequest const* value,
                                                                      void* output,
                                                                      size_t capacity,
                                                                      size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_uwvm_fourier_bridge_GetStandPoseRequest_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_uwvm_fourier_bridge_GetStandPoseRequest_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_uwvm_fourier_bridge_GetStandPoseRequest_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_1_uwvm_fourier_bridge_GetStandPoseRequest_decode(void const* input,
                                                                                         size_t length,
                                                                                         roswasmc_bounded_1_uwvm_fourier_bridge_GetStandPoseRequest* value)
{
    roswasmc_bounded_1_uwvm_fourier_bridge_GetStandPoseRequest next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 8u || length > 8u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_uwvm_fourier_bridge_GetStandPoseRequest_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETSTANDPOSERESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETSTANDPOSERESPONSE_0 != 0xdc0a5103UL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETSTANDPOSERESPONSE_1 != 0xa3ec2dd3UL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETSTANDPOSERESPONSE_2 != 0xa59c32e0UL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETSTANDPOSERESPONSE_3 != 0xbfc2ce4eUL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETSTANDPOSERESPONSE_4 != 0x7f315110UL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETSTANDPOSERESPONSE_5 != 0x1f7803cbUL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETSTANDPOSERESPONSE_6 != 0x92a2c69fUL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETSTANDPOSERESPONSE_7 != 0x1e9b05ebUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETSTANDPOSERESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETSTANDPOSERESPONSE_0 0xdc0a5103UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETSTANDPOSERESPONSE_1 0xa3ec2dd3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETSTANDPOSERESPONSE_2 0xa59c32e0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETSTANDPOSERESPONSE_3 0xbfc2ce4eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETSTANDPOSERESPONSE_4 0x7f315110UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETSTANDPOSERESPONSE_5 0x1f7803cbUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETSTANDPOSERESPONSE_6 0x92a2c69fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETSTANDPOSERESPONSE_7 0x1e9b05ebUL

/** UTF-8 byte storage for uwvm_fourier_bridge/GetStandPoseResponse.error; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_1_uwvm_fourier_bridge_GetStandPoseResponse_error_text;

/** At most64 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[64];
} roswasmc_bounded_1_uwvm_fourier_bridge_GetStandPoseResponse_values_sequence;

/** Complete ROS1 uwvm_fourier_bridge/GetStandPoseResponse value; no field projects away native data. */
typedef struct roswasmc_bounded_1_uwvm_fourier_bridge_GetStandPoseResponse
{
    /** Declared field status; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t status;
    /** Declared field error; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_uwvm_fourier_bridge_GetStandPoseResponse_error_text error;
    /** Declared field values; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_uwvm_fourier_bridge_GetStandPoseResponse_values_sequence values;
} roswasmc_bounded_1_uwvm_fourier_bridge_GetStandPoseResponse;

# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETSTANDPOSERESPONSE_MAX_WIRE_BYTES 652u
# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETSTANDPOSERESPONSE_MIN_WIRE_BYTES 12u
# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETSTANDPOSERESPONSE_CODEC_IDENTITY "UWVMROS1_302692ae2e86c23efb3edf132e0b7a6e48fc2072a34bb941039db459f99cd15d"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_uwvm_fourier_bridge_GetStandPoseResponse_valid(roswasmc_bounded_1_uwvm_fourier_bridge_GetStandPoseResponse const* value)
{
    if(!value)
        return 0;
    if(value->error.size > 128u || !uwvm_bounded_utf8(value->error.data, value->error.size))
        return 0;
    if(value->values.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->values.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->values.data[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                    return 0;
            }
        }
    }
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_1_uwvm_fourier_bridge_GetStandPoseResponse_wire_size(roswasmc_bounded_1_uwvm_fourier_bridge_GetStandPoseResponse const* value)
{
    size_t n = 0;
    n += 4;
    n += 4 + value->error.size;
    n += 4;
    if(value->values.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->values.size; ++i)
        {
            n += 8;
        }
    }
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_1_uwvm_fourier_bridge_GetStandPoseResponse_write_fields(roswasmc_bounded_1_uwvm_fourier_bridge_GetStandPoseResponse const* value,
                                                                             unsigned char* p,
                                                                             size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->status, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, value->error.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->error.data, value->error.size);
    *offset += value->error.size;
    uwvm_bounded_put(p + *offset, value->values.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->values.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->values.data[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_uwvm_fourier_bridge_GetStandPoseResponse_read_fields(unsigned char const* p,
                                                                                          size_t n,
                                                                                          size_t* offset,
                                                                                          roswasmc_bounded_1_uwvm_fourier_bridge_GetStandPoseResponse* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->status, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->error.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->error.size > 128u || value->error.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->error.data, p + *offset, value->error.size);
    *offset += value->error.size;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->values.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->values.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->values.size; ++i)
        {
            if(*offset > n || n - *offset < 8)
                return 0;
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->values.data[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    return roswasmc_bounded_1_uwvm_fourier_bridge_GetStandPoseResponse_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_1_uwvm_fourier_bridge_GetStandPoseResponse_encode(roswasmc_bounded_1_uwvm_fourier_bridge_GetStandPoseResponse const* value,
                                                                       void* output,
                                                                       size_t capacity,
                                                                       size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_uwvm_fourier_bridge_GetStandPoseResponse_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_uwvm_fourier_bridge_GetStandPoseResponse_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_uwvm_fourier_bridge_GetStandPoseResponse_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_1_uwvm_fourier_bridge_GetStandPoseResponse_decode(void const* input,
                                                                                          size_t length,
                                                                                          roswasmc_bounded_1_uwvm_fourier_bridge_GetStandPoseResponse* value)
{
    roswasmc_bounded_1_uwvm_fourier_bridge_GetStandPoseResponse next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 12u || length > 652u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_uwvm_fourier_bridge_GetStandPoseResponse_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETUPPERFSMNAMEREQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETUPPERFSMNAMEREQUEST_0 != 0xfbf249d7UL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETUPPERFSMNAMEREQUEST_1 != 0xac810fe5UL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETUPPERFSMNAMEREQUEST_2 != 0x35170ea3UL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETUPPERFSMNAMEREQUEST_3 != 0x782e6e57UL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETUPPERFSMNAMEREQUEST_4 != 0xf6e36ea9UL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETUPPERFSMNAMEREQUEST_5 != 0x5ad0d06cUL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETUPPERFSMNAMEREQUEST_6 != 0xbf1bb81fUL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETUPPERFSMNAMEREQUEST_7 != 0x23af57ffUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETUPPERFSMNAMEREQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETUPPERFSMNAMEREQUEST_0 0xfbf249d7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETUPPERFSMNAMEREQUEST_1 0xac810fe5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETUPPERFSMNAMEREQUEST_2 0x35170ea3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETUPPERFSMNAMEREQUEST_3 0x782e6e57UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETUPPERFSMNAMEREQUEST_4 0xf6e36ea9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETUPPERFSMNAMEREQUEST_5 0x5ad0d06cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETUPPERFSMNAMEREQUEST_6 0xbf1bb81fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETUPPERFSMNAMEREQUEST_7 0x23af57ffUL

/** Complete ROS1 uwvm_fourier_bridge/GetUpperFsmNameRequest value; no field projects away native data. */
typedef struct roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmNameRequest
{
    /** Declared field sequence; canonical capacity is part of CODEC_IDENTITY. */
    uint64_t sequence;
} roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmNameRequest;

# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETUPPERFSMNAMEREQUEST_MAX_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETUPPERFSMNAMEREQUEST_MIN_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETUPPERFSMNAMEREQUEST_CODEC_IDENTITY                                                                          \
     "UWVMROS1_57fbba93abe5e136ae1522ad47155377e8a55ddaa3f02793e8a605e3b596115a"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int
    roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmNameRequest_valid(roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmNameRequest const* value)
{
    if(!value)
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmNameRequest_wire_size(roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmNameRequest const* value)
{
    size_t n = 0;
    n += 8;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmNameRequest_write_fields(roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmNameRequest const* value,
                                                                               unsigned char* p,
                                                                               size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->sequence, 8);
    *offset += 8;
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int
    roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmNameRequest_read_fields(unsigned char const* p,
                                                                              size_t n,
                                                                              size_t* offset,
                                                                              roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmNameRequest* value)
{
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->sequence, &bits, 8);
    }
    *offset += 8;
    return roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmNameRequest_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmNameRequest_encode(roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmNameRequest const* value,
                                                                         void* output,
                                                                         size_t capacity,
                                                                         size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmNameRequest_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmNameRequest_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmNameRequest_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmNameRequest_decode(void const* input,
                                                                         size_t length,
                                                                         roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmNameRequest* value)
{
    roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmNameRequest next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 8u || length > 8u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmNameRequest_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETUPPERFSMNAMERESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETUPPERFSMNAMERESPONSE_0 != 0x3daee2dcUL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETUPPERFSMNAMERESPONSE_1 != 0x592303c2UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETUPPERFSMNAMERESPONSE_2 != 0xe76d81b5UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETUPPERFSMNAMERESPONSE_3 != 0x9a00049aUL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETUPPERFSMNAMERESPONSE_4 != 0x33eb9643UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETUPPERFSMNAMERESPONSE_5 != 0xa2023e49UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETUPPERFSMNAMERESPONSE_6 != 0x6e8c69b3UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETUPPERFSMNAMERESPONSE_7 != 0x526b1abeUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETUPPERFSMNAMERESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETUPPERFSMNAMERESPONSE_0 0x3daee2dcUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETUPPERFSMNAMERESPONSE_1 0x592303c2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETUPPERFSMNAMERESPONSE_2 0xe76d81b5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETUPPERFSMNAMERESPONSE_3 0x9a00049aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETUPPERFSMNAMERESPONSE_4 0x33eb9643UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETUPPERFSMNAMERESPONSE_5 0xa2023e49UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETUPPERFSMNAMERESPONSE_6 0x6e8c69b3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETUPPERFSMNAMERESPONSE_7 0x526b1abeUL

/** UTF-8 byte storage for uwvm_fourier_bridge/GetUpperFsmNameResponse.error; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmNameResponse_error_text;

/** UTF-8 byte storage for uwvm_fourier_bridge/GetUpperFsmNameResponse.value; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmNameResponse_value_text;

/** Complete ROS1 uwvm_fourier_bridge/GetUpperFsmNameResponse value; no field projects away native data. */
typedef struct roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmNameResponse
{
    /** Declared field status; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t status;
    /** Declared field error; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmNameResponse_error_text error;
    /** Declared field value; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmNameResponse_value_text value;
} roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmNameResponse;

# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETUPPERFSMNAMERESPONSE_MAX_WIRE_BYTES 268u
# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETUPPERFSMNAMERESPONSE_MIN_WIRE_BYTES 12u
# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETUPPERFSMNAMERESPONSE_CODEC_IDENTITY                                                                         \
     "UWVMROS1_e98befbd1c290a3cb2c99facb33334ac0d908db39247d869d0715c024e75c7fe"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int
    roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmNameResponse_valid(roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmNameResponse const* value)
{
    if(!value)
        return 0;
    if(value->error.size > 128u || !uwvm_bounded_utf8(value->error.data, value->error.size))
        return 0;
    if(value->value.size > 128u || !uwvm_bounded_utf8(value->value.data, value->value.size))
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmNameResponse_wire_size(roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmNameResponse const* value)
{
    size_t n = 0;
    n += 4;
    n += 4 + value->error.size;
    n += 4 + value->value.size;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmNameResponse_write_fields(roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmNameResponse const* value,
                                                                                unsigned char* p,
                                                                                size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->status, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, value->error.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->error.data, value->error.size);
    *offset += value->error.size;
    uwvm_bounded_put(p + *offset, value->value.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->value.data, value->value.size);
    *offset += value->value.size;
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int
    roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmNameResponse_read_fields(unsigned char const* p,
                                                                               size_t n,
                                                                               size_t* offset,
                                                                               roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmNameResponse* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->status, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->error.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->error.size > 128u || value->error.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->error.data, p + *offset, value->error.size);
    *offset += value->error.size;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->value.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->value.size > 128u || value->value.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->value.data, p + *offset, value->value.size);
    *offset += value->value.size;
    return roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmNameResponse_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmNameResponse_encode(roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmNameResponse const* value,
                                                                          void* output,
                                                                          size_t capacity,
                                                                          size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmNameResponse_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmNameResponse_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmNameResponse_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmNameResponse_decode(void const* input,
                                                                          size_t length,
                                                                          roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmNameResponse* value)
{
    roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmNameResponse next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 12u || length > 268u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmNameResponse_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETUPPERFSMSTATEREQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETUPPERFSMSTATEREQUEST_0 != 0x514ddc6aUL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETUPPERFSMSTATEREQUEST_1 != 0xd2a53ae2UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETUPPERFSMSTATEREQUEST_2 != 0xfa935e4eUL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETUPPERFSMSTATEREQUEST_3 != 0xb3532b21UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETUPPERFSMSTATEREQUEST_4 != 0x8e653905UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETUPPERFSMSTATEREQUEST_5 != 0x9e08fdcaUL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETUPPERFSMSTATEREQUEST_6 != 0xc3ff07f2UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETUPPERFSMSTATEREQUEST_7 != 0x2686c334UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETUPPERFSMSTATEREQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETUPPERFSMSTATEREQUEST_0 0x514ddc6aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETUPPERFSMSTATEREQUEST_1 0xd2a53ae2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETUPPERFSMSTATEREQUEST_2 0xfa935e4eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETUPPERFSMSTATEREQUEST_3 0xb3532b21UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETUPPERFSMSTATEREQUEST_4 0x8e653905UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETUPPERFSMSTATEREQUEST_5 0x9e08fdcaUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETUPPERFSMSTATEREQUEST_6 0xc3ff07f2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETUPPERFSMSTATEREQUEST_7 0x2686c334UL

/** Complete ROS1 uwvm_fourier_bridge/GetUpperFsmStateRequest value; no field projects away native data. */
typedef struct roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmStateRequest
{
    /** Declared field sequence; canonical capacity is part of CODEC_IDENTITY. */
    uint64_t sequence;
} roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmStateRequest;

# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETUPPERFSMSTATEREQUEST_MAX_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETUPPERFSMSTATEREQUEST_MIN_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETUPPERFSMSTATEREQUEST_CODEC_IDENTITY                                                                         \
     "UWVMROS1_d38f791d76cec09de5bfa0b32d88d987ec3b077408682519f4c23940c4af0d12"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int
    roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmStateRequest_valid(roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmStateRequest const* value)
{
    if(!value)
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmStateRequest_wire_size(roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmStateRequest const* value)
{
    size_t n = 0;
    n += 8;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmStateRequest_write_fields(roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmStateRequest const* value,
                                                                                unsigned char* p,
                                                                                size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->sequence, 8);
    *offset += 8;
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int
    roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmStateRequest_read_fields(unsigned char const* p,
                                                                               size_t n,
                                                                               size_t* offset,
                                                                               roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmStateRequest* value)
{
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->sequence, &bits, 8);
    }
    *offset += 8;
    return roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmStateRequest_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmStateRequest_encode(roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmStateRequest const* value,
                                                                          void* output,
                                                                          size_t capacity,
                                                                          size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmStateRequest_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmStateRequest_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmStateRequest_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmStateRequest_decode(void const* input,
                                                                          size_t length,
                                                                          roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmStateRequest* value)
{
    roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmStateRequest next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 8u || length > 8u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmStateRequest_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETUPPERFSMSTATERESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETUPPERFSMSTATERESPONSE_0 != 0x7714b228UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETUPPERFSMSTATERESPONSE_1 != 0x31cc8a1eUL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETUPPERFSMSTATERESPONSE_2 != 0x5b78b3ceUL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETUPPERFSMSTATERESPONSE_3 != 0x52203e53UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETUPPERFSMSTATERESPONSE_4 != 0x8a454b12UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETUPPERFSMSTATERESPONSE_5 != 0x4b71e038UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETUPPERFSMSTATERESPONSE_6 != 0x414f4a45UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETUPPERFSMSTATERESPONSE_7 != 0x8149d77dUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETUPPERFSMSTATERESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETUPPERFSMSTATERESPONSE_0 0x7714b228UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETUPPERFSMSTATERESPONSE_1 0x31cc8a1eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETUPPERFSMSTATERESPONSE_2 0x5b78b3ceUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETUPPERFSMSTATERESPONSE_3 0x52203e53UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETUPPERFSMSTATERESPONSE_4 0x8a454b12UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETUPPERFSMSTATERESPONSE_5 0x4b71e038UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETUPPERFSMSTATERESPONSE_6 0x414f4a45UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETUPPERFSMSTATERESPONSE_7 0x8149d77dUL

/** UTF-8 byte storage for uwvm_fourier_bridge/GetUpperFsmStateResponse.error; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmStateResponse_error_text;

/** Complete ROS1 uwvm_fourier_bridge/GetUpperFsmStateResponse value; no field projects away native data. */
typedef struct roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmStateResponse
{
    /** Declared field status; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t status;
    /** Declared field error; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmStateResponse_error_text error;
    /** Declared field value; canonical capacity is part of CODEC_IDENTITY. */
    int32_t value;
} roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmStateResponse;

# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETUPPERFSMSTATERESPONSE_MAX_WIRE_BYTES 140u
# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETUPPERFSMSTATERESPONSE_MIN_WIRE_BYTES 12u
# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETUPPERFSMSTATERESPONSE_CODEC_IDENTITY                                                                        \
     "UWVMROS1_3864ff479fa6b85dffd39e772e3260f9e5094cf8179f98c2184a09971d577e71"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int
    roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmStateResponse_valid(roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmStateResponse const* value)
{
    if(!value)
        return 0;
    if(value->error.size > 128u || !uwvm_bounded_utf8(value->error.data, value->error.size))
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmStateResponse_wire_size(roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmStateResponse const* value)
{
    size_t n = 0;
    n += 4;
    n += 4 + value->error.size;
    n += 4;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmStateResponse_write_fields(roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmStateResponse const* value,
                                                                                 unsigned char* p,
                                                                                 size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->status, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, value->error.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->error.data, value->error.size);
    *offset += value->error.size;
    uwvm_bounded_put(p + *offset, (uint64_t)value->value, 4);
    *offset += 4;
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int
    roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmStateResponse_read_fields(unsigned char const* p,
                                                                                size_t n,
                                                                                size_t* offset,
                                                                                roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmStateResponse* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->status, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->error.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->error.size > 128u || value->error.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->error.data, p + *offset, value->error.size);
    *offset += value->error.size;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->value, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmStateResponse_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmStateResponse_encode(roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmStateResponse const* value,
                                                                           void* output,
                                                                           size_t capacity,
                                                                           size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmStateResponse_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmStateResponse_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmStateResponse_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmStateResponse_decode(void const* input,
                                                                           size_t length,
                                                                           roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmStateResponse* value)
{
    roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmStateResponse next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 12u || length > 140u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_uwvm_fourier_bridge_GetUpperFsmStateResponse_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETVELOCITYSOURCEREQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETVELOCITYSOURCEREQUEST_0 != 0xc08adf26UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETVELOCITYSOURCEREQUEST_1 != 0xcf4dfeb1UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETVELOCITYSOURCEREQUEST_2 != 0x881e574eUL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETVELOCITYSOURCEREQUEST_3 != 0xf0073a23UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETVELOCITYSOURCEREQUEST_4 != 0xc90390e7UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETVELOCITYSOURCEREQUEST_5 != 0x9c9afbccUL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETVELOCITYSOURCEREQUEST_6 != 0x74ad0605UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETVELOCITYSOURCEREQUEST_7 != 0xb1bbd0f0UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETVELOCITYSOURCEREQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETVELOCITYSOURCEREQUEST_0 0xc08adf26UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETVELOCITYSOURCEREQUEST_1 0xcf4dfeb1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETVELOCITYSOURCEREQUEST_2 0x881e574eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETVELOCITYSOURCEREQUEST_3 0xf0073a23UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETVELOCITYSOURCEREQUEST_4 0xc90390e7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETVELOCITYSOURCEREQUEST_5 0x9c9afbccUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETVELOCITYSOURCEREQUEST_6 0x74ad0605UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETVELOCITYSOURCEREQUEST_7 0xb1bbd0f0UL

/** Complete ROS1 uwvm_fourier_bridge/GetVelocitySourceRequest value; no field projects away native data. */
typedef struct roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceRequest
{
    /** Declared field sequence; canonical capacity is part of CODEC_IDENTITY. */
    uint64_t sequence;
} roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceRequest;

# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETVELOCITYSOURCEREQUEST_MAX_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETVELOCITYSOURCEREQUEST_MIN_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETVELOCITYSOURCEREQUEST_CODEC_IDENTITY                                                                        \
     "UWVMROS1_e38af8b3fc5b65c6f364f5949b42d694d7012d32d900f55e08b87d08bcf83042"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int
    roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceRequest_valid(roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceRequest const* value)
{
    if(!value)
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceRequest_wire_size(roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceRequest const* value)
{
    size_t n = 0;
    n += 8;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceRequest_write_fields(roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceRequest const* value,
                                                                                 unsigned char* p,
                                                                                 size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->sequence, 8);
    *offset += 8;
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int
    roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceRequest_read_fields(unsigned char const* p,
                                                                                size_t n,
                                                                                size_t* offset,
                                                                                roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceRequest* value)
{
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->sequence, &bits, 8);
    }
    *offset += 8;
    return roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceRequest_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceRequest_encode(roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceRequest const* value,
                                                                           void* output,
                                                                           size_t capacity,
                                                                           size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceRequest_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceRequest_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceRequest_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceRequest_decode(void const* input,
                                                                           size_t length,
                                                                           roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceRequest* value)
{
    roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceRequest next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 8u || length > 8u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceRequest_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETVELOCITYSOURCERESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETVELOCITYSOURCERESPONSE_0 != 0xe8fe1593UL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETVELOCITYSOURCERESPONSE_1 != 0x069d8894UL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETVELOCITYSOURCERESPONSE_2 != 0x5d349011UL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETVELOCITYSOURCERESPONSE_3 != 0x6b4baacfUL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETVELOCITYSOURCERESPONSE_4 != 0x61b6f534UL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETVELOCITYSOURCERESPONSE_5 != 0x310fec2eUL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETVELOCITYSOURCERESPONSE_6 != 0x83baccd1UL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETVELOCITYSOURCERESPONSE_7 != 0x9f250417UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETVELOCITYSOURCERESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETVELOCITYSOURCERESPONSE_0 0xe8fe1593UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETVELOCITYSOURCERESPONSE_1 0x069d8894UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETVELOCITYSOURCERESPONSE_2 0x5d349011UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETVELOCITYSOURCERESPONSE_3 0x6b4baacfUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETVELOCITYSOURCERESPONSE_4 0x61b6f534UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETVELOCITYSOURCERESPONSE_5 0x310fec2eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETVELOCITYSOURCERESPONSE_6 0x83baccd1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETVELOCITYSOURCERESPONSE_7 0x9f250417UL

/** UTF-8 byte storage for uwvm_fourier_bridge/GetVelocitySourceResponse.error; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceResponse_error_text;

/** Complete ROS1 uwvm_fourier_bridge/GetVelocitySourceResponse value; no field projects away native data. */
typedef struct roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceResponse
{
    /** Declared field status; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t status;
    /** Declared field error; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceResponse_error_text error;
    /** Declared field value; canonical capacity is part of CODEC_IDENTITY. */
    int32_t value;
} roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceResponse;

# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETVELOCITYSOURCERESPONSE_MAX_WIRE_BYTES 140u
# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETVELOCITYSOURCERESPONSE_MIN_WIRE_BYTES 12u
# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETVELOCITYSOURCERESPONSE_CODEC_IDENTITY                                                                       \
     "UWVMROS1_5bf809b889573acff549030cda017455303b009379d495aa7c3ab4399c862f60"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int
    roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceResponse_valid(roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceResponse const* value)
{
    if(!value)
        return 0;
    if(value->error.size > 128u || !uwvm_bounded_utf8(value->error.data, value->error.size))
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceResponse_wire_size(roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceResponse const* value)
{
    size_t n = 0;
    n += 4;
    n += 4 + value->error.size;
    n += 4;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceResponse_write_fields(roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceResponse const* value,
                                                                                  unsigned char* p,
                                                                                  size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->status, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, value->error.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->error.data, value->error.size);
    *offset += value->error.size;
    uwvm_bounded_put(p + *offset, (uint64_t)value->value, 4);
    *offset += 4;
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int
    roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceResponse_read_fields(unsigned char const* p,
                                                                                 size_t n,
                                                                                 size_t* offset,
                                                                                 roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceResponse* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->status, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->error.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->error.size > 128u || value->error.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->error.data, p + *offset, value->error.size);
    *offset += value->error.size;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->value, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceResponse_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceResponse_encode(roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceResponse const* value,
                                                                            void* output,
                                                                            size_t capacity,
                                                                            size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceResponse_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceResponse_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceResponse_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceResponse_decode(void const* input,
                                                                            size_t length,
                                                                            roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceResponse* value)
{
    roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceResponse next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 12u || length > 140u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceResponse_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETVELOCITYSOURCENAMEREQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETVELOCITYSOURCENAMEREQUEST_0 != 0x557eb2b1UL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETVELOCITYSOURCENAMEREQUEST_1 != 0x8007bca1UL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETVELOCITYSOURCENAMEREQUEST_2 != 0xb4f7d8b6UL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETVELOCITYSOURCENAMEREQUEST_3 != 0x7d6abf67UL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETVELOCITYSOURCENAMEREQUEST_4 != 0x67ae8e0fUL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETVELOCITYSOURCENAMEREQUEST_5 != 0xfefafe0aUL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETVELOCITYSOURCENAMEREQUEST_6 != 0x5ace6da0UL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETVELOCITYSOURCENAMEREQUEST_7 != 0x7aada9adUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETVELOCITYSOURCENAMEREQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETVELOCITYSOURCENAMEREQUEST_0 0x557eb2b1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETVELOCITYSOURCENAMEREQUEST_1 0x8007bca1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETVELOCITYSOURCENAMEREQUEST_2 0xb4f7d8b6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETVELOCITYSOURCENAMEREQUEST_3 0x7d6abf67UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETVELOCITYSOURCENAMEREQUEST_4 0x67ae8e0fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETVELOCITYSOURCENAMEREQUEST_5 0xfefafe0aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETVELOCITYSOURCENAMEREQUEST_6 0x5ace6da0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETVELOCITYSOURCENAMEREQUEST_7 0x7aada9adUL

/** Complete ROS1 uwvm_fourier_bridge/GetVelocitySourceNameRequest value; no field projects away native data. */
typedef struct roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceNameRequest
{
    /** Declared field sequence; canonical capacity is part of CODEC_IDENTITY. */
    uint64_t sequence;
} roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceNameRequest;

# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETVELOCITYSOURCENAMEREQUEST_MAX_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETVELOCITYSOURCENAMEREQUEST_MIN_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETVELOCITYSOURCENAMEREQUEST_CODEC_IDENTITY                                                                    \
     "UWVMROS1_a880cea6f506d0670df709e9e86726272e242bd969b5917a9698efa2f6dd897b"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int
    roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceNameRequest_valid(roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceNameRequest const* value)
{
    if(!value)
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceNameRequest_wire_size(
    roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceNameRequest const* value)
{
    size_t n = 0;
    n += 8;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceNameRequest_write_fields(
    roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceNameRequest const* value,
    unsigned char* p,
    size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->sequence, 8);
    *offset += 8;
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int
    roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceNameRequest_read_fields(unsigned char const* p,
                                                                                    size_t n,
                                                                                    size_t* offset,
                                                                                    roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceNameRequest* value)
{
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->sequence, &bits, 8);
    }
    *offset += 8;
    return roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceNameRequest_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceNameRequest_encode(roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceNameRequest const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceNameRequest_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceNameRequest_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceNameRequest_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceNameRequest_decode(void const* input,
                                                                               size_t length,
                                                                               roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceNameRequest* value)
{
    roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceNameRequest next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 8u || length > 8u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceNameRequest_read_fields((unsigned char const*)input, length, &offset, &next) ||
       offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETVELOCITYSOURCENAMERESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETVELOCITYSOURCENAMERESPONSE_0 != 0xf362a5bfUL ||                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETVELOCITYSOURCENAMERESPONSE_1 != 0x2ca077c9UL ||                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETVELOCITYSOURCENAMERESPONSE_2 != 0xc324c25eUL ||                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETVELOCITYSOURCENAMERESPONSE_3 != 0x1275a2c2UL ||                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETVELOCITYSOURCENAMERESPONSE_4 != 0x36484b9bUL ||                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETVELOCITYSOURCENAMERESPONSE_5 != 0xc06fa831UL ||                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETVELOCITYSOURCENAMERESPONSE_6 != 0x5f00b0aeUL ||                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETVELOCITYSOURCENAMERESPONSE_7 != 0x3e31c44eUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETVELOCITYSOURCENAMERESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETVELOCITYSOURCENAMERESPONSE_0 0xf362a5bfUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETVELOCITYSOURCENAMERESPONSE_1 0x2ca077c9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETVELOCITYSOURCENAMERESPONSE_2 0xc324c25eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETVELOCITYSOURCENAMERESPONSE_3 0x1275a2c2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETVELOCITYSOURCENAMERESPONSE_4 0x36484b9bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETVELOCITYSOURCENAMERESPONSE_5 0xc06fa831UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETVELOCITYSOURCENAMERESPONSE_6 0x5f00b0aeUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETVELOCITYSOURCENAMERESPONSE_7 0x3e31c44eUL

/** UTF-8 byte storage for uwvm_fourier_bridge/GetVelocitySourceNameResponse.error; size excludes padding/terminators.
 */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceNameResponse_error_text;

/** UTF-8 byte storage for uwvm_fourier_bridge/GetVelocitySourceNameResponse.value; size excludes padding/terminators.
 */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceNameResponse_value_text;

/** Complete ROS1 uwvm_fourier_bridge/GetVelocitySourceNameResponse value; no field projects away native data. */
typedef struct roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceNameResponse
{
    /** Declared field status; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t status;
    /** Declared field error; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceNameResponse_error_text error;
    /** Declared field value; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceNameResponse_value_text value;
} roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceNameResponse;

# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETVELOCITYSOURCENAMERESPONSE_MAX_WIRE_BYTES 268u
# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETVELOCITYSOURCENAMERESPONSE_MIN_WIRE_BYTES 12u
# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GETVELOCITYSOURCENAMERESPONSE_CODEC_IDENTITY                                                                   \
     "UWVMROS1_4b746944429d7c07719da06a13b9a396dff3b51167894309e8cf46f64f049a9b"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceNameResponse_valid(
    roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceNameResponse const* value)
{
    if(!value)
        return 0;
    if(value->error.size > 128u || !uwvm_bounded_utf8(value->error.data, value->error.size))
        return 0;
    if(value->value.size > 128u || !uwvm_bounded_utf8(value->value.data, value->value.size))
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceNameResponse_wire_size(
    roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceNameResponse const* value)
{
    size_t n = 0;
    n += 4;
    n += 4 + value->error.size;
    n += 4 + value->value.size;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceNameResponse_write_fields(
    roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceNameResponse const* value,
    unsigned char* p,
    size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->status, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, value->error.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->error.data, value->error.size);
    *offset += value->error.size;
    uwvm_bounded_put(p + *offset, value->value.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->value.data, value->value.size);
    *offset += value->value.size;
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceNameResponse_read_fields(
    unsigned char const* p,
    size_t n,
    size_t* offset,
    roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceNameResponse* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->status, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->error.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->error.size > 128u || value->error.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->error.data, p + *offset, value->error.size);
    *offset += value->error.size;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->value.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->value.size > 128u || value->value.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->value.data, p + *offset, value->value.size);
    *offset += value->value.size;
    return roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceNameResponse_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceNameResponse_encode(
    roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceNameResponse const* value,
    void* output,
    size_t capacity,
    size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceNameResponse_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceNameResponse_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceNameResponse_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceNameResponse_decode(void const* input,
                                                                                size_t length,
                                                                                roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceNameResponse* value)
{
    roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceNameResponse next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 12u || length > 268u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_uwvm_fourier_bridge_GetVelocitySourceNameResponse_read_fields((unsigned char const*)input, length, &offset, &next) ||
       offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GROUPVALUES)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GROUPVALUES_0 != 0xbedf6d83UL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GROUPVALUES_1 != 0x9df0bf20UL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GROUPVALUES_2 != 0x62246846UL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GROUPVALUES_3 != 0xe84827abUL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GROUPVALUES_4 != 0xa91dac3fUL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GROUPVALUES_5 != 0x77ecf1bfUL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GROUPVALUES_6 != 0x31b376a8UL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GROUPVALUES_7 != 0x191203b5UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GROUPVALUES 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GROUPVALUES_0 0xbedf6d83UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GROUPVALUES_1 0x9df0bf20UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GROUPVALUES_2 0x62246846UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GROUPVALUES_3 0xe84827abUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GROUPVALUES_4 0xa91dac3fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GROUPVALUES_5 0x77ecf1bfUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GROUPVALUES_6 0x31b376a8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GROUPVALUES_7 0x191203b5UL

/** UTF-8 byte storage for uwvm_fourier_bridge/GroupValues.group; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_1_uwvm_fourier_bridge_GroupValues_group_text;

/** At most64 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[64];
} roswasmc_bounded_1_uwvm_fourier_bridge_GroupValues_values_sequence;

/** Complete ROS1 uwvm_fourier_bridge/GroupValues value; no field projects away native data. */
typedef struct roswasmc_bounded_1_uwvm_fourier_bridge_GroupValues
{
    /** Declared field group; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_uwvm_fourier_bridge_GroupValues_group_text group;
    /** Declared field values; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_uwvm_fourier_bridge_GroupValues_values_sequence values;
} roswasmc_bounded_1_uwvm_fourier_bridge_GroupValues;

# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GROUPVALUES_MAX_WIRE_BYTES 648u
# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GROUPVALUES_MIN_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_GROUPVALUES_CODEC_IDENTITY "UWVMROS1_899fb75506245b34c004d1ad1392f79434612d04c73d80a3329f27ec8ff5244c"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_uwvm_fourier_bridge_GroupValues_valid(roswasmc_bounded_1_uwvm_fourier_bridge_GroupValues const* value)
{
    if(!value)
        return 0;
    if(value->group.size > 128u || !uwvm_bounded_utf8(value->group.data, value->group.size))
        return 0;
    if(value->values.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->values.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->values.data[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                    return 0;
            }
        }
    }
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_1_uwvm_fourier_bridge_GroupValues_wire_size(roswasmc_bounded_1_uwvm_fourier_bridge_GroupValues const* value)
{
    size_t n = 0;
    n += 4 + value->group.size;
    n += 4;
    if(value->values.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->values.size; ++i)
        {
            n += 8;
        }
    }
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_1_uwvm_fourier_bridge_GroupValues_write_fields(roswasmc_bounded_1_uwvm_fourier_bridge_GroupValues const* value,
                                                                                   unsigned char* p,
                                                                                   size_t* offset)
{
    uwvm_bounded_put(p + *offset, value->group.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->group.data, value->group.size);
    *offset += value->group.size;
    uwvm_bounded_put(p + *offset, value->values.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->values.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->values.data[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_uwvm_fourier_bridge_GroupValues_read_fields(unsigned char const* p,
                                                                                 size_t n,
                                                                                 size_t* offset,
                                                                                 roswasmc_bounded_1_uwvm_fourier_bridge_GroupValues* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    value->group.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->group.size > 128u || value->group.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->group.data, p + *offset, value->group.size);
    *offset += value->group.size;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->values.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->values.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->values.size; ++i)
        {
            if(*offset > n || n - *offset < 8)
                return 0;
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->values.data[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    return roswasmc_bounded_1_uwvm_fourier_bridge_GroupValues_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_1_uwvm_fourier_bridge_GroupValues_encode(roswasmc_bounded_1_uwvm_fourier_bridge_GroupValues const* value,
                                                                                 void* output,
                                                                                 size_t capacity,
                                                                                 size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_uwvm_fourier_bridge_GroupValues_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_uwvm_fourier_bridge_GroupValues_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_uwvm_fourier_bridge_GroupValues_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_1_uwvm_fourier_bridge_GroupValues_decode(void const* input, size_t length, roswasmc_bounded_1_uwvm_fourier_bridge_GroupValues* value)
{
    roswasmc_bounded_1_uwvm_fourier_bridge_GroupValues next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 8u || length > 648u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_uwvm_fourier_bridge_GroupValues_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETFSMSTATEREQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETFSMSTATEREQUEST_0 != 0x80db1b75UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETFSMSTATEREQUEST_1 != 0x752be78fUL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETFSMSTATEREQUEST_2 != 0xd4cb4113UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETFSMSTATEREQUEST_3 != 0x5401ff4cUL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETFSMSTATEREQUEST_4 != 0x8a631125UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETFSMSTATEREQUEST_5 != 0xaf47fc6bUL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETFSMSTATEREQUEST_6 != 0x579e3821UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETFSMSTATEREQUEST_7 != 0x0b85dfb8UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETFSMSTATEREQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETFSMSTATEREQUEST_0 0x80db1b75UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETFSMSTATEREQUEST_1 0x752be78fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETFSMSTATEREQUEST_2 0xd4cb4113UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETFSMSTATEREQUEST_3 0x5401ff4cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETFSMSTATEREQUEST_4 0x8a631125UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETFSMSTATEREQUEST_5 0xaf47fc6bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETFSMSTATEREQUEST_6 0x579e3821UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETFSMSTATEREQUEST_7 0x0b85dfb8UL

/** Complete ROS1 uwvm_fourier_bridge/SetFsmStateRequest value; no field projects away native data. */
typedef struct roswasmc_bounded_1_uwvm_fourier_bridge_SetFsmStateRequest
{
    /** Declared field sequence; canonical capacity is part of CODEC_IDENTITY. */
    uint64_t sequence;
    /** Declared field state; canonical capacity is part of CODEC_IDENTITY. */
    int32_t state;
} roswasmc_bounded_1_uwvm_fourier_bridge_SetFsmStateRequest;

# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETFSMSTATEREQUEST_MAX_WIRE_BYTES 12u
# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETFSMSTATEREQUEST_MIN_WIRE_BYTES 12u
# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETFSMSTATEREQUEST_CODEC_IDENTITY "UWVMROS1_303406629d56a2b60a273488cd1e12081e7541374653bac04e2ca073d8c20885"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_uwvm_fourier_bridge_SetFsmStateRequest_valid(roswasmc_bounded_1_uwvm_fourier_bridge_SetFsmStateRequest const* value)
{
    if(!value)
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_1_uwvm_fourier_bridge_SetFsmStateRequest_wire_size(roswasmc_bounded_1_uwvm_fourier_bridge_SetFsmStateRequest const* value)
{
    size_t n = 0;
    n += 8;
    n += 4;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_1_uwvm_fourier_bridge_SetFsmStateRequest_write_fields(roswasmc_bounded_1_uwvm_fourier_bridge_SetFsmStateRequest const* value,
                                                                           unsigned char* p,
                                                                           size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->sequence, 8);
    *offset += 8;
    uwvm_bounded_put(p + *offset, (uint64_t)value->state, 4);
    *offset += 4;
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_uwvm_fourier_bridge_SetFsmStateRequest_read_fields(unsigned char const* p,
                                                                                        size_t n,
                                                                                        size_t* offset,
                                                                                        roswasmc_bounded_1_uwvm_fourier_bridge_SetFsmStateRequest* value)
{
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->sequence, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->state, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_1_uwvm_fourier_bridge_SetFsmStateRequest_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_1_uwvm_fourier_bridge_SetFsmStateRequest_encode(roswasmc_bounded_1_uwvm_fourier_bridge_SetFsmStateRequest const* value,
                                                                                        void* output,
                                                                                        size_t capacity,
                                                                                        size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_uwvm_fourier_bridge_SetFsmStateRequest_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_uwvm_fourier_bridge_SetFsmStateRequest_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_uwvm_fourier_bridge_SetFsmStateRequest_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_1_uwvm_fourier_bridge_SetFsmStateRequest_decode(void const* input,
                                                                                        size_t length,
                                                                                        roswasmc_bounded_1_uwvm_fourier_bridge_SetFsmStateRequest* value)
{
    roswasmc_bounded_1_uwvm_fourier_bridge_SetFsmStateRequest next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 12u || length > 12u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_uwvm_fourier_bridge_SetFsmStateRequest_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETFSMSTATERESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETFSMSTATERESPONSE_0 != 0xe0d09e9fUL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETFSMSTATERESPONSE_1 != 0x8b370010UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETFSMSTATERESPONSE_2 != 0x4f8e1aa7UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETFSMSTATERESPONSE_3 != 0x7dd25c85UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETFSMSTATERESPONSE_4 != 0xdb61049cUL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETFSMSTATERESPONSE_5 != 0xf2ccf320UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETFSMSTATERESPONSE_6 != 0x0b3b5d1bUL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETFSMSTATERESPONSE_7 != 0xedeb898eUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETFSMSTATERESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETFSMSTATERESPONSE_0 0xe0d09e9fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETFSMSTATERESPONSE_1 0x8b370010UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETFSMSTATERESPONSE_2 0x4f8e1aa7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETFSMSTATERESPONSE_3 0x7dd25c85UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETFSMSTATERESPONSE_4 0xdb61049cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETFSMSTATERESPONSE_5 0xf2ccf320UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETFSMSTATERESPONSE_6 0x0b3b5d1bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETFSMSTATERESPONSE_7 0xedeb898eUL

/** UTF-8 byte storage for uwvm_fourier_bridge/SetFsmStateResponse.error; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_1_uwvm_fourier_bridge_SetFsmStateResponse_error_text;

/** Complete ROS1 uwvm_fourier_bridge/SetFsmStateResponse value; no field projects away native data. */
typedef struct roswasmc_bounded_1_uwvm_fourier_bridge_SetFsmStateResponse
{
    /** Declared field status; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t status;
    /** Declared field error; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_uwvm_fourier_bridge_SetFsmStateResponse_error_text error;
} roswasmc_bounded_1_uwvm_fourier_bridge_SetFsmStateResponse;

# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETFSMSTATERESPONSE_MAX_WIRE_BYTES 136u
# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETFSMSTATERESPONSE_MIN_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETFSMSTATERESPONSE_CODEC_IDENTITY "UWVMROS1_cffc820dc64a954aa94912941d3678a59a839b3dde4a6ebafdaf7d4367c22bd1"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_uwvm_fourier_bridge_SetFsmStateResponse_valid(roswasmc_bounded_1_uwvm_fourier_bridge_SetFsmStateResponse const* value)
{
    if(!value)
        return 0;
    if(value->error.size > 128u || !uwvm_bounded_utf8(value->error.data, value->error.size))
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_1_uwvm_fourier_bridge_SetFsmStateResponse_wire_size(roswasmc_bounded_1_uwvm_fourier_bridge_SetFsmStateResponse const* value)
{
    size_t n = 0;
    n += 4;
    n += 4 + value->error.size;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_1_uwvm_fourier_bridge_SetFsmStateResponse_write_fields(roswasmc_bounded_1_uwvm_fourier_bridge_SetFsmStateResponse const* value,
                                                                            unsigned char* p,
                                                                            size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->status, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, value->error.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->error.data, value->error.size);
    *offset += value->error.size;
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_uwvm_fourier_bridge_SetFsmStateResponse_read_fields(unsigned char const* p,
                                                                                         size_t n,
                                                                                         size_t* offset,
                                                                                         roswasmc_bounded_1_uwvm_fourier_bridge_SetFsmStateResponse* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->status, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->error.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->error.size > 128u || value->error.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->error.data, p + *offset, value->error.size);
    *offset += value->error.size;
    return roswasmc_bounded_1_uwvm_fourier_bridge_SetFsmStateResponse_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_1_uwvm_fourier_bridge_SetFsmStateResponse_encode(roswasmc_bounded_1_uwvm_fourier_bridge_SetFsmStateResponse const* value,
                                                                      void* output,
                                                                      size_t capacity,
                                                                      size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_uwvm_fourier_bridge_SetFsmStateResponse_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_uwvm_fourier_bridge_SetFsmStateResponse_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_uwvm_fourier_bridge_SetFsmStateResponse_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_1_uwvm_fourier_bridge_SetFsmStateResponse_decode(void const* input,
                                                                                         size_t length,
                                                                                         roswasmc_bounded_1_uwvm_fourier_bridge_SetFsmStateResponse* value)
{
    roswasmc_bounded_1_uwvm_fourier_bridge_SetFsmStateResponse next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 8u || length > 136u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_uwvm_fourier_bridge_SetFsmStateResponse_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETGROUPCOMMANDREQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETGROUPCOMMANDREQUEST_0 != 0xf394590bUL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETGROUPCOMMANDREQUEST_1 != 0xd64f5bdfUL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETGROUPCOMMANDREQUEST_2 != 0xec2fb1a5UL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETGROUPCOMMANDREQUEST_3 != 0x9ffd610bUL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETGROUPCOMMANDREQUEST_4 != 0x26f5ca2eUL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETGROUPCOMMANDREQUEST_5 != 0x1f82ea3dUL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETGROUPCOMMANDREQUEST_6 != 0x0f2a8a6fUL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETGROUPCOMMANDREQUEST_7 != 0xddd91314UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETGROUPCOMMANDREQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETGROUPCOMMANDREQUEST_0 0xf394590bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETGROUPCOMMANDREQUEST_1 0xd64f5bdfUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETGROUPCOMMANDREQUEST_2 0xec2fb1a5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETGROUPCOMMANDREQUEST_3 0x9ffd610bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETGROUPCOMMANDREQUEST_4 0x26f5ca2eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETGROUPCOMMANDREQUEST_5 0x1f82ea3dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETGROUPCOMMANDREQUEST_6 0x0f2a8a6fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETGROUPCOMMANDREQUEST_7 0xddd91314UL

/** At most8 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_1_uwvm_fourier_bridge_GroupValues data[8];
} roswasmc_bounded_1_uwvm_fourier_bridge_SetGroupCommandRequest_position_sequence;

/** At most8 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_1_uwvm_fourier_bridge_GroupValues data[8];
} roswasmc_bounded_1_uwvm_fourier_bridge_SetGroupCommandRequest_velocity_sequence;

/** At most8 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_1_uwvm_fourier_bridge_GroupValues data[8];
} roswasmc_bounded_1_uwvm_fourier_bridge_SetGroupCommandRequest_torque_sequence;

/** Complete ROS1 uwvm_fourier_bridge/SetGroupCommandRequest value; no field projects away native data. */
typedef struct roswasmc_bounded_1_uwvm_fourier_bridge_SetGroupCommandRequest
{
    /** Declared field sequence; canonical capacity is part of CODEC_IDENTITY. */
    uint64_t sequence;
    /** Declared field position; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_uwvm_fourier_bridge_SetGroupCommandRequest_position_sequence position;
    /** Declared field velocity; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_uwvm_fourier_bridge_SetGroupCommandRequest_velocity_sequence velocity;
    /** Declared field torque; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_uwvm_fourier_bridge_SetGroupCommandRequest_torque_sequence torque;
} roswasmc_bounded_1_uwvm_fourier_bridge_SetGroupCommandRequest;

# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETGROUPCOMMANDREQUEST_MAX_WIRE_BYTES 15572u
# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETGROUPCOMMANDREQUEST_MIN_WIRE_BYTES 20u
# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETGROUPCOMMANDREQUEST_CODEC_IDENTITY                                                                          \
     "UWVMROS1_b313435600ece44507300ad1ea5e375244387cde33301484ffda0390ca523220"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int
    roswasmc_bounded_1_uwvm_fourier_bridge_SetGroupCommandRequest_valid(roswasmc_bounded_1_uwvm_fourier_bridge_SetGroupCommandRequest const* value)
{
    if(!value)
        return 0;
    if(value->position.size > 8u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->position.size; ++i)
        {
            if(!roswasmc_bounded_1_uwvm_fourier_bridge_GroupValues_valid(&value->position.data[i]))
                return 0;
        }
    }
    if(value->velocity.size > 8u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->velocity.size; ++i)
        {
            if(!roswasmc_bounded_1_uwvm_fourier_bridge_GroupValues_valid(&value->velocity.data[i]))
                return 0;
        }
    }
    if(value->torque.size > 8u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->torque.size; ++i)
        {
            if(!roswasmc_bounded_1_uwvm_fourier_bridge_GroupValues_valid(&value->torque.data[i]))
                return 0;
        }
    }
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_1_uwvm_fourier_bridge_SetGroupCommandRequest_wire_size(roswasmc_bounded_1_uwvm_fourier_bridge_SetGroupCommandRequest const* value)
{
    size_t n = 0;
    n += 8;
    n += 4;
    if(value->position.size > 8u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->position.size; ++i)
        {
            n += roswasmc_bounded_1_uwvm_fourier_bridge_GroupValues_wire_size(&value->position.data[i]);
        }
    }
    n += 4;
    if(value->velocity.size > 8u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->velocity.size; ++i)
        {
            n += roswasmc_bounded_1_uwvm_fourier_bridge_GroupValues_wire_size(&value->velocity.data[i]);
        }
    }
    n += 4;
    if(value->torque.size > 8u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->torque.size; ++i)
        {
            n += roswasmc_bounded_1_uwvm_fourier_bridge_GroupValues_wire_size(&value->torque.data[i]);
        }
    }
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_1_uwvm_fourier_bridge_SetGroupCommandRequest_write_fields(roswasmc_bounded_1_uwvm_fourier_bridge_SetGroupCommandRequest const* value,
                                                                               unsigned char* p,
                                                                               size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->sequence, 8);
    *offset += 8;
    uwvm_bounded_put(p + *offset, value->position.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->position.size; ++i)
        {
            roswasmc_bounded_1_uwvm_fourier_bridge_GroupValues_write_fields(&value->position.data[i], p, offset);
        }
    }
    uwvm_bounded_put(p + *offset, value->velocity.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->velocity.size; ++i)
        {
            roswasmc_bounded_1_uwvm_fourier_bridge_GroupValues_write_fields(&value->velocity.data[i], p, offset);
        }
    }
    uwvm_bounded_put(p + *offset, value->torque.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->torque.size; ++i)
        {
            roswasmc_bounded_1_uwvm_fourier_bridge_GroupValues_write_fields(&value->torque.data[i], p, offset);
        }
    }
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int
    roswasmc_bounded_1_uwvm_fourier_bridge_SetGroupCommandRequest_read_fields(unsigned char const* p,
                                                                              size_t n,
                                                                              size_t* offset,
                                                                              roswasmc_bounded_1_uwvm_fourier_bridge_SetGroupCommandRequest* value)
{
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->sequence, &bits, 8);
    }
    *offset += 8;
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
            if(!roswasmc_bounded_1_uwvm_fourier_bridge_GroupValues_read_fields(p, n, offset, &value->position.data[i]))
                return 0;
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
            if(!roswasmc_bounded_1_uwvm_fourier_bridge_GroupValues_read_fields(p, n, offset, &value->velocity.data[i]))
                return 0;
        }
    }
    if(*offset > n || n - *offset < 4)
        return 0;
    value->torque.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->torque.size > 8u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->torque.size; ++i)
        {
            if(!roswasmc_bounded_1_uwvm_fourier_bridge_GroupValues_read_fields(p, n, offset, &value->torque.data[i]))
                return 0;
        }
    }
    return roswasmc_bounded_1_uwvm_fourier_bridge_SetGroupCommandRequest_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_1_uwvm_fourier_bridge_SetGroupCommandRequest_encode(roswasmc_bounded_1_uwvm_fourier_bridge_SetGroupCommandRequest const* value,
                                                                         void* output,
                                                                         size_t capacity,
                                                                         size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_uwvm_fourier_bridge_SetGroupCommandRequest_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_uwvm_fourier_bridge_SetGroupCommandRequest_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_uwvm_fourier_bridge_SetGroupCommandRequest_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_1_uwvm_fourier_bridge_SetGroupCommandRequest_decode(void const* input,
                                                                         size_t length,
                                                                         roswasmc_bounded_1_uwvm_fourier_bridge_SetGroupCommandRequest* value)
{
    roswasmc_bounded_1_uwvm_fourier_bridge_SetGroupCommandRequest next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 20u || length > 15572u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_uwvm_fourier_bridge_SetGroupCommandRequest_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETGROUPCOMMANDRESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETGROUPCOMMANDRESPONSE_0 != 0x7fadecfeUL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETGROUPCOMMANDRESPONSE_1 != 0xe616522fUL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETGROUPCOMMANDRESPONSE_2 != 0xbb473c23UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETGROUPCOMMANDRESPONSE_3 != 0xd62e6882UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETGROUPCOMMANDRESPONSE_4 != 0x72fcab0dUL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETGROUPCOMMANDRESPONSE_5 != 0xccb28072UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETGROUPCOMMANDRESPONSE_6 != 0x1754f147UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETGROUPCOMMANDRESPONSE_7 != 0xb3e1263fUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETGROUPCOMMANDRESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETGROUPCOMMANDRESPONSE_0 0x7fadecfeUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETGROUPCOMMANDRESPONSE_1 0xe616522fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETGROUPCOMMANDRESPONSE_2 0xbb473c23UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETGROUPCOMMANDRESPONSE_3 0xd62e6882UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETGROUPCOMMANDRESPONSE_4 0x72fcab0dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETGROUPCOMMANDRESPONSE_5 0xccb28072UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETGROUPCOMMANDRESPONSE_6 0x1754f147UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETGROUPCOMMANDRESPONSE_7 0xb3e1263fUL

/** UTF-8 byte storage for uwvm_fourier_bridge/SetGroupCommandResponse.error; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_1_uwvm_fourier_bridge_SetGroupCommandResponse_error_text;

/** Complete ROS1 uwvm_fourier_bridge/SetGroupCommandResponse value; no field projects away native data. */
typedef struct roswasmc_bounded_1_uwvm_fourier_bridge_SetGroupCommandResponse
{
    /** Declared field status; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t status;
    /** Declared field error; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_uwvm_fourier_bridge_SetGroupCommandResponse_error_text error;
} roswasmc_bounded_1_uwvm_fourier_bridge_SetGroupCommandResponse;

# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETGROUPCOMMANDRESPONSE_MAX_WIRE_BYTES 136u
# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETGROUPCOMMANDRESPONSE_MIN_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETGROUPCOMMANDRESPONSE_CODEC_IDENTITY                                                                         \
     "UWVMROS1_d4c199515080deccf6a7bbd7101c84f45d7b280a7ed618c2165231343aae558b"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int
    roswasmc_bounded_1_uwvm_fourier_bridge_SetGroupCommandResponse_valid(roswasmc_bounded_1_uwvm_fourier_bridge_SetGroupCommandResponse const* value)
{
    if(!value)
        return 0;
    if(value->error.size > 128u || !uwvm_bounded_utf8(value->error.data, value->error.size))
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_1_uwvm_fourier_bridge_SetGroupCommandResponse_wire_size(roswasmc_bounded_1_uwvm_fourier_bridge_SetGroupCommandResponse const* value)
{
    size_t n = 0;
    n += 4;
    n += 4 + value->error.size;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_1_uwvm_fourier_bridge_SetGroupCommandResponse_write_fields(roswasmc_bounded_1_uwvm_fourier_bridge_SetGroupCommandResponse const* value,
                                                                                unsigned char* p,
                                                                                size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->status, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, value->error.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->error.data, value->error.size);
    *offset += value->error.size;
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int
    roswasmc_bounded_1_uwvm_fourier_bridge_SetGroupCommandResponse_read_fields(unsigned char const* p,
                                                                               size_t n,
                                                                               size_t* offset,
                                                                               roswasmc_bounded_1_uwvm_fourier_bridge_SetGroupCommandResponse* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->status, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->error.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->error.size > 128u || value->error.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->error.data, p + *offset, value->error.size);
    *offset += value->error.size;
    return roswasmc_bounded_1_uwvm_fourier_bridge_SetGroupCommandResponse_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_1_uwvm_fourier_bridge_SetGroupCommandResponse_encode(roswasmc_bounded_1_uwvm_fourier_bridge_SetGroupCommandResponse const* value,
                                                                          void* output,
                                                                          size_t capacity,
                                                                          size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_uwvm_fourier_bridge_SetGroupCommandResponse_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_uwvm_fourier_bridge_SetGroupCommandResponse_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_uwvm_fourier_bridge_SetGroupCommandResponse_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_1_uwvm_fourier_bridge_SetGroupCommandResponse_decode(void const* input,
                                                                          size_t length,
                                                                          roswasmc_bounded_1_uwvm_fourier_bridge_SetGroupCommandResponse* value)
{
    roswasmc_bounded_1_uwvm_fourier_bridge_SetGroupCommandResponse next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 8u || length > 136u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_uwvm_fourier_bridge_SetGroupCommandResponse_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETMOTORCFGPDREQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETMOTORCFGPDREQUEST_0 != 0x72ed7d80UL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETMOTORCFGPDREQUEST_1 != 0x6a66c8d6UL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETMOTORCFGPDREQUEST_2 != 0x8d30ef12UL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETMOTORCFGPDREQUEST_3 != 0x91808c62UL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETMOTORCFGPDREQUEST_4 != 0x613a7e67UL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETMOTORCFGPDREQUEST_5 != 0x1ac1971eUL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETMOTORCFGPDREQUEST_6 != 0x136682d1UL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETMOTORCFGPDREQUEST_7 != 0x085ca543UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETMOTORCFGPDREQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETMOTORCFGPDREQUEST_0 0x72ed7d80UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETMOTORCFGPDREQUEST_1 0x6a66c8d6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETMOTORCFGPDREQUEST_2 0x8d30ef12UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETMOTORCFGPDREQUEST_3 0x91808c62UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETMOTORCFGPDREQUEST_4 0x613a7e67UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETMOTORCFGPDREQUEST_5 0x1ac1971eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETMOTORCFGPDREQUEST_6 0x136682d1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETMOTORCFGPDREQUEST_7 0x085ca543UL

/** At most8 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_1_uwvm_fourier_bridge_GroupValues data[8];
} roswasmc_bounded_1_uwvm_fourier_bridge_SetMotorCfgPdRequest_kp_sequence;

/** At most8 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_1_uwvm_fourier_bridge_GroupValues data[8];
} roswasmc_bounded_1_uwvm_fourier_bridge_SetMotorCfgPdRequest_kd_sequence;

/** Complete ROS1 uwvm_fourier_bridge/SetMotorCfgPdRequest value; no field projects away native data. */
typedef struct roswasmc_bounded_1_uwvm_fourier_bridge_SetMotorCfgPdRequest
{
    /** Declared field sequence; canonical capacity is part of CODEC_IDENTITY. */
    uint64_t sequence;
    /** Declared field kp; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_uwvm_fourier_bridge_SetMotorCfgPdRequest_kp_sequence kp;
    /** Declared field kd; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_uwvm_fourier_bridge_SetMotorCfgPdRequest_kd_sequence kd;
} roswasmc_bounded_1_uwvm_fourier_bridge_SetMotorCfgPdRequest;

# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETMOTORCFGPDREQUEST_MAX_WIRE_BYTES 10384u
# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETMOTORCFGPDREQUEST_MIN_WIRE_BYTES 16u
# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETMOTORCFGPDREQUEST_CODEC_IDENTITY "UWVMROS1_b6dc93532397dc9016b751bf29f651e5cbb0823b5a03a3f8473823bb234bc51d"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_uwvm_fourier_bridge_SetMotorCfgPdRequest_valid(roswasmc_bounded_1_uwvm_fourier_bridge_SetMotorCfgPdRequest const* value)
{
    if(!value)
        return 0;
    if(value->kp.size > 8u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->kp.size; ++i)
        {
            if(!roswasmc_bounded_1_uwvm_fourier_bridge_GroupValues_valid(&value->kp.data[i]))
                return 0;
        }
    }
    if(value->kd.size > 8u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->kd.size; ++i)
        {
            if(!roswasmc_bounded_1_uwvm_fourier_bridge_GroupValues_valid(&value->kd.data[i]))
                return 0;
        }
    }
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_1_uwvm_fourier_bridge_SetMotorCfgPdRequest_wire_size(roswasmc_bounded_1_uwvm_fourier_bridge_SetMotorCfgPdRequest const* value)
{
    size_t n = 0;
    n += 8;
    n += 4;
    if(value->kp.size > 8u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->kp.size; ++i)
        {
            n += roswasmc_bounded_1_uwvm_fourier_bridge_GroupValues_wire_size(&value->kp.data[i]);
        }
    }
    n += 4;
    if(value->kd.size > 8u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->kd.size; ++i)
        {
            n += roswasmc_bounded_1_uwvm_fourier_bridge_GroupValues_wire_size(&value->kd.data[i]);
        }
    }
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_1_uwvm_fourier_bridge_SetMotorCfgPdRequest_write_fields(roswasmc_bounded_1_uwvm_fourier_bridge_SetMotorCfgPdRequest const* value,
                                                                             unsigned char* p,
                                                                             size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->sequence, 8);
    *offset += 8;
    uwvm_bounded_put(p + *offset, value->kp.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->kp.size; ++i)
        {
            roswasmc_bounded_1_uwvm_fourier_bridge_GroupValues_write_fields(&value->kp.data[i], p, offset);
        }
    }
    uwvm_bounded_put(p + *offset, value->kd.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->kd.size; ++i)
        {
            roswasmc_bounded_1_uwvm_fourier_bridge_GroupValues_write_fields(&value->kd.data[i], p, offset);
        }
    }
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_uwvm_fourier_bridge_SetMotorCfgPdRequest_read_fields(unsigned char const* p,
                                                                                          size_t n,
                                                                                          size_t* offset,
                                                                                          roswasmc_bounded_1_uwvm_fourier_bridge_SetMotorCfgPdRequest* value)
{
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->sequence, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->kp.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->kp.size > 8u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->kp.size; ++i)
        {
            if(!roswasmc_bounded_1_uwvm_fourier_bridge_GroupValues_read_fields(p, n, offset, &value->kp.data[i]))
                return 0;
        }
    }
    if(*offset > n || n - *offset < 4)
        return 0;
    value->kd.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->kd.size > 8u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->kd.size; ++i)
        {
            if(!roswasmc_bounded_1_uwvm_fourier_bridge_GroupValues_read_fields(p, n, offset, &value->kd.data[i]))
                return 0;
        }
    }
    return roswasmc_bounded_1_uwvm_fourier_bridge_SetMotorCfgPdRequest_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_1_uwvm_fourier_bridge_SetMotorCfgPdRequest_encode(roswasmc_bounded_1_uwvm_fourier_bridge_SetMotorCfgPdRequest const* value,
                                                                       void* output,
                                                                       size_t capacity,
                                                                       size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_uwvm_fourier_bridge_SetMotorCfgPdRequest_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_uwvm_fourier_bridge_SetMotorCfgPdRequest_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_uwvm_fourier_bridge_SetMotorCfgPdRequest_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_1_uwvm_fourier_bridge_SetMotorCfgPdRequest_decode(void const* input,
                                                                                          size_t length,
                                                                                          roswasmc_bounded_1_uwvm_fourier_bridge_SetMotorCfgPdRequest* value)
{
    roswasmc_bounded_1_uwvm_fourier_bridge_SetMotorCfgPdRequest next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 16u || length > 10384u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_uwvm_fourier_bridge_SetMotorCfgPdRequest_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETMOTORCFGPDRESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETMOTORCFGPDRESPONSE_0 != 0x6f617c4cUL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETMOTORCFGPDRESPONSE_1 != 0x2a6f36b8UL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETMOTORCFGPDRESPONSE_2 != 0xa51c758fUL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETMOTORCFGPDRESPONSE_3 != 0xa8153f6fUL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETMOTORCFGPDRESPONSE_4 != 0x571110f6UL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETMOTORCFGPDRESPONSE_5 != 0x3ac41098UL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETMOTORCFGPDRESPONSE_6 != 0x55f5a5cfUL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETMOTORCFGPDRESPONSE_7 != 0x682e290cUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETMOTORCFGPDRESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETMOTORCFGPDRESPONSE_0 0x6f617c4cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETMOTORCFGPDRESPONSE_1 0x2a6f36b8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETMOTORCFGPDRESPONSE_2 0xa51c758fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETMOTORCFGPDRESPONSE_3 0xa8153f6fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETMOTORCFGPDRESPONSE_4 0x571110f6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETMOTORCFGPDRESPONSE_5 0x3ac41098UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETMOTORCFGPDRESPONSE_6 0x55f5a5cfUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETMOTORCFGPDRESPONSE_7 0x682e290cUL

/** UTF-8 byte storage for uwvm_fourier_bridge/SetMotorCfgPdResponse.error; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_1_uwvm_fourier_bridge_SetMotorCfgPdResponse_error_text;

/** Complete ROS1 uwvm_fourier_bridge/SetMotorCfgPdResponse value; no field projects away native data. */
typedef struct roswasmc_bounded_1_uwvm_fourier_bridge_SetMotorCfgPdResponse
{
    /** Declared field status; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t status;
    /** Declared field error; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_uwvm_fourier_bridge_SetMotorCfgPdResponse_error_text error;
} roswasmc_bounded_1_uwvm_fourier_bridge_SetMotorCfgPdResponse;

# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETMOTORCFGPDRESPONSE_MAX_WIRE_BYTES 136u
# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETMOTORCFGPDRESPONSE_MIN_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETMOTORCFGPDRESPONSE_CODEC_IDENTITY "UWVMROS1_c1a69a2c03c6cee9b43484b29a800a5f82be4b9188e3b199eb2db8babd205bdc"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_uwvm_fourier_bridge_SetMotorCfgPdResponse_valid(roswasmc_bounded_1_uwvm_fourier_bridge_SetMotorCfgPdResponse const* value)
{
    if(!value)
        return 0;
    if(value->error.size > 128u || !uwvm_bounded_utf8(value->error.data, value->error.size))
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_1_uwvm_fourier_bridge_SetMotorCfgPdResponse_wire_size(roswasmc_bounded_1_uwvm_fourier_bridge_SetMotorCfgPdResponse const* value)
{
    size_t n = 0;
    n += 4;
    n += 4 + value->error.size;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_1_uwvm_fourier_bridge_SetMotorCfgPdResponse_write_fields(roswasmc_bounded_1_uwvm_fourier_bridge_SetMotorCfgPdResponse const* value,
                                                                              unsigned char* p,
                                                                              size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->status, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, value->error.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->error.data, value->error.size);
    *offset += value->error.size;
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_uwvm_fourier_bridge_SetMotorCfgPdResponse_read_fields(unsigned char const* p,
                                                                                           size_t n,
                                                                                           size_t* offset,
                                                                                           roswasmc_bounded_1_uwvm_fourier_bridge_SetMotorCfgPdResponse* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->status, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->error.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->error.size > 128u || value->error.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->error.data, p + *offset, value->error.size);
    *offset += value->error.size;
    return roswasmc_bounded_1_uwvm_fourier_bridge_SetMotorCfgPdResponse_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_1_uwvm_fourier_bridge_SetMotorCfgPdResponse_encode(roswasmc_bounded_1_uwvm_fourier_bridge_SetMotorCfgPdResponse const* value,
                                                                        void* output,
                                                                        size_t capacity,
                                                                        size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_uwvm_fourier_bridge_SetMotorCfgPdResponse_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_uwvm_fourier_bridge_SetMotorCfgPdResponse_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_uwvm_fourier_bridge_SetMotorCfgPdResponse_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_1_uwvm_fourier_bridge_SetMotorCfgPdResponse_decode(void const* input,
                                                                                           size_t length,
                                                                                           roswasmc_bounded_1_uwvm_fourier_bridge_SetMotorCfgPdResponse* value)
{
    roswasmc_bounded_1_uwvm_fourier_bridge_SetMotorCfgPdResponse next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 8u || length > 136u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_uwvm_fourier_bridge_SetMotorCfgPdResponse_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETSTANDPOSEREQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETSTANDPOSEREQUEST_0 != 0x4a9a11f2UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETSTANDPOSEREQUEST_1 != 0x161484bcUL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETSTANDPOSEREQUEST_2 != 0x3a7666c8UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETSTANDPOSEREQUEST_3 != 0xf71d442cUL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETSTANDPOSEREQUEST_4 != 0x34a11453UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETSTANDPOSEREQUEST_5 != 0xb22c75a8UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETSTANDPOSEREQUEST_6 != 0xaf7b620aUL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETSTANDPOSEREQUEST_7 != 0x4b409122UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETSTANDPOSEREQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETSTANDPOSEREQUEST_0 0x4a9a11f2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETSTANDPOSEREQUEST_1 0x161484bcUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETSTANDPOSEREQUEST_2 0x3a7666c8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETSTANDPOSEREQUEST_3 0xf71d442cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETSTANDPOSEREQUEST_4 0x34a11453UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETSTANDPOSEREQUEST_5 0xb22c75a8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETSTANDPOSEREQUEST_6 0xaf7b620aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETSTANDPOSEREQUEST_7 0x4b409122UL

/** Complete ROS1 uwvm_fourier_bridge/SetStandPoseRequest value; no field projects away native data. */
typedef struct roswasmc_bounded_1_uwvm_fourier_bridge_SetStandPoseRequest
{
    /** Declared field sequence; canonical capacity is part of CODEC_IDENTITY. */
    uint64_t sequence;
    /** Declared field delta_z; canonical capacity is part of CODEC_IDENTITY. */
    double delta_z;
    /** Declared field delta_pitch; canonical capacity is part of CODEC_IDENTITY. */
    double delta_pitch;
    /** Declared field delta_yaw; canonical capacity is part of CODEC_IDENTITY. */
    double delta_yaw;
} roswasmc_bounded_1_uwvm_fourier_bridge_SetStandPoseRequest;

# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETSTANDPOSEREQUEST_MAX_WIRE_BYTES 32u
# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETSTANDPOSEREQUEST_MIN_WIRE_BYTES 32u
# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETSTANDPOSEREQUEST_CODEC_IDENTITY "UWVMROS1_75a21fe3986a90ff45b9e7ef023a93be9852d1174b5724b77b82b87e002492ed"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_uwvm_fourier_bridge_SetStandPoseRequest_valid(roswasmc_bounded_1_uwvm_fourier_bridge_SetStandPoseRequest const* value)
{
    if(!value)
        return 0;
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->delta_z, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
            return 0;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->delta_pitch, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
            return 0;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->delta_yaw, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
            return 0;
    }
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_1_uwvm_fourier_bridge_SetStandPoseRequest_wire_size(roswasmc_bounded_1_uwvm_fourier_bridge_SetStandPoseRequest const* value)
{
    size_t n = 0;
    n += 8;
    n += 8;
    n += 8;
    n += 8;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_1_uwvm_fourier_bridge_SetStandPoseRequest_write_fields(roswasmc_bounded_1_uwvm_fourier_bridge_SetStandPoseRequest const* value,
                                                                            unsigned char* p,
                                                                            size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->sequence, 8);
    *offset += 8;
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->delta_z, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->delta_pitch, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->delta_yaw, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_uwvm_fourier_bridge_SetStandPoseRequest_read_fields(unsigned char const* p,
                                                                                         size_t n,
                                                                                         size_t* offset,
                                                                                         roswasmc_bounded_1_uwvm_fourier_bridge_SetStandPoseRequest* value)
{
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->sequence, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->delta_z, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->delta_pitch, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->delta_yaw, &bits, 8);
    }
    *offset += 8;
    return roswasmc_bounded_1_uwvm_fourier_bridge_SetStandPoseRequest_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_1_uwvm_fourier_bridge_SetStandPoseRequest_encode(roswasmc_bounded_1_uwvm_fourier_bridge_SetStandPoseRequest const* value,
                                                                      void* output,
                                                                      size_t capacity,
                                                                      size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_uwvm_fourier_bridge_SetStandPoseRequest_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_uwvm_fourier_bridge_SetStandPoseRequest_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_uwvm_fourier_bridge_SetStandPoseRequest_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_1_uwvm_fourier_bridge_SetStandPoseRequest_decode(void const* input,
                                                                                         size_t length,
                                                                                         roswasmc_bounded_1_uwvm_fourier_bridge_SetStandPoseRequest* value)
{
    roswasmc_bounded_1_uwvm_fourier_bridge_SetStandPoseRequest next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 32u || length > 32u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_uwvm_fourier_bridge_SetStandPoseRequest_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETSTANDPOSERESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETSTANDPOSERESPONSE_0 != 0x938dc133UL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETSTANDPOSERESPONSE_1 != 0x91990d78UL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETSTANDPOSERESPONSE_2 != 0x4129d84cUL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETSTANDPOSERESPONSE_3 != 0x82b3917cUL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETSTANDPOSERESPONSE_4 != 0x7d0f0630UL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETSTANDPOSERESPONSE_5 != 0x93871a51UL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETSTANDPOSERESPONSE_6 != 0x6035246dUL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETSTANDPOSERESPONSE_7 != 0x1ab9b123UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETSTANDPOSERESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETSTANDPOSERESPONSE_0 0x938dc133UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETSTANDPOSERESPONSE_1 0x91990d78UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETSTANDPOSERESPONSE_2 0x4129d84cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETSTANDPOSERESPONSE_3 0x82b3917cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETSTANDPOSERESPONSE_4 0x7d0f0630UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETSTANDPOSERESPONSE_5 0x93871a51UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETSTANDPOSERESPONSE_6 0x6035246dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETSTANDPOSERESPONSE_7 0x1ab9b123UL

/** UTF-8 byte storage for uwvm_fourier_bridge/SetStandPoseResponse.error; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_1_uwvm_fourier_bridge_SetStandPoseResponse_error_text;

/** Complete ROS1 uwvm_fourier_bridge/SetStandPoseResponse value; no field projects away native data. */
typedef struct roswasmc_bounded_1_uwvm_fourier_bridge_SetStandPoseResponse
{
    /** Declared field status; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t status;
    /** Declared field error; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_uwvm_fourier_bridge_SetStandPoseResponse_error_text error;
} roswasmc_bounded_1_uwvm_fourier_bridge_SetStandPoseResponse;

# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETSTANDPOSERESPONSE_MAX_WIRE_BYTES 136u
# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETSTANDPOSERESPONSE_MIN_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETSTANDPOSERESPONSE_CODEC_IDENTITY "UWVMROS1_257da5b52ebfca54b067ced2acfab01e3aa3187c77751a5f82f9fda25885fe7e"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_uwvm_fourier_bridge_SetStandPoseResponse_valid(roswasmc_bounded_1_uwvm_fourier_bridge_SetStandPoseResponse const* value)
{
    if(!value)
        return 0;
    if(value->error.size > 128u || !uwvm_bounded_utf8(value->error.data, value->error.size))
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_1_uwvm_fourier_bridge_SetStandPoseResponse_wire_size(roswasmc_bounded_1_uwvm_fourier_bridge_SetStandPoseResponse const* value)
{
    size_t n = 0;
    n += 4;
    n += 4 + value->error.size;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_1_uwvm_fourier_bridge_SetStandPoseResponse_write_fields(roswasmc_bounded_1_uwvm_fourier_bridge_SetStandPoseResponse const* value,
                                                                             unsigned char* p,
                                                                             size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->status, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, value->error.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->error.data, value->error.size);
    *offset += value->error.size;
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_uwvm_fourier_bridge_SetStandPoseResponse_read_fields(unsigned char const* p,
                                                                                          size_t n,
                                                                                          size_t* offset,
                                                                                          roswasmc_bounded_1_uwvm_fourier_bridge_SetStandPoseResponse* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->status, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->error.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->error.size > 128u || value->error.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->error.data, p + *offset, value->error.size);
    *offset += value->error.size;
    return roswasmc_bounded_1_uwvm_fourier_bridge_SetStandPoseResponse_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_1_uwvm_fourier_bridge_SetStandPoseResponse_encode(roswasmc_bounded_1_uwvm_fourier_bridge_SetStandPoseResponse const* value,
                                                                       void* output,
                                                                       size_t capacity,
                                                                       size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_uwvm_fourier_bridge_SetStandPoseResponse_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_uwvm_fourier_bridge_SetStandPoseResponse_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_uwvm_fourier_bridge_SetStandPoseResponse_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_1_uwvm_fourier_bridge_SetStandPoseResponse_decode(void const* input,
                                                                                          size_t length,
                                                                                          roswasmc_bounded_1_uwvm_fourier_bridge_SetStandPoseResponse* value)
{
    roswasmc_bounded_1_uwvm_fourier_bridge_SetStandPoseResponse next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 8u || length > 136u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_uwvm_fourier_bridge_SetStandPoseResponse_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETUPPERFSMSTATEREQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETUPPERFSMSTATEREQUEST_0 != 0x1ddb77cfUL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETUPPERFSMSTATEREQUEST_1 != 0x64b4d4c9UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETUPPERFSMSTATEREQUEST_2 != 0x1e8961beUL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETUPPERFSMSTATEREQUEST_3 != 0x5c5f7327UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETUPPERFSMSTATEREQUEST_4 != 0x9d8402f4UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETUPPERFSMSTATEREQUEST_5 != 0x970829f5UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETUPPERFSMSTATEREQUEST_6 != 0x4f514089UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETUPPERFSMSTATEREQUEST_7 != 0xc55e22d1UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETUPPERFSMSTATEREQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETUPPERFSMSTATEREQUEST_0 0x1ddb77cfUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETUPPERFSMSTATEREQUEST_1 0x64b4d4c9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETUPPERFSMSTATEREQUEST_2 0x1e8961beUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETUPPERFSMSTATEREQUEST_3 0x5c5f7327UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETUPPERFSMSTATEREQUEST_4 0x9d8402f4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETUPPERFSMSTATEREQUEST_5 0x970829f5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETUPPERFSMSTATEREQUEST_6 0x4f514089UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETUPPERFSMSTATEREQUEST_7 0xc55e22d1UL

/** Complete ROS1 uwvm_fourier_bridge/SetUpperFsmStateRequest value; no field projects away native data. */
typedef struct roswasmc_bounded_1_uwvm_fourier_bridge_SetUpperFsmStateRequest
{
    /** Declared field sequence; canonical capacity is part of CODEC_IDENTITY. */
    uint64_t sequence;
    /** Declared field state; canonical capacity is part of CODEC_IDENTITY. */
    int32_t state;
} roswasmc_bounded_1_uwvm_fourier_bridge_SetUpperFsmStateRequest;

# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETUPPERFSMSTATEREQUEST_MAX_WIRE_BYTES 12u
# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETUPPERFSMSTATEREQUEST_MIN_WIRE_BYTES 12u
# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETUPPERFSMSTATEREQUEST_CODEC_IDENTITY                                                                         \
     "UWVMROS1_cc12b01c002d9e3662f16595a55df6abebdea2fe06e350b7e81f33bee0d47758"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int
    roswasmc_bounded_1_uwvm_fourier_bridge_SetUpperFsmStateRequest_valid(roswasmc_bounded_1_uwvm_fourier_bridge_SetUpperFsmStateRequest const* value)
{
    if(!value)
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_1_uwvm_fourier_bridge_SetUpperFsmStateRequest_wire_size(roswasmc_bounded_1_uwvm_fourier_bridge_SetUpperFsmStateRequest const* value)
{
    size_t n = 0;
    n += 8;
    n += 4;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_1_uwvm_fourier_bridge_SetUpperFsmStateRequest_write_fields(roswasmc_bounded_1_uwvm_fourier_bridge_SetUpperFsmStateRequest const* value,
                                                                                unsigned char* p,
                                                                                size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->sequence, 8);
    *offset += 8;
    uwvm_bounded_put(p + *offset, (uint64_t)value->state, 4);
    *offset += 4;
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int
    roswasmc_bounded_1_uwvm_fourier_bridge_SetUpperFsmStateRequest_read_fields(unsigned char const* p,
                                                                               size_t n,
                                                                               size_t* offset,
                                                                               roswasmc_bounded_1_uwvm_fourier_bridge_SetUpperFsmStateRequest* value)
{
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->sequence, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->state, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_1_uwvm_fourier_bridge_SetUpperFsmStateRequest_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_1_uwvm_fourier_bridge_SetUpperFsmStateRequest_encode(roswasmc_bounded_1_uwvm_fourier_bridge_SetUpperFsmStateRequest const* value,
                                                                          void* output,
                                                                          size_t capacity,
                                                                          size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_uwvm_fourier_bridge_SetUpperFsmStateRequest_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_uwvm_fourier_bridge_SetUpperFsmStateRequest_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_uwvm_fourier_bridge_SetUpperFsmStateRequest_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_1_uwvm_fourier_bridge_SetUpperFsmStateRequest_decode(void const* input,
                                                                          size_t length,
                                                                          roswasmc_bounded_1_uwvm_fourier_bridge_SetUpperFsmStateRequest* value)
{
    roswasmc_bounded_1_uwvm_fourier_bridge_SetUpperFsmStateRequest next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 12u || length > 12u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_uwvm_fourier_bridge_SetUpperFsmStateRequest_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETUPPERFSMSTATERESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETUPPERFSMSTATERESPONSE_0 != 0x53768203UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETUPPERFSMSTATERESPONSE_1 != 0x135a9b7cUL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETUPPERFSMSTATERESPONSE_2 != 0x272561fdUL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETUPPERFSMSTATERESPONSE_3 != 0x1f0852f8UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETUPPERFSMSTATERESPONSE_4 != 0x0bd7676cUL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETUPPERFSMSTATERESPONSE_5 != 0x3eaca9e9UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETUPPERFSMSTATERESPONSE_6 != 0x66e9eb76UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETUPPERFSMSTATERESPONSE_7 != 0x9d3de131UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETUPPERFSMSTATERESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETUPPERFSMSTATERESPONSE_0 0x53768203UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETUPPERFSMSTATERESPONSE_1 0x135a9b7cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETUPPERFSMSTATERESPONSE_2 0x272561fdUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETUPPERFSMSTATERESPONSE_3 0x1f0852f8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETUPPERFSMSTATERESPONSE_4 0x0bd7676cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETUPPERFSMSTATERESPONSE_5 0x3eaca9e9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETUPPERFSMSTATERESPONSE_6 0x66e9eb76UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETUPPERFSMSTATERESPONSE_7 0x9d3de131UL

/** UTF-8 byte storage for uwvm_fourier_bridge/SetUpperFsmStateResponse.error; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_1_uwvm_fourier_bridge_SetUpperFsmStateResponse_error_text;

/** Complete ROS1 uwvm_fourier_bridge/SetUpperFsmStateResponse value; no field projects away native data. */
typedef struct roswasmc_bounded_1_uwvm_fourier_bridge_SetUpperFsmStateResponse
{
    /** Declared field status; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t status;
    /** Declared field error; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_uwvm_fourier_bridge_SetUpperFsmStateResponse_error_text error;
} roswasmc_bounded_1_uwvm_fourier_bridge_SetUpperFsmStateResponse;

# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETUPPERFSMSTATERESPONSE_MAX_WIRE_BYTES 136u
# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETUPPERFSMSTATERESPONSE_MIN_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETUPPERFSMSTATERESPONSE_CODEC_IDENTITY                                                                        \
     "UWVMROS1_27ee9830ebf52c3cfcdd8691bf1be9a1a63f7cd12c43cd30531b73501cd423c1"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int
    roswasmc_bounded_1_uwvm_fourier_bridge_SetUpperFsmStateResponse_valid(roswasmc_bounded_1_uwvm_fourier_bridge_SetUpperFsmStateResponse const* value)
{
    if(!value)
        return 0;
    if(value->error.size > 128u || !uwvm_bounded_utf8(value->error.data, value->error.size))
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_1_uwvm_fourier_bridge_SetUpperFsmStateResponse_wire_size(roswasmc_bounded_1_uwvm_fourier_bridge_SetUpperFsmStateResponse const* value)
{
    size_t n = 0;
    n += 4;
    n += 4 + value->error.size;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_1_uwvm_fourier_bridge_SetUpperFsmStateResponse_write_fields(roswasmc_bounded_1_uwvm_fourier_bridge_SetUpperFsmStateResponse const* value,
                                                                                 unsigned char* p,
                                                                                 size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->status, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, value->error.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->error.data, value->error.size);
    *offset += value->error.size;
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int
    roswasmc_bounded_1_uwvm_fourier_bridge_SetUpperFsmStateResponse_read_fields(unsigned char const* p,
                                                                                size_t n,
                                                                                size_t* offset,
                                                                                roswasmc_bounded_1_uwvm_fourier_bridge_SetUpperFsmStateResponse* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->status, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->error.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->error.size > 128u || value->error.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->error.data, p + *offset, value->error.size);
    *offset += value->error.size;
    return roswasmc_bounded_1_uwvm_fourier_bridge_SetUpperFsmStateResponse_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_1_uwvm_fourier_bridge_SetUpperFsmStateResponse_encode(roswasmc_bounded_1_uwvm_fourier_bridge_SetUpperFsmStateResponse const* value,
                                                                           void* output,
                                                                           size_t capacity,
                                                                           size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_uwvm_fourier_bridge_SetUpperFsmStateResponse_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_uwvm_fourier_bridge_SetUpperFsmStateResponse_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_uwvm_fourier_bridge_SetUpperFsmStateResponse_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_1_uwvm_fourier_bridge_SetUpperFsmStateResponse_decode(void const* input,
                                                                           size_t length,
                                                                           roswasmc_bounded_1_uwvm_fourier_bridge_SetUpperFsmStateResponse* value)
{
    roswasmc_bounded_1_uwvm_fourier_bridge_SetUpperFsmStateResponse next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 8u || length > 136u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_uwvm_fourier_bridge_SetUpperFsmStateResponse_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETVELOCITYREQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETVELOCITYREQUEST_0 != 0x291c598cUL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETVELOCITYREQUEST_1 != 0x0f618f50UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETVELOCITYREQUEST_2 != 0xfcc84b61UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETVELOCITYREQUEST_3 != 0xb294078aUL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETVELOCITYREQUEST_4 != 0x77277ac5UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETVELOCITYREQUEST_5 != 0x8a51290bUL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETVELOCITYREQUEST_6 != 0xcbae0826UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETVELOCITYREQUEST_7 != 0x881d0ac5UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETVELOCITYREQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETVELOCITYREQUEST_0 0x291c598cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETVELOCITYREQUEST_1 0x0f618f50UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETVELOCITYREQUEST_2 0xfcc84b61UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETVELOCITYREQUEST_3 0xb294078aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETVELOCITYREQUEST_4 0x77277ac5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETVELOCITYREQUEST_5 0x8a51290bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETVELOCITYREQUEST_6 0xcbae0826UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETVELOCITYREQUEST_7 0x881d0ac5UL

/** Complete ROS1 uwvm_fourier_bridge/SetVelocityRequest value; no field projects away native data. */
typedef struct roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocityRequest
{
    /** Declared field sequence; canonical capacity is part of CODEC_IDENTITY. */
    uint64_t sequence;
    /** Declared field vx; canonical capacity is part of CODEC_IDENTITY. */
    double vx;
    /** Declared field vy; canonical capacity is part of CODEC_IDENTITY. */
    double vy;
    /** Declared field yaw; canonical capacity is part of CODEC_IDENTITY. */
    double yaw;
    /** Declared field duration; canonical capacity is part of CODEC_IDENTITY. */
    double duration;
} roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocityRequest;

# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETVELOCITYREQUEST_MAX_WIRE_BYTES 40u
# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETVELOCITYREQUEST_MIN_WIRE_BYTES 40u
# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETVELOCITYREQUEST_CODEC_IDENTITY "UWVMROS1_33eb9021c19ed28c9aabc0076b8e5cc9f36b1fcaebbb93ebfa3dc38e9691ed2d"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocityRequest_valid(roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocityRequest const* value)
{
    if(!value)
        return 0;
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->vx, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
            return 0;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->vy, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
            return 0;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->yaw, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
            return 0;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->duration, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
            return 0;
    }
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocityRequest_wire_size(roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocityRequest const* value)
{
    size_t n = 0;
    n += 8;
    n += 8;
    n += 8;
    n += 8;
    n += 8;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocityRequest_write_fields(roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocityRequest const* value,
                                                                           unsigned char* p,
                                                                           size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->sequence, 8);
    *offset += 8;
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->vx, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->vy, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->yaw, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->duration, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocityRequest_read_fields(unsigned char const* p,
                                                                                        size_t n,
                                                                                        size_t* offset,
                                                                                        roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocityRequest* value)
{
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->sequence, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->vx, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->vy, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->yaw, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->duration, &bits, 8);
    }
    *offset += 8;
    return roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocityRequest_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocityRequest_encode(roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocityRequest const* value,
                                                                                        void* output,
                                                                                        size_t capacity,
                                                                                        size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocityRequest_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocityRequest_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocityRequest_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocityRequest_decode(void const* input,
                                                                                        size_t length,
                                                                                        roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocityRequest* value)
{
    roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocityRequest next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 40u || length > 40u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocityRequest_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETVELOCITYRESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETVELOCITYRESPONSE_0 != 0x9646f4f8UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETVELOCITYRESPONSE_1 != 0x01d48a74UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETVELOCITYRESPONSE_2 != 0xcefa2f0bUL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETVELOCITYRESPONSE_3 != 0xa5c57068UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETVELOCITYRESPONSE_4 != 0xb11e0d94UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETVELOCITYRESPONSE_5 != 0x32b9d485UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETVELOCITYRESPONSE_6 != 0xabdb6986UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETVELOCITYRESPONSE_7 != 0x97b46532UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETVELOCITYRESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETVELOCITYRESPONSE_0 0x9646f4f8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETVELOCITYRESPONSE_1 0x01d48a74UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETVELOCITYRESPONSE_2 0xcefa2f0bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETVELOCITYRESPONSE_3 0xa5c57068UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETVELOCITYRESPONSE_4 0xb11e0d94UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETVELOCITYRESPONSE_5 0x32b9d485UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETVELOCITYRESPONSE_6 0xabdb6986UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETVELOCITYRESPONSE_7 0x97b46532UL

/** UTF-8 byte storage for uwvm_fourier_bridge/SetVelocityResponse.error; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocityResponse_error_text;

/** Complete ROS1 uwvm_fourier_bridge/SetVelocityResponse value; no field projects away native data. */
typedef struct roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocityResponse
{
    /** Declared field status; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t status;
    /** Declared field error; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocityResponse_error_text error;
} roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocityResponse;

# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETVELOCITYRESPONSE_MAX_WIRE_BYTES 136u
# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETVELOCITYRESPONSE_MIN_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETVELOCITYRESPONSE_CODEC_IDENTITY "UWVMROS1_3325d6b620d3481b6976cd4579f197ed19d6a5074618f700273ca89e0eba762a"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocityResponse_valid(roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocityResponse const* value)
{
    if(!value)
        return 0;
    if(value->error.size > 128u || !uwvm_bounded_utf8(value->error.data, value->error.size))
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocityResponse_wire_size(roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocityResponse const* value)
{
    size_t n = 0;
    n += 4;
    n += 4 + value->error.size;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocityResponse_write_fields(roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocityResponse const* value,
                                                                            unsigned char* p,
                                                                            size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->status, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, value->error.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->error.data, value->error.size);
    *offset += value->error.size;
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocityResponse_read_fields(unsigned char const* p,
                                                                                         size_t n,
                                                                                         size_t* offset,
                                                                                         roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocityResponse* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->status, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->error.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->error.size > 128u || value->error.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->error.data, p + *offset, value->error.size);
    *offset += value->error.size;
    return roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocityResponse_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocityResponse_encode(roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocityResponse const* value,
                                                                      void* output,
                                                                      size_t capacity,
                                                                      size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocityResponse_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocityResponse_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocityResponse_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocityResponse_decode(void const* input,
                                                                                         size_t length,
                                                                                         roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocityResponse* value)
{
    roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocityResponse next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 8u || length > 136u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocityResponse_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETVELOCITYSOURCEREQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETVELOCITYSOURCEREQUEST_0 != 0x81140c71UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETVELOCITYSOURCEREQUEST_1 != 0xa7d725beUL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETVELOCITYSOURCEREQUEST_2 != 0x96414355UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETVELOCITYSOURCEREQUEST_3 != 0x3fad6256UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETVELOCITYSOURCEREQUEST_4 != 0x0d56ee5eUL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETVELOCITYSOURCEREQUEST_5 != 0x589eccacUL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETVELOCITYSOURCEREQUEST_6 != 0x2db5a70cUL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETVELOCITYSOURCEREQUEST_7 != 0x9bd47fc7UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETVELOCITYSOURCEREQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETVELOCITYSOURCEREQUEST_0 0x81140c71UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETVELOCITYSOURCEREQUEST_1 0xa7d725beUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETVELOCITYSOURCEREQUEST_2 0x96414355UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETVELOCITYSOURCEREQUEST_3 0x3fad6256UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETVELOCITYSOURCEREQUEST_4 0x0d56ee5eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETVELOCITYSOURCEREQUEST_5 0x589eccacUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETVELOCITYSOURCEREQUEST_6 0x2db5a70cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETVELOCITYSOURCEREQUEST_7 0x9bd47fc7UL

/** Complete ROS1 uwvm_fourier_bridge/SetVelocitySourceRequest value; no field projects away native data. */
typedef struct roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocitySourceRequest
{
    /** Declared field sequence; canonical capacity is part of CODEC_IDENTITY. */
    uint64_t sequence;
    /** Declared field source; canonical capacity is part of CODEC_IDENTITY. */
    int32_t source;
} roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocitySourceRequest;

# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETVELOCITYSOURCEREQUEST_MAX_WIRE_BYTES 12u
# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETVELOCITYSOURCEREQUEST_MIN_WIRE_BYTES 12u
# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETVELOCITYSOURCEREQUEST_CODEC_IDENTITY                                                                        \
     "UWVMROS1_769c68344260812d775718b441b2a0e5e26422995c946031b919707994e295eb"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int
    roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocitySourceRequest_valid(roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocitySourceRequest const* value)
{
    if(!value)
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocitySourceRequest_wire_size(roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocitySourceRequest const* value)
{
    size_t n = 0;
    n += 8;
    n += 4;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocitySourceRequest_write_fields(roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocitySourceRequest const* value,
                                                                                 unsigned char* p,
                                                                                 size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->sequence, 8);
    *offset += 8;
    uwvm_bounded_put(p + *offset, (uint64_t)value->source, 4);
    *offset += 4;
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int
    roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocitySourceRequest_read_fields(unsigned char const* p,
                                                                                size_t n,
                                                                                size_t* offset,
                                                                                roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocitySourceRequest* value)
{
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->sequence, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->source, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocitySourceRequest_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocitySourceRequest_encode(roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocitySourceRequest const* value,
                                                                           void* output,
                                                                           size_t capacity,
                                                                           size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocitySourceRequest_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocitySourceRequest_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocitySourceRequest_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocitySourceRequest_decode(void const* input,
                                                                           size_t length,
                                                                           roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocitySourceRequest* value)
{
    roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocitySourceRequest next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 12u || length > 12u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocitySourceRequest_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETVELOCITYSOURCERESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETVELOCITYSOURCERESPONSE_0 != 0xd668104eUL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETVELOCITYSOURCERESPONSE_1 != 0x5c9614b1UL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETVELOCITYSOURCERESPONSE_2 != 0x7d9c10c6UL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETVELOCITYSOURCERESPONSE_3 != 0x355a03afUL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETVELOCITYSOURCERESPONSE_4 != 0x03d051d3UL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETVELOCITYSOURCERESPONSE_5 != 0x71d74d5eUL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETVELOCITYSOURCERESPONSE_6 != 0xd3701d0cUL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETVELOCITYSOURCERESPONSE_7 != 0x323132e1UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETVELOCITYSOURCERESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETVELOCITYSOURCERESPONSE_0 0xd668104eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETVELOCITYSOURCERESPONSE_1 0x5c9614b1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETVELOCITYSOURCERESPONSE_2 0x7d9c10c6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETVELOCITYSOURCERESPONSE_3 0x355a03afUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETVELOCITYSOURCERESPONSE_4 0x03d051d3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETVELOCITYSOURCERESPONSE_5 0x71d74d5eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETVELOCITYSOURCERESPONSE_6 0xd3701d0cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETVELOCITYSOURCERESPONSE_7 0x323132e1UL

/** UTF-8 byte storage for uwvm_fourier_bridge/SetVelocitySourceResponse.error; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocitySourceResponse_error_text;

/** Complete ROS1 uwvm_fourier_bridge/SetVelocitySourceResponse value; no field projects away native data. */
typedef struct roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocitySourceResponse
{
    /** Declared field status; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t status;
    /** Declared field error; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocitySourceResponse_error_text error;
} roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocitySourceResponse;

# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETVELOCITYSOURCERESPONSE_MAX_WIRE_BYTES 136u
# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETVELOCITYSOURCERESPONSE_MIN_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_SETVELOCITYSOURCERESPONSE_CODEC_IDENTITY                                                                       \
     "UWVMROS1_d791bd1ff7d8219a98a9ad475cdf0274fa87638452ce0359de57abc05ff0c3be"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int
    roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocitySourceResponse_valid(roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocitySourceResponse const* value)
{
    if(!value)
        return 0;
    if(value->error.size > 128u || !uwvm_bounded_utf8(value->error.data, value->error.size))
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocitySourceResponse_wire_size(roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocitySourceResponse const* value)
{
    size_t n = 0;
    n += 4;
    n += 4 + value->error.size;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocitySourceResponse_write_fields(roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocitySourceResponse const* value,
                                                                                  unsigned char* p,
                                                                                  size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->status, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, value->error.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->error.data, value->error.size);
    *offset += value->error.size;
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int
    roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocitySourceResponse_read_fields(unsigned char const* p,
                                                                                 size_t n,
                                                                                 size_t* offset,
                                                                                 roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocitySourceResponse* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->status, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->error.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->error.size > 128u || value->error.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->error.data, p + *offset, value->error.size);
    *offset += value->error.size;
    return roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocitySourceResponse_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocitySourceResponse_encode(roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocitySourceResponse const* value,
                                                                            void* output,
                                                                            size_t capacity,
                                                                            size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocitySourceResponse_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocitySourceResponse_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocitySourceResponse_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocitySourceResponse_decode(void const* input,
                                                                            size_t length,
                                                                            roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocitySourceResponse* value)
{
    roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocitySourceResponse next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 8u || length > 136u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_uwvm_fourier_bridge_SetVelocitySourceResponse_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_VELOCITYCOMMAND)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_VELOCITYCOMMAND_0 != 0xf2d95d6cUL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_VELOCITYCOMMAND_1 != 0x1d9a5cd0UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_VELOCITYCOMMAND_2 != 0xfd761f7dUL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_VELOCITYCOMMAND_3 != 0xe04f84cdUL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_VELOCITYCOMMAND_4 != 0xba33a012UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_VELOCITYCOMMAND_5 != 0x295e242eUL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_VELOCITYCOMMAND_6 != 0x5cb3d89fUL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_VELOCITYCOMMAND_7 != 0x3a80e50fUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_VELOCITYCOMMAND 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_VELOCITYCOMMAND_0 0xf2d95d6cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_VELOCITYCOMMAND_1 0x1d9a5cd0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_VELOCITYCOMMAND_2 0xfd761f7dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_VELOCITYCOMMAND_3 0xe04f84cdUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_VELOCITYCOMMAND_4 0xba33a012UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_VELOCITYCOMMAND_5 0x295e242eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_VELOCITYCOMMAND_6 0x5cb3d89fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_VELOCITYCOMMAND_7 0x3a80e50fUL

/** Complete ROS1 uwvm_fourier_bridge/VelocityCommand value; no field projects away native data. */
typedef struct roswasmc_bounded_1_uwvm_fourier_bridge_VelocityCommand
{
    /** Declared field sequence; canonical capacity is part of CODEC_IDENTITY. */
    uint64_t sequence;
    /** Declared field vx; canonical capacity is part of CODEC_IDENTITY. */
    double vx;
    /** Declared field vy; canonical capacity is part of CODEC_IDENTITY. */
    double vy;
    /** Declared field yaw; canonical capacity is part of CODEC_IDENTITY. */
    double yaw;
    /** Declared field duration; canonical capacity is part of CODEC_IDENTITY. */
    double duration;
} roswasmc_bounded_1_uwvm_fourier_bridge_VelocityCommand;

# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_VELOCITYCOMMAND_MAX_WIRE_BYTES 40u
# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_VELOCITYCOMMAND_MIN_WIRE_BYTES 40u
# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_VELOCITYCOMMAND_CODEC_IDENTITY "UWVMROS1_befc41dabd1a7359d32aa3dd4a0197e607fa84346f14fd79f8bc04d328b6ad54"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_uwvm_fourier_bridge_VelocityCommand_valid(roswasmc_bounded_1_uwvm_fourier_bridge_VelocityCommand const* value)
{
    if(!value)
        return 0;
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->vx, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
            return 0;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->vy, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
            return 0;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->yaw, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
            return 0;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->duration, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
            return 0;
    }
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_1_uwvm_fourier_bridge_VelocityCommand_wire_size(roswasmc_bounded_1_uwvm_fourier_bridge_VelocityCommand const* value)
{
    size_t n = 0;
    n += 8;
    n += 8;
    n += 8;
    n += 8;
    n += 8;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_1_uwvm_fourier_bridge_VelocityCommand_write_fields(roswasmc_bounded_1_uwvm_fourier_bridge_VelocityCommand const* value,
                                                                                       unsigned char* p,
                                                                                       size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->sequence, 8);
    *offset += 8;
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->vx, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->vy, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->yaw, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->duration, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_uwvm_fourier_bridge_VelocityCommand_read_fields(unsigned char const* p,
                                                                                     size_t n,
                                                                                     size_t* offset,
                                                                                     roswasmc_bounded_1_uwvm_fourier_bridge_VelocityCommand* value)
{
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->sequence, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->vx, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->vy, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->yaw, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->duration, &bits, 8);
    }
    *offset += 8;
    return roswasmc_bounded_1_uwvm_fourier_bridge_VelocityCommand_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_1_uwvm_fourier_bridge_VelocityCommand_encode(roswasmc_bounded_1_uwvm_fourier_bridge_VelocityCommand const* value,
                                                                                     void* output,
                                                                                     size_t capacity,
                                                                                     size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_uwvm_fourier_bridge_VelocityCommand_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_uwvm_fourier_bridge_VelocityCommand_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_uwvm_fourier_bridge_VelocityCommand_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_1_uwvm_fourier_bridge_VelocityCommand_decode(void const* input,
                                                                                     size_t length,
                                                                                     roswasmc_bounded_1_uwvm_fourier_bridge_VelocityCommand* value)
{
    roswasmc_bounded_1_uwvm_fourier_bridge_VelocityCommand next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 40u || length > 40u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_uwvm_fourier_bridge_VelocityCommand_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_WAITGROUPSMOTIONCOMPLETEREQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_WAITGROUPSMOTIONCOMPLETEREQUEST_0 != 0xabe7bda1UL ||                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_WAITGROUPSMOTIONCOMPLETEREQUEST_1 != 0xd0b92219UL ||                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_WAITGROUPSMOTIONCOMPLETEREQUEST_2 != 0xe13a85b7UL ||                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_WAITGROUPSMOTIONCOMPLETEREQUEST_3 != 0xd7e91988UL ||                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_WAITGROUPSMOTIONCOMPLETEREQUEST_4 != 0x481af209UL ||                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_WAITGROUPSMOTIONCOMPLETEREQUEST_5 != 0x8026c51cUL ||                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_WAITGROUPSMOTIONCOMPLETEREQUEST_6 != 0x3f1b71dcUL ||                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_WAITGROUPSMOTIONCOMPLETEREQUEST_7 != 0xce36cdb0UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_WAITGROUPSMOTIONCOMPLETEREQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_WAITGROUPSMOTIONCOMPLETEREQUEST_0 0xabe7bda1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_WAITGROUPSMOTIONCOMPLETEREQUEST_1 0xd0b92219UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_WAITGROUPSMOTIONCOMPLETEREQUEST_2 0xe13a85b7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_WAITGROUPSMOTIONCOMPLETEREQUEST_3 0xd7e91988UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_WAITGROUPSMOTIONCOMPLETEREQUEST_4 0x481af209UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_WAITGROUPSMOTIONCOMPLETEREQUEST_5 0x8026c51cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_WAITGROUPSMOTIONCOMPLETEREQUEST_6 0x3f1b71dcUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_WAITGROUPSMOTIONCOMPLETEREQUEST_7 0xce36cdb0UL

/** UTF-8 byte storage for uwvm_fourier_bridge/WaitGroupsMotionCompleteRequest.groups; size excludes
 * padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_1_uwvm_fourier_bridge_WaitGroupsMotionCompleteRequest_groups_text;

/** At most8 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_1_uwvm_fourier_bridge_WaitGroupsMotionCompleteRequest_groups_text data[8];
} roswasmc_bounded_1_uwvm_fourier_bridge_WaitGroupsMotionCompleteRequest_groups_sequence;

/** Complete ROS1 uwvm_fourier_bridge/WaitGroupsMotionCompleteRequest value; no field projects away native data. */
typedef struct roswasmc_bounded_1_uwvm_fourier_bridge_WaitGroupsMotionCompleteRequest
{
    /** Declared field sequence; canonical capacity is part of CODEC_IDENTITY. */
    uint64_t sequence;
    /** Declared field groups; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_uwvm_fourier_bridge_WaitGroupsMotionCompleteRequest_groups_sequence groups;
    /** Declared field timeout_seconds; canonical capacity is part of CODEC_IDENTITY. */
    double timeout_seconds;
    /** Declared field poll_seconds; canonical capacity is part of CODEC_IDENTITY. */
    double poll_seconds;
} roswasmc_bounded_1_uwvm_fourier_bridge_WaitGroupsMotionCompleteRequest;

# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_WAITGROUPSMOTIONCOMPLETEREQUEST_MAX_WIRE_BYTES 1084u
# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_WAITGROUPSMOTIONCOMPLETEREQUEST_MIN_WIRE_BYTES 28u
# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_WAITGROUPSMOTIONCOMPLETEREQUEST_CODEC_IDENTITY                                                                 \
     "UWVMROS1_27bdd6aa7689099eb40b3bdf96a1c3939677b016c685bd6fb6a275233b933b33"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_uwvm_fourier_bridge_WaitGroupsMotionCompleteRequest_valid(
    roswasmc_bounded_1_uwvm_fourier_bridge_WaitGroupsMotionCompleteRequest const* value)
{
    if(!value)
        return 0;
    if(value->groups.size > 8u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->groups.size; ++i)
        {
            if(value->groups.data[i].size > 128u || !uwvm_bounded_utf8(value->groups.data[i].data, value->groups.data[i].size))
                return 0;
        }
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->timeout_seconds, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
            return 0;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->poll_seconds, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
            return 0;
    }
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_1_uwvm_fourier_bridge_WaitGroupsMotionCompleteRequest_wire_size(
    roswasmc_bounded_1_uwvm_fourier_bridge_WaitGroupsMotionCompleteRequest const* value)
{
    size_t n = 0;
    n += 8;
    n += 4;
    if(value->groups.size > 8u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->groups.size; ++i)
        {
            n += 4 + value->groups.data[i].size;
        }
    }
    n += 8;
    n += 8;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_1_uwvm_fourier_bridge_WaitGroupsMotionCompleteRequest_write_fields(
    roswasmc_bounded_1_uwvm_fourier_bridge_WaitGroupsMotionCompleteRequest const* value,
    unsigned char* p,
    size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->sequence, 8);
    *offset += 8;
    uwvm_bounded_put(p + *offset, value->groups.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->groups.size; ++i)
        {
            uwvm_bounded_put(p + *offset, value->groups.data[i].size, 4);
            *offset += 4;
            uwvm_bounded_copy(p + *offset, value->groups.data[i].data, value->groups.data[i].size);
            *offset += value->groups.data[i].size;
        }
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->timeout_seconds, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->poll_seconds, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_uwvm_fourier_bridge_WaitGroupsMotionCompleteRequest_read_fields(
    unsigned char const* p,
    size_t n,
    size_t* offset,
    roswasmc_bounded_1_uwvm_fourier_bridge_WaitGroupsMotionCompleteRequest* value)
{
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->sequence, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->groups.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->groups.size > 8u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->groups.size; ++i)
        {
            if(*offset > n || n - *offset < 4)
                return 0;
            value->groups.data[i].size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
            *offset += 4;
            if(value->groups.data[i].size > 128u || value->groups.data[i].size > n - *offset)
                return 0;
            uwvm_bounded_copy(value->groups.data[i].data, p + *offset, value->groups.data[i].size);
            *offset += value->groups.data[i].size;
        }
    }
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->timeout_seconds, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->poll_seconds, &bits, 8);
    }
    *offset += 8;
    return roswasmc_bounded_1_uwvm_fourier_bridge_WaitGroupsMotionCompleteRequest_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_1_uwvm_fourier_bridge_WaitGroupsMotionCompleteRequest_encode(
    roswasmc_bounded_1_uwvm_fourier_bridge_WaitGroupsMotionCompleteRequest const* value,
    void* output,
    size_t capacity,
    size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_uwvm_fourier_bridge_WaitGroupsMotionCompleteRequest_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_uwvm_fourier_bridge_WaitGroupsMotionCompleteRequest_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_uwvm_fourier_bridge_WaitGroupsMotionCompleteRequest_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_1_uwvm_fourier_bridge_WaitGroupsMotionCompleteRequest_decode(void const* input,
                                                                                  size_t length,
                                                                                  roswasmc_bounded_1_uwvm_fourier_bridge_WaitGroupsMotionCompleteRequest* value)
{
    roswasmc_bounded_1_uwvm_fourier_bridge_WaitGroupsMotionCompleteRequest next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 28u || length > 1084u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_uwvm_fourier_bridge_WaitGroupsMotionCompleteRequest_read_fields((unsigned char const*)input, length, &offset, &next) ||
       offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_WAITGROUPSMOTIONCOMPLETERESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_WAITGROUPSMOTIONCOMPLETERESPONSE_0 != 0x1ea8382cUL ||                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_WAITGROUPSMOTIONCOMPLETERESPONSE_1 != 0x6a4e48d6UL ||                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_WAITGROUPSMOTIONCOMPLETERESPONSE_2 != 0x9e5cf4d7UL ||                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_WAITGROUPSMOTIONCOMPLETERESPONSE_3 != 0x6a2d1d56UL ||                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_WAITGROUPSMOTIONCOMPLETERESPONSE_4 != 0x51e7d9d2UL ||                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_WAITGROUPSMOTIONCOMPLETERESPONSE_5 != 0xfb01ef92UL ||                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_WAITGROUPSMOTIONCOMPLETERESPONSE_6 != 0xeb42ecb6UL ||                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_WAITGROUPSMOTIONCOMPLETERESPONSE_7 != 0x04d2222eUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_WAITGROUPSMOTIONCOMPLETERESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_WAITGROUPSMOTIONCOMPLETERESPONSE_0 0x1ea8382cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_WAITGROUPSMOTIONCOMPLETERESPONSE_1 0x6a4e48d6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_WAITGROUPSMOTIONCOMPLETERESPONSE_2 0x9e5cf4d7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_WAITGROUPSMOTIONCOMPLETERESPONSE_3 0x6a2d1d56UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_WAITGROUPSMOTIONCOMPLETERESPONSE_4 0x51e7d9d2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_WAITGROUPSMOTIONCOMPLETERESPONSE_5 0xfb01ef92UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_WAITGROUPSMOTIONCOMPLETERESPONSE_6 0xeb42ecb6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_WAITGROUPSMOTIONCOMPLETERESPONSE_7 0x04d2222eUL

/** UTF-8 byte storage for uwvm_fourier_bridge/WaitGroupsMotionCompleteResponse.error; size excludes
 * padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_1_uwvm_fourier_bridge_WaitGroupsMotionCompleteResponse_error_text;

/** Complete ROS1 uwvm_fourier_bridge/WaitGroupsMotionCompleteResponse value; no field projects away native data. */
typedef struct roswasmc_bounded_1_uwvm_fourier_bridge_WaitGroupsMotionCompleteResponse
{
    /** Declared field status; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t status;
    /** Declared field error; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_1_uwvm_fourier_bridge_WaitGroupsMotionCompleteResponse_error_text error;
    /** Declared field complete; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t complete;
} roswasmc_bounded_1_uwvm_fourier_bridge_WaitGroupsMotionCompleteResponse;

# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_WAITGROUPSMOTIONCOMPLETERESPONSE_MAX_WIRE_BYTES 137u
# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_WAITGROUPSMOTIONCOMPLETERESPONSE_MIN_WIRE_BYTES 9u
# define ROSWASMC_BOUNDED_1_UWVM_FOURIER_BRIDGE_WAITGROUPSMOTIONCOMPLETERESPONSE_CODEC_IDENTITY                                                                \
     "UWVMROS1_7d0a1faabf2934ec1a75981a5ed4251017a666975174efca8be48c152a15fee8"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_1_uwvm_fourier_bridge_WaitGroupsMotionCompleteResponse_valid(
    roswasmc_bounded_1_uwvm_fourier_bridge_WaitGroupsMotionCompleteResponse const* value)
{
    if(!value)
        return 0;
    if(value->error.size > 128u || !uwvm_bounded_utf8(value->error.data, value->error.size))
        return 0;
    if(value->complete > 1)
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_1_uwvm_fourier_bridge_WaitGroupsMotionCompleteResponse_wire_size(
    roswasmc_bounded_1_uwvm_fourier_bridge_WaitGroupsMotionCompleteResponse const* value)
{
    size_t n = 0;
    n += 4;
    n += 4 + value->error.size;
    n += 1;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_1_uwvm_fourier_bridge_WaitGroupsMotionCompleteResponse_write_fields(
    roswasmc_bounded_1_uwvm_fourier_bridge_WaitGroupsMotionCompleteResponse const* value,
    unsigned char* p,
    size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->status, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, value->error.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->error.data, value->error.size);
    *offset += value->error.size;
    uwvm_bounded_put(p + *offset, (uint64_t)value->complete, 1);
    *offset += 1;
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_1_uwvm_fourier_bridge_WaitGroupsMotionCompleteResponse_read_fields(
    unsigned char const* p,
    size_t n,
    size_t* offset,
    roswasmc_bounded_1_uwvm_fourier_bridge_WaitGroupsMotionCompleteResponse* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->status, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->error.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->error.size > 128u || value->error.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->error.data, p + *offset, value->error.size);
    *offset += value->error.size;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->complete, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_1_uwvm_fourier_bridge_WaitGroupsMotionCompleteResponse_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_1_uwvm_fourier_bridge_WaitGroupsMotionCompleteResponse_encode(
    roswasmc_bounded_1_uwvm_fourier_bridge_WaitGroupsMotionCompleteResponse const* value,
    void* output,
    size_t capacity,
    size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_uwvm_fourier_bridge_WaitGroupsMotionCompleteResponse_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_uwvm_fourier_bridge_WaitGroupsMotionCompleteResponse_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_uwvm_fourier_bridge_WaitGroupsMotionCompleteResponse_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_1_uwvm_fourier_bridge_WaitGroupsMotionCompleteResponse_decode(
    void const* input,
    size_t length,
    roswasmc_bounded_1_uwvm_fourier_bridge_WaitGroupsMotionCompleteResponse* value)
{
    roswasmc_bounded_1_uwvm_fourier_bridge_WaitGroupsMotionCompleteResponse next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 9u || length > 137u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_uwvm_fourier_bridge_WaitGroupsMotionCompleteResponse_read_fields((unsigned char const*)input, length, &offset, &next) ||
       offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#undef UWVM_BOUNDED_ASSERT
#endif
