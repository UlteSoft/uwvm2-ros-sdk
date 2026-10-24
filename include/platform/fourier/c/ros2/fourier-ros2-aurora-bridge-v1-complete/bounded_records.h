/**
 * @file bounded_records.h
 * @brief Full fourier c codecs and original record metadata.
 * @details Complete fourier ros2_aurora_bridge_v1 values in c. 51 original records retain 138 fields and 28
 * interface descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native
 * definitions. Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the
 * profile API manual under document/platform/fourier/en_US/catalog/.
 */
/** @file Generated bounded-v2 canonical values; no native ROS serialization or authority.
 * Every dynamic field has inline caller-owned capacity. Encode validates and measures
 * the full value before writes; decode commits one temporary only after full validation.
 * Supply distinct record, byte and size-output storage; overlap is explicitly refused.
 * Empty Service/Action components use a C layout dummy that is never a wire field. */
#ifndef UWVM_ROS_BOUNDED_RECORDS_8E4245170B82B3A651DD79C77C6BEB578D2395B67316BDBA3FF90CC0B0969077
#define UWVM_ROS_BOUNDED_RECORDS_8E4245170B82B3A651DD79C77C6BEB578D2395B67316BDBA3FF90CC0B0969077
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
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_GROUPSTATE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_GROUPSTATE_0 != 0xe3fc1283UL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_GROUPSTATE_1 != 0x70db676aUL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_GROUPSTATE_2 != 0x3dfadc9cUL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_GROUPSTATE_3 != 0x2cbde95fUL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_GROUPSTATE_4 != 0xc024e3f8UL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_GROUPSTATE_5 != 0x9d968bc0UL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_GROUPSTATE_6 != 0x252e5e9aUL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_GROUPSTATE_7 != 0x42612184UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_GROUPSTATE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_GROUPSTATE_0 0xe3fc1283UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_GROUPSTATE_1 0x70db676aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_GROUPSTATE_2 0x3dfadc9cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_GROUPSTATE_3 0x2cbde95fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_GROUPSTATE_4 0xc024e3f8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_GROUPSTATE_5 0x9d968bc0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_GROUPSTATE_6 0x252e5e9aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_GROUPSTATE_7 0x42612184UL

/** UTF-8 byte storage for uwvm_fourier_bridge/msg/GroupState.group; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_uwvm_fourier_bridge_msg_GroupState_group_text;

/** At most64 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[64];
} roswasmc_bounded_2_uwvm_fourier_bridge_msg_GroupState_position_sequence;

/** At most64 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[64];
} roswasmc_bounded_2_uwvm_fourier_bridge_msg_GroupState_velocity_sequence;

/** At most64 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[64];
} roswasmc_bounded_2_uwvm_fourier_bridge_msg_GroupState_effort_sequence;

/** Complete ROS2 uwvm_fourier_bridge/msg/GroupState value; no field projects away native data. */
typedef struct roswasmc_bounded_2_uwvm_fourier_bridge_msg_GroupState
{
    /** Declared field group; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_uwvm_fourier_bridge_msg_GroupState_group_text group;
    /** Declared field position; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_uwvm_fourier_bridge_msg_GroupState_position_sequence position;
    /** Declared field velocity; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_uwvm_fourier_bridge_msg_GroupState_velocity_sequence velocity;
    /** Declared field effort; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_uwvm_fourier_bridge_msg_GroupState_effort_sequence effort;
    /** Declared field motion_state; canonical capacity is part of CODEC_IDENTITY. */
    int32_t motion_state;
} roswasmc_bounded_2_uwvm_fourier_bridge_msg_GroupState;

# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_GROUPSTATE_MAX_WIRE_BYTES 1684u
# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_GROUPSTATE_MIN_WIRE_BYTES 20u
# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_GROUPSTATE_CODEC_IDENTITY "UWVMROS1_f33e483ea4f7b9326e43f82c92f948ce6d47f16fb34e463ba25f3ec01d5e0bf4"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_uwvm_fourier_bridge_msg_GroupState_valid(roswasmc_bounded_2_uwvm_fourier_bridge_msg_GroupState const* value)
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
static inline size_t roswasmc_bounded_2_uwvm_fourier_bridge_msg_GroupState_wire_size(roswasmc_bounded_2_uwvm_fourier_bridge_msg_GroupState const* value)
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
static inline void roswasmc_bounded_2_uwvm_fourier_bridge_msg_GroupState_write_fields(roswasmc_bounded_2_uwvm_fourier_bridge_msg_GroupState const* value,
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
static inline int roswasmc_bounded_2_uwvm_fourier_bridge_msg_GroupState_read_fields(unsigned char const* p,
                                                                                    size_t n,
                                                                                    size_t* offset,
                                                                                    roswasmc_bounded_2_uwvm_fourier_bridge_msg_GroupState* value)
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
    return roswasmc_bounded_2_uwvm_fourier_bridge_msg_GroupState_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_uwvm_fourier_bridge_msg_GroupState_encode(roswasmc_bounded_2_uwvm_fourier_bridge_msg_GroupState const* value,
                                                                                    void* output,
                                                                                    size_t capacity,
                                                                                    size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_uwvm_fourier_bridge_msg_GroupState_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_uwvm_fourier_bridge_msg_GroupState_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_uwvm_fourier_bridge_msg_GroupState_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_uwvm_fourier_bridge_msg_GroupState_decode(void const* input, size_t length, roswasmc_bounded_2_uwvm_fourier_bridge_msg_GroupState* value)
{
    roswasmc_bounded_2_uwvm_fourier_bridge_msg_GroupState next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 20u || length > 1684u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_uwvm_fourier_bridge_msg_GroupState_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_GROUPVALUES)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_GROUPVALUES_0 != 0xf876b383UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_GROUPVALUES_1 != 0x8e1cce3eUL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_GROUPVALUES_2 != 0xbd75398eUL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_GROUPVALUES_3 != 0xb35f15c0UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_GROUPVALUES_4 != 0x1cce6e9bUL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_GROUPVALUES_5 != 0x69410e7bUL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_GROUPVALUES_6 != 0x1c2dd339UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_GROUPVALUES_7 != 0xaf69de18UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_GROUPVALUES 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_GROUPVALUES_0 0xf876b383UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_GROUPVALUES_1 0x8e1cce3eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_GROUPVALUES_2 0xbd75398eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_GROUPVALUES_3 0xb35f15c0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_GROUPVALUES_4 0x1cce6e9bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_GROUPVALUES_5 0x69410e7bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_GROUPVALUES_6 0x1c2dd339UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_GROUPVALUES_7 0xaf69de18UL

/** UTF-8 byte storage for uwvm_fourier_bridge/msg/GroupValues.group; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_uwvm_fourier_bridge_msg_GroupValues_group_text;

/** At most64 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[64];
} roswasmc_bounded_2_uwvm_fourier_bridge_msg_GroupValues_values_sequence;

/** Complete ROS2 uwvm_fourier_bridge/msg/GroupValues value; no field projects away native data. */
typedef struct roswasmc_bounded_2_uwvm_fourier_bridge_msg_GroupValues
{
    /** Declared field group; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_uwvm_fourier_bridge_msg_GroupValues_group_text group;
    /** Declared field values; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_uwvm_fourier_bridge_msg_GroupValues_values_sequence values;
} roswasmc_bounded_2_uwvm_fourier_bridge_msg_GroupValues;

# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_GROUPVALUES_MAX_WIRE_BYTES 648u
# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_GROUPVALUES_MIN_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_GROUPVALUES_CODEC_IDENTITY "UWVMROS1_3c69f73f7b6d1d4a8a6b5006f6dbe9a74021b10a0d3b493251f0085cb06d57f3"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_uwvm_fourier_bridge_msg_GroupValues_valid(roswasmc_bounded_2_uwvm_fourier_bridge_msg_GroupValues const* value)
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
static inline size_t roswasmc_bounded_2_uwvm_fourier_bridge_msg_GroupValues_wire_size(roswasmc_bounded_2_uwvm_fourier_bridge_msg_GroupValues const* value)
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
static inline void roswasmc_bounded_2_uwvm_fourier_bridge_msg_GroupValues_write_fields(roswasmc_bounded_2_uwvm_fourier_bridge_msg_GroupValues const* value,
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
static inline int roswasmc_bounded_2_uwvm_fourier_bridge_msg_GroupValues_read_fields(unsigned char const* p,
                                                                                     size_t n,
                                                                                     size_t* offset,
                                                                                     roswasmc_bounded_2_uwvm_fourier_bridge_msg_GroupValues* value)
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
    return roswasmc_bounded_2_uwvm_fourier_bridge_msg_GroupValues_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_uwvm_fourier_bridge_msg_GroupValues_encode(roswasmc_bounded_2_uwvm_fourier_bridge_msg_GroupValues const* value,
                                                                                     void* output,
                                                                                     size_t capacity,
                                                                                     size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_uwvm_fourier_bridge_msg_GroupValues_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_uwvm_fourier_bridge_msg_GroupValues_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_uwvm_fourier_bridge_msg_GroupValues_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_2_uwvm_fourier_bridge_msg_GroupValues_decode(void const* input,
                                                                                     size_t length,
                                                                                     roswasmc_bounded_2_uwvm_fourier_bridge_msg_GroupValues* value)
{
    roswasmc_bounded_2_uwvm_fourier_bridge_msg_GroupValues next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 8u || length > 648u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_uwvm_fourier_bridge_msg_GroupValues_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_MOTIONRECIPE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_MOTIONRECIPE_0 != 0x5e502e0cUL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_MOTIONRECIPE_1 != 0xfae40b65UL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_MOTIONRECIPE_2 != 0xaae15c20UL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_MOTIONRECIPE_3 != 0xef52511fUL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_MOTIONRECIPE_4 != 0xbd4cb9ceUL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_MOTIONRECIPE_5 != 0x26d3e9a2UL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_MOTIONRECIPE_6 != 0xb36a7b1eUL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_MOTIONRECIPE_7 != 0x53d7a70fUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_MOTIONRECIPE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_MOTIONRECIPE_0 0x5e502e0cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_MOTIONRECIPE_1 0xfae40b65UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_MOTIONRECIPE_2 0xaae15c20UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_MOTIONRECIPE_3 0xef52511fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_MOTIONRECIPE_4 0xbd4cb9ceUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_MOTIONRECIPE_5 0x26d3e9a2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_MOTIONRECIPE_6 0xb36a7b1eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_MOTIONRECIPE_7 0x53d7a70fUL

/** UTF-8 byte storage for uwvm_fourier_bridge/msg/MotionRecipe.group; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_uwvm_fourier_bridge_msg_MotionRecipe_group_text;

/** At most64 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[64];
} roswasmc_bounded_2_uwvm_fourier_bridge_msg_MotionRecipe_position_sequence;

/** At most64 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[64];
} roswasmc_bounded_2_uwvm_fourier_bridge_msg_MotionRecipe_velocity_sequence;

/** Complete ROS2 uwvm_fourier_bridge/msg/MotionRecipe value; no field projects away native data. */
typedef struct roswasmc_bounded_2_uwvm_fourier_bridge_msg_MotionRecipe
{
    /** Declared field move_type; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t move_type;
    /** Declared field group; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_uwvm_fourier_bridge_msg_MotionRecipe_group_text group;
    /** Declared field position; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_uwvm_fourier_bridge_msg_MotionRecipe_position_sequence position;
    /** Declared field has_velocity; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t has_velocity;
    /** Declared field velocity; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_uwvm_fourier_bridge_msg_MotionRecipe_velocity_sequence velocity;
    /** Declared field expected_velocity; canonical capacity is part of CODEC_IDENTITY. */
    int32_t expected_velocity;
} roswasmc_bounded_2_uwvm_fourier_bridge_msg_MotionRecipe;

# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_MOTIONRECIPE_MAX_WIRE_BYTES 1170u
# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_MOTIONRECIPE_MIN_WIRE_BYTES 18u
# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_MOTIONRECIPE_CODEC_IDENTITY "UWVMROS1_bc50051a3fd81e146ad97200427b3b673081f817a20dbc38de1533dc0a9bee14"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_uwvm_fourier_bridge_msg_MotionRecipe_valid(roswasmc_bounded_2_uwvm_fourier_bridge_msg_MotionRecipe const* value)
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
static inline size_t roswasmc_bounded_2_uwvm_fourier_bridge_msg_MotionRecipe_wire_size(roswasmc_bounded_2_uwvm_fourier_bridge_msg_MotionRecipe const* value)
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
static inline void roswasmc_bounded_2_uwvm_fourier_bridge_msg_MotionRecipe_write_fields(roswasmc_bounded_2_uwvm_fourier_bridge_msg_MotionRecipe const* value,
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
static inline int roswasmc_bounded_2_uwvm_fourier_bridge_msg_MotionRecipe_read_fields(unsigned char const* p,
                                                                                      size_t n,
                                                                                      size_t* offset,
                                                                                      roswasmc_bounded_2_uwvm_fourier_bridge_msg_MotionRecipe* value)
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
    return roswasmc_bounded_2_uwvm_fourier_bridge_msg_MotionRecipe_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_uwvm_fourier_bridge_msg_MotionRecipe_encode(roswasmc_bounded_2_uwvm_fourier_bridge_msg_MotionRecipe const* value,
                                                                                      void* output,
                                                                                      size_t capacity,
                                                                                      size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_uwvm_fourier_bridge_msg_MotionRecipe_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_uwvm_fourier_bridge_msg_MotionRecipe_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_uwvm_fourier_bridge_msg_MotionRecipe_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_2_uwvm_fourier_bridge_msg_MotionRecipe_decode(void const* input,
                                                                                      size_t length,
                                                                                      roswasmc_bounded_2_uwvm_fourier_bridge_msg_MotionRecipe* value)
{
    roswasmc_bounded_2_uwvm_fourier_bridge_msg_MotionRecipe next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 18u || length > 1170u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_uwvm_fourier_bridge_msg_MotionRecipe_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_STATUS)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_STATUS_0 != 0x9e868ce3UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_STATUS_1 != 0x6306afbcUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_STATUS_2 != 0xddbc8cabUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_STATUS_3 != 0x0d2006bbUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_STATUS_4 != 0x793ac2ebUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_STATUS_5 != 0xdd2cd24cUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_STATUS_6 != 0xb70ff732UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_STATUS_7 != 0x2a58085cUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_STATUS 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_STATUS_0 0x9e868ce3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_STATUS_1 0x6306afbcUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_STATUS_2 0xddbc8cabUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_STATUS_3 0x0d2006bbUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_STATUS_4 0x793ac2ebUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_STATUS_5 0xdd2cd24cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_STATUS_6 0xb70ff732UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_STATUS_7 0x2a58085cUL

/** UTF-8 byte storage for uwvm_fourier_bridge/msg/Status.fsm_name; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_uwvm_fourier_bridge_msg_Status_fsm_name_text;

/** UTF-8 byte storage for uwvm_fourier_bridge/msg/Status.upper_fsm_name; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_uwvm_fourier_bridge_msg_Status_upper_fsm_name_text;

/** UTF-8 byte storage for uwvm_fourier_bridge/msg/Status.velocity_source_name; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_uwvm_fourier_bridge_msg_Status_velocity_source_name_text;

/** At most64 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[64];
} roswasmc_bounded_2_uwvm_fourier_bridge_msg_Status_stand_pose_sequence;

/** At most8 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_2_uwvm_fourier_bridge_msg_GroupState data[8];
} roswasmc_bounded_2_uwvm_fourier_bridge_msg_Status_groups_sequence;

/** Complete ROS2 uwvm_fourier_bridge/msg/Status value; no field projects away native data. */
typedef struct roswasmc_bounded_2_uwvm_fourier_bridge_msg_Status
{
    /** Declared field fsm_state; canonical capacity is part of CODEC_IDENTITY. */
    int32_t fsm_state;
    /** Declared field fsm_name; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_uwvm_fourier_bridge_msg_Status_fsm_name_text fsm_name;
    /** Declared field upper_fsm_state; canonical capacity is part of CODEC_IDENTITY. */
    int32_t upper_fsm_state;
    /** Declared field upper_fsm_name; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_uwvm_fourier_bridge_msg_Status_upper_fsm_name_text upper_fsm_name;
    /** Declared field velocity_source; canonical capacity is part of CODEC_IDENTITY. */
    int32_t velocity_source;
    /** Declared field velocity_source_name; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_uwvm_fourier_bridge_msg_Status_velocity_source_name_text velocity_source_name;
    /** Declared field stand_pose; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_uwvm_fourier_bridge_msg_Status_stand_pose_sequence stand_pose;
    /** Declared field groups; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_uwvm_fourier_bridge_msg_Status_groups_sequence groups;
} roswasmc_bounded_2_uwvm_fourier_bridge_msg_Status;

# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_STATUS_MAX_WIRE_BYTES 14400u
# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_STATUS_MIN_WIRE_BYTES 32u
# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_STATUS_CODEC_IDENTITY "UWVMROS1_f251a6d2da8a35e9b49c1341ffda12f809186d845eb076d225ed274da7b4165e"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_uwvm_fourier_bridge_msg_Status_valid(roswasmc_bounded_2_uwvm_fourier_bridge_msg_Status const* value)
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
            if(!roswasmc_bounded_2_uwvm_fourier_bridge_msg_GroupState_valid(&value->groups.data[i]))
                return 0;
        }
    }
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_uwvm_fourier_bridge_msg_Status_wire_size(roswasmc_bounded_2_uwvm_fourier_bridge_msg_Status const* value)
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
            n += roswasmc_bounded_2_uwvm_fourier_bridge_msg_GroupState_wire_size(&value->groups.data[i]);
        }
    }
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_uwvm_fourier_bridge_msg_Status_write_fields(roswasmc_bounded_2_uwvm_fourier_bridge_msg_Status const* value,
                                                                                  unsigned char* p,
                                                                                  size_t* offset)
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
            roswasmc_bounded_2_uwvm_fourier_bridge_msg_GroupState_write_fields(&value->groups.data[i], p, offset);
        }
    }
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_uwvm_fourier_bridge_msg_Status_read_fields(unsigned char const* p,
                                                                                size_t n,
                                                                                size_t* offset,
                                                                                roswasmc_bounded_2_uwvm_fourier_bridge_msg_Status* value)
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
            if(!roswasmc_bounded_2_uwvm_fourier_bridge_msg_GroupState_read_fields(p, n, offset, &value->groups.data[i]))
                return 0;
        }
    }
    return roswasmc_bounded_2_uwvm_fourier_bridge_msg_Status_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_uwvm_fourier_bridge_msg_Status_encode(roswasmc_bounded_2_uwvm_fourier_bridge_msg_Status const* value,
                                                                                void* output,
                                                                                size_t capacity,
                                                                                size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_uwvm_fourier_bridge_msg_Status_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_uwvm_fourier_bridge_msg_Status_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_uwvm_fourier_bridge_msg_Status_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_uwvm_fourier_bridge_msg_Status_decode(void const* input, size_t length, roswasmc_bounded_2_uwvm_fourier_bridge_msg_Status* value)
{
    roswasmc_bounded_2_uwvm_fourier_bridge_msg_Status next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 32u || length > 14400u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_uwvm_fourier_bridge_msg_Status_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_VELOCITYCOMMAND)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_VELOCITYCOMMAND_0 != 0x3882fb54UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_VELOCITYCOMMAND_1 != 0x182d6c08UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_VELOCITYCOMMAND_2 != 0x62b3cc9fUL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_VELOCITYCOMMAND_3 != 0xd49e7281UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_VELOCITYCOMMAND_4 != 0x2c5a39faUL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_VELOCITYCOMMAND_5 != 0xae7c4215UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_VELOCITYCOMMAND_6 != 0x5bb6271fUL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_VELOCITYCOMMAND_7 != 0xb816c0bdUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_VELOCITYCOMMAND 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_VELOCITYCOMMAND_0 0x3882fb54UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_VELOCITYCOMMAND_1 0x182d6c08UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_VELOCITYCOMMAND_2 0x62b3cc9fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_VELOCITYCOMMAND_3 0xd49e7281UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_VELOCITYCOMMAND_4 0x2c5a39faUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_VELOCITYCOMMAND_5 0xae7c4215UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_VELOCITYCOMMAND_6 0x5bb6271fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_VELOCITYCOMMAND_7 0xb816c0bdUL

/** Complete ROS2 uwvm_fourier_bridge/msg/VelocityCommand value; no field projects away native data. */
typedef struct roswasmc_bounded_2_uwvm_fourier_bridge_msg_VelocityCommand
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
} roswasmc_bounded_2_uwvm_fourier_bridge_msg_VelocityCommand;

# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_VELOCITYCOMMAND_MAX_WIRE_BYTES 40u
# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_VELOCITYCOMMAND_MIN_WIRE_BYTES 40u
# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_MSG_VELOCITYCOMMAND_CODEC_IDENTITY "UWVMROS1_9b0a6facfb591afb82a34bb01b058f340626eba26619b8b686a52c6319e11d3d"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_uwvm_fourier_bridge_msg_VelocityCommand_valid(roswasmc_bounded_2_uwvm_fourier_bridge_msg_VelocityCommand const* value)
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
static inline size_t
    roswasmc_bounded_2_uwvm_fourier_bridge_msg_VelocityCommand_wire_size(roswasmc_bounded_2_uwvm_fourier_bridge_msg_VelocityCommand const* value)
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
    roswasmc_bounded_2_uwvm_fourier_bridge_msg_VelocityCommand_write_fields(roswasmc_bounded_2_uwvm_fourier_bridge_msg_VelocityCommand const* value,
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
static inline int roswasmc_bounded_2_uwvm_fourier_bridge_msg_VelocityCommand_read_fields(unsigned char const* p,
                                                                                         size_t n,
                                                                                         size_t* offset,
                                                                                         roswasmc_bounded_2_uwvm_fourier_bridge_msg_VelocityCommand* value)
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
    return roswasmc_bounded_2_uwvm_fourier_bridge_msg_VelocityCommand_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_uwvm_fourier_bridge_msg_VelocityCommand_encode(roswasmc_bounded_2_uwvm_fourier_bridge_msg_VelocityCommand const* value,
                                                                      void* output,
                                                                      size_t capacity,
                                                                      size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_uwvm_fourier_bridge_msg_VelocityCommand_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_uwvm_fourier_bridge_msg_VelocityCommand_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_uwvm_fourier_bridge_msg_VelocityCommand_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_2_uwvm_fourier_bridge_msg_VelocityCommand_decode(void const* input,
                                                                                         size_t length,
                                                                                         roswasmc_bounded_2_uwvm_fourier_bridge_msg_VelocityCommand* value)
{
    roswasmc_bounded_2_uwvm_fourier_bridge_msg_VelocityCommand next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 40u || length > 40u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_uwvm_fourier_bridge_msg_VelocityCommand_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_EXECUTEMOVE_REQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_EXECUTEMOVE_REQUEST_0 != 0x455d55cfUL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_EXECUTEMOVE_REQUEST_1 != 0x55642e79UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_EXECUTEMOVE_REQUEST_2 != 0xf5c220bcUL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_EXECUTEMOVE_REQUEST_3 != 0xec07a5ceUL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_EXECUTEMOVE_REQUEST_4 != 0xc29c4e42UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_EXECUTEMOVE_REQUEST_5 != 0x91051304UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_EXECUTEMOVE_REQUEST_6 != 0x87c9a0daUL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_EXECUTEMOVE_REQUEST_7 != 0x3a642e31UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_EXECUTEMOVE_REQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_EXECUTEMOVE_REQUEST_0 0x455d55cfUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_EXECUTEMOVE_REQUEST_1 0x55642e79UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_EXECUTEMOVE_REQUEST_2 0xf5c220bcUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_EXECUTEMOVE_REQUEST_3 0xec07a5ceUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_EXECUTEMOVE_REQUEST_4 0xc29c4e42UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_EXECUTEMOVE_REQUEST_5 0x91051304UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_EXECUTEMOVE_REQUEST_6 0x87c9a0daUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_EXECUTEMOVE_REQUEST_7 0x3a642e31UL

/** At most8 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_2_uwvm_fourier_bridge_msg_MotionRecipe data[8];
} roswasmc_bounded_2_uwvm_fourier_bridge_srv_ExecuteMove_Request_moves_sequence;

/** Complete ROS2 uwvm_fourier_bridge/srv/ExecuteMove_Request value; no field projects away native data. */
typedef struct roswasmc_bounded_2_uwvm_fourier_bridge_srv_ExecuteMove_Request
{
    /** Declared field sequence; canonical capacity is part of CODEC_IDENTITY. */
    uint64_t sequence;
    /** Declared field moves; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_ExecuteMove_Request_moves_sequence moves;
} roswasmc_bounded_2_uwvm_fourier_bridge_srv_ExecuteMove_Request;

# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_EXECUTEMOVE_REQUEST_MAX_WIRE_BYTES 9372u
# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_EXECUTEMOVE_REQUEST_MIN_WIRE_BYTES 12u
# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_EXECUTEMOVE_REQUEST_CODEC_IDENTITY                                                                         \
     "UWVMROS1_4f306d8dc39d1aec7cb634df8a1b3573996440cbdd390ad7447edfd93e0d626b"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_ExecuteMove_Request_valid(roswasmc_bounded_2_uwvm_fourier_bridge_srv_ExecuteMove_Request const* value)
{
    if(!value)
        return 0;
    if(value->moves.size > 8u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->moves.size; ++i)
        {
            if(!roswasmc_bounded_2_uwvm_fourier_bridge_msg_MotionRecipe_valid(&value->moves.data[i]))
                return 0;
        }
    }
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_ExecuteMove_Request_wire_size(roswasmc_bounded_2_uwvm_fourier_bridge_srv_ExecuteMove_Request const* value)
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
            n += roswasmc_bounded_2_uwvm_fourier_bridge_msg_MotionRecipe_wire_size(&value->moves.data[i]);
        }
    }
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_ExecuteMove_Request_write_fields(roswasmc_bounded_2_uwvm_fourier_bridge_srv_ExecuteMove_Request const* value,
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
            roswasmc_bounded_2_uwvm_fourier_bridge_msg_MotionRecipe_write_fields(&value->moves.data[i], p, offset);
        }
    }
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_ExecuteMove_Request_read_fields(unsigned char const* p,
                                                                               size_t n,
                                                                               size_t* offset,
                                                                               roswasmc_bounded_2_uwvm_fourier_bridge_srv_ExecuteMove_Request* value)
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
            if(!roswasmc_bounded_2_uwvm_fourier_bridge_msg_MotionRecipe_read_fields(p, n, offset, &value->moves.data[i]))
                return 0;
        }
    }
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_ExecuteMove_Request_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_ExecuteMove_Request_encode(roswasmc_bounded_2_uwvm_fourier_bridge_srv_ExecuteMove_Request const* value,
                                                                          void* output,
                                                                          size_t capacity,
                                                                          size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_uwvm_fourier_bridge_srv_ExecuteMove_Request_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_uwvm_fourier_bridge_srv_ExecuteMove_Request_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_ExecuteMove_Request_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_ExecuteMove_Request_decode(void const* input,
                                                                          size_t length,
                                                                          roswasmc_bounded_2_uwvm_fourier_bridge_srv_ExecuteMove_Request* value)
{
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_ExecuteMove_Request next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 12u || length > 9372u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_uwvm_fourier_bridge_srv_ExecuteMove_Request_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_EXECUTEMOVE_RESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_EXECUTEMOVE_RESPONSE_0 != 0xc57c27d4UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_EXECUTEMOVE_RESPONSE_1 != 0x0a643d1dUL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_EXECUTEMOVE_RESPONSE_2 != 0x410b2dc6UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_EXECUTEMOVE_RESPONSE_3 != 0xe0589562UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_EXECUTEMOVE_RESPONSE_4 != 0x0e0fa70eUL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_EXECUTEMOVE_RESPONSE_5 != 0x8eafe549UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_EXECUTEMOVE_RESPONSE_6 != 0x5dee45c1UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_EXECUTEMOVE_RESPONSE_7 != 0x9ff703c5UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_EXECUTEMOVE_RESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_EXECUTEMOVE_RESPONSE_0 0xc57c27d4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_EXECUTEMOVE_RESPONSE_1 0x0a643d1dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_EXECUTEMOVE_RESPONSE_2 0x410b2dc6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_EXECUTEMOVE_RESPONSE_3 0xe0589562UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_EXECUTEMOVE_RESPONSE_4 0x0e0fa70eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_EXECUTEMOVE_RESPONSE_5 0x8eafe549UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_EXECUTEMOVE_RESPONSE_6 0x5dee45c1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_EXECUTEMOVE_RESPONSE_7 0x9ff703c5UL

/** UTF-8 byte storage for uwvm_fourier_bridge/srv/ExecuteMove_Response.error; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_uwvm_fourier_bridge_srv_ExecuteMove_Response_error_text;

/** Complete ROS2 uwvm_fourier_bridge/srv/ExecuteMove_Response value; no field projects away native data. */
typedef struct roswasmc_bounded_2_uwvm_fourier_bridge_srv_ExecuteMove_Response
{
    /** Declared field status; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t status;
    /** Declared field error; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_ExecuteMove_Response_error_text error;
} roswasmc_bounded_2_uwvm_fourier_bridge_srv_ExecuteMove_Response;

# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_EXECUTEMOVE_RESPONSE_MAX_WIRE_BYTES 136u
# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_EXECUTEMOVE_RESPONSE_MIN_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_EXECUTEMOVE_RESPONSE_CODEC_IDENTITY                                                                        \
     "UWVMROS1_16cd03eb2e730dcd9eda47be3a506298f9369f0f61bcddd634a06295f902dcab"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_ExecuteMove_Response_valid(roswasmc_bounded_2_uwvm_fourier_bridge_srv_ExecuteMove_Response const* value)
{
    if(!value)
        return 0;
    if(value->error.size > 128u || !uwvm_bounded_utf8(value->error.data, value->error.size))
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_ExecuteMove_Response_wire_size(roswasmc_bounded_2_uwvm_fourier_bridge_srv_ExecuteMove_Response const* value)
{
    size_t n = 0;
    n += 4;
    n += 4 + value->error.size;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_ExecuteMove_Response_write_fields(roswasmc_bounded_2_uwvm_fourier_bridge_srv_ExecuteMove_Response const* value,
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
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_ExecuteMove_Response_read_fields(unsigned char const* p,
                                                                                size_t n,
                                                                                size_t* offset,
                                                                                roswasmc_bounded_2_uwvm_fourier_bridge_srv_ExecuteMove_Response* value)
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
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_ExecuteMove_Response_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_ExecuteMove_Response_encode(roswasmc_bounded_2_uwvm_fourier_bridge_srv_ExecuteMove_Response const* value,
                                                                           void* output,
                                                                           size_t capacity,
                                                                           size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_uwvm_fourier_bridge_srv_ExecuteMove_Response_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_uwvm_fourier_bridge_srv_ExecuteMove_Response_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_ExecuteMove_Response_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_ExecuteMove_Response_decode(void const* input,
                                                                           size_t length,
                                                                           roswasmc_bounded_2_uwvm_fourier_bridge_srv_ExecuteMove_Response* value)
{
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_ExecuteMove_Response next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 8u || length > 136u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_uwvm_fourier_bridge_srv_ExecuteMove_Response_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETBASEDATA_REQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETBASEDATA_REQUEST_0 != 0xc21a654cUL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETBASEDATA_REQUEST_1 != 0xe7d00354UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETBASEDATA_REQUEST_2 != 0xc2b57849UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETBASEDATA_REQUEST_3 != 0xb23904dcUL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETBASEDATA_REQUEST_4 != 0xfa149b5fUL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETBASEDATA_REQUEST_5 != 0x25073762UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETBASEDATA_REQUEST_6 != 0x7eb05730UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETBASEDATA_REQUEST_7 != 0x9aa47715UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETBASEDATA_REQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETBASEDATA_REQUEST_0 0xc21a654cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETBASEDATA_REQUEST_1 0xe7d00354UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETBASEDATA_REQUEST_2 0xc2b57849UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETBASEDATA_REQUEST_3 0xb23904dcUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETBASEDATA_REQUEST_4 0xfa149b5fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETBASEDATA_REQUEST_5 0x25073762UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETBASEDATA_REQUEST_6 0x7eb05730UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETBASEDATA_REQUEST_7 0x9aa47715UL

/** UTF-8 byte storage for uwvm_fourier_bridge/srv/GetBaseData_Request.key; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetBaseData_Request_key_text;

/** Complete ROS2 uwvm_fourier_bridge/srv/GetBaseData_Request value; no field projects away native data. */
typedef struct roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetBaseData_Request
{
    /** Declared field sequence; canonical capacity is part of CODEC_IDENTITY. */
    uint64_t sequence;
    /** Declared field key; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetBaseData_Request_key_text key;
} roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetBaseData_Request;

# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETBASEDATA_REQUEST_MAX_WIRE_BYTES 140u
# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETBASEDATA_REQUEST_MIN_WIRE_BYTES 12u
# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETBASEDATA_REQUEST_CODEC_IDENTITY                                                                         \
     "UWVMROS1_19cfad0a79a7703b8dd5d9215a705026eaff78ef1794bda704f52a1e70d2dd5f"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetBaseData_Request_valid(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetBaseData_Request const* value)
{
    if(!value)
        return 0;
    if(value->key.size > 128u || !uwvm_bounded_utf8(value->key.data, value->key.size))
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetBaseData_Request_wire_size(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetBaseData_Request const* value)
{
    size_t n = 0;
    n += 8;
    n += 4 + value->key.size;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetBaseData_Request_write_fields(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetBaseData_Request const* value,
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
static inline int
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetBaseData_Request_read_fields(unsigned char const* p,
                                                                               size_t n,
                                                                               size_t* offset,
                                                                               roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetBaseData_Request* value)
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
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetBaseData_Request_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetBaseData_Request_encode(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetBaseData_Request const* value,
                                                                          void* output,
                                                                          size_t capacity,
                                                                          size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetBaseData_Request_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetBaseData_Request_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetBaseData_Request_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetBaseData_Request_decode(void const* input,
                                                                          size_t length,
                                                                          roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetBaseData_Request* value)
{
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetBaseData_Request next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 12u || length > 140u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetBaseData_Request_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETBASEDATA_RESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETBASEDATA_RESPONSE_0 != 0x53514f8fUL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETBASEDATA_RESPONSE_1 != 0x4390a8a2UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETBASEDATA_RESPONSE_2 != 0x185ea411UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETBASEDATA_RESPONSE_3 != 0x0e5f1324UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETBASEDATA_RESPONSE_4 != 0xe5962191UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETBASEDATA_RESPONSE_5 != 0x2992ce26UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETBASEDATA_RESPONSE_6 != 0x2f950206UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETBASEDATA_RESPONSE_7 != 0x4c3ceeb1UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETBASEDATA_RESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETBASEDATA_RESPONSE_0 0x53514f8fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETBASEDATA_RESPONSE_1 0x4390a8a2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETBASEDATA_RESPONSE_2 0x185ea411UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETBASEDATA_RESPONSE_3 0x0e5f1324UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETBASEDATA_RESPONSE_4 0xe5962191UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETBASEDATA_RESPONSE_5 0x2992ce26UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETBASEDATA_RESPONSE_6 0x2f950206UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETBASEDATA_RESPONSE_7 0x4c3ceeb1UL

/** UTF-8 byte storage for uwvm_fourier_bridge/srv/GetBaseData_Response.error; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetBaseData_Response_error_text;

/** At most64 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[64];
} roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetBaseData_Response_values_sequence;

/** Complete ROS2 uwvm_fourier_bridge/srv/GetBaseData_Response value; no field projects away native data. */
typedef struct roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetBaseData_Response
{
    /** Declared field status; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t status;
    /** Declared field error; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetBaseData_Response_error_text error;
    /** Declared field values; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetBaseData_Response_values_sequence values;
} roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetBaseData_Response;

# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETBASEDATA_RESPONSE_MAX_WIRE_BYTES 652u
# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETBASEDATA_RESPONSE_MIN_WIRE_BYTES 12u
# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETBASEDATA_RESPONSE_CODEC_IDENTITY                                                                        \
     "UWVMROS1_4c632e4c71f87f82064078b2936c9af2be87f56e44014e029470748c14614804"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetBaseData_Response_valid(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetBaseData_Response const* value)
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
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetBaseData_Response_wire_size(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetBaseData_Response const* value)
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
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetBaseData_Response_write_fields(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetBaseData_Response const* value,
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
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetBaseData_Response_read_fields(unsigned char const* p,
                                                                                size_t n,
                                                                                size_t* offset,
                                                                                roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetBaseData_Response* value)
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
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetBaseData_Response_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetBaseData_Response_encode(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetBaseData_Response const* value,
                                                                           void* output,
                                                                           size_t capacity,
                                                                           size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetBaseData_Response_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetBaseData_Response_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetBaseData_Response_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetBaseData_Response_decode(void const* input,
                                                                           size_t length,
                                                                           roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetBaseData_Response* value)
{
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetBaseData_Response next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 12u || length > 652u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetBaseData_Response_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETCARTESIANSTATE_REQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETCARTESIANSTATE_REQUEST_0 != 0xaa3e2f41UL ||                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETCARTESIANSTATE_REQUEST_1 != 0xdaa08278UL ||                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETCARTESIANSTATE_REQUEST_2 != 0x83b6e724UL ||                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETCARTESIANSTATE_REQUEST_3 != 0xc869ff0eUL ||                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETCARTESIANSTATE_REQUEST_4 != 0xc6f10a19UL ||                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETCARTESIANSTATE_REQUEST_5 != 0xa6c8332fUL ||                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETCARTESIANSTATE_REQUEST_6 != 0xca665914UL ||                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETCARTESIANSTATE_REQUEST_7 != 0x03f429faUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETCARTESIANSTATE_REQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETCARTESIANSTATE_REQUEST_0 0xaa3e2f41UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETCARTESIANSTATE_REQUEST_1 0xdaa08278UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETCARTESIANSTATE_REQUEST_2 0x83b6e724UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETCARTESIANSTATE_REQUEST_3 0xc869ff0eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETCARTESIANSTATE_REQUEST_4 0xc6f10a19UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETCARTESIANSTATE_REQUEST_5 0xa6c8332fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETCARTESIANSTATE_REQUEST_6 0xca665914UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETCARTESIANSTATE_REQUEST_7 0x03f429faUL

/** UTF-8 byte storage for uwvm_fourier_bridge/srv/GetCartesianState_Request.group; size excludes padding/terminators.
 */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetCartesianState_Request_group_text;

/** UTF-8 byte storage for uwvm_fourier_bridge/srv/GetCartesianState_Request.key; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetCartesianState_Request_key_text;

/** Complete ROS2 uwvm_fourier_bridge/srv/GetCartesianState_Request value; no field projects away native data. */
typedef struct roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetCartesianState_Request
{
    /** Declared field sequence; canonical capacity is part of CODEC_IDENTITY. */
    uint64_t sequence;
    /** Declared field group; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetCartesianState_Request_group_text group;
    /** Declared field key; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetCartesianState_Request_key_text key;
} roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetCartesianState_Request;

# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETCARTESIANSTATE_REQUEST_MAX_WIRE_BYTES 272u
# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETCARTESIANSTATE_REQUEST_MIN_WIRE_BYTES 16u
# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETCARTESIANSTATE_REQUEST_CODEC_IDENTITY                                                                   \
     "UWVMROS1_2255ca1da45c891d1a3f8c8f77f1f6c5b9380d5ac5250a5d522ab581c4df7eee"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetCartesianState_Request_valid(
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetCartesianState_Request const* value)
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
static inline size_t roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetCartesianState_Request_wire_size(
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetCartesianState_Request const* value)
{
    size_t n = 0;
    n += 8;
    n += 4 + value->group.size;
    n += 4 + value->key.size;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetCartesianState_Request_write_fields(
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetCartesianState_Request const* value,
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
static inline int roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetCartesianState_Request_read_fields(
    unsigned char const* p,
    size_t n,
    size_t* offset,
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetCartesianState_Request* value)
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
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetCartesianState_Request_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetCartesianState_Request_encode(
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetCartesianState_Request const* value,
    void* output,
    size_t capacity,
    size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetCartesianState_Request_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetCartesianState_Request_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetCartesianState_Request_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetCartesianState_Request_decode(void const* input,
                                                                                size_t length,
                                                                                roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetCartesianState_Request* value)
{
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetCartesianState_Request next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 16u || length > 272u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetCartesianState_Request_read_fields((unsigned char const*)input, length, &offset, &next) ||
       offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETCARTESIANSTATE_RESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETCARTESIANSTATE_RESPONSE_0 != 0xf300a918UL ||                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETCARTESIANSTATE_RESPONSE_1 != 0xca9ce24eUL ||                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETCARTESIANSTATE_RESPONSE_2 != 0x96e4cc05UL ||                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETCARTESIANSTATE_RESPONSE_3 != 0x8d516f36UL ||                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETCARTESIANSTATE_RESPONSE_4 != 0x5ab635edUL ||                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETCARTESIANSTATE_RESPONSE_5 != 0xf454779bUL ||                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETCARTESIANSTATE_RESPONSE_6 != 0x4b6a32acUL ||                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETCARTESIANSTATE_RESPONSE_7 != 0x5372303cUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETCARTESIANSTATE_RESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETCARTESIANSTATE_RESPONSE_0 0xf300a918UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETCARTESIANSTATE_RESPONSE_1 0xca9ce24eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETCARTESIANSTATE_RESPONSE_2 0x96e4cc05UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETCARTESIANSTATE_RESPONSE_3 0x8d516f36UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETCARTESIANSTATE_RESPONSE_4 0x5ab635edUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETCARTESIANSTATE_RESPONSE_5 0xf454779bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETCARTESIANSTATE_RESPONSE_6 0x4b6a32acUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETCARTESIANSTATE_RESPONSE_7 0x5372303cUL

/** UTF-8 byte storage for uwvm_fourier_bridge/srv/GetCartesianState_Response.error; size excludes padding/terminators.
 */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetCartesianState_Response_error_text;

/** At most64 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[64];
} roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetCartesianState_Response_values_sequence;

/** Complete ROS2 uwvm_fourier_bridge/srv/GetCartesianState_Response value; no field projects away native data. */
typedef struct roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetCartesianState_Response
{
    /** Declared field status; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t status;
    /** Declared field error; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetCartesianState_Response_error_text error;
    /** Declared field values; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetCartesianState_Response_values_sequence values;
} roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetCartesianState_Response;

# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETCARTESIANSTATE_RESPONSE_MAX_WIRE_BYTES 652u
# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETCARTESIANSTATE_RESPONSE_MIN_WIRE_BYTES 12u
# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETCARTESIANSTATE_RESPONSE_CODEC_IDENTITY                                                                  \
     "UWVMROS1_8adfef323b2635fd716d7121496c091656bc76bce2b320479345ef94bdc62a40"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetCartesianState_Response_valid(
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetCartesianState_Response const* value)
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
static inline size_t roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetCartesianState_Response_wire_size(
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetCartesianState_Response const* value)
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
static inline void roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetCartesianState_Response_write_fields(
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetCartesianState_Response const* value,
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
static inline int roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetCartesianState_Response_read_fields(
    unsigned char const* p,
    size_t n,
    size_t* offset,
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetCartesianState_Response* value)
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
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetCartesianState_Response_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetCartesianState_Response_encode(
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetCartesianState_Response const* value,
    void* output,
    size_t capacity,
    size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetCartesianState_Response_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetCartesianState_Response_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetCartesianState_Response_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetCartesianState_Response_decode(void const* input,
                                                                                 size_t length,
                                                                                 roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetCartesianState_Response* value)
{
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetCartesianState_Response next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 12u || length > 652u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetCartesianState_Response_read_fields((unsigned char const*)input, length, &offset, &next) ||
       offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETCONTACTDATA_REQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETCONTACTDATA_REQUEST_0 != 0x0c4c48a9UL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETCONTACTDATA_REQUEST_1 != 0x086dab3aUL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETCONTACTDATA_REQUEST_2 != 0xcc5ed910UL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETCONTACTDATA_REQUEST_3 != 0x392d3505UL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETCONTACTDATA_REQUEST_4 != 0x2fb2f155UL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETCONTACTDATA_REQUEST_5 != 0x1e20b44aUL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETCONTACTDATA_REQUEST_6 != 0x243208a5UL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETCONTACTDATA_REQUEST_7 != 0xa7699c8dUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETCONTACTDATA_REQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETCONTACTDATA_REQUEST_0 0x0c4c48a9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETCONTACTDATA_REQUEST_1 0x086dab3aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETCONTACTDATA_REQUEST_2 0xcc5ed910UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETCONTACTDATA_REQUEST_3 0x392d3505UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETCONTACTDATA_REQUEST_4 0x2fb2f155UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETCONTACTDATA_REQUEST_5 0x1e20b44aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETCONTACTDATA_REQUEST_6 0x243208a5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETCONTACTDATA_REQUEST_7 0xa7699c8dUL

/** UTF-8 byte storage for uwvm_fourier_bridge/srv/GetContactData_Request.key; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetContactData_Request_key_text;

/** Complete ROS2 uwvm_fourier_bridge/srv/GetContactData_Request value; no field projects away native data. */
typedef struct roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetContactData_Request
{
    /** Declared field sequence; canonical capacity is part of CODEC_IDENTITY. */
    uint64_t sequence;
    /** Declared field key; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetContactData_Request_key_text key;
} roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetContactData_Request;

# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETCONTACTDATA_REQUEST_MAX_WIRE_BYTES 140u
# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETCONTACTDATA_REQUEST_MIN_WIRE_BYTES 12u
# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETCONTACTDATA_REQUEST_CODEC_IDENTITY                                                                      \
     "UWVMROS1_52cf1fcf2036a4aa97ec902842838707ee1c96c63f6466165af5d1f3cde5f4e0"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetContactData_Request_valid(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetContactData_Request const* value)
{
    if(!value)
        return 0;
    if(value->key.size > 128u || !uwvm_bounded_utf8(value->key.data, value->key.size))
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetContactData_Request_wire_size(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetContactData_Request const* value)
{
    size_t n = 0;
    n += 8;
    n += 4 + value->key.size;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetContactData_Request_write_fields(
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetContactData_Request const* value,
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
static inline int
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetContactData_Request_read_fields(unsigned char const* p,
                                                                                  size_t n,
                                                                                  size_t* offset,
                                                                                  roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetContactData_Request* value)
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
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetContactData_Request_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetContactData_Request_encode(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetContactData_Request const* value,
                                                                             void* output,
                                                                             size_t capacity,
                                                                             size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetContactData_Request_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetContactData_Request_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetContactData_Request_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetContactData_Request_decode(void const* input,
                                                                             size_t length,
                                                                             roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetContactData_Request* value)
{
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetContactData_Request next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 12u || length > 140u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetContactData_Request_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETCONTACTDATA_RESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETCONTACTDATA_RESPONSE_0 != 0x349d7df2UL ||                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETCONTACTDATA_RESPONSE_1 != 0x340a8f0fUL ||                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETCONTACTDATA_RESPONSE_2 != 0xdeeb44e8UL ||                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETCONTACTDATA_RESPONSE_3 != 0xfbee76caUL ||                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETCONTACTDATA_RESPONSE_4 != 0x3b9cd901UL ||                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETCONTACTDATA_RESPONSE_5 != 0xac4621c5UL ||                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETCONTACTDATA_RESPONSE_6 != 0xdfdf1671UL ||                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETCONTACTDATA_RESPONSE_7 != 0x05999489UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETCONTACTDATA_RESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETCONTACTDATA_RESPONSE_0 0x349d7df2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETCONTACTDATA_RESPONSE_1 0x340a8f0fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETCONTACTDATA_RESPONSE_2 0xdeeb44e8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETCONTACTDATA_RESPONSE_3 0xfbee76caUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETCONTACTDATA_RESPONSE_4 0x3b9cd901UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETCONTACTDATA_RESPONSE_5 0xac4621c5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETCONTACTDATA_RESPONSE_6 0xdfdf1671UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETCONTACTDATA_RESPONSE_7 0x05999489UL

/** UTF-8 byte storage for uwvm_fourier_bridge/srv/GetContactData_Response.error; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetContactData_Response_error_text;

/** At most64 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[64];
} roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetContactData_Response_values_sequence;

/** Complete ROS2 uwvm_fourier_bridge/srv/GetContactData_Response value; no field projects away native data. */
typedef struct roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetContactData_Response
{
    /** Declared field status; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t status;
    /** Declared field error; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetContactData_Response_error_text error;
    /** Declared field values; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetContactData_Response_values_sequence values;
} roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetContactData_Response;

# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETCONTACTDATA_RESPONSE_MAX_WIRE_BYTES 652u
# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETCONTACTDATA_RESPONSE_MIN_WIRE_BYTES 12u
# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETCONTACTDATA_RESPONSE_CODEC_IDENTITY                                                                     \
     "UWVMROS1_504e7cc1bcb1c9a649cda204bbfbf8c6735fc5d71466b8a72d0536f0d3746b2e"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetContactData_Response_valid(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetContactData_Response const* value)
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
static inline size_t roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetContactData_Response_wire_size(
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetContactData_Response const* value)
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
static inline void roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetContactData_Response_write_fields(
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetContactData_Response const* value,
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
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetContactData_Response_read_fields(unsigned char const* p,
                                                                                   size_t n,
                                                                                   size_t* offset,
                                                                                   roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetContactData_Response* value)
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
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetContactData_Response_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetContactData_Response_encode(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetContactData_Response const* value,
                                                                              void* output,
                                                                              size_t capacity,
                                                                              size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetContactData_Response_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetContactData_Response_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetContactData_Response_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetContactData_Response_decode(void const* input,
                                                                              size_t length,
                                                                              roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetContactData_Response* value)
{
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetContactData_Response next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 12u || length > 652u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetContactData_Response_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETFSMNAME_REQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETFSMNAME_REQUEST_0 != 0xa20a95e9UL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETFSMNAME_REQUEST_1 != 0xbca274a6UL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETFSMNAME_REQUEST_2 != 0x8356e4c6UL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETFSMNAME_REQUEST_3 != 0xb4d7bd25UL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETFSMNAME_REQUEST_4 != 0x11cea0e4UL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETFSMNAME_REQUEST_5 != 0x84c512f7UL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETFSMNAME_REQUEST_6 != 0x679cb7a2UL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETFSMNAME_REQUEST_7 != 0x0aedaa7fUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETFSMNAME_REQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETFSMNAME_REQUEST_0 0xa20a95e9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETFSMNAME_REQUEST_1 0xbca274a6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETFSMNAME_REQUEST_2 0x8356e4c6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETFSMNAME_REQUEST_3 0xb4d7bd25UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETFSMNAME_REQUEST_4 0x11cea0e4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETFSMNAME_REQUEST_5 0x84c512f7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETFSMNAME_REQUEST_6 0x679cb7a2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETFSMNAME_REQUEST_7 0x0aedaa7fUL

/** Complete ROS2 uwvm_fourier_bridge/srv/GetFsmName_Request value; no field projects away native data. */
typedef struct roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmName_Request
{
    /** Declared field sequence; canonical capacity is part of CODEC_IDENTITY. */
    uint64_t sequence;
} roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmName_Request;

# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETFSMNAME_REQUEST_MAX_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETFSMNAME_REQUEST_MIN_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETFSMNAME_REQUEST_CODEC_IDENTITY                                                                          \
     "UWVMROS1_d8a11bb7eee1af0c138ec4f934610c4b88d817be25992cb854100cb61d8d6100"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmName_Request_valid(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmName_Request const* value)
{
    if(!value)
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmName_Request_wire_size(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmName_Request const* value)
{
    size_t n = 0;
    n += 8;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmName_Request_write_fields(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmName_Request const* value,
                                                                               unsigned char* p,
                                                                               size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->sequence, 8);
    *offset += 8;
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmName_Request_read_fields(unsigned char const* p,
                                                                              size_t n,
                                                                              size_t* offset,
                                                                              roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmName_Request* value)
{
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->sequence, &bits, 8);
    }
    *offset += 8;
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmName_Request_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmName_Request_encode(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmName_Request const* value,
                                                                         void* output,
                                                                         size_t capacity,
                                                                         size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmName_Request_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmName_Request_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmName_Request_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmName_Request_decode(void const* input,
                                                                         size_t length,
                                                                         roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmName_Request* value)
{
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmName_Request next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 8u || length > 8u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmName_Request_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETFSMNAME_RESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETFSMNAME_RESPONSE_0 != 0x727541cbUL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETFSMNAME_RESPONSE_1 != 0x2437643eUL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETFSMNAME_RESPONSE_2 != 0xb8b30d36UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETFSMNAME_RESPONSE_3 != 0x53ad4d74UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETFSMNAME_RESPONSE_4 != 0x8dcf3a5cUL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETFSMNAME_RESPONSE_5 != 0xea403abfUL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETFSMNAME_RESPONSE_6 != 0x4125e1e1UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETFSMNAME_RESPONSE_7 != 0xe3883b5fUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETFSMNAME_RESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETFSMNAME_RESPONSE_0 0x727541cbUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETFSMNAME_RESPONSE_1 0x2437643eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETFSMNAME_RESPONSE_2 0xb8b30d36UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETFSMNAME_RESPONSE_3 0x53ad4d74UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETFSMNAME_RESPONSE_4 0x8dcf3a5cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETFSMNAME_RESPONSE_5 0xea403abfUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETFSMNAME_RESPONSE_6 0x4125e1e1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETFSMNAME_RESPONSE_7 0xe3883b5fUL

/** UTF-8 byte storage for uwvm_fourier_bridge/srv/GetFsmName_Response.error; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmName_Response_error_text;

/** UTF-8 byte storage for uwvm_fourier_bridge/srv/GetFsmName_Response.value; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmName_Response_value_text;

/** Complete ROS2 uwvm_fourier_bridge/srv/GetFsmName_Response value; no field projects away native data. */
typedef struct roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmName_Response
{
    /** Declared field status; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t status;
    /** Declared field error; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmName_Response_error_text error;
    /** Declared field value; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmName_Response_value_text value;
} roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmName_Response;

# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETFSMNAME_RESPONSE_MAX_WIRE_BYTES 268u
# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETFSMNAME_RESPONSE_MIN_WIRE_BYTES 12u
# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETFSMNAME_RESPONSE_CODEC_IDENTITY                                                                         \
     "UWVMROS1_6ac4c78b17f0a366274f7fc74e981e95e605040937a78b3e328836f781c6886e"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmName_Response_valid(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmName_Response const* value)
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
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmName_Response_wire_size(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmName_Response const* value)
{
    size_t n = 0;
    n += 4;
    n += 4 + value->error.size;
    n += 4 + value->value.size;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmName_Response_write_fields(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmName_Response const* value,
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
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmName_Response_read_fields(unsigned char const* p,
                                                                               size_t n,
                                                                               size_t* offset,
                                                                               roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmName_Response* value)
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
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmName_Response_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmName_Response_encode(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmName_Response const* value,
                                                                          void* output,
                                                                          size_t capacity,
                                                                          size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmName_Response_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmName_Response_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmName_Response_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmName_Response_decode(void const* input,
                                                                          size_t length,
                                                                          roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmName_Response* value)
{
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmName_Response next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 12u || length > 268u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmName_Response_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETFSMSTATE_REQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETFSMSTATE_REQUEST_0 != 0x1bfd3637UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETFSMSTATE_REQUEST_1 != 0x613a4235UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETFSMSTATE_REQUEST_2 != 0x494c6babUL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETFSMSTATE_REQUEST_3 != 0x277f1f1cUL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETFSMSTATE_REQUEST_4 != 0x4ac87143UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETFSMSTATE_REQUEST_5 != 0x83cd8f7eUL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETFSMSTATE_REQUEST_6 != 0x73a4a07fUL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETFSMSTATE_REQUEST_7 != 0xc85d3067UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETFSMSTATE_REQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETFSMSTATE_REQUEST_0 0x1bfd3637UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETFSMSTATE_REQUEST_1 0x613a4235UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETFSMSTATE_REQUEST_2 0x494c6babUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETFSMSTATE_REQUEST_3 0x277f1f1cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETFSMSTATE_REQUEST_4 0x4ac87143UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETFSMSTATE_REQUEST_5 0x83cd8f7eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETFSMSTATE_REQUEST_6 0x73a4a07fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETFSMSTATE_REQUEST_7 0xc85d3067UL

/** Complete ROS2 uwvm_fourier_bridge/srv/GetFsmState_Request value; no field projects away native data. */
typedef struct roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmState_Request
{
    /** Declared field sequence; canonical capacity is part of CODEC_IDENTITY. */
    uint64_t sequence;
} roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmState_Request;

# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETFSMSTATE_REQUEST_MAX_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETFSMSTATE_REQUEST_MIN_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETFSMSTATE_REQUEST_CODEC_IDENTITY                                                                         \
     "UWVMROS1_061098411a7d26f31dd31957b34190e798305289bad558d351ee81df810e3bd0"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmState_Request_valid(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmState_Request const* value)
{
    if(!value)
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmState_Request_wire_size(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmState_Request const* value)
{
    size_t n = 0;
    n += 8;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmState_Request_write_fields(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmState_Request const* value,
                                                                                unsigned char* p,
                                                                                size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->sequence, 8);
    *offset += 8;
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmState_Request_read_fields(unsigned char const* p,
                                                                               size_t n,
                                                                               size_t* offset,
                                                                               roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmState_Request* value)
{
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->sequence, &bits, 8);
    }
    *offset += 8;
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmState_Request_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmState_Request_encode(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmState_Request const* value,
                                                                          void* output,
                                                                          size_t capacity,
                                                                          size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmState_Request_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmState_Request_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmState_Request_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmState_Request_decode(void const* input,
                                                                          size_t length,
                                                                          roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmState_Request* value)
{
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmState_Request next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 8u || length > 8u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmState_Request_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETFSMSTATE_RESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETFSMSTATE_RESPONSE_0 != 0x2a44baf2UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETFSMSTATE_RESPONSE_1 != 0x2c5d8496UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETFSMSTATE_RESPONSE_2 != 0xd57669c3UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETFSMSTATE_RESPONSE_3 != 0x684bd6f3UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETFSMSTATE_RESPONSE_4 != 0x19b8610aUL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETFSMSTATE_RESPONSE_5 != 0xf45caed8UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETFSMSTATE_RESPONSE_6 != 0x2c864434UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETFSMSTATE_RESPONSE_7 != 0x538f676dUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETFSMSTATE_RESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETFSMSTATE_RESPONSE_0 0x2a44baf2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETFSMSTATE_RESPONSE_1 0x2c5d8496UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETFSMSTATE_RESPONSE_2 0xd57669c3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETFSMSTATE_RESPONSE_3 0x684bd6f3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETFSMSTATE_RESPONSE_4 0x19b8610aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETFSMSTATE_RESPONSE_5 0xf45caed8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETFSMSTATE_RESPONSE_6 0x2c864434UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETFSMSTATE_RESPONSE_7 0x538f676dUL

/** UTF-8 byte storage for uwvm_fourier_bridge/srv/GetFsmState_Response.error; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmState_Response_error_text;

/** Complete ROS2 uwvm_fourier_bridge/srv/GetFsmState_Response value; no field projects away native data. */
typedef struct roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmState_Response
{
    /** Declared field status; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t status;
    /** Declared field error; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmState_Response_error_text error;
    /** Declared field value; canonical capacity is part of CODEC_IDENTITY. */
    int32_t value;
} roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmState_Response;

# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETFSMSTATE_RESPONSE_MAX_WIRE_BYTES 140u
# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETFSMSTATE_RESPONSE_MIN_WIRE_BYTES 12u
# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETFSMSTATE_RESPONSE_CODEC_IDENTITY                                                                        \
     "UWVMROS1_1ac3b816f0e4aa4e769bd74d67274b85a8d9bf5ca7f8a359179280970b7e19e4"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmState_Response_valid(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmState_Response const* value)
{
    if(!value)
        return 0;
    if(value->error.size > 128u || !uwvm_bounded_utf8(value->error.data, value->error.size))
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmState_Response_wire_size(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmState_Response const* value)
{
    size_t n = 0;
    n += 4;
    n += 4 + value->error.size;
    n += 4;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmState_Response_write_fields(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmState_Response const* value,
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
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmState_Response_read_fields(unsigned char const* p,
                                                                                size_t n,
                                                                                size_t* offset,
                                                                                roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmState_Response* value)
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
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmState_Response_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmState_Response_encode(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmState_Response const* value,
                                                                           void* output,
                                                                           size_t capacity,
                                                                           size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmState_Response_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmState_Response_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmState_Response_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmState_Response_decode(void const* input,
                                                                           size_t length,
                                                                           roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmState_Response* value)
{
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmState_Response next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 12u || length > 140u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetFsmState_Response_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPMOTIONSTATE_REQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPMOTIONSTATE_REQUEST_0 != 0xbbfbd471UL ||                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPMOTIONSTATE_REQUEST_1 != 0xf668125cUL ||                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPMOTIONSTATE_REQUEST_2 != 0xcd4aec4aUL ||                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPMOTIONSTATE_REQUEST_3 != 0x544e802dUL ||                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPMOTIONSTATE_REQUEST_4 != 0xb4c1d962UL ||                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPMOTIONSTATE_REQUEST_5 != 0x9cf05f3cUL ||                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPMOTIONSTATE_REQUEST_6 != 0xefee4b83UL ||                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPMOTIONSTATE_REQUEST_7 != 0x6e68147dUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPMOTIONSTATE_REQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPMOTIONSTATE_REQUEST_0 0xbbfbd471UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPMOTIONSTATE_REQUEST_1 0xf668125cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPMOTIONSTATE_REQUEST_2 0xcd4aec4aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPMOTIONSTATE_REQUEST_3 0x544e802dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPMOTIONSTATE_REQUEST_4 0xb4c1d962UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPMOTIONSTATE_REQUEST_5 0x9cf05f3cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPMOTIONSTATE_REQUEST_6 0xefee4b83UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPMOTIONSTATE_REQUEST_7 0x6e68147dUL

/** UTF-8 byte storage for uwvm_fourier_bridge/srv/GetGroupMotionState_Request.group; size excludes padding/terminators.
 */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotionState_Request_group_text;

/** Complete ROS2 uwvm_fourier_bridge/srv/GetGroupMotionState_Request value; no field projects away native data. */
typedef struct roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotionState_Request
{
    /** Declared field sequence; canonical capacity is part of CODEC_IDENTITY. */
    uint64_t sequence;
    /** Declared field group; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotionState_Request_group_text group;
} roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotionState_Request;

# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPMOTIONSTATE_REQUEST_MAX_WIRE_BYTES 140u
# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPMOTIONSTATE_REQUEST_MIN_WIRE_BYTES 12u
# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPMOTIONSTATE_REQUEST_CODEC_IDENTITY                                                                 \
     "UWVMROS1_32606cb0ba540db0ce680716059ef3a7b4ad1277216fab4254521071cc0ea9ae"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotionState_Request_valid(
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotionState_Request const* value)
{
    if(!value)
        return 0;
    if(value->group.size > 128u || !uwvm_bounded_utf8(value->group.data, value->group.size))
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotionState_Request_wire_size(
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotionState_Request const* value)
{
    size_t n = 0;
    n += 8;
    n += 4 + value->group.size;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotionState_Request_write_fields(
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotionState_Request const* value,
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
static inline int roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotionState_Request_read_fields(
    unsigned char const* p,
    size_t n,
    size_t* offset,
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotionState_Request* value)
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
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotionState_Request_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotionState_Request_encode(
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotionState_Request const* value,
    void* output,
    size_t capacity,
    size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotionState_Request_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotionState_Request_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotionState_Request_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotionState_Request_decode(void const* input,
                                                                                  size_t length,
                                                                                  roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotionState_Request* value)
{
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotionState_Request next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 12u || length > 140u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotionState_Request_read_fields((unsigned char const*)input, length, &offset, &next) ||
       offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPMOTIONSTATE_RESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPMOTIONSTATE_RESPONSE_0 != 0xb88c0c7fUL ||                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPMOTIONSTATE_RESPONSE_1 != 0xe36bdc8eUL ||                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPMOTIONSTATE_RESPONSE_2 != 0x83adb5fbUL ||                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPMOTIONSTATE_RESPONSE_3 != 0x900ec5f0UL ||                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPMOTIONSTATE_RESPONSE_4 != 0x9a5431f5UL ||                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPMOTIONSTATE_RESPONSE_5 != 0x4776f56aUL ||                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPMOTIONSTATE_RESPONSE_6 != 0xfdb4c068UL ||                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPMOTIONSTATE_RESPONSE_7 != 0xbc869b8aUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPMOTIONSTATE_RESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPMOTIONSTATE_RESPONSE_0 0xb88c0c7fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPMOTIONSTATE_RESPONSE_1 0xe36bdc8eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPMOTIONSTATE_RESPONSE_2 0x83adb5fbUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPMOTIONSTATE_RESPONSE_3 0x900ec5f0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPMOTIONSTATE_RESPONSE_4 0x9a5431f5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPMOTIONSTATE_RESPONSE_5 0x4776f56aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPMOTIONSTATE_RESPONSE_6 0xfdb4c068UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPMOTIONSTATE_RESPONSE_7 0xbc869b8aUL

/** UTF-8 byte storage for uwvm_fourier_bridge/srv/GetGroupMotionState_Response.error; size excludes
 * padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotionState_Response_error_text;

/** Complete ROS2 uwvm_fourier_bridge/srv/GetGroupMotionState_Response value; no field projects away native data. */
typedef struct roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotionState_Response
{
    /** Declared field status; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t status;
    /** Declared field error; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotionState_Response_error_text error;
    /** Declared field value; canonical capacity is part of CODEC_IDENTITY. */
    int32_t value;
} roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotionState_Response;

# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPMOTIONSTATE_RESPONSE_MAX_WIRE_BYTES 140u
# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPMOTIONSTATE_RESPONSE_MIN_WIRE_BYTES 12u
# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPMOTIONSTATE_RESPONSE_CODEC_IDENTITY                                                                \
     "UWVMROS1_192bd0770ca8e95e171fdbf9ef393bfc5e845a38d2a0c48f7846f3e080e219d7"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotionState_Response_valid(
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotionState_Response const* value)
{
    if(!value)
        return 0;
    if(value->error.size > 128u || !uwvm_bounded_utf8(value->error.data, value->error.size))
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotionState_Response_wire_size(
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotionState_Response const* value)
{
    size_t n = 0;
    n += 4;
    n += 4 + value->error.size;
    n += 4;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotionState_Response_write_fields(
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotionState_Response const* value,
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
static inline int roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotionState_Response_read_fields(
    unsigned char const* p,
    size_t n,
    size_t* offset,
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotionState_Response* value)
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
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotionState_Response_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotionState_Response_encode(
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotionState_Response const* value,
    void* output,
    size_t capacity,
    size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotionState_Response_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotionState_Response_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotionState_Response_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotionState_Response_decode(
    void const* input,
    size_t length,
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotionState_Response* value)
{
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotionState_Response next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 12u || length > 140u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotionState_Response_read_fields((unsigned char const*)input, length, &offset, &next) ||
       offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPMOTORCFG_REQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPMOTORCFG_REQUEST_0 != 0xdb8e179fUL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPMOTORCFG_REQUEST_1 != 0x640d5a98UL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPMOTORCFG_REQUEST_2 != 0x13f394aeUL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPMOTORCFG_REQUEST_3 != 0x07436f7eUL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPMOTORCFG_REQUEST_4 != 0xd4379bc7UL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPMOTORCFG_REQUEST_5 != 0xfa6df804UL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPMOTORCFG_REQUEST_6 != 0x4c171c94UL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPMOTORCFG_REQUEST_7 != 0x1df92af9UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPMOTORCFG_REQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPMOTORCFG_REQUEST_0 0xdb8e179fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPMOTORCFG_REQUEST_1 0x640d5a98UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPMOTORCFG_REQUEST_2 0x13f394aeUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPMOTORCFG_REQUEST_3 0x07436f7eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPMOTORCFG_REQUEST_4 0xd4379bc7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPMOTORCFG_REQUEST_5 0xfa6df804UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPMOTORCFG_REQUEST_6 0x4c171c94UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPMOTORCFG_REQUEST_7 0x1df92af9UL

/** UTF-8 byte storage for uwvm_fourier_bridge/srv/GetGroupMotorCfg_Request.group; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotorCfg_Request_group_text;

/** UTF-8 byte storage for uwvm_fourier_bridge/srv/GetGroupMotorCfg_Request.key; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotorCfg_Request_key_text;

/** Complete ROS2 uwvm_fourier_bridge/srv/GetGroupMotorCfg_Request value; no field projects away native data. */
typedef struct roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotorCfg_Request
{
    /** Declared field sequence; canonical capacity is part of CODEC_IDENTITY. */
    uint64_t sequence;
    /** Declared field group; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotorCfg_Request_group_text group;
    /** Declared field key; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotorCfg_Request_key_text key;
} roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotorCfg_Request;

# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPMOTORCFG_REQUEST_MAX_WIRE_BYTES 272u
# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPMOTORCFG_REQUEST_MIN_WIRE_BYTES 16u
# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPMOTORCFG_REQUEST_CODEC_IDENTITY                                                                    \
     "UWVMROS1_7edceab07d5c5c571bce51ea7f82f0695df7e07ad8584d7219b7db36b697959a"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotorCfg_Request_valid(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotorCfg_Request const* value)
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
static inline size_t roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotorCfg_Request_wire_size(
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotorCfg_Request const* value)
{
    size_t n = 0;
    n += 8;
    n += 4 + value->group.size;
    n += 4 + value->key.size;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotorCfg_Request_write_fields(
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotorCfg_Request const* value,
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
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotorCfg_Request_read_fields(unsigned char const* p,
                                                                                    size_t n,
                                                                                    size_t* offset,
                                                                                    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotorCfg_Request* value)
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
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotorCfg_Request_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotorCfg_Request_encode(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotorCfg_Request const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotorCfg_Request_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotorCfg_Request_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotorCfg_Request_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotorCfg_Request_decode(void const* input,
                                                                               size_t length,
                                                                               roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotorCfg_Request* value)
{
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotorCfg_Request next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 16u || length > 272u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotorCfg_Request_read_fields((unsigned char const*)input, length, &offset, &next) ||
       offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPMOTORCFG_RESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPMOTORCFG_RESPONSE_0 != 0xd732c5d7UL ||                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPMOTORCFG_RESPONSE_1 != 0xed64bf01UL ||                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPMOTORCFG_RESPONSE_2 != 0x724eaefaUL ||                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPMOTORCFG_RESPONSE_3 != 0xcd7b003aUL ||                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPMOTORCFG_RESPONSE_4 != 0x294e28a7UL ||                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPMOTORCFG_RESPONSE_5 != 0x0263434dUL ||                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPMOTORCFG_RESPONSE_6 != 0xfdbec4bfUL ||                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPMOTORCFG_RESPONSE_7 != 0xe218d018UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPMOTORCFG_RESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPMOTORCFG_RESPONSE_0 0xd732c5d7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPMOTORCFG_RESPONSE_1 0xed64bf01UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPMOTORCFG_RESPONSE_2 0x724eaefaUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPMOTORCFG_RESPONSE_3 0xcd7b003aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPMOTORCFG_RESPONSE_4 0x294e28a7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPMOTORCFG_RESPONSE_5 0x0263434dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPMOTORCFG_RESPONSE_6 0xfdbec4bfUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPMOTORCFG_RESPONSE_7 0xe218d018UL

/** UTF-8 byte storage for uwvm_fourier_bridge/srv/GetGroupMotorCfg_Response.error; size excludes padding/terminators.
 */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotorCfg_Response_error_text;

/** At most64 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[64];
} roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotorCfg_Response_values_sequence;

/** Complete ROS2 uwvm_fourier_bridge/srv/GetGroupMotorCfg_Response value; no field projects away native data. */
typedef struct roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotorCfg_Response
{
    /** Declared field status; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t status;
    /** Declared field error; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotorCfg_Response_error_text error;
    /** Declared field values; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotorCfg_Response_values_sequence values;
} roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotorCfg_Response;

# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPMOTORCFG_RESPONSE_MAX_WIRE_BYTES 652u
# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPMOTORCFG_RESPONSE_MIN_WIRE_BYTES 12u
# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPMOTORCFG_RESPONSE_CODEC_IDENTITY                                                                   \
     "UWVMROS1_783f925c3b1030dec4d4a0172b4916c1cdbf72ec5e0da29167064ae754929868"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotorCfg_Response_valid(
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotorCfg_Response const* value)
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
static inline size_t roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotorCfg_Response_wire_size(
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotorCfg_Response const* value)
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
static inline void roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotorCfg_Response_write_fields(
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotorCfg_Response const* value,
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
static inline int roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotorCfg_Response_read_fields(
    unsigned char const* p,
    size_t n,
    size_t* offset,
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotorCfg_Response* value)
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
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotorCfg_Response_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotorCfg_Response_encode(
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotorCfg_Response const* value,
    void* output,
    size_t capacity,
    size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotorCfg_Response_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotorCfg_Response_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotorCfg_Response_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotorCfg_Response_decode(void const* input,
                                                                                size_t length,
                                                                                roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotorCfg_Response* value)
{
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotorCfg_Response next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 12u || length > 652u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupMotorCfg_Response_read_fields((unsigned char const*)input, length, &offset, &next) ||
       offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPSTATE_REQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPSTATE_REQUEST_0 != 0x921e9340UL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPSTATE_REQUEST_1 != 0x7eb65a53UL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPSTATE_REQUEST_2 != 0x2a312b8eUL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPSTATE_REQUEST_3 != 0xe7d19223UL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPSTATE_REQUEST_4 != 0x5e8ba2d5UL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPSTATE_REQUEST_5 != 0xc33c14c4UL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPSTATE_REQUEST_6 != 0x63ae590fUL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPSTATE_REQUEST_7 != 0xd19e3750UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPSTATE_REQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPSTATE_REQUEST_0 0x921e9340UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPSTATE_REQUEST_1 0x7eb65a53UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPSTATE_REQUEST_2 0x2a312b8eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPSTATE_REQUEST_3 0xe7d19223UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPSTATE_REQUEST_4 0x5e8ba2d5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPSTATE_REQUEST_5 0xc33c14c4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPSTATE_REQUEST_6 0x63ae590fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPSTATE_REQUEST_7 0xd19e3750UL

/** UTF-8 byte storage for uwvm_fourier_bridge/srv/GetGroupState_Request.group; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupState_Request_group_text;

/** UTF-8 byte storage for uwvm_fourier_bridge/srv/GetGroupState_Request.key; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupState_Request_key_text;

/** Complete ROS2 uwvm_fourier_bridge/srv/GetGroupState_Request value; no field projects away native data. */
typedef struct roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupState_Request
{
    /** Declared field sequence; canonical capacity is part of CODEC_IDENTITY. */
    uint64_t sequence;
    /** Declared field group; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupState_Request_group_text group;
    /** Declared field key; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupState_Request_key_text key;
} roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupState_Request;

# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPSTATE_REQUEST_MAX_WIRE_BYTES 272u
# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPSTATE_REQUEST_MIN_WIRE_BYTES 16u
# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPSTATE_REQUEST_CODEC_IDENTITY                                                                       \
     "UWVMROS1_8ad802cc56a28a603ea0b4e705a80aafeda7657757a36e1bbe452b85b5035fa9"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupState_Request_valid(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupState_Request const* value)
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
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupState_Request_wire_size(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupState_Request const* value)
{
    size_t n = 0;
    n += 8;
    n += 4 + value->group.size;
    n += 4 + value->key.size;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupState_Request_write_fields(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupState_Request const* value,
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
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupState_Request_read_fields(unsigned char const* p,
                                                                                 size_t n,
                                                                                 size_t* offset,
                                                                                 roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupState_Request* value)
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
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupState_Request_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupState_Request_encode(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupState_Request const* value,
                                                                            void* output,
                                                                            size_t capacity,
                                                                            size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupState_Request_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupState_Request_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupState_Request_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupState_Request_decode(void const* input,
                                                                            size_t length,
                                                                            roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupState_Request* value)
{
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupState_Request next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 16u || length > 272u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupState_Request_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPSTATE_RESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPSTATE_RESPONSE_0 != 0x63b74b75UL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPSTATE_RESPONSE_1 != 0x93245d1dUL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPSTATE_RESPONSE_2 != 0x8478cf33UL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPSTATE_RESPONSE_3 != 0x36b66808UL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPSTATE_RESPONSE_4 != 0xf1f81b8aUL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPSTATE_RESPONSE_5 != 0x8ef32503UL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPSTATE_RESPONSE_6 != 0xdd71d6baUL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPSTATE_RESPONSE_7 != 0x26c80d5cUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPSTATE_RESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPSTATE_RESPONSE_0 0x63b74b75UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPSTATE_RESPONSE_1 0x93245d1dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPSTATE_RESPONSE_2 0x8478cf33UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPSTATE_RESPONSE_3 0x36b66808UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPSTATE_RESPONSE_4 0xf1f81b8aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPSTATE_RESPONSE_5 0x8ef32503UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPSTATE_RESPONSE_6 0xdd71d6baUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPSTATE_RESPONSE_7 0x26c80d5cUL

/** UTF-8 byte storage for uwvm_fourier_bridge/srv/GetGroupState_Response.error; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupState_Response_error_text;

/** At most64 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[64];
} roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupState_Response_values_sequence;

/** Complete ROS2 uwvm_fourier_bridge/srv/GetGroupState_Response value; no field projects away native data. */
typedef struct roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupState_Response
{
    /** Declared field status; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t status;
    /** Declared field error; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupState_Response_error_text error;
    /** Declared field values; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupState_Response_values_sequence values;
} roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupState_Response;

# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPSTATE_RESPONSE_MAX_WIRE_BYTES 652u
# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPSTATE_RESPONSE_MIN_WIRE_BYTES 12u
# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETGROUPSTATE_RESPONSE_CODEC_IDENTITY                                                                      \
     "UWVMROS1_22b934422928c57570784ac2100bf5fd5ca941ea59aea72b442ec7205ed2c96d"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupState_Response_valid(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupState_Response const* value)
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
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupState_Response_wire_size(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupState_Response const* value)
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
static inline void roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupState_Response_write_fields(
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupState_Response const* value,
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
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupState_Response_read_fields(unsigned char const* p,
                                                                                  size_t n,
                                                                                  size_t* offset,
                                                                                  roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupState_Response* value)
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
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupState_Response_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupState_Response_encode(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupState_Response const* value,
                                                                             void* output,
                                                                             size_t capacity,
                                                                             size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupState_Response_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupState_Response_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupState_Response_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupState_Response_decode(void const* input,
                                                                             size_t length,
                                                                             roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupState_Response* value)
{
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupState_Response next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 12u || length > 652u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetGroupState_Response_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETSNAPSHOT_REQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETSNAPSHOT_REQUEST_0 != 0x787232d8UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETSNAPSHOT_REQUEST_1 != 0x422f58e3UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETSNAPSHOT_REQUEST_2 != 0xa75036efUL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETSNAPSHOT_REQUEST_3 != 0xa4938506UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETSNAPSHOT_REQUEST_4 != 0xcfe631b1UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETSNAPSHOT_REQUEST_5 != 0x8e8f31fbUL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETSNAPSHOT_REQUEST_6 != 0x7acf182eUL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETSNAPSHOT_REQUEST_7 != 0x2b685003UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETSNAPSHOT_REQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETSNAPSHOT_REQUEST_0 0x787232d8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETSNAPSHOT_REQUEST_1 0x422f58e3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETSNAPSHOT_REQUEST_2 0xa75036efUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETSNAPSHOT_REQUEST_3 0xa4938506UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETSNAPSHOT_REQUEST_4 0xcfe631b1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETSNAPSHOT_REQUEST_5 0x8e8f31fbUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETSNAPSHOT_REQUEST_6 0x7acf182eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETSNAPSHOT_REQUEST_7 0x2b685003UL

/** Complete ROS2 uwvm_fourier_bridge/srv/GetSnapshot_Request value; no field projects away native data. */
typedef struct roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetSnapshot_Request
{
    /** Declared field sequence; canonical capacity is part of CODEC_IDENTITY. */
    uint64_t sequence;
} roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetSnapshot_Request;

# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETSNAPSHOT_REQUEST_MAX_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETSNAPSHOT_REQUEST_MIN_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETSNAPSHOT_REQUEST_CODEC_IDENTITY                                                                         \
     "UWVMROS1_4c3003f85c4bc3c17e2e4bd4fd965fe52099a0a4a9f2c0320d165ec3db51bb58"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetSnapshot_Request_valid(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetSnapshot_Request const* value)
{
    if(!value)
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetSnapshot_Request_wire_size(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetSnapshot_Request const* value)
{
    size_t n = 0;
    n += 8;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetSnapshot_Request_write_fields(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetSnapshot_Request const* value,
                                                                                unsigned char* p,
                                                                                size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->sequence, 8);
    *offset += 8;
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetSnapshot_Request_read_fields(unsigned char const* p,
                                                                               size_t n,
                                                                               size_t* offset,
                                                                               roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetSnapshot_Request* value)
{
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->sequence, &bits, 8);
    }
    *offset += 8;
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetSnapshot_Request_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetSnapshot_Request_encode(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetSnapshot_Request const* value,
                                                                          void* output,
                                                                          size_t capacity,
                                                                          size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetSnapshot_Request_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetSnapshot_Request_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetSnapshot_Request_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetSnapshot_Request_decode(void const* input,
                                                                          size_t length,
                                                                          roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetSnapshot_Request* value)
{
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetSnapshot_Request next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 8u || length > 8u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetSnapshot_Request_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETSNAPSHOT_RESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETSNAPSHOT_RESPONSE_0 != 0x3f458bf3UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETSNAPSHOT_RESPONSE_1 != 0x692d96c6UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETSNAPSHOT_RESPONSE_2 != 0x61e3a653UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETSNAPSHOT_RESPONSE_3 != 0xe8cb2d45UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETSNAPSHOT_RESPONSE_4 != 0x923f1385UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETSNAPSHOT_RESPONSE_5 != 0xc7e49b9aUL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETSNAPSHOT_RESPONSE_6 != 0x2f7089a5UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETSNAPSHOT_RESPONSE_7 != 0xaa2925e7UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETSNAPSHOT_RESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETSNAPSHOT_RESPONSE_0 0x3f458bf3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETSNAPSHOT_RESPONSE_1 0x692d96c6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETSNAPSHOT_RESPONSE_2 0x61e3a653UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETSNAPSHOT_RESPONSE_3 0xe8cb2d45UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETSNAPSHOT_RESPONSE_4 0x923f1385UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETSNAPSHOT_RESPONSE_5 0xc7e49b9aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETSNAPSHOT_RESPONSE_6 0x2f7089a5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETSNAPSHOT_RESPONSE_7 0xaa2925e7UL

/** UTF-8 byte storage for uwvm_fourier_bridge/srv/GetSnapshot_Response.error; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetSnapshot_Response_error_text;

/** Complete ROS2 uwvm_fourier_bridge/srv/GetSnapshot_Response value; no field projects away native data. */
typedef struct roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetSnapshot_Response
{
    /** Declared field status; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t status;
    /** Declared field error; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetSnapshot_Response_error_text error;
    /** Declared field value; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_uwvm_fourier_bridge_msg_Status value;
} roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetSnapshot_Response;

# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETSNAPSHOT_RESPONSE_MAX_WIRE_BYTES 14536u
# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETSNAPSHOT_RESPONSE_MIN_WIRE_BYTES 40u
# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETSNAPSHOT_RESPONSE_CODEC_IDENTITY                                                                        \
     "UWVMROS1_bf4456397ae5115bf88b49c5568b8f289d6aefe3266f5e4d12b86d0f992de6a3"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetSnapshot_Response_valid(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetSnapshot_Response const* value)
{
    if(!value)
        return 0;
    if(value->error.size > 128u || !uwvm_bounded_utf8(value->error.data, value->error.size))
        return 0;
    if(!roswasmc_bounded_2_uwvm_fourier_bridge_msg_Status_valid(&value->value))
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetSnapshot_Response_wire_size(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetSnapshot_Response const* value)
{
    size_t n = 0;
    n += 4;
    n += 4 + value->error.size;
    n += roswasmc_bounded_2_uwvm_fourier_bridge_msg_Status_wire_size(&value->value);
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetSnapshot_Response_write_fields(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetSnapshot_Response const* value,
                                                                                 unsigned char* p,
                                                                                 size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->status, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, value->error.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->error.data, value->error.size);
    *offset += value->error.size;
    roswasmc_bounded_2_uwvm_fourier_bridge_msg_Status_write_fields(&value->value, p, offset);
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetSnapshot_Response_read_fields(unsigned char const* p,
                                                                                size_t n,
                                                                                size_t* offset,
                                                                                roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetSnapshot_Response* value)
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
    if(!roswasmc_bounded_2_uwvm_fourier_bridge_msg_Status_read_fields(p, n, offset, &value->value))
        return 0;
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetSnapshot_Response_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetSnapshot_Response_encode(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetSnapshot_Response const* value,
                                                                           void* output,
                                                                           size_t capacity,
                                                                           size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetSnapshot_Response_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetSnapshot_Response_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetSnapshot_Response_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetSnapshot_Response_decode(void const* input,
                                                                           size_t length,
                                                                           roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetSnapshot_Response* value)
{
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetSnapshot_Response next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 40u || length > 14536u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetSnapshot_Response_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETSTANDPOSE_REQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETSTANDPOSE_REQUEST_0 != 0xfd9428ebUL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETSTANDPOSE_REQUEST_1 != 0xdad5080cUL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETSTANDPOSE_REQUEST_2 != 0x48ed1876UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETSTANDPOSE_REQUEST_3 != 0x51d77cefUL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETSTANDPOSE_REQUEST_4 != 0xd61f99b3UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETSTANDPOSE_REQUEST_5 != 0x6bf12ab8UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETSTANDPOSE_REQUEST_6 != 0xc68fe44fUL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETSTANDPOSE_REQUEST_7 != 0x791e6453UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETSTANDPOSE_REQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETSTANDPOSE_REQUEST_0 0xfd9428ebUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETSTANDPOSE_REQUEST_1 0xdad5080cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETSTANDPOSE_REQUEST_2 0x48ed1876UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETSTANDPOSE_REQUEST_3 0x51d77cefUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETSTANDPOSE_REQUEST_4 0xd61f99b3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETSTANDPOSE_REQUEST_5 0x6bf12ab8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETSTANDPOSE_REQUEST_6 0xc68fe44fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETSTANDPOSE_REQUEST_7 0x791e6453UL

/** Complete ROS2 uwvm_fourier_bridge/srv/GetStandPose_Request value; no field projects away native data. */
typedef struct roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetStandPose_Request
{
    /** Declared field sequence; canonical capacity is part of CODEC_IDENTITY. */
    uint64_t sequence;
} roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetStandPose_Request;

# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETSTANDPOSE_REQUEST_MAX_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETSTANDPOSE_REQUEST_MIN_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETSTANDPOSE_REQUEST_CODEC_IDENTITY                                                                        \
     "UWVMROS1_22c044b91db36a82bb825a556c41f9ae0139fb652ade47ac10aedf701ba0e044"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetStandPose_Request_valid(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetStandPose_Request const* value)
{
    if(!value)
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetStandPose_Request_wire_size(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetStandPose_Request const* value)
{
    size_t n = 0;
    n += 8;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetStandPose_Request_write_fields(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetStandPose_Request const* value,
                                                                                 unsigned char* p,
                                                                                 size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->sequence, 8);
    *offset += 8;
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetStandPose_Request_read_fields(unsigned char const* p,
                                                                                size_t n,
                                                                                size_t* offset,
                                                                                roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetStandPose_Request* value)
{
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->sequence, &bits, 8);
    }
    *offset += 8;
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetStandPose_Request_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetStandPose_Request_encode(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetStandPose_Request const* value,
                                                                           void* output,
                                                                           size_t capacity,
                                                                           size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetStandPose_Request_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetStandPose_Request_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetStandPose_Request_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetStandPose_Request_decode(void const* input,
                                                                           size_t length,
                                                                           roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetStandPose_Request* value)
{
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetStandPose_Request next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 8u || length > 8u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetStandPose_Request_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETSTANDPOSE_RESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETSTANDPOSE_RESPONSE_0 != 0x627b256bUL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETSTANDPOSE_RESPONSE_1 != 0xdb7f1ed9UL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETSTANDPOSE_RESPONSE_2 != 0x82f5a6d4UL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETSTANDPOSE_RESPONSE_3 != 0xda53515eUL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETSTANDPOSE_RESPONSE_4 != 0xc6872212UL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETSTANDPOSE_RESPONSE_5 != 0x93d32296UL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETSTANDPOSE_RESPONSE_6 != 0xeacde086UL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETSTANDPOSE_RESPONSE_7 != 0xac8a0778UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETSTANDPOSE_RESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETSTANDPOSE_RESPONSE_0 0x627b256bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETSTANDPOSE_RESPONSE_1 0xdb7f1ed9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETSTANDPOSE_RESPONSE_2 0x82f5a6d4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETSTANDPOSE_RESPONSE_3 0xda53515eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETSTANDPOSE_RESPONSE_4 0xc6872212UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETSTANDPOSE_RESPONSE_5 0x93d32296UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETSTANDPOSE_RESPONSE_6 0xeacde086UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETSTANDPOSE_RESPONSE_7 0xac8a0778UL

/** UTF-8 byte storage for uwvm_fourier_bridge/srv/GetStandPose_Response.error; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetStandPose_Response_error_text;

/** At most64 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    double data[64];
} roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetStandPose_Response_values_sequence;

/** Complete ROS2 uwvm_fourier_bridge/srv/GetStandPose_Response value; no field projects away native data. */
typedef struct roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetStandPose_Response
{
    /** Declared field status; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t status;
    /** Declared field error; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetStandPose_Response_error_text error;
    /** Declared field values; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetStandPose_Response_values_sequence values;
} roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetStandPose_Response;

# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETSTANDPOSE_RESPONSE_MAX_WIRE_BYTES 652u
# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETSTANDPOSE_RESPONSE_MIN_WIRE_BYTES 12u
# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETSTANDPOSE_RESPONSE_CODEC_IDENTITY                                                                       \
     "UWVMROS1_b25c3c0cf5fa810e367b46ad2d20d7446ffc4f67b8fb77493060ca62017ef4e2"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetStandPose_Response_valid(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetStandPose_Response const* value)
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
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetStandPose_Response_wire_size(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetStandPose_Response const* value)
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
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetStandPose_Response_write_fields(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetStandPose_Response const* value,
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
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetStandPose_Response_read_fields(unsigned char const* p,
                                                                                 size_t n,
                                                                                 size_t* offset,
                                                                                 roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetStandPose_Response* value)
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
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetStandPose_Response_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetStandPose_Response_encode(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetStandPose_Response const* value,
                                                                            void* output,
                                                                            size_t capacity,
                                                                            size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetStandPose_Response_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetStandPose_Response_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetStandPose_Response_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetStandPose_Response_decode(void const* input,
                                                                            size_t length,
                                                                            roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetStandPose_Response* value)
{
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetStandPose_Response next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 12u || length > 652u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetStandPose_Response_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETUPPERFSMNAME_REQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETUPPERFSMNAME_REQUEST_0 != 0x8f195640UL ||                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETUPPERFSMNAME_REQUEST_1 != 0x17db8da0UL ||                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETUPPERFSMNAME_REQUEST_2 != 0x7bbfeca3UL ||                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETUPPERFSMNAME_REQUEST_3 != 0x4d804c08UL ||                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETUPPERFSMNAME_REQUEST_4 != 0x0ffb8217UL ||                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETUPPERFSMNAME_REQUEST_5 != 0xac9ba620UL ||                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETUPPERFSMNAME_REQUEST_6 != 0xce6d2667UL ||                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETUPPERFSMNAME_REQUEST_7 != 0xfdac08d6UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETUPPERFSMNAME_REQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETUPPERFSMNAME_REQUEST_0 0x8f195640UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETUPPERFSMNAME_REQUEST_1 0x17db8da0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETUPPERFSMNAME_REQUEST_2 0x7bbfeca3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETUPPERFSMNAME_REQUEST_3 0x4d804c08UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETUPPERFSMNAME_REQUEST_4 0x0ffb8217UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETUPPERFSMNAME_REQUEST_5 0xac9ba620UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETUPPERFSMNAME_REQUEST_6 0xce6d2667UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETUPPERFSMNAME_REQUEST_7 0xfdac08d6UL

/** Complete ROS2 uwvm_fourier_bridge/srv/GetUpperFsmName_Request value; no field projects away native data. */
typedef struct roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmName_Request
{
    /** Declared field sequence; canonical capacity is part of CODEC_IDENTITY. */
    uint64_t sequence;
} roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmName_Request;

# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETUPPERFSMNAME_REQUEST_MAX_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETUPPERFSMNAME_REQUEST_MIN_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETUPPERFSMNAME_REQUEST_CODEC_IDENTITY                                                                     \
     "UWVMROS1_83187e2bc41361d7a7aef57d1458f4017a3ca4235b82c290dd80c1f58611e412"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmName_Request_valid(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmName_Request const* value)
{
    if(!value)
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmName_Request_wire_size(
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmName_Request const* value)
{
    size_t n = 0;
    n += 8;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmName_Request_write_fields(
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmName_Request const* value,
    unsigned char* p,
    size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->sequence, 8);
    *offset += 8;
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmName_Request_read_fields(unsigned char const* p,
                                                                                   size_t n,
                                                                                   size_t* offset,
                                                                                   roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmName_Request* value)
{
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->sequence, &bits, 8);
    }
    *offset += 8;
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmName_Request_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmName_Request_encode(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmName_Request const* value,
                                                                              void* output,
                                                                              size_t capacity,
                                                                              size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmName_Request_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmName_Request_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmName_Request_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmName_Request_decode(void const* input,
                                                                              size_t length,
                                                                              roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmName_Request* value)
{
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmName_Request next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 8u || length > 8u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmName_Request_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETUPPERFSMNAME_RESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETUPPERFSMNAME_RESPONSE_0 != 0x02ca635aUL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETUPPERFSMNAME_RESPONSE_1 != 0x8228ac6eUL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETUPPERFSMNAME_RESPONSE_2 != 0xf73e7af1UL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETUPPERFSMNAME_RESPONSE_3 != 0x7131a80eUL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETUPPERFSMNAME_RESPONSE_4 != 0x83d8ae11UL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETUPPERFSMNAME_RESPONSE_5 != 0x58dc01e7UL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETUPPERFSMNAME_RESPONSE_6 != 0xae9df168UL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETUPPERFSMNAME_RESPONSE_7 != 0xeb77c061UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETUPPERFSMNAME_RESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETUPPERFSMNAME_RESPONSE_0 0x02ca635aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETUPPERFSMNAME_RESPONSE_1 0x8228ac6eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETUPPERFSMNAME_RESPONSE_2 0xf73e7af1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETUPPERFSMNAME_RESPONSE_3 0x7131a80eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETUPPERFSMNAME_RESPONSE_4 0x83d8ae11UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETUPPERFSMNAME_RESPONSE_5 0x58dc01e7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETUPPERFSMNAME_RESPONSE_6 0xae9df168UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETUPPERFSMNAME_RESPONSE_7 0xeb77c061UL

/** UTF-8 byte storage for uwvm_fourier_bridge/srv/GetUpperFsmName_Response.error; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmName_Response_error_text;

/** UTF-8 byte storage for uwvm_fourier_bridge/srv/GetUpperFsmName_Response.value; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmName_Response_value_text;

/** Complete ROS2 uwvm_fourier_bridge/srv/GetUpperFsmName_Response value; no field projects away native data. */
typedef struct roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmName_Response
{
    /** Declared field status; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t status;
    /** Declared field error; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmName_Response_error_text error;
    /** Declared field value; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmName_Response_value_text value;
} roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmName_Response;

# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETUPPERFSMNAME_RESPONSE_MAX_WIRE_BYTES 268u
# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETUPPERFSMNAME_RESPONSE_MIN_WIRE_BYTES 12u
# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETUPPERFSMNAME_RESPONSE_CODEC_IDENTITY                                                                    \
     "UWVMROS1_ad6e25b9363bcadb517e96e5a1615c5ce36719542b2b32c4fb16f69ab102daed"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmName_Response_valid(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmName_Response const* value)
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
static inline size_t roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmName_Response_wire_size(
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmName_Response const* value)
{
    size_t n = 0;
    n += 4;
    n += 4 + value->error.size;
    n += 4 + value->value.size;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmName_Response_write_fields(
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmName_Response const* value,
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
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmName_Response_read_fields(unsigned char const* p,
                                                                                    size_t n,
                                                                                    size_t* offset,
                                                                                    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmName_Response* value)
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
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmName_Response_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmName_Response_encode(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmName_Response const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmName_Response_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmName_Response_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmName_Response_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmName_Response_decode(void const* input,
                                                                               size_t length,
                                                                               roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmName_Response* value)
{
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmName_Response next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 12u || length > 268u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmName_Response_read_fields((unsigned char const*)input, length, &offset, &next) ||
       offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETUPPERFSMSTATE_REQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETUPPERFSMSTATE_REQUEST_0 != 0x6e7f7c95UL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETUPPERFSMSTATE_REQUEST_1 != 0xece849afUL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETUPPERFSMSTATE_REQUEST_2 != 0x9eb0bcc5UL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETUPPERFSMSTATE_REQUEST_3 != 0xc15cdd28UL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETUPPERFSMSTATE_REQUEST_4 != 0x92d29747UL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETUPPERFSMSTATE_REQUEST_5 != 0xfb2d4545UL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETUPPERFSMSTATE_REQUEST_6 != 0xfc221e03UL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETUPPERFSMSTATE_REQUEST_7 != 0xb0599821UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETUPPERFSMSTATE_REQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETUPPERFSMSTATE_REQUEST_0 0x6e7f7c95UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETUPPERFSMSTATE_REQUEST_1 0xece849afUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETUPPERFSMSTATE_REQUEST_2 0x9eb0bcc5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETUPPERFSMSTATE_REQUEST_3 0xc15cdd28UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETUPPERFSMSTATE_REQUEST_4 0x92d29747UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETUPPERFSMSTATE_REQUEST_5 0xfb2d4545UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETUPPERFSMSTATE_REQUEST_6 0xfc221e03UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETUPPERFSMSTATE_REQUEST_7 0xb0599821UL

/** Complete ROS2 uwvm_fourier_bridge/srv/GetUpperFsmState_Request value; no field projects away native data. */
typedef struct roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmState_Request
{
    /** Declared field sequence; canonical capacity is part of CODEC_IDENTITY. */
    uint64_t sequence;
} roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmState_Request;

# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETUPPERFSMSTATE_REQUEST_MAX_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETUPPERFSMSTATE_REQUEST_MIN_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETUPPERFSMSTATE_REQUEST_CODEC_IDENTITY                                                                    \
     "UWVMROS1_9981500b7a9dacf167baf5d8dce45820a1424a7b7fbe960c0d1b37751d1dda98"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmState_Request_valid(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmState_Request const* value)
{
    if(!value)
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmState_Request_wire_size(
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmState_Request const* value)
{
    size_t n = 0;
    n += 8;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmState_Request_write_fields(
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmState_Request const* value,
    unsigned char* p,
    size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->sequence, 8);
    *offset += 8;
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmState_Request_read_fields(unsigned char const* p,
                                                                                    size_t n,
                                                                                    size_t* offset,
                                                                                    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmState_Request* value)
{
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->sequence, &bits, 8);
    }
    *offset += 8;
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmState_Request_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmState_Request_encode(roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmState_Request const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmState_Request_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmState_Request_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmState_Request_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmState_Request_decode(void const* input,
                                                                               size_t length,
                                                                               roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmState_Request* value)
{
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmState_Request next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 8u || length > 8u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmState_Request_read_fields((unsigned char const*)input, length, &offset, &next) ||
       offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETUPPERFSMSTATE_RESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETUPPERFSMSTATE_RESPONSE_0 != 0x9163e0d4UL ||                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETUPPERFSMSTATE_RESPONSE_1 != 0x43bb2969UL ||                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETUPPERFSMSTATE_RESPONSE_2 != 0x7a9e5f35UL ||                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETUPPERFSMSTATE_RESPONSE_3 != 0xd90322acUL ||                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETUPPERFSMSTATE_RESPONSE_4 != 0x9e8f032dUL ||                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETUPPERFSMSTATE_RESPONSE_5 != 0x21fc012fUL ||                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETUPPERFSMSTATE_RESPONSE_6 != 0xa296c4d8UL ||                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETUPPERFSMSTATE_RESPONSE_7 != 0x5ca0e37fUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETUPPERFSMSTATE_RESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETUPPERFSMSTATE_RESPONSE_0 0x9163e0d4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETUPPERFSMSTATE_RESPONSE_1 0x43bb2969UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETUPPERFSMSTATE_RESPONSE_2 0x7a9e5f35UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETUPPERFSMSTATE_RESPONSE_3 0xd90322acUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETUPPERFSMSTATE_RESPONSE_4 0x9e8f032dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETUPPERFSMSTATE_RESPONSE_5 0x21fc012fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETUPPERFSMSTATE_RESPONSE_6 0xa296c4d8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETUPPERFSMSTATE_RESPONSE_7 0x5ca0e37fUL

/** UTF-8 byte storage for uwvm_fourier_bridge/srv/GetUpperFsmState_Response.error; size excludes padding/terminators.
 */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmState_Response_error_text;

/** Complete ROS2 uwvm_fourier_bridge/srv/GetUpperFsmState_Response value; no field projects away native data. */
typedef struct roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmState_Response
{
    /** Declared field status; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t status;
    /** Declared field error; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmState_Response_error_text error;
    /** Declared field value; canonical capacity is part of CODEC_IDENTITY. */
    int32_t value;
} roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmState_Response;

# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETUPPERFSMSTATE_RESPONSE_MAX_WIRE_BYTES 140u
# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETUPPERFSMSTATE_RESPONSE_MIN_WIRE_BYTES 12u
# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETUPPERFSMSTATE_RESPONSE_CODEC_IDENTITY                                                                   \
     "UWVMROS1_dc699f01c04f01c7ad2e71daea02ffd80f368d4d066d5d280fcf0a2abfa126a9"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmState_Response_valid(
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmState_Response const* value)
{
    if(!value)
        return 0;
    if(value->error.size > 128u || !uwvm_bounded_utf8(value->error.data, value->error.size))
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmState_Response_wire_size(
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmState_Response const* value)
{
    size_t n = 0;
    n += 4;
    n += 4 + value->error.size;
    n += 4;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmState_Response_write_fields(
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmState_Response const* value,
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
static inline int roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmState_Response_read_fields(
    unsigned char const* p,
    size_t n,
    size_t* offset,
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmState_Response* value)
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
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmState_Response_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmState_Response_encode(
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmState_Response const* value,
    void* output,
    size_t capacity,
    size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmState_Response_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmState_Response_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmState_Response_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmState_Response_decode(void const* input,
                                                                                size_t length,
                                                                                roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmState_Response* value)
{
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmState_Response next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 12u || length > 140u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetUpperFsmState_Response_read_fields((unsigned char const*)input, length, &offset, &next) ||
       offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETVELOCITYSOURCE_REQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETVELOCITYSOURCE_REQUEST_0 != 0xcf38af93UL ||                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETVELOCITYSOURCE_REQUEST_1 != 0x2e292dfeUL ||                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETVELOCITYSOURCE_REQUEST_2 != 0xd8d4d885UL ||                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETVELOCITYSOURCE_REQUEST_3 != 0xce10629fUL ||                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETVELOCITYSOURCE_REQUEST_4 != 0xd83c0fbaUL ||                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETVELOCITYSOURCE_REQUEST_5 != 0x432f220fUL ||                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETVELOCITYSOURCE_REQUEST_6 != 0x66b52d3fUL ||                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETVELOCITYSOURCE_REQUEST_7 != 0x7b211305UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETVELOCITYSOURCE_REQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETVELOCITYSOURCE_REQUEST_0 0xcf38af93UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETVELOCITYSOURCE_REQUEST_1 0x2e292dfeUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETVELOCITYSOURCE_REQUEST_2 0xd8d4d885UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETVELOCITYSOURCE_REQUEST_3 0xce10629fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETVELOCITYSOURCE_REQUEST_4 0xd83c0fbaUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETVELOCITYSOURCE_REQUEST_5 0x432f220fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETVELOCITYSOURCE_REQUEST_6 0x66b52d3fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETVELOCITYSOURCE_REQUEST_7 0x7b211305UL

/** Complete ROS2 uwvm_fourier_bridge/srv/GetVelocitySource_Request value; no field projects away native data. */
typedef struct roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySource_Request
{
    /** Declared field sequence; canonical capacity is part of CODEC_IDENTITY. */
    uint64_t sequence;
} roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySource_Request;

# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETVELOCITYSOURCE_REQUEST_MAX_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETVELOCITYSOURCE_REQUEST_MIN_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETVELOCITYSOURCE_REQUEST_CODEC_IDENTITY                                                                   \
     "UWVMROS1_c11f2de346de2adac1cdf07c795d7746436851322e591a33d75c8226f75d5d4c"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySource_Request_valid(
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySource_Request const* value)
{
    if(!value)
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySource_Request_wire_size(
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySource_Request const* value)
{
    size_t n = 0;
    n += 8;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySource_Request_write_fields(
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySource_Request const* value,
    unsigned char* p,
    size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->sequence, 8);
    *offset += 8;
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySource_Request_read_fields(
    unsigned char const* p,
    size_t n,
    size_t* offset,
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySource_Request* value)
{
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->sequence, &bits, 8);
    }
    *offset += 8;
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySource_Request_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySource_Request_encode(
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySource_Request const* value,
    void* output,
    size_t capacity,
    size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySource_Request_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySource_Request_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySource_Request_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySource_Request_decode(void const* input,
                                                                                size_t length,
                                                                                roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySource_Request* value)
{
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySource_Request next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 8u || length > 8u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySource_Request_read_fields((unsigned char const*)input, length, &offset, &next) ||
       offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETVELOCITYSOURCE_RESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETVELOCITYSOURCE_RESPONSE_0 != 0x324f1c6bUL ||                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETVELOCITYSOURCE_RESPONSE_1 != 0x6ee1e0d0UL ||                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETVELOCITYSOURCE_RESPONSE_2 != 0xd97ab028UL ||                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETVELOCITYSOURCE_RESPONSE_3 != 0x1bb75b05UL ||                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETVELOCITYSOURCE_RESPONSE_4 != 0x99bfcdb1UL ||                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETVELOCITYSOURCE_RESPONSE_5 != 0x56806dfdUL ||                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETVELOCITYSOURCE_RESPONSE_6 != 0xc0b299e7UL ||                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETVELOCITYSOURCE_RESPONSE_7 != 0xe2fd97f0UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETVELOCITYSOURCE_RESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETVELOCITYSOURCE_RESPONSE_0 0x324f1c6bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETVELOCITYSOURCE_RESPONSE_1 0x6ee1e0d0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETVELOCITYSOURCE_RESPONSE_2 0xd97ab028UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETVELOCITYSOURCE_RESPONSE_3 0x1bb75b05UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETVELOCITYSOURCE_RESPONSE_4 0x99bfcdb1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETVELOCITYSOURCE_RESPONSE_5 0x56806dfdUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETVELOCITYSOURCE_RESPONSE_6 0xc0b299e7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETVELOCITYSOURCE_RESPONSE_7 0xe2fd97f0UL

/** UTF-8 byte storage for uwvm_fourier_bridge/srv/GetVelocitySource_Response.error; size excludes padding/terminators.
 */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySource_Response_error_text;

/** Complete ROS2 uwvm_fourier_bridge/srv/GetVelocitySource_Response value; no field projects away native data. */
typedef struct roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySource_Response
{
    /** Declared field status; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t status;
    /** Declared field error; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySource_Response_error_text error;
    /** Declared field value; canonical capacity is part of CODEC_IDENTITY. */
    int32_t value;
} roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySource_Response;

# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETVELOCITYSOURCE_RESPONSE_MAX_WIRE_BYTES 140u
# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETVELOCITYSOURCE_RESPONSE_MIN_WIRE_BYTES 12u
# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETVELOCITYSOURCE_RESPONSE_CODEC_IDENTITY                                                                  \
     "UWVMROS1_dedb7a6119ec7ed97a0924ff58585da8569acf3026bf0c21bbb0a43bd2094e53"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySource_Response_valid(
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySource_Response const* value)
{
    if(!value)
        return 0;
    if(value->error.size > 128u || !uwvm_bounded_utf8(value->error.data, value->error.size))
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySource_Response_wire_size(
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySource_Response const* value)
{
    size_t n = 0;
    n += 4;
    n += 4 + value->error.size;
    n += 4;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySource_Response_write_fields(
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySource_Response const* value,
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
static inline int roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySource_Response_read_fields(
    unsigned char const* p,
    size_t n,
    size_t* offset,
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySource_Response* value)
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
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySource_Response_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySource_Response_encode(
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySource_Response const* value,
    void* output,
    size_t capacity,
    size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySource_Response_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySource_Response_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySource_Response_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySource_Response_decode(void const* input,
                                                                                 size_t length,
                                                                                 roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySource_Response* value)
{
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySource_Response next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 12u || length > 140u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySource_Response_read_fields((unsigned char const*)input, length, &offset, &next) ||
       offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETVELOCITYSOURCENAME_REQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETVELOCITYSOURCENAME_REQUEST_0 != 0xbaffc38fUL ||                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETVELOCITYSOURCENAME_REQUEST_1 != 0x395a4d73UL ||                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETVELOCITYSOURCENAME_REQUEST_2 != 0xfd6bf43fUL ||                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETVELOCITYSOURCENAME_REQUEST_3 != 0x46050acfUL ||                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETVELOCITYSOURCENAME_REQUEST_4 != 0xd5f74148UL ||                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETVELOCITYSOURCENAME_REQUEST_5 != 0x0c55b529UL ||                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETVELOCITYSOURCENAME_REQUEST_6 != 0x829317abUL ||                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETVELOCITYSOURCENAME_REQUEST_7 != 0xfacba909UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETVELOCITYSOURCENAME_REQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETVELOCITYSOURCENAME_REQUEST_0 0xbaffc38fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETVELOCITYSOURCENAME_REQUEST_1 0x395a4d73UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETVELOCITYSOURCENAME_REQUEST_2 0xfd6bf43fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETVELOCITYSOURCENAME_REQUEST_3 0x46050acfUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETVELOCITYSOURCENAME_REQUEST_4 0xd5f74148UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETVELOCITYSOURCENAME_REQUEST_5 0x0c55b529UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETVELOCITYSOURCENAME_REQUEST_6 0x829317abUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETVELOCITYSOURCENAME_REQUEST_7 0xfacba909UL

/** Complete ROS2 uwvm_fourier_bridge/srv/GetVelocitySourceName_Request value; no field projects away native data. */
typedef struct roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySourceName_Request
{
    /** Declared field sequence; canonical capacity is part of CODEC_IDENTITY. */
    uint64_t sequence;
} roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySourceName_Request;

# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETVELOCITYSOURCENAME_REQUEST_MAX_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETVELOCITYSOURCENAME_REQUEST_MIN_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETVELOCITYSOURCENAME_REQUEST_CODEC_IDENTITY                                                               \
     "UWVMROS1_e1bc07b31243e938bd0fe61b1a8a7c788be7442ee978bdc0e0f3da128f1986d1"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySourceName_Request_valid(
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySourceName_Request const* value)
{
    if(!value)
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySourceName_Request_wire_size(
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySourceName_Request const* value)
{
    size_t n = 0;
    n += 8;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySourceName_Request_write_fields(
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySourceName_Request const* value,
    unsigned char* p,
    size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->sequence, 8);
    *offset += 8;
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySourceName_Request_read_fields(
    unsigned char const* p,
    size_t n,
    size_t* offset,
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySourceName_Request* value)
{
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->sequence, &bits, 8);
    }
    *offset += 8;
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySourceName_Request_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySourceName_Request_encode(
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySourceName_Request const* value,
    void* output,
    size_t capacity,
    size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySourceName_Request_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySourceName_Request_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySourceName_Request_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySourceName_Request_decode(
    void const* input,
    size_t length,
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySourceName_Request* value)
{
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySourceName_Request next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 8u || length > 8u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySourceName_Request_read_fields((unsigned char const*)input, length, &offset, &next) ||
       offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETVELOCITYSOURCENAME_RESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETVELOCITYSOURCENAME_RESPONSE_0 != 0x9c3aa218UL ||                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETVELOCITYSOURCENAME_RESPONSE_1 != 0xa3b35976UL ||                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETVELOCITYSOURCENAME_RESPONSE_2 != 0x30624654UL ||                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETVELOCITYSOURCENAME_RESPONSE_3 != 0x940fa699UL ||                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETVELOCITYSOURCENAME_RESPONSE_4 != 0x83fe1d46UL ||                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETVELOCITYSOURCENAME_RESPONSE_5 != 0x81e5db96UL ||                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETVELOCITYSOURCENAME_RESPONSE_6 != 0xbc800a3dUL ||                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETVELOCITYSOURCENAME_RESPONSE_7 != 0x41391e9dUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETVELOCITYSOURCENAME_RESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETVELOCITYSOURCENAME_RESPONSE_0 0x9c3aa218UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETVELOCITYSOURCENAME_RESPONSE_1 0xa3b35976UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETVELOCITYSOURCENAME_RESPONSE_2 0x30624654UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETVELOCITYSOURCENAME_RESPONSE_3 0x940fa699UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETVELOCITYSOURCENAME_RESPONSE_4 0x83fe1d46UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETVELOCITYSOURCENAME_RESPONSE_5 0x81e5db96UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETVELOCITYSOURCENAME_RESPONSE_6 0xbc800a3dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETVELOCITYSOURCENAME_RESPONSE_7 0x41391e9dUL

/** UTF-8 byte storage for uwvm_fourier_bridge/srv/GetVelocitySourceName_Response.error; size excludes
 * padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySourceName_Response_error_text;

/** UTF-8 byte storage for uwvm_fourier_bridge/srv/GetVelocitySourceName_Response.value; size excludes
 * padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySourceName_Response_value_text;

/** Complete ROS2 uwvm_fourier_bridge/srv/GetVelocitySourceName_Response value; no field projects away native data. */
typedef struct roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySourceName_Response
{
    /** Declared field status; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t status;
    /** Declared field error; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySourceName_Response_error_text error;
    /** Declared field value; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySourceName_Response_value_text value;
} roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySourceName_Response;

# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETVELOCITYSOURCENAME_RESPONSE_MAX_WIRE_BYTES 268u
# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETVELOCITYSOURCENAME_RESPONSE_MIN_WIRE_BYTES 12u
# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_GETVELOCITYSOURCENAME_RESPONSE_CODEC_IDENTITY                                                              \
     "UWVMROS1_a79939894c6e446a7ee1b4af1270aa7bb72a8d54f543e82299a869b0a317ab40"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySourceName_Response_valid(
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySourceName_Response const* value)
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
static inline size_t roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySourceName_Response_wire_size(
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySourceName_Response const* value)
{
    size_t n = 0;
    n += 4;
    n += 4 + value->error.size;
    n += 4 + value->value.size;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySourceName_Response_write_fields(
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySourceName_Response const* value,
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
static inline int roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySourceName_Response_read_fields(
    unsigned char const* p,
    size_t n,
    size_t* offset,
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySourceName_Response* value)
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
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySourceName_Response_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySourceName_Response_encode(
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySourceName_Response const* value,
    void* output,
    size_t capacity,
    size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySourceName_Response_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySourceName_Response_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySourceName_Response_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySourceName_Response_decode(
    void const* input,
    size_t length,
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySourceName_Response* value)
{
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySourceName_Response next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 12u || length > 268u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_uwvm_fourier_bridge_srv_GetVelocitySourceName_Response_read_fields((unsigned char const*)input, length, &offset, &next) ||
       offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETFSMSTATE_REQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETFSMSTATE_REQUEST_0 != 0xae151e25UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETFSMSTATE_REQUEST_1 != 0x8bec0bc2UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETFSMSTATE_REQUEST_2 != 0x00739b60UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETFSMSTATE_REQUEST_3 != 0x6e898544UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETFSMSTATE_REQUEST_4 != 0x2e9e75ecUL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETFSMSTATE_REQUEST_5 != 0xaf1b7578UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETFSMSTATE_REQUEST_6 != 0xe769f605UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETFSMSTATE_REQUEST_7 != 0x5ac0fd43UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETFSMSTATE_REQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETFSMSTATE_REQUEST_0 0xae151e25UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETFSMSTATE_REQUEST_1 0x8bec0bc2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETFSMSTATE_REQUEST_2 0x00739b60UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETFSMSTATE_REQUEST_3 0x6e898544UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETFSMSTATE_REQUEST_4 0x2e9e75ecUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETFSMSTATE_REQUEST_5 0xaf1b7578UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETFSMSTATE_REQUEST_6 0xe769f605UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETFSMSTATE_REQUEST_7 0x5ac0fd43UL

/** Complete ROS2 uwvm_fourier_bridge/srv/SetFsmState_Request value; no field projects away native data. */
typedef struct roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetFsmState_Request
{
    /** Declared field sequence; canonical capacity is part of CODEC_IDENTITY. */
    uint64_t sequence;
    /** Declared field state; canonical capacity is part of CODEC_IDENTITY. */
    int32_t state;
} roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetFsmState_Request;

# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETFSMSTATE_REQUEST_MAX_WIRE_BYTES 12u
# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETFSMSTATE_REQUEST_MIN_WIRE_BYTES 12u
# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETFSMSTATE_REQUEST_CODEC_IDENTITY                                                                         \
     "UWVMROS1_a479783bb0f94bf69a62333235049ee7692f618ae255edbefaa9cf9f110e090d"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetFsmState_Request_valid(roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetFsmState_Request const* value)
{
    if(!value)
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetFsmState_Request_wire_size(roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetFsmState_Request const* value)
{
    size_t n = 0;
    n += 8;
    n += 4;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetFsmState_Request_write_fields(roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetFsmState_Request const* value,
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
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetFsmState_Request_read_fields(unsigned char const* p,
                                                                               size_t n,
                                                                               size_t* offset,
                                                                               roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetFsmState_Request* value)
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
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetFsmState_Request_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetFsmState_Request_encode(roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetFsmState_Request const* value,
                                                                          void* output,
                                                                          size_t capacity,
                                                                          size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetFsmState_Request_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetFsmState_Request_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetFsmState_Request_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetFsmState_Request_decode(void const* input,
                                                                          size_t length,
                                                                          roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetFsmState_Request* value)
{
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetFsmState_Request next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 12u || length > 12u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetFsmState_Request_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETFSMSTATE_RESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETFSMSTATE_RESPONSE_0 != 0xa6525e48UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETFSMSTATE_RESPONSE_1 != 0x7d492a59UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETFSMSTATE_RESPONSE_2 != 0xb11d62bdUL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETFSMSTATE_RESPONSE_3 != 0xbf71254bUL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETFSMSTATE_RESPONSE_4 != 0x9bc6b8dcUL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETFSMSTATE_RESPONSE_5 != 0xd807812cUL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETFSMSTATE_RESPONSE_6 != 0x5d228df8UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETFSMSTATE_RESPONSE_7 != 0x61b428dbUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETFSMSTATE_RESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETFSMSTATE_RESPONSE_0 0xa6525e48UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETFSMSTATE_RESPONSE_1 0x7d492a59UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETFSMSTATE_RESPONSE_2 0xb11d62bdUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETFSMSTATE_RESPONSE_3 0xbf71254bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETFSMSTATE_RESPONSE_4 0x9bc6b8dcUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETFSMSTATE_RESPONSE_5 0xd807812cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETFSMSTATE_RESPONSE_6 0x5d228df8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETFSMSTATE_RESPONSE_7 0x61b428dbUL

/** UTF-8 byte storage for uwvm_fourier_bridge/srv/SetFsmState_Response.error; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetFsmState_Response_error_text;

/** Complete ROS2 uwvm_fourier_bridge/srv/SetFsmState_Response value; no field projects away native data. */
typedef struct roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetFsmState_Response
{
    /** Declared field status; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t status;
    /** Declared field error; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetFsmState_Response_error_text error;
} roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetFsmState_Response;

# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETFSMSTATE_RESPONSE_MAX_WIRE_BYTES 136u
# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETFSMSTATE_RESPONSE_MIN_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETFSMSTATE_RESPONSE_CODEC_IDENTITY                                                                        \
     "UWVMROS1_35161a47d290454d74849c87e6333379e93454fe070c21a4ad6175c5da715e70"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetFsmState_Response_valid(roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetFsmState_Response const* value)
{
    if(!value)
        return 0;
    if(value->error.size > 128u || !uwvm_bounded_utf8(value->error.data, value->error.size))
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetFsmState_Response_wire_size(roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetFsmState_Response const* value)
{
    size_t n = 0;
    n += 4;
    n += 4 + value->error.size;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetFsmState_Response_write_fields(roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetFsmState_Response const* value,
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
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetFsmState_Response_read_fields(unsigned char const* p,
                                                                                size_t n,
                                                                                size_t* offset,
                                                                                roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetFsmState_Response* value)
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
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetFsmState_Response_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetFsmState_Response_encode(roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetFsmState_Response const* value,
                                                                           void* output,
                                                                           size_t capacity,
                                                                           size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetFsmState_Response_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetFsmState_Response_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetFsmState_Response_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetFsmState_Response_decode(void const* input,
                                                                           size_t length,
                                                                           roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetFsmState_Response* value)
{
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetFsmState_Response next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 8u || length > 136u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetFsmState_Response_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETGROUPCOMMAND_REQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETGROUPCOMMAND_REQUEST_0 != 0x5024e196UL ||                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETGROUPCOMMAND_REQUEST_1 != 0xb60746adUL ||                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETGROUPCOMMAND_REQUEST_2 != 0xf896f66aUL ||                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETGROUPCOMMAND_REQUEST_3 != 0x7702951dUL ||                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETGROUPCOMMAND_REQUEST_4 != 0xf307738dUL ||                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETGROUPCOMMAND_REQUEST_5 != 0xa9db6b68UL ||                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETGROUPCOMMAND_REQUEST_6 != 0x67220f79UL ||                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETGROUPCOMMAND_REQUEST_7 != 0x935ac745UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETGROUPCOMMAND_REQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETGROUPCOMMAND_REQUEST_0 0x5024e196UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETGROUPCOMMAND_REQUEST_1 0xb60746adUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETGROUPCOMMAND_REQUEST_2 0xf896f66aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETGROUPCOMMAND_REQUEST_3 0x7702951dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETGROUPCOMMAND_REQUEST_4 0xf307738dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETGROUPCOMMAND_REQUEST_5 0xa9db6b68UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETGROUPCOMMAND_REQUEST_6 0x67220f79UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETGROUPCOMMAND_REQUEST_7 0x935ac745UL

/** At most8 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_2_uwvm_fourier_bridge_msg_GroupValues data[8];
} roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetGroupCommand_Request_position_sequence;

/** At most8 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_2_uwvm_fourier_bridge_msg_GroupValues data[8];
} roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetGroupCommand_Request_velocity_sequence;

/** At most8 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_2_uwvm_fourier_bridge_msg_GroupValues data[8];
} roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetGroupCommand_Request_torque_sequence;

/** Complete ROS2 uwvm_fourier_bridge/srv/SetGroupCommand_Request value; no field projects away native data. */
typedef struct roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetGroupCommand_Request
{
    /** Declared field sequence; canonical capacity is part of CODEC_IDENTITY. */
    uint64_t sequence;
    /** Declared field position; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetGroupCommand_Request_position_sequence position;
    /** Declared field velocity; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetGroupCommand_Request_velocity_sequence velocity;
    /** Declared field torque; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetGroupCommand_Request_torque_sequence torque;
} roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetGroupCommand_Request;

# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETGROUPCOMMAND_REQUEST_MAX_WIRE_BYTES 15572u
# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETGROUPCOMMAND_REQUEST_MIN_WIRE_BYTES 20u
# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETGROUPCOMMAND_REQUEST_CODEC_IDENTITY                                                                     \
     "UWVMROS1_b0b7d59e3985faf7a7c3e186e0556059b479e624c799f20dafb973e774ae3be9"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetGroupCommand_Request_valid(roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetGroupCommand_Request const* value)
{
    if(!value)
        return 0;
    if(value->position.size > 8u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->position.size; ++i)
        {
            if(!roswasmc_bounded_2_uwvm_fourier_bridge_msg_GroupValues_valid(&value->position.data[i]))
                return 0;
        }
    }
    if(value->velocity.size > 8u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->velocity.size; ++i)
        {
            if(!roswasmc_bounded_2_uwvm_fourier_bridge_msg_GroupValues_valid(&value->velocity.data[i]))
                return 0;
        }
    }
    if(value->torque.size > 8u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->torque.size; ++i)
        {
            if(!roswasmc_bounded_2_uwvm_fourier_bridge_msg_GroupValues_valid(&value->torque.data[i]))
                return 0;
        }
    }
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetGroupCommand_Request_wire_size(
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetGroupCommand_Request const* value)
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
            n += roswasmc_bounded_2_uwvm_fourier_bridge_msg_GroupValues_wire_size(&value->position.data[i]);
        }
    }
    n += 4;
    if(value->velocity.size > 8u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->velocity.size; ++i)
        {
            n += roswasmc_bounded_2_uwvm_fourier_bridge_msg_GroupValues_wire_size(&value->velocity.data[i]);
        }
    }
    n += 4;
    if(value->torque.size > 8u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->torque.size; ++i)
        {
            n += roswasmc_bounded_2_uwvm_fourier_bridge_msg_GroupValues_wire_size(&value->torque.data[i]);
        }
    }
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetGroupCommand_Request_write_fields(
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetGroupCommand_Request const* value,
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
            roswasmc_bounded_2_uwvm_fourier_bridge_msg_GroupValues_write_fields(&value->position.data[i], p, offset);
        }
    }
    uwvm_bounded_put(p + *offset, value->velocity.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->velocity.size; ++i)
        {
            roswasmc_bounded_2_uwvm_fourier_bridge_msg_GroupValues_write_fields(&value->velocity.data[i], p, offset);
        }
    }
    uwvm_bounded_put(p + *offset, value->torque.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->torque.size; ++i)
        {
            roswasmc_bounded_2_uwvm_fourier_bridge_msg_GroupValues_write_fields(&value->torque.data[i], p, offset);
        }
    }
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetGroupCommand_Request_read_fields(unsigned char const* p,
                                                                                   size_t n,
                                                                                   size_t* offset,
                                                                                   roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetGroupCommand_Request* value)
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
            if(!roswasmc_bounded_2_uwvm_fourier_bridge_msg_GroupValues_read_fields(p, n, offset, &value->position.data[i]))
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
            if(!roswasmc_bounded_2_uwvm_fourier_bridge_msg_GroupValues_read_fields(p, n, offset, &value->velocity.data[i]))
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
            if(!roswasmc_bounded_2_uwvm_fourier_bridge_msg_GroupValues_read_fields(p, n, offset, &value->torque.data[i]))
                return 0;
        }
    }
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetGroupCommand_Request_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetGroupCommand_Request_encode(roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetGroupCommand_Request const* value,
                                                                              void* output,
                                                                              size_t capacity,
                                                                              size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetGroupCommand_Request_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetGroupCommand_Request_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetGroupCommand_Request_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetGroupCommand_Request_decode(void const* input,
                                                                              size_t length,
                                                                              roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetGroupCommand_Request* value)
{
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetGroupCommand_Request next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 20u || length > 15572u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetGroupCommand_Request_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETGROUPCOMMAND_RESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETGROUPCOMMAND_RESPONSE_0 != 0x52f18a1fUL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETGROUPCOMMAND_RESPONSE_1 != 0x6b77caf1UL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETGROUPCOMMAND_RESPONSE_2 != 0xd1cfb648UL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETGROUPCOMMAND_RESPONSE_3 != 0x1a813c96UL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETGROUPCOMMAND_RESPONSE_4 != 0xf895a4ccUL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETGROUPCOMMAND_RESPONSE_5 != 0xca1fc4b9UL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETGROUPCOMMAND_RESPONSE_6 != 0xb1c96dd4UL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETGROUPCOMMAND_RESPONSE_7 != 0xd2fcf435UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETGROUPCOMMAND_RESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETGROUPCOMMAND_RESPONSE_0 0x52f18a1fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETGROUPCOMMAND_RESPONSE_1 0x6b77caf1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETGROUPCOMMAND_RESPONSE_2 0xd1cfb648UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETGROUPCOMMAND_RESPONSE_3 0x1a813c96UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETGROUPCOMMAND_RESPONSE_4 0xf895a4ccUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETGROUPCOMMAND_RESPONSE_5 0xca1fc4b9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETGROUPCOMMAND_RESPONSE_6 0xb1c96dd4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETGROUPCOMMAND_RESPONSE_7 0xd2fcf435UL

/** UTF-8 byte storage for uwvm_fourier_bridge/srv/SetGroupCommand_Response.error; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetGroupCommand_Response_error_text;

/** Complete ROS2 uwvm_fourier_bridge/srv/SetGroupCommand_Response value; no field projects away native data. */
typedef struct roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetGroupCommand_Response
{
    /** Declared field status; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t status;
    /** Declared field error; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetGroupCommand_Response_error_text error;
} roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetGroupCommand_Response;

# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETGROUPCOMMAND_RESPONSE_MAX_WIRE_BYTES 136u
# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETGROUPCOMMAND_RESPONSE_MIN_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETGROUPCOMMAND_RESPONSE_CODEC_IDENTITY                                                                    \
     "UWVMROS1_53dc9e28bf3c95b193748d49c2796f5a936815f654863d326b6536a44077d290"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetGroupCommand_Response_valid(roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetGroupCommand_Response const* value)
{
    if(!value)
        return 0;
    if(value->error.size > 128u || !uwvm_bounded_utf8(value->error.data, value->error.size))
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetGroupCommand_Response_wire_size(
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetGroupCommand_Response const* value)
{
    size_t n = 0;
    n += 4;
    n += 4 + value->error.size;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetGroupCommand_Response_write_fields(
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetGroupCommand_Response const* value,
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
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetGroupCommand_Response_read_fields(unsigned char const* p,
                                                                                    size_t n,
                                                                                    size_t* offset,
                                                                                    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetGroupCommand_Response* value)
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
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetGroupCommand_Response_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetGroupCommand_Response_encode(roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetGroupCommand_Response const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetGroupCommand_Response_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetGroupCommand_Response_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetGroupCommand_Response_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetGroupCommand_Response_decode(void const* input,
                                                                               size_t length,
                                                                               roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetGroupCommand_Response* value)
{
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetGroupCommand_Response next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 8u || length > 136u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetGroupCommand_Response_read_fields((unsigned char const*)input, length, &offset, &next) ||
       offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETMOTORCFGPD_REQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETMOTORCFGPD_REQUEST_0 != 0x0811425fUL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETMOTORCFGPD_REQUEST_1 != 0x3c6a6501UL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETMOTORCFGPD_REQUEST_2 != 0x30f44d80UL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETMOTORCFGPD_REQUEST_3 != 0xb65842e4UL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETMOTORCFGPD_REQUEST_4 != 0xe0275fa7UL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETMOTORCFGPD_REQUEST_5 != 0xa583df49UL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETMOTORCFGPD_REQUEST_6 != 0x97819421UL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETMOTORCFGPD_REQUEST_7 != 0x77054665UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETMOTORCFGPD_REQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETMOTORCFGPD_REQUEST_0 0x0811425fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETMOTORCFGPD_REQUEST_1 0x3c6a6501UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETMOTORCFGPD_REQUEST_2 0x30f44d80UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETMOTORCFGPD_REQUEST_3 0xb65842e4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETMOTORCFGPD_REQUEST_4 0xe0275fa7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETMOTORCFGPD_REQUEST_5 0xa583df49UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETMOTORCFGPD_REQUEST_6 0x97819421UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETMOTORCFGPD_REQUEST_7 0x77054665UL

/** At most8 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_2_uwvm_fourier_bridge_msg_GroupValues data[8];
} roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetMotorCfgPd_Request_kp_sequence;

/** At most8 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_2_uwvm_fourier_bridge_msg_GroupValues data[8];
} roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetMotorCfgPd_Request_kd_sequence;

/** Complete ROS2 uwvm_fourier_bridge/srv/SetMotorCfgPd_Request value; no field projects away native data. */
typedef struct roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetMotorCfgPd_Request
{
    /** Declared field sequence; canonical capacity is part of CODEC_IDENTITY. */
    uint64_t sequence;
    /** Declared field kp; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetMotorCfgPd_Request_kp_sequence kp;
    /** Declared field kd; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetMotorCfgPd_Request_kd_sequence kd;
} roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetMotorCfgPd_Request;

# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETMOTORCFGPD_REQUEST_MAX_WIRE_BYTES 10384u
# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETMOTORCFGPD_REQUEST_MIN_WIRE_BYTES 16u
# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETMOTORCFGPD_REQUEST_CODEC_IDENTITY                                                                       \
     "UWVMROS1_0e5ee74f7eaed206d45a883b2fe8ddeda407edf921aa31c4f2d04462479324de"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetMotorCfgPd_Request_valid(roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetMotorCfgPd_Request const* value)
{
    if(!value)
        return 0;
    if(value->kp.size > 8u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->kp.size; ++i)
        {
            if(!roswasmc_bounded_2_uwvm_fourier_bridge_msg_GroupValues_valid(&value->kp.data[i]))
                return 0;
        }
    }
    if(value->kd.size > 8u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->kd.size; ++i)
        {
            if(!roswasmc_bounded_2_uwvm_fourier_bridge_msg_GroupValues_valid(&value->kd.data[i]))
                return 0;
        }
    }
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetMotorCfgPd_Request_wire_size(roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetMotorCfgPd_Request const* value)
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
            n += roswasmc_bounded_2_uwvm_fourier_bridge_msg_GroupValues_wire_size(&value->kp.data[i]);
        }
    }
    n += 4;
    if(value->kd.size > 8u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->kd.size; ++i)
        {
            n += roswasmc_bounded_2_uwvm_fourier_bridge_msg_GroupValues_wire_size(&value->kd.data[i]);
        }
    }
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetMotorCfgPd_Request_write_fields(roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetMotorCfgPd_Request const* value,
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
            roswasmc_bounded_2_uwvm_fourier_bridge_msg_GroupValues_write_fields(&value->kp.data[i], p, offset);
        }
    }
    uwvm_bounded_put(p + *offset, value->kd.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->kd.size; ++i)
        {
            roswasmc_bounded_2_uwvm_fourier_bridge_msg_GroupValues_write_fields(&value->kd.data[i], p, offset);
        }
    }
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetMotorCfgPd_Request_read_fields(unsigned char const* p,
                                                                                 size_t n,
                                                                                 size_t* offset,
                                                                                 roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetMotorCfgPd_Request* value)
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
            if(!roswasmc_bounded_2_uwvm_fourier_bridge_msg_GroupValues_read_fields(p, n, offset, &value->kp.data[i]))
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
            if(!roswasmc_bounded_2_uwvm_fourier_bridge_msg_GroupValues_read_fields(p, n, offset, &value->kd.data[i]))
                return 0;
        }
    }
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetMotorCfgPd_Request_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetMotorCfgPd_Request_encode(roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetMotorCfgPd_Request const* value,
                                                                            void* output,
                                                                            size_t capacity,
                                                                            size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetMotorCfgPd_Request_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetMotorCfgPd_Request_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetMotorCfgPd_Request_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetMotorCfgPd_Request_decode(void const* input,
                                                                            size_t length,
                                                                            roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetMotorCfgPd_Request* value)
{
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetMotorCfgPd_Request next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 16u || length > 10384u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetMotorCfgPd_Request_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETMOTORCFGPD_RESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETMOTORCFGPD_RESPONSE_0 != 0xcf7a3395UL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETMOTORCFGPD_RESPONSE_1 != 0xd01eba75UL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETMOTORCFGPD_RESPONSE_2 != 0xbbb2bdfbUL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETMOTORCFGPD_RESPONSE_3 != 0xc52cc726UL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETMOTORCFGPD_RESPONSE_4 != 0x3e02bc7aUL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETMOTORCFGPD_RESPONSE_5 != 0xa1c29ba8UL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETMOTORCFGPD_RESPONSE_6 != 0x6d9bcd8eUL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETMOTORCFGPD_RESPONSE_7 != 0xcddf9924UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETMOTORCFGPD_RESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETMOTORCFGPD_RESPONSE_0 0xcf7a3395UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETMOTORCFGPD_RESPONSE_1 0xd01eba75UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETMOTORCFGPD_RESPONSE_2 0xbbb2bdfbUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETMOTORCFGPD_RESPONSE_3 0xc52cc726UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETMOTORCFGPD_RESPONSE_4 0x3e02bc7aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETMOTORCFGPD_RESPONSE_5 0xa1c29ba8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETMOTORCFGPD_RESPONSE_6 0x6d9bcd8eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETMOTORCFGPD_RESPONSE_7 0xcddf9924UL

/** UTF-8 byte storage for uwvm_fourier_bridge/srv/SetMotorCfgPd_Response.error; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetMotorCfgPd_Response_error_text;

/** Complete ROS2 uwvm_fourier_bridge/srv/SetMotorCfgPd_Response value; no field projects away native data. */
typedef struct roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetMotorCfgPd_Response
{
    /** Declared field status; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t status;
    /** Declared field error; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetMotorCfgPd_Response_error_text error;
} roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetMotorCfgPd_Response;

# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETMOTORCFGPD_RESPONSE_MAX_WIRE_BYTES 136u
# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETMOTORCFGPD_RESPONSE_MIN_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETMOTORCFGPD_RESPONSE_CODEC_IDENTITY                                                                      \
     "UWVMROS1_dc86ac23016dc2d81dd5a69d3a6bcd96db09e1012f8f86e9fe4adcb38dabc804"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetMotorCfgPd_Response_valid(roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetMotorCfgPd_Response const* value)
{
    if(!value)
        return 0;
    if(value->error.size > 128u || !uwvm_bounded_utf8(value->error.data, value->error.size))
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetMotorCfgPd_Response_wire_size(roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetMotorCfgPd_Response const* value)
{
    size_t n = 0;
    n += 4;
    n += 4 + value->error.size;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetMotorCfgPd_Response_write_fields(
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetMotorCfgPd_Response const* value,
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
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetMotorCfgPd_Response_read_fields(unsigned char const* p,
                                                                                  size_t n,
                                                                                  size_t* offset,
                                                                                  roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetMotorCfgPd_Response* value)
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
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetMotorCfgPd_Response_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetMotorCfgPd_Response_encode(roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetMotorCfgPd_Response const* value,
                                                                             void* output,
                                                                             size_t capacity,
                                                                             size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetMotorCfgPd_Response_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetMotorCfgPd_Response_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetMotorCfgPd_Response_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetMotorCfgPd_Response_decode(void const* input,
                                                                             size_t length,
                                                                             roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetMotorCfgPd_Response* value)
{
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetMotorCfgPd_Response next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 8u || length > 136u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetMotorCfgPd_Response_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETSTANDPOSE_REQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETSTANDPOSE_REQUEST_0 != 0x9018debdUL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETSTANDPOSE_REQUEST_1 != 0x7d6e60d6UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETSTANDPOSE_REQUEST_2 != 0x5e62e268UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETSTANDPOSE_REQUEST_3 != 0xfff9ae79UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETSTANDPOSE_REQUEST_4 != 0x30bfae37UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETSTANDPOSE_REQUEST_5 != 0x5adb52ceUL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETSTANDPOSE_REQUEST_6 != 0xed218251UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETSTANDPOSE_REQUEST_7 != 0x778f9dd2UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETSTANDPOSE_REQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETSTANDPOSE_REQUEST_0 0x9018debdUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETSTANDPOSE_REQUEST_1 0x7d6e60d6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETSTANDPOSE_REQUEST_2 0x5e62e268UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETSTANDPOSE_REQUEST_3 0xfff9ae79UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETSTANDPOSE_REQUEST_4 0x30bfae37UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETSTANDPOSE_REQUEST_5 0x5adb52ceUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETSTANDPOSE_REQUEST_6 0xed218251UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETSTANDPOSE_REQUEST_7 0x778f9dd2UL

/** Complete ROS2 uwvm_fourier_bridge/srv/SetStandPose_Request value; no field projects away native data. */
typedef struct roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetStandPose_Request
{
    /** Declared field sequence; canonical capacity is part of CODEC_IDENTITY. */
    uint64_t sequence;
    /** Declared field delta_z; canonical capacity is part of CODEC_IDENTITY. */
    double delta_z;
    /** Declared field delta_pitch; canonical capacity is part of CODEC_IDENTITY. */
    double delta_pitch;
    /** Declared field delta_yaw; canonical capacity is part of CODEC_IDENTITY. */
    double delta_yaw;
} roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetStandPose_Request;

# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETSTANDPOSE_REQUEST_MAX_WIRE_BYTES 32u
# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETSTANDPOSE_REQUEST_MIN_WIRE_BYTES 32u
# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETSTANDPOSE_REQUEST_CODEC_IDENTITY                                                                        \
     "UWVMROS1_21e410d17dac9b44b02507adc3752236def8ad2bc9e251b64114a7f757577211"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetStandPose_Request_valid(roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetStandPose_Request const* value)
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
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetStandPose_Request_wire_size(roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetStandPose_Request const* value)
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
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetStandPose_Request_write_fields(roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetStandPose_Request const* value,
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
static inline int
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetStandPose_Request_read_fields(unsigned char const* p,
                                                                                size_t n,
                                                                                size_t* offset,
                                                                                roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetStandPose_Request* value)
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
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetStandPose_Request_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetStandPose_Request_encode(roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetStandPose_Request const* value,
                                                                           void* output,
                                                                           size_t capacity,
                                                                           size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetStandPose_Request_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetStandPose_Request_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetStandPose_Request_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetStandPose_Request_decode(void const* input,
                                                                           size_t length,
                                                                           roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetStandPose_Request* value)
{
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetStandPose_Request next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 32u || length > 32u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetStandPose_Request_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETSTANDPOSE_RESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETSTANDPOSE_RESPONSE_0 != 0xcbee7766UL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETSTANDPOSE_RESPONSE_1 != 0x917a65aeUL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETSTANDPOSE_RESPONSE_2 != 0x683d7effUL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETSTANDPOSE_RESPONSE_3 != 0x665de8d7UL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETSTANDPOSE_RESPONSE_4 != 0xe0145acbUL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETSTANDPOSE_RESPONSE_5 != 0x2ebc9437UL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETSTANDPOSE_RESPONSE_6 != 0xbc47ca59UL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETSTANDPOSE_RESPONSE_7 != 0xd86590bbUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETSTANDPOSE_RESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETSTANDPOSE_RESPONSE_0 0xcbee7766UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETSTANDPOSE_RESPONSE_1 0x917a65aeUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETSTANDPOSE_RESPONSE_2 0x683d7effUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETSTANDPOSE_RESPONSE_3 0x665de8d7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETSTANDPOSE_RESPONSE_4 0xe0145acbUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETSTANDPOSE_RESPONSE_5 0x2ebc9437UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETSTANDPOSE_RESPONSE_6 0xbc47ca59UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETSTANDPOSE_RESPONSE_7 0xd86590bbUL

/** UTF-8 byte storage for uwvm_fourier_bridge/srv/SetStandPose_Response.error; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetStandPose_Response_error_text;

/** Complete ROS2 uwvm_fourier_bridge/srv/SetStandPose_Response value; no field projects away native data. */
typedef struct roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetStandPose_Response
{
    /** Declared field status; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t status;
    /** Declared field error; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetStandPose_Response_error_text error;
} roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetStandPose_Response;

# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETSTANDPOSE_RESPONSE_MAX_WIRE_BYTES 136u
# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETSTANDPOSE_RESPONSE_MIN_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETSTANDPOSE_RESPONSE_CODEC_IDENTITY                                                                       \
     "UWVMROS1_9b3ea0a1868a4672f1ca95ac2cd43e31eeaa9f059c4194a2205b5df1cf09291f"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetStandPose_Response_valid(roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetStandPose_Response const* value)
{
    if(!value)
        return 0;
    if(value->error.size > 128u || !uwvm_bounded_utf8(value->error.data, value->error.size))
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetStandPose_Response_wire_size(roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetStandPose_Response const* value)
{
    size_t n = 0;
    n += 4;
    n += 4 + value->error.size;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetStandPose_Response_write_fields(roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetStandPose_Response const* value,
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
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetStandPose_Response_read_fields(unsigned char const* p,
                                                                                 size_t n,
                                                                                 size_t* offset,
                                                                                 roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetStandPose_Response* value)
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
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetStandPose_Response_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetStandPose_Response_encode(roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetStandPose_Response const* value,
                                                                            void* output,
                                                                            size_t capacity,
                                                                            size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetStandPose_Response_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetStandPose_Response_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetStandPose_Response_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetStandPose_Response_decode(void const* input,
                                                                            size_t length,
                                                                            roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetStandPose_Response* value)
{
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetStandPose_Response next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 8u || length > 136u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetStandPose_Response_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETUPPERFSMSTATE_REQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETUPPERFSMSTATE_REQUEST_0 != 0x269b26ffUL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETUPPERFSMSTATE_REQUEST_1 != 0xa4403bb9UL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETUPPERFSMSTATE_REQUEST_2 != 0x69c7b279UL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETUPPERFSMSTATE_REQUEST_3 != 0x575f2bfaUL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETUPPERFSMSTATE_REQUEST_4 != 0xe1f35dd7UL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETUPPERFSMSTATE_REQUEST_5 != 0x71a2f078UL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETUPPERFSMSTATE_REQUEST_6 != 0x0ebcc139UL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETUPPERFSMSTATE_REQUEST_7 != 0xa5a74b75UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETUPPERFSMSTATE_REQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETUPPERFSMSTATE_REQUEST_0 0x269b26ffUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETUPPERFSMSTATE_REQUEST_1 0xa4403bb9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETUPPERFSMSTATE_REQUEST_2 0x69c7b279UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETUPPERFSMSTATE_REQUEST_3 0x575f2bfaUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETUPPERFSMSTATE_REQUEST_4 0xe1f35dd7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETUPPERFSMSTATE_REQUEST_5 0x71a2f078UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETUPPERFSMSTATE_REQUEST_6 0x0ebcc139UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETUPPERFSMSTATE_REQUEST_7 0xa5a74b75UL

/** Complete ROS2 uwvm_fourier_bridge/srv/SetUpperFsmState_Request value; no field projects away native data. */
typedef struct roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetUpperFsmState_Request
{
    /** Declared field sequence; canonical capacity is part of CODEC_IDENTITY. */
    uint64_t sequence;
    /** Declared field state; canonical capacity is part of CODEC_IDENTITY. */
    int32_t state;
} roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetUpperFsmState_Request;

# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETUPPERFSMSTATE_REQUEST_MAX_WIRE_BYTES 12u
# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETUPPERFSMSTATE_REQUEST_MIN_WIRE_BYTES 12u
# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETUPPERFSMSTATE_REQUEST_CODEC_IDENTITY                                                                    \
     "UWVMROS1_9742535e908c4d9640af2c7432a91e65e76f3a442c265ef9255df599227a4182"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetUpperFsmState_Request_valid(roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetUpperFsmState_Request const* value)
{
    if(!value)
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetUpperFsmState_Request_wire_size(
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetUpperFsmState_Request const* value)
{
    size_t n = 0;
    n += 8;
    n += 4;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetUpperFsmState_Request_write_fields(
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetUpperFsmState_Request const* value,
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
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetUpperFsmState_Request_read_fields(unsigned char const* p,
                                                                                    size_t n,
                                                                                    size_t* offset,
                                                                                    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetUpperFsmState_Request* value)
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
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetUpperFsmState_Request_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetUpperFsmState_Request_encode(roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetUpperFsmState_Request const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetUpperFsmState_Request_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetUpperFsmState_Request_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetUpperFsmState_Request_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetUpperFsmState_Request_decode(void const* input,
                                                                               size_t length,
                                                                               roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetUpperFsmState_Request* value)
{
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetUpperFsmState_Request next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 12u || length > 12u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetUpperFsmState_Request_read_fields((unsigned char const*)input, length, &offset, &next) ||
       offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETUPPERFSMSTATE_RESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETUPPERFSMSTATE_RESPONSE_0 != 0xa968de42UL ||                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETUPPERFSMSTATE_RESPONSE_1 != 0x541cfc67UL ||                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETUPPERFSMSTATE_RESPONSE_2 != 0x579b28f4UL ||                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETUPPERFSMSTATE_RESPONSE_3 != 0x23685c28UL ||                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETUPPERFSMSTATE_RESPONSE_4 != 0x7ef38d0cUL ||                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETUPPERFSMSTATE_RESPONSE_5 != 0xdc9abb07UL ||                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETUPPERFSMSTATE_RESPONSE_6 != 0x84639973UL ||                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETUPPERFSMSTATE_RESPONSE_7 != 0xde0cbf75UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETUPPERFSMSTATE_RESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETUPPERFSMSTATE_RESPONSE_0 0xa968de42UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETUPPERFSMSTATE_RESPONSE_1 0x541cfc67UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETUPPERFSMSTATE_RESPONSE_2 0x579b28f4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETUPPERFSMSTATE_RESPONSE_3 0x23685c28UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETUPPERFSMSTATE_RESPONSE_4 0x7ef38d0cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETUPPERFSMSTATE_RESPONSE_5 0xdc9abb07UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETUPPERFSMSTATE_RESPONSE_6 0x84639973UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETUPPERFSMSTATE_RESPONSE_7 0xde0cbf75UL

/** UTF-8 byte storage for uwvm_fourier_bridge/srv/SetUpperFsmState_Response.error; size excludes padding/terminators.
 */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetUpperFsmState_Response_error_text;

/** Complete ROS2 uwvm_fourier_bridge/srv/SetUpperFsmState_Response value; no field projects away native data. */
typedef struct roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetUpperFsmState_Response
{
    /** Declared field status; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t status;
    /** Declared field error; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetUpperFsmState_Response_error_text error;
} roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetUpperFsmState_Response;

# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETUPPERFSMSTATE_RESPONSE_MAX_WIRE_BYTES 136u
# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETUPPERFSMSTATE_RESPONSE_MIN_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETUPPERFSMSTATE_RESPONSE_CODEC_IDENTITY                                                                   \
     "UWVMROS1_8247b198b8a857c16d15f248da2ac705ff2fd6b596f8c148c316025cd917c9f8"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetUpperFsmState_Response_valid(
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetUpperFsmState_Response const* value)
{
    if(!value)
        return 0;
    if(value->error.size > 128u || !uwvm_bounded_utf8(value->error.data, value->error.size))
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetUpperFsmState_Response_wire_size(
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetUpperFsmState_Response const* value)
{
    size_t n = 0;
    n += 4;
    n += 4 + value->error.size;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetUpperFsmState_Response_write_fields(
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetUpperFsmState_Response const* value,
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
static inline int roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetUpperFsmState_Response_read_fields(
    unsigned char const* p,
    size_t n,
    size_t* offset,
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetUpperFsmState_Response* value)
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
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetUpperFsmState_Response_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetUpperFsmState_Response_encode(
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetUpperFsmState_Response const* value,
    void* output,
    size_t capacity,
    size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetUpperFsmState_Response_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetUpperFsmState_Response_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetUpperFsmState_Response_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetUpperFsmState_Response_decode(void const* input,
                                                                                size_t length,
                                                                                roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetUpperFsmState_Response* value)
{
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetUpperFsmState_Response next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 8u || length > 136u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetUpperFsmState_Response_read_fields((unsigned char const*)input, length, &offset, &next) ||
       offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETVELOCITY_REQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETVELOCITY_REQUEST_0 != 0x1e3de21bUL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETVELOCITY_REQUEST_1 != 0xdb123064UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETVELOCITY_REQUEST_2 != 0xea9c1a8aUL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETVELOCITY_REQUEST_3 != 0x8ea115f7UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETVELOCITY_REQUEST_4 != 0xff3aa5baUL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETVELOCITY_REQUEST_5 != 0x80a606aaUL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETVELOCITY_REQUEST_6 != 0x1b2ec28eUL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETVELOCITY_REQUEST_7 != 0x214f71eaUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETVELOCITY_REQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETVELOCITY_REQUEST_0 0x1e3de21bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETVELOCITY_REQUEST_1 0xdb123064UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETVELOCITY_REQUEST_2 0xea9c1a8aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETVELOCITY_REQUEST_3 0x8ea115f7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETVELOCITY_REQUEST_4 0xff3aa5baUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETVELOCITY_REQUEST_5 0x80a606aaUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETVELOCITY_REQUEST_6 0x1b2ec28eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETVELOCITY_REQUEST_7 0x214f71eaUL

/** Complete ROS2 uwvm_fourier_bridge/srv/SetVelocity_Request value; no field projects away native data. */
typedef struct roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocity_Request
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
} roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocity_Request;

# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETVELOCITY_REQUEST_MAX_WIRE_BYTES 40u
# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETVELOCITY_REQUEST_MIN_WIRE_BYTES 40u
# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETVELOCITY_REQUEST_CODEC_IDENTITY                                                                         \
     "UWVMROS1_7d81116c1df184dc948db4bcba368ae3ea118f3c27418ee44bd0ceb6347cee44"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocity_Request_valid(roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocity_Request const* value)
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
static inline size_t
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocity_Request_wire_size(roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocity_Request const* value)
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
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocity_Request_write_fields(roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocity_Request const* value,
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
static inline int
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocity_Request_read_fields(unsigned char const* p,
                                                                               size_t n,
                                                                               size_t* offset,
                                                                               roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocity_Request* value)
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
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocity_Request_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocity_Request_encode(roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocity_Request const* value,
                                                                          void* output,
                                                                          size_t capacity,
                                                                          size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocity_Request_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocity_Request_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocity_Request_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocity_Request_decode(void const* input,
                                                                          size_t length,
                                                                          roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocity_Request* value)
{
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocity_Request next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 40u || length > 40u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocity_Request_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETVELOCITY_RESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETVELOCITY_RESPONSE_0 != 0x7e97dbefUL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETVELOCITY_RESPONSE_1 != 0x059daa77UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETVELOCITY_RESPONSE_2 != 0x11d72d0bUL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETVELOCITY_RESPONSE_3 != 0x22a92bb2UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETVELOCITY_RESPONSE_4 != 0x27e3ab52UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETVELOCITY_RESPONSE_5 != 0x42a47e1eUL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETVELOCITY_RESPONSE_6 != 0x650ec49cUL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETVELOCITY_RESPONSE_7 != 0x1b2982d2UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETVELOCITY_RESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETVELOCITY_RESPONSE_0 0x7e97dbefUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETVELOCITY_RESPONSE_1 0x059daa77UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETVELOCITY_RESPONSE_2 0x11d72d0bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETVELOCITY_RESPONSE_3 0x22a92bb2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETVELOCITY_RESPONSE_4 0x27e3ab52UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETVELOCITY_RESPONSE_5 0x42a47e1eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETVELOCITY_RESPONSE_6 0x650ec49cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETVELOCITY_RESPONSE_7 0x1b2982d2UL

/** UTF-8 byte storage for uwvm_fourier_bridge/srv/SetVelocity_Response.error; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocity_Response_error_text;

/** Complete ROS2 uwvm_fourier_bridge/srv/SetVelocity_Response value; no field projects away native data. */
typedef struct roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocity_Response
{
    /** Declared field status; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t status;
    /** Declared field error; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocity_Response_error_text error;
} roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocity_Response;

# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETVELOCITY_RESPONSE_MAX_WIRE_BYTES 136u
# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETVELOCITY_RESPONSE_MIN_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETVELOCITY_RESPONSE_CODEC_IDENTITY                                                                        \
     "UWVMROS1_fa76b58061fed9672c09c5a110ebd3dc3dcdfde38da662338a48c0cf00250307"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocity_Response_valid(roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocity_Response const* value)
{
    if(!value)
        return 0;
    if(value->error.size > 128u || !uwvm_bounded_utf8(value->error.data, value->error.size))
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocity_Response_wire_size(roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocity_Response const* value)
{
    size_t n = 0;
    n += 4;
    n += 4 + value->error.size;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocity_Response_write_fields(roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocity_Response const* value,
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
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocity_Response_read_fields(unsigned char const* p,
                                                                                size_t n,
                                                                                size_t* offset,
                                                                                roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocity_Response* value)
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
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocity_Response_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocity_Response_encode(roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocity_Response const* value,
                                                                           void* output,
                                                                           size_t capacity,
                                                                           size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocity_Response_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocity_Response_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocity_Response_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocity_Response_decode(void const* input,
                                                                           size_t length,
                                                                           roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocity_Response* value)
{
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocity_Response next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 8u || length > 136u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocity_Response_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETVELOCITYSOURCE_REQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETVELOCITYSOURCE_REQUEST_0 != 0xba3a1d81UL ||                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETVELOCITYSOURCE_REQUEST_1 != 0xa35c820fUL ||                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETVELOCITYSOURCE_REQUEST_2 != 0x692da341UL ||                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETVELOCITYSOURCE_REQUEST_3 != 0x5049cfe0UL ||                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETVELOCITYSOURCE_REQUEST_4 != 0x569a4b7aUL ||                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETVELOCITYSOURCE_REQUEST_5 != 0x792cdedfUL ||                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETVELOCITYSOURCE_REQUEST_6 != 0x35ab3778UL ||                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETVELOCITYSOURCE_REQUEST_7 != 0xefc22e83UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETVELOCITYSOURCE_REQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETVELOCITYSOURCE_REQUEST_0 0xba3a1d81UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETVELOCITYSOURCE_REQUEST_1 0xa35c820fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETVELOCITYSOURCE_REQUEST_2 0x692da341UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETVELOCITYSOURCE_REQUEST_3 0x5049cfe0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETVELOCITYSOURCE_REQUEST_4 0x569a4b7aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETVELOCITYSOURCE_REQUEST_5 0x792cdedfUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETVELOCITYSOURCE_REQUEST_6 0x35ab3778UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETVELOCITYSOURCE_REQUEST_7 0xefc22e83UL

/** Complete ROS2 uwvm_fourier_bridge/srv/SetVelocitySource_Request value; no field projects away native data. */
typedef struct roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocitySource_Request
{
    /** Declared field sequence; canonical capacity is part of CODEC_IDENTITY. */
    uint64_t sequence;
    /** Declared field source; canonical capacity is part of CODEC_IDENTITY. */
    int32_t source;
} roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocitySource_Request;

# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETVELOCITYSOURCE_REQUEST_MAX_WIRE_BYTES 12u
# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETVELOCITYSOURCE_REQUEST_MIN_WIRE_BYTES 12u
# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETVELOCITYSOURCE_REQUEST_CODEC_IDENTITY                                                                   \
     "UWVMROS1_5e31cdd231ecbb30ece49edc211860b6be67c9e74839a328f37a46231e41271c"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocitySource_Request_valid(
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocitySource_Request const* value)
{
    if(!value)
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocitySource_Request_wire_size(
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocitySource_Request const* value)
{
    size_t n = 0;
    n += 8;
    n += 4;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocitySource_Request_write_fields(
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocitySource_Request const* value,
    unsigned char* p,
    size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->sequence, 8);
    *offset += 8;
    uwvm_bounded_put(p + *offset, (uint64_t)value->source, 4);
    *offset += 4;
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocitySource_Request_read_fields(
    unsigned char const* p,
    size_t n,
    size_t* offset,
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocitySource_Request* value)
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
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocitySource_Request_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocitySource_Request_encode(
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocitySource_Request const* value,
    void* output,
    size_t capacity,
    size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocitySource_Request_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocitySource_Request_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocitySource_Request_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocitySource_Request_decode(void const* input,
                                                                                size_t length,
                                                                                roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocitySource_Request* value)
{
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocitySource_Request next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 12u || length > 12u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocitySource_Request_read_fields((unsigned char const*)input, length, &offset, &next) ||
       offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETVELOCITYSOURCE_RESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETVELOCITYSOURCE_RESPONSE_0 != 0x13e17f16UL ||                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETVELOCITYSOURCE_RESPONSE_1 != 0x36825ceaUL ||                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETVELOCITYSOURCE_RESPONSE_2 != 0x0d93bddbUL ||                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETVELOCITYSOURCE_RESPONSE_3 != 0xd8be9c0fUL ||                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETVELOCITYSOURCE_RESPONSE_4 != 0x93349b85UL ||                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETVELOCITYSOURCE_RESPONSE_5 != 0x0a0afbcbUL ||                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETVELOCITYSOURCE_RESPONSE_6 != 0x21fb1bc8UL ||                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETVELOCITYSOURCE_RESPONSE_7 != 0x902bf7b0UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETVELOCITYSOURCE_RESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETVELOCITYSOURCE_RESPONSE_0 0x13e17f16UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETVELOCITYSOURCE_RESPONSE_1 0x36825ceaUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETVELOCITYSOURCE_RESPONSE_2 0x0d93bddbUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETVELOCITYSOURCE_RESPONSE_3 0xd8be9c0fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETVELOCITYSOURCE_RESPONSE_4 0x93349b85UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETVELOCITYSOURCE_RESPONSE_5 0x0a0afbcbUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETVELOCITYSOURCE_RESPONSE_6 0x21fb1bc8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETVELOCITYSOURCE_RESPONSE_7 0x902bf7b0UL

/** UTF-8 byte storage for uwvm_fourier_bridge/srv/SetVelocitySource_Response.error; size excludes padding/terminators.
 */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocitySource_Response_error_text;

/** Complete ROS2 uwvm_fourier_bridge/srv/SetVelocitySource_Response value; no field projects away native data. */
typedef struct roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocitySource_Response
{
    /** Declared field status; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t status;
    /** Declared field error; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocitySource_Response_error_text error;
} roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocitySource_Response;

# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETVELOCITYSOURCE_RESPONSE_MAX_WIRE_BYTES 136u
# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETVELOCITYSOURCE_RESPONSE_MIN_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_SETVELOCITYSOURCE_RESPONSE_CODEC_IDENTITY                                                                  \
     "UWVMROS1_9eb723e979b56e4a2dff53e026a3cab3cd0ddd4752c85e9b3ca08332e7a0eea7"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocitySource_Response_valid(
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocitySource_Response const* value)
{
    if(!value)
        return 0;
    if(value->error.size > 128u || !uwvm_bounded_utf8(value->error.data, value->error.size))
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocitySource_Response_wire_size(
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocitySource_Response const* value)
{
    size_t n = 0;
    n += 4;
    n += 4 + value->error.size;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocitySource_Response_write_fields(
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocitySource_Response const* value,
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
static inline int roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocitySource_Response_read_fields(
    unsigned char const* p,
    size_t n,
    size_t* offset,
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocitySource_Response* value)
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
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocitySource_Response_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocitySource_Response_encode(
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocitySource_Response const* value,
    void* output,
    size_t capacity,
    size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocitySource_Response_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocitySource_Response_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocitySource_Response_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocitySource_Response_decode(void const* input,
                                                                                 size_t length,
                                                                                 roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocitySource_Response* value)
{
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocitySource_Response next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 8u || length > 136u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_uwvm_fourier_bridge_srv_SetVelocitySource_Response_read_fields((unsigned char const*)input, length, &offset, &next) ||
       offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_WAITGROUPSMOTIONCOMPLETE_REQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_WAITGROUPSMOTIONCOMPLETE_REQUEST_0 != 0xba9c8de5UL ||                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_WAITGROUPSMOTIONCOMPLETE_REQUEST_1 != 0x561aab91UL ||                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_WAITGROUPSMOTIONCOMPLETE_REQUEST_2 != 0xe5e251edUL ||                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_WAITGROUPSMOTIONCOMPLETE_REQUEST_3 != 0x2e14ec10UL ||                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_WAITGROUPSMOTIONCOMPLETE_REQUEST_4 != 0xc34a5030UL ||                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_WAITGROUPSMOTIONCOMPLETE_REQUEST_5 != 0xef0a56aaUL ||                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_WAITGROUPSMOTIONCOMPLETE_REQUEST_6 != 0x020168d8UL ||                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_WAITGROUPSMOTIONCOMPLETE_REQUEST_7 != 0xc32d262cUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_WAITGROUPSMOTIONCOMPLETE_REQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_WAITGROUPSMOTIONCOMPLETE_REQUEST_0 0xba9c8de5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_WAITGROUPSMOTIONCOMPLETE_REQUEST_1 0x561aab91UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_WAITGROUPSMOTIONCOMPLETE_REQUEST_2 0xe5e251edUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_WAITGROUPSMOTIONCOMPLETE_REQUEST_3 0x2e14ec10UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_WAITGROUPSMOTIONCOMPLETE_REQUEST_4 0xc34a5030UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_WAITGROUPSMOTIONCOMPLETE_REQUEST_5 0xef0a56aaUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_WAITGROUPSMOTIONCOMPLETE_REQUEST_6 0x020168d8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_WAITGROUPSMOTIONCOMPLETE_REQUEST_7 0xc32d262cUL

/** UTF-8 byte storage for uwvm_fourier_bridge/srv/WaitGroupsMotionComplete_Request.groups; size excludes
 * padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_uwvm_fourier_bridge_srv_WaitGroupsMotionComplete_Request_groups_text;

/** At most8 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_WaitGroupsMotionComplete_Request_groups_text data[8];
} roswasmc_bounded_2_uwvm_fourier_bridge_srv_WaitGroupsMotionComplete_Request_groups_sequence;

/** Complete ROS2 uwvm_fourier_bridge/srv/WaitGroupsMotionComplete_Request value; no field projects away native data. */
typedef struct roswasmc_bounded_2_uwvm_fourier_bridge_srv_WaitGroupsMotionComplete_Request
{
    /** Declared field sequence; canonical capacity is part of CODEC_IDENTITY. */
    uint64_t sequence;
    /** Declared field groups; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_WaitGroupsMotionComplete_Request_groups_sequence groups;
    /** Declared field timeout_seconds; canonical capacity is part of CODEC_IDENTITY. */
    double timeout_seconds;
    /** Declared field poll_seconds; canonical capacity is part of CODEC_IDENTITY. */
    double poll_seconds;
} roswasmc_bounded_2_uwvm_fourier_bridge_srv_WaitGroupsMotionComplete_Request;

# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_WAITGROUPSMOTIONCOMPLETE_REQUEST_MAX_WIRE_BYTES 1084u
# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_WAITGROUPSMOTIONCOMPLETE_REQUEST_MIN_WIRE_BYTES 28u
# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_WAITGROUPSMOTIONCOMPLETE_REQUEST_CODEC_IDENTITY                                                            \
     "UWVMROS1_c6abe539be15088e34d76cb243ddd814fd6781baa7bf623949f1fb03651ef202"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_uwvm_fourier_bridge_srv_WaitGroupsMotionComplete_Request_valid(
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_WaitGroupsMotionComplete_Request const* value)
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
static inline size_t roswasmc_bounded_2_uwvm_fourier_bridge_srv_WaitGroupsMotionComplete_Request_wire_size(
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_WaitGroupsMotionComplete_Request const* value)
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
static inline void roswasmc_bounded_2_uwvm_fourier_bridge_srv_WaitGroupsMotionComplete_Request_write_fields(
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_WaitGroupsMotionComplete_Request const* value,
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
static inline int roswasmc_bounded_2_uwvm_fourier_bridge_srv_WaitGroupsMotionComplete_Request_read_fields(
    unsigned char const* p,
    size_t n,
    size_t* offset,
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_WaitGroupsMotionComplete_Request* value)
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
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_WaitGroupsMotionComplete_Request_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_uwvm_fourier_bridge_srv_WaitGroupsMotionComplete_Request_encode(
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_WaitGroupsMotionComplete_Request const* value,
    void* output,
    size_t capacity,
    size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_uwvm_fourier_bridge_srv_WaitGroupsMotionComplete_Request_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_uwvm_fourier_bridge_srv_WaitGroupsMotionComplete_Request_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_WaitGroupsMotionComplete_Request_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_2_uwvm_fourier_bridge_srv_WaitGroupsMotionComplete_Request_decode(
    void const* input,
    size_t length,
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_WaitGroupsMotionComplete_Request* value)
{
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_WaitGroupsMotionComplete_Request next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 28u || length > 1084u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_uwvm_fourier_bridge_srv_WaitGroupsMotionComplete_Request_read_fields((unsigned char const*)input, length, &offset, &next) ||
       offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_WAITGROUPSMOTIONCOMPLETE_RESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_WAITGROUPSMOTIONCOMPLETE_RESPONSE_0 != 0xfb88c685UL ||                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_WAITGROUPSMOTIONCOMPLETE_RESPONSE_1 != 0x7cf60f70UL ||                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_WAITGROUPSMOTIONCOMPLETE_RESPONSE_2 != 0x212169d0UL ||                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_WAITGROUPSMOTIONCOMPLETE_RESPONSE_3 != 0x122b65fdUL ||                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_WAITGROUPSMOTIONCOMPLETE_RESPONSE_4 != 0x36a20cd4UL ||                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_WAITGROUPSMOTIONCOMPLETE_RESPONSE_5 != 0x122b3118UL ||                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_WAITGROUPSMOTIONCOMPLETE_RESPONSE_6 != 0xae9343abUL ||                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_WAITGROUPSMOTIONCOMPLETE_RESPONSE_7 != 0x1e7c4a1dUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_WAITGROUPSMOTIONCOMPLETE_RESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_WAITGROUPSMOTIONCOMPLETE_RESPONSE_0 0xfb88c685UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_WAITGROUPSMOTIONCOMPLETE_RESPONSE_1 0x7cf60f70UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_WAITGROUPSMOTIONCOMPLETE_RESPONSE_2 0x212169d0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_WAITGROUPSMOTIONCOMPLETE_RESPONSE_3 0x122b65fdUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_WAITGROUPSMOTIONCOMPLETE_RESPONSE_4 0x36a20cd4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_WAITGROUPSMOTIONCOMPLETE_RESPONSE_5 0x122b3118UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_WAITGROUPSMOTIONCOMPLETE_RESPONSE_6 0xae9343abUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_WAITGROUPSMOTIONCOMPLETE_RESPONSE_7 0x1e7c4a1dUL

/** UTF-8 byte storage for uwvm_fourier_bridge/srv/WaitGroupsMotionComplete_Response.error; size excludes
 * padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_uwvm_fourier_bridge_srv_WaitGroupsMotionComplete_Response_error_text;

/** Complete ROS2 uwvm_fourier_bridge/srv/WaitGroupsMotionComplete_Response value; no field projects away native data.
 */
typedef struct roswasmc_bounded_2_uwvm_fourier_bridge_srv_WaitGroupsMotionComplete_Response
{
    /** Declared field status; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t status;
    /** Declared field error; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_WaitGroupsMotionComplete_Response_error_text error;
    /** Declared field complete; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t complete;
} roswasmc_bounded_2_uwvm_fourier_bridge_srv_WaitGroupsMotionComplete_Response;

# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_WAITGROUPSMOTIONCOMPLETE_RESPONSE_MAX_WIRE_BYTES 137u
# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_WAITGROUPSMOTIONCOMPLETE_RESPONSE_MIN_WIRE_BYTES 9u
# define ROSWASMC_BOUNDED_2_UWVM_FOURIER_BRIDGE_SRV_WAITGROUPSMOTIONCOMPLETE_RESPONSE_CODEC_IDENTITY                                                           \
     "UWVMROS1_19184faa294d8dae790908044ff067851cde1074e1228a32b19320b6cc94a74f"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_uwvm_fourier_bridge_srv_WaitGroupsMotionComplete_Response_valid(
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_WaitGroupsMotionComplete_Response const* value)
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
static inline size_t roswasmc_bounded_2_uwvm_fourier_bridge_srv_WaitGroupsMotionComplete_Response_wire_size(
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_WaitGroupsMotionComplete_Response const* value)
{
    size_t n = 0;
    n += 4;
    n += 4 + value->error.size;
    n += 1;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_uwvm_fourier_bridge_srv_WaitGroupsMotionComplete_Response_write_fields(
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_WaitGroupsMotionComplete_Response const* value,
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
static inline int roswasmc_bounded_2_uwvm_fourier_bridge_srv_WaitGroupsMotionComplete_Response_read_fields(
    unsigned char const* p,
    size_t n,
    size_t* offset,
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_WaitGroupsMotionComplete_Response* value)
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
    return roswasmc_bounded_2_uwvm_fourier_bridge_srv_WaitGroupsMotionComplete_Response_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_uwvm_fourier_bridge_srv_WaitGroupsMotionComplete_Response_encode(
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_WaitGroupsMotionComplete_Response const* value,
    void* output,
    size_t capacity,
    size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_uwvm_fourier_bridge_srv_WaitGroupsMotionComplete_Response_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_uwvm_fourier_bridge_srv_WaitGroupsMotionComplete_Response_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_WaitGroupsMotionComplete_Response_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_2_uwvm_fourier_bridge_srv_WaitGroupsMotionComplete_Response_decode(
    void const* input,
    size_t length,
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_WaitGroupsMotionComplete_Response* value)
{
    roswasmc_bounded_2_uwvm_fourier_bridge_srv_WaitGroupsMotionComplete_Response next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 9u || length > 137u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_uwvm_fourier_bridge_srv_WaitGroupsMotionComplete_Response_read_fields((unsigned char const*)input, length, &offset, &next) ||
       offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#undef UWVM_BOUNDED_ASSERT
#endif
