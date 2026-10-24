/**
 * @file bounded_records.h
 * @brief Full agibot c codecs and original record metadata.
 * @details Complete agibot ros2_sdk_v0_8_2_main values in c. 72 original records retain 227 fields and 55 interface
 * descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native definitions.
 * Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the profile API
 * manual under document/platform/agibot/en_US/catalog/.
 */
/** @file Generated bounded-v2 canonical values; no native ROS serialization or authority.
 * Every dynamic field has inline caller-owned capacity. Encode validates and measures
 * the full value before writes; decode commits one temporary only after full validation.
 * Supply distinct record, byte and size-output storage; overlap is explicitly refused.
 * Empty Service/Action components use a C layout dummy that is never a wire field. */
#ifndef UWVM_ROS_BOUNDED_RECORDS_1589D40C3737BD57292DC259E87CA43184D8ED45939842FC4C0D96A07233F4D5
#define UWVM_ROS_BOUNDED_RECORDS_1589D40C3737BD57292DC259E87CA43184D8ED45939842FC4C0D96A07233F4D5
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
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_AGENTPROPERTYIDTYPE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_AGENTPROPERTYIDTYPE_0 != 0x76b73b29UL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_AGENTPROPERTYIDTYPE_1 != 0xb87aa4aaUL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_AGENTPROPERTYIDTYPE_2 != 0xbcad5551UL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_AGENTPROPERTYIDTYPE_3 != 0x51f2f0a4UL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_AGENTPROPERTYIDTYPE_4 != 0x03b6a826UL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_AGENTPROPERTYIDTYPE_5 != 0x407aa931UL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_AGENTPROPERTYIDTYPE_6 != 0x4641a000UL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_AGENTPROPERTYIDTYPE_7 != 0xf4f8f2e2UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_AGENTPROPERTYIDTYPE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_AGENTPROPERTYIDTYPE_0 0x76b73b29UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_AGENTPROPERTYIDTYPE_1 0xb87aa4aaUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_AGENTPROPERTYIDTYPE_2 0xbcad5551UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_AGENTPROPERTYIDTYPE_3 0x51f2f0a4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_AGENTPROPERTYIDTYPE_4 0x03b6a826UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_AGENTPROPERTYIDTYPE_5 0x407aa931UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_AGENTPROPERTYIDTYPE_6 0x4641a000UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_AGENTPROPERTYIDTYPE_7 0xf4f8f2e2UL

/** Complete ROS2 aimdk_msgs/msg/AgentPropertyIdType value; no field projects away native data. */
typedef struct roswasmc_bounded_2_aimdk_msgs_msg_AgentPropertyIdType
{
    /** Declared field value; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t value;
} roswasmc_bounded_2_aimdk_msgs_msg_AgentPropertyIdType;

# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_AGENTPROPERTYIDTYPE_MAX_WIRE_BYTES 1u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_AGENTPROPERTYIDTYPE_MIN_WIRE_BYTES 1u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_AGENTPROPERTYIDTYPE_CODEC_IDENTITY "UWVMROS1_96958ff52528b07c7f9bc239e80676edc77b27faa077a3bed7222cf32d1ebf0b"
/** Original scalar constant AGENT_PROPERTY_UNDEFINED=0x00; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_AGENTPROPERTYIDTYPE_AGENT_PROPERTY_UNDEFINED UINT32_C(0)
/** Original scalar constant AGENT_PROPERTY_LANGUAGE=0x01; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_AGENTPROPERTYIDTYPE_AGENT_PROPERTY_LANGUAGE UINT32_C(1)
/** Original scalar constant AGENT_PROPERTY_RUN_MODE=0x02; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_AGENTPROPERTYIDTYPE_AGENT_PROPERTY_RUN_MODE UINT32_C(2)
/** Original scalar constant AGENT_PROPERTY_GREET=0x03; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_AGENTPROPERTYIDTYPE_AGENT_PROPERTY_GREET UINT32_C(3)
/** Original scalar constant AGENT_PROPERTY_HEAD_FOLLOW=0x04; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_AGENTPROPERTYIDTYPE_AGENT_PROPERTY_HEAD_FOLLOW UINT32_C(4)
/** Original scalar constant AGENT_PROPERTY_DUPLEX_TIMEOUT=0x05; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_AGENTPROPERTYIDTYPE_AGENT_PROPERTY_DUPLEX_TIMEOUT UINT32_C(5)
/** Original scalar constant AGENT_PROPERTY_ENVIRONMENT_SWITCH=0x06; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_AGENTPROPERTYIDTYPE_AGENT_PROPERTY_ENVIRONMENT_SWITCH UINT32_C(6)
/** Original scalar constant AGENT_PROPERTY_WELCOME_STATUS=0x07; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_AGENTPROPERTYIDTYPE_AGENT_PROPERTY_WELCOME_STATUS UINT32_C(7)

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_aimdk_msgs_msg_AgentPropertyIdType_valid(roswasmc_bounded_2_aimdk_msgs_msg_AgentPropertyIdType const* value)
{
    if(!value)
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_aimdk_msgs_msg_AgentPropertyIdType_wire_size(roswasmc_bounded_2_aimdk_msgs_msg_AgentPropertyIdType const* value)
{
    size_t n = 0;
    n += 1;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_aimdk_msgs_msg_AgentPropertyIdType_write_fields(roswasmc_bounded_2_aimdk_msgs_msg_AgentPropertyIdType const* value,
                                                                                      unsigned char* p,
                                                                                      size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->value, 1);
    *offset += 1;
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_aimdk_msgs_msg_AgentPropertyIdType_read_fields(unsigned char const* p,
                                                                                    size_t n,
                                                                                    size_t* offset,
                                                                                    roswasmc_bounded_2_aimdk_msgs_msg_AgentPropertyIdType* value)
{
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->value, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_2_aimdk_msgs_msg_AgentPropertyIdType_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_aimdk_msgs_msg_AgentPropertyIdType_encode(roswasmc_bounded_2_aimdk_msgs_msg_AgentPropertyIdType const* value,
                                                                                    void* output,
                                                                                    size_t capacity,
                                                                                    size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_aimdk_msgs_msg_AgentPropertyIdType_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_aimdk_msgs_msg_AgentPropertyIdType_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_aimdk_msgs_msg_AgentPropertyIdType_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_aimdk_msgs_msg_AgentPropertyIdType_decode(void const* input, size_t length, roswasmc_bounded_2_aimdk_msgs_msg_AgentPropertyIdType* value)
{
    roswasmc_bounded_2_aimdk_msgs_msg_AgentPropertyIdType next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 1u || length > 1u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_AgentPropertyIdType_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_AGENTPROPERTIESVALUE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_AGENTPROPERTIESVALUE_0 != 0xaab433a8UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_AGENTPROPERTIESVALUE_1 != 0xc6d73d04UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_AGENTPROPERTIESVALUE_2 != 0xd052bb96UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_AGENTPROPERTIESVALUE_3 != 0x4fa7ceadUL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_AGENTPROPERTIESVALUE_4 != 0x2b459057UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_AGENTPROPERTIESVALUE_5 != 0x4fad3fa6UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_AGENTPROPERTIESVALUE_6 != 0xbafddd1fUL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_AGENTPROPERTIESVALUE_7 != 0x37bc10eaUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_AGENTPROPERTIESVALUE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_AGENTPROPERTIESVALUE_0 0xaab433a8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_AGENTPROPERTIESVALUE_1 0xc6d73d04UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_AGENTPROPERTIESVALUE_2 0xd052bb96UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_AGENTPROPERTIESVALUE_3 0x4fa7ceadUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_AGENTPROPERTIESVALUE_4 0x2b459057UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_AGENTPROPERTIESVALUE_5 0x4fad3fa6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_AGENTPROPERTIESVALUE_6 0xbafddd1fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_AGENTPROPERTIESVALUE_7 0x37bc10eaUL

/** UTF-8 byte storage for aimdk_msgs/msg/AgentPropertiesValue.value; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_aimdk_msgs_msg_AgentPropertiesValue_value_text;

/** Complete ROS2 aimdk_msgs/msg/AgentPropertiesValue value; no field projects away native data. */
typedef struct roswasmc_bounded_2_aimdk_msgs_msg_AgentPropertiesValue
{
    /** Declared field key; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_AgentPropertyIdType key;
    /** Declared field value; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_AgentPropertiesValue_value_text value;
} roswasmc_bounded_2_aimdk_msgs_msg_AgentPropertiesValue;

# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_AGENTPROPERTIESVALUE_MAX_WIRE_BYTES 133u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_AGENTPROPERTIESVALUE_MIN_WIRE_BYTES 5u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_AGENTPROPERTIESVALUE_CODEC_IDENTITY "UWVMROS1_c7ec8887e5fb223291cb324c1ae21f20490955108ee137db384c6775fb332c6a"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_aimdk_msgs_msg_AgentPropertiesValue_valid(roswasmc_bounded_2_aimdk_msgs_msg_AgentPropertiesValue const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_AgentPropertyIdType_valid(&value->key))
        return 0;
    if(value->value.size > 128u || !uwvm_bounded_utf8(value->value.data, value->value.size))
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_aimdk_msgs_msg_AgentPropertiesValue_wire_size(roswasmc_bounded_2_aimdk_msgs_msg_AgentPropertiesValue const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_aimdk_msgs_msg_AgentPropertyIdType_wire_size(&value->key);
    n += 4 + value->value.size;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_aimdk_msgs_msg_AgentPropertiesValue_write_fields(roswasmc_bounded_2_aimdk_msgs_msg_AgentPropertiesValue const* value,
                                                                                       unsigned char* p,
                                                                                       size_t* offset)
{
    roswasmc_bounded_2_aimdk_msgs_msg_AgentPropertyIdType_write_fields(&value->key, p, offset);
    uwvm_bounded_put(p + *offset, value->value.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->value.data, value->value.size);
    *offset += value->value.size;
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_aimdk_msgs_msg_AgentPropertiesValue_read_fields(unsigned char const* p,
                                                                                     size_t n,
                                                                                     size_t* offset,
                                                                                     roswasmc_bounded_2_aimdk_msgs_msg_AgentPropertiesValue* value)
{
    if(!roswasmc_bounded_2_aimdk_msgs_msg_AgentPropertyIdType_read_fields(p, n, offset, &value->key))
        return 0;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->value.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->value.size > 128u || value->value.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->value.data, p + *offset, value->value.size);
    *offset += value->value.size;
    return roswasmc_bounded_2_aimdk_msgs_msg_AgentPropertiesValue_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_aimdk_msgs_msg_AgentPropertiesValue_encode(roswasmc_bounded_2_aimdk_msgs_msg_AgentPropertiesValue const* value,
                                                                                     void* output,
                                                                                     size_t capacity,
                                                                                     size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_aimdk_msgs_msg_AgentPropertiesValue_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_aimdk_msgs_msg_AgentPropertiesValue_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_aimdk_msgs_msg_AgentPropertiesValue_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_2_aimdk_msgs_msg_AgentPropertiesValue_decode(void const* input,
                                                                                     size_t length,
                                                                                     roswasmc_bounded_2_aimdk_msgs_msg_AgentPropertiesValue* value)
{
    roswasmc_bounded_2_aimdk_msgs_msg_AgentPropertiesValue next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 5u || length > 133u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_AgentPropertiesValue_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_AGENTPROPERTIES)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_AGENTPROPERTIES_0 != 0x8fe4e522UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_AGENTPROPERTIES_1 != 0x58d20b9dUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_AGENTPROPERTIES_2 != 0xbcc54750UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_AGENTPROPERTIES_3 != 0x6369be39UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_AGENTPROPERTIES_4 != 0x280e1af1UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_AGENTPROPERTIES_5 != 0xe6ab7485UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_AGENTPROPERTIES_6 != 0xd4258eefUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_AGENTPROPERTIES_7 != 0xbcfd2548UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_AGENTPROPERTIES 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_AGENTPROPERTIES_0 0x8fe4e522UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_AGENTPROPERTIES_1 0x58d20b9dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_AGENTPROPERTIES_2 0xbcc54750UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_AGENTPROPERTIES_3 0x6369be39UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_AGENTPROPERTIES_4 0x280e1af1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_AGENTPROPERTIES_5 0xe6ab7485UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_AGENTPROPERTIES_6 0xd4258eefUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_AGENTPROPERTIES_7 0xbcfd2548UL

/** At most4 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_2_aimdk_msgs_msg_AgentPropertiesValue data[4];
} roswasmc_bounded_2_aimdk_msgs_msg_AgentProperties_properties_sequence;

/** Complete ROS2 aimdk_msgs/msg/AgentProperties value; no field projects away native data. */
typedef struct roswasmc_bounded_2_aimdk_msgs_msg_AgentProperties
{
    /** Declared field properties; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_AgentProperties_properties_sequence properties;
} roswasmc_bounded_2_aimdk_msgs_msg_AgentProperties;

# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_AGENTPROPERTIES_MAX_WIRE_BYTES 536u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_AGENTPROPERTIES_MIN_WIRE_BYTES 4u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_AGENTPROPERTIES_CODEC_IDENTITY "UWVMROS1_e729493bf2dfbd5ed1f726a95ac39d42f33a28f476edd13f66e75f9cb591694f"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_aimdk_msgs_msg_AgentProperties_valid(roswasmc_bounded_2_aimdk_msgs_msg_AgentProperties const* value)
{
    if(!value)
        return 0;
    if(value->properties.size > 4u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->properties.size; ++i)
        {
            if(!roswasmc_bounded_2_aimdk_msgs_msg_AgentPropertiesValue_valid(&value->properties.data[i]))
                return 0;
        }
    }
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_aimdk_msgs_msg_AgentProperties_wire_size(roswasmc_bounded_2_aimdk_msgs_msg_AgentProperties const* value)
{
    size_t n = 0;
    n += 4;
    if(value->properties.size > 4u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->properties.size; ++i)
        {
            n += roswasmc_bounded_2_aimdk_msgs_msg_AgentPropertiesValue_wire_size(&value->properties.data[i]);
        }
    }
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_aimdk_msgs_msg_AgentProperties_write_fields(roswasmc_bounded_2_aimdk_msgs_msg_AgentProperties const* value,
                                                                                  unsigned char* p,
                                                                                  size_t* offset)
{
    uwvm_bounded_put(p + *offset, value->properties.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->properties.size; ++i)
        {
            roswasmc_bounded_2_aimdk_msgs_msg_AgentPropertiesValue_write_fields(&value->properties.data[i], p, offset);
        }
    }
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_aimdk_msgs_msg_AgentProperties_read_fields(unsigned char const* p,
                                                                                size_t n,
                                                                                size_t* offset,
                                                                                roswasmc_bounded_2_aimdk_msgs_msg_AgentProperties* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    value->properties.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->properties.size > 4u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->properties.size; ++i)
        {
            if(!roswasmc_bounded_2_aimdk_msgs_msg_AgentPropertiesValue_read_fields(p, n, offset, &value->properties.data[i]))
                return 0;
        }
    }
    return roswasmc_bounded_2_aimdk_msgs_msg_AgentProperties_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_aimdk_msgs_msg_AgentProperties_encode(roswasmc_bounded_2_aimdk_msgs_msg_AgentProperties const* value,
                                                                                void* output,
                                                                                size_t capacity,
                                                                                size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_aimdk_msgs_msg_AgentProperties_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_aimdk_msgs_msg_AgentProperties_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_aimdk_msgs_msg_AgentProperties_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_aimdk_msgs_msg_AgentProperties_decode(void const* input, size_t length, roswasmc_bounded_2_aimdk_msgs_msg_AgentProperties* value)
{
    roswasmc_bounded_2_aimdk_msgs_msg_AgentProperties next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 4u || length > 536u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_AgentProperties_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_AUDIOVADSTATETYPE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_AUDIOVADSTATETYPE_0 != 0xed7e5d26UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_AUDIOVADSTATETYPE_1 != 0xd3e87654UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_AUDIOVADSTATETYPE_2 != 0x7907e20eUL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_AUDIOVADSTATETYPE_3 != 0x3983285dUL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_AUDIOVADSTATETYPE_4 != 0x7defb82bUL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_AUDIOVADSTATETYPE_5 != 0x30553da9UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_AUDIOVADSTATETYPE_6 != 0xd16a9375UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_AUDIOVADSTATETYPE_7 != 0x6d8e150dUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_AUDIOVADSTATETYPE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_AUDIOVADSTATETYPE_0 0xed7e5d26UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_AUDIOVADSTATETYPE_1 0xd3e87654UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_AUDIOVADSTATETYPE_2 0x7907e20eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_AUDIOVADSTATETYPE_3 0x3983285dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_AUDIOVADSTATETYPE_4 0x7defb82bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_AUDIOVADSTATETYPE_5 0x30553da9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_AUDIOVADSTATETYPE_6 0xd16a9375UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_AUDIOVADSTATETYPE_7 0x6d8e150dUL

/** Complete ROS2 aimdk_msgs/msg/AudioVadStateType value; no field projects away native data. */
typedef struct roswasmc_bounded_2_aimdk_msgs_msg_AudioVadStateType
{
    /** Declared field value; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t value;
} roswasmc_bounded_2_aimdk_msgs_msg_AudioVadStateType;

# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_AUDIOVADSTATETYPE_MAX_WIRE_BYTES 1u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_AUDIOVADSTATETYPE_MIN_WIRE_BYTES 1u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_AUDIOVADSTATETYPE_CODEC_IDENTITY "UWVMROS1_edd7a6f6ad81c2c6479d3331d9e87a2fc66eedfb73f789caf0b888eeb9480526"
/** Original scalar constant AUDIO_VAD_STATE_NONE=0x00; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_AUDIOVADSTATETYPE_AUDIO_VAD_STATE_NONE UINT32_C(0)
/** Original scalar constant AUDIO_VAD_STATE_BEGIN=0x01; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_AUDIOVADSTATETYPE_AUDIO_VAD_STATE_BEGIN UINT32_C(1)
/** Original scalar constant AUDIO_VAD_STATE_PROCESSING=0x02; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_AUDIOVADSTATETYPE_AUDIO_VAD_STATE_PROCESSING UINT32_C(2)
/** Original scalar constant AUDIO_VAD_STATE_END=0x03; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_AUDIOVADSTATETYPE_AUDIO_VAD_STATE_END UINT32_C(3)

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_aimdk_msgs_msg_AudioVadStateType_valid(roswasmc_bounded_2_aimdk_msgs_msg_AudioVadStateType const* value)
{
    if(!value)
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_aimdk_msgs_msg_AudioVadStateType_wire_size(roswasmc_bounded_2_aimdk_msgs_msg_AudioVadStateType const* value)
{
    size_t n = 0;
    n += 1;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_aimdk_msgs_msg_AudioVadStateType_write_fields(roswasmc_bounded_2_aimdk_msgs_msg_AudioVadStateType const* value,
                                                                                    unsigned char* p,
                                                                                    size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->value, 1);
    *offset += 1;
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_aimdk_msgs_msg_AudioVadStateType_read_fields(unsigned char const* p,
                                                                                  size_t n,
                                                                                  size_t* offset,
                                                                                  roswasmc_bounded_2_aimdk_msgs_msg_AudioVadStateType* value)
{
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->value, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_2_aimdk_msgs_msg_AudioVadStateType_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_aimdk_msgs_msg_AudioVadStateType_encode(roswasmc_bounded_2_aimdk_msgs_msg_AudioVadStateType const* value,
                                                                                  void* output,
                                                                                  size_t capacity,
                                                                                  size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_aimdk_msgs_msg_AudioVadStateType_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_aimdk_msgs_msg_AudioVadStateType_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_aimdk_msgs_msg_AudioVadStateType_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_aimdk_msgs_msg_AudioVadStateType_decode(void const* input, size_t length, roswasmc_bounded_2_aimdk_msgs_msg_AudioVadStateType* value)
{
    roswasmc_bounded_2_aimdk_msgs_msg_AudioVadStateType next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 1u || length > 1u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_AudioVadStateType_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
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
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_REQUESTHEADER)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_REQUESTHEADER_0 != 0xc2de4c18UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_REQUESTHEADER_1 != 0x36085991UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_REQUESTHEADER_2 != 0x7ff4aeb9UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_REQUESTHEADER_3 != 0xc03956f1UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_REQUESTHEADER_4 != 0x2a9bf5e5UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_REQUESTHEADER_5 != 0x0c78c433UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_REQUESTHEADER_6 != 0x4cbc4c8aUL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_REQUESTHEADER_7 != 0xf32f65ccUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_REQUESTHEADER 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_REQUESTHEADER_0 0xc2de4c18UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_REQUESTHEADER_1 0x36085991UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_REQUESTHEADER_2 0x7ff4aeb9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_REQUESTHEADER_3 0xc03956f1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_REQUESTHEADER_4 0x2a9bf5e5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_REQUESTHEADER_5 0x0c78c433UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_REQUESTHEADER_6 0x4cbc4c8aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_REQUESTHEADER_7 0xf32f65ccUL

/** Complete ROS2 aimdk_msgs/msg/RequestHeader value; no field projects away native data. */
typedef struct roswasmc_bounded_2_aimdk_msgs_msg_RequestHeader
{
    /** Declared field stamp; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_builtin_interfaces_msg_Time stamp;
} roswasmc_bounded_2_aimdk_msgs_msg_RequestHeader;

# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_REQUESTHEADER_MAX_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_REQUESTHEADER_MIN_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_REQUESTHEADER_CODEC_IDENTITY "UWVMROS1_743efde912144cd1db5072b5a1d26b943c3fb882612b07c1883400784947b000"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_aimdk_msgs_msg_RequestHeader_valid(roswasmc_bounded_2_aimdk_msgs_msg_RequestHeader const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_builtin_interfaces_msg_Time_valid(&value->stamp))
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_aimdk_msgs_msg_RequestHeader_wire_size(roswasmc_bounded_2_aimdk_msgs_msg_RequestHeader const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_builtin_interfaces_msg_Time_wire_size(&value->stamp);
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_aimdk_msgs_msg_RequestHeader_write_fields(roswasmc_bounded_2_aimdk_msgs_msg_RequestHeader const* value, unsigned char* p, size_t* offset)
{
    roswasmc_bounded_2_builtin_interfaces_msg_Time_write_fields(&value->stamp, p, offset);
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_aimdk_msgs_msg_RequestHeader_read_fields(unsigned char const* p,
                                                                              size_t n,
                                                                              size_t* offset,
                                                                              roswasmc_bounded_2_aimdk_msgs_msg_RequestHeader* value)
{
    if(!roswasmc_bounded_2_builtin_interfaces_msg_Time_read_fields(p, n, offset, &value->stamp))
        return 0;
    return roswasmc_bounded_2_aimdk_msgs_msg_RequestHeader_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_aimdk_msgs_msg_RequestHeader_encode(roswasmc_bounded_2_aimdk_msgs_msg_RequestHeader const* value,
                                                                              void* output,
                                                                              size_t capacity,
                                                                              size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_aimdk_msgs_msg_RequestHeader_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_aimdk_msgs_msg_RequestHeader_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_aimdk_msgs_msg_RequestHeader_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_aimdk_msgs_msg_RequestHeader_decode(void const* input, size_t length, roswasmc_bounded_2_aimdk_msgs_msg_RequestHeader* value)
{
    roswasmc_bounded_2_aimdk_msgs_msg_RequestHeader next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 8u || length > 8u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_RequestHeader_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_COMMONREQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_COMMONREQUEST_0 != 0x853e336bUL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_COMMONREQUEST_1 != 0x8e818740UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_COMMONREQUEST_2 != 0xc34a8f04UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_COMMONREQUEST_3 != 0x8f40807aUL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_COMMONREQUEST_4 != 0x8732d42eUL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_COMMONREQUEST_5 != 0x6c32058aUL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_COMMONREQUEST_6 != 0xfc47ca9dUL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_COMMONREQUEST_7 != 0x6620f0caUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_COMMONREQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_COMMONREQUEST_0 0x853e336bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_COMMONREQUEST_1 0x8e818740UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_COMMONREQUEST_2 0xc34a8f04UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_COMMONREQUEST_3 0x8f40807aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_COMMONREQUEST_4 0x8732d42eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_COMMONREQUEST_5 0x6c32058aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_COMMONREQUEST_6 0xfc47ca9dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_COMMONREQUEST_7 0x6620f0caUL

/** Complete ROS2 aimdk_msgs/msg/CommonRequest value; no field projects away native data. */
typedef struct roswasmc_bounded_2_aimdk_msgs_msg_CommonRequest
{
    /** Declared field header; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_RequestHeader header;
} roswasmc_bounded_2_aimdk_msgs_msg_CommonRequest;

# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_COMMONREQUEST_MAX_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_COMMONREQUEST_MIN_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_COMMONREQUEST_CODEC_IDENTITY "UWVMROS1_d4dd21dc3b43faa42396e4c4aa0f1ad35a507b6bd313f5d197268e79d67dd9d7"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_aimdk_msgs_msg_CommonRequest_valid(roswasmc_bounded_2_aimdk_msgs_msg_CommonRequest const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_RequestHeader_valid(&value->header))
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_aimdk_msgs_msg_CommonRequest_wire_size(roswasmc_bounded_2_aimdk_msgs_msg_CommonRequest const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_aimdk_msgs_msg_RequestHeader_wire_size(&value->header);
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_aimdk_msgs_msg_CommonRequest_write_fields(roswasmc_bounded_2_aimdk_msgs_msg_CommonRequest const* value, unsigned char* p, size_t* offset)
{
    roswasmc_bounded_2_aimdk_msgs_msg_RequestHeader_write_fields(&value->header, p, offset);
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_aimdk_msgs_msg_CommonRequest_read_fields(unsigned char const* p,
                                                                              size_t n,
                                                                              size_t* offset,
                                                                              roswasmc_bounded_2_aimdk_msgs_msg_CommonRequest* value)
{
    if(!roswasmc_bounded_2_aimdk_msgs_msg_RequestHeader_read_fields(p, n, offset, &value->header))
        return 0;
    return roswasmc_bounded_2_aimdk_msgs_msg_CommonRequest_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_aimdk_msgs_msg_CommonRequest_encode(roswasmc_bounded_2_aimdk_msgs_msg_CommonRequest const* value,
                                                                              void* output,
                                                                              size_t capacity,
                                                                              size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_aimdk_msgs_msg_CommonRequest_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_aimdk_msgs_msg_CommonRequest_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_aimdk_msgs_msg_CommonRequest_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_aimdk_msgs_msg_CommonRequest_decode(void const* input, size_t length, roswasmc_bounded_2_aimdk_msgs_msg_CommonRequest* value)
{
    roswasmc_bounded_2_aimdk_msgs_msg_CommonRequest next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 8u || length > 8u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_CommonRequest_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_RESPONSEHEADER)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_RESPONSEHEADER_0 != 0x29a830a3UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_RESPONSEHEADER_1 != 0x01618904UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_RESPONSEHEADER_2 != 0x3c0b44feUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_RESPONSEHEADER_3 != 0xe95b5864UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_RESPONSEHEADER_4 != 0x5fc1d3fdUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_RESPONSEHEADER_5 != 0xda674844UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_RESPONSEHEADER_6 != 0xb1b170a1UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_RESPONSEHEADER_7 != 0x9d7991a5UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_RESPONSEHEADER 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_RESPONSEHEADER_0 0x29a830a3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_RESPONSEHEADER_1 0x01618904UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_RESPONSEHEADER_2 0x3c0b44feUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_RESPONSEHEADER_3 0xe95b5864UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_RESPONSEHEADER_4 0x5fc1d3fdUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_RESPONSEHEADER_5 0xda674844UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_RESPONSEHEADER_6 0xb1b170a1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_RESPONSEHEADER_7 0x9d7991a5UL

/** Complete ROS2 aimdk_msgs/msg/ResponseHeader value; no field projects away native data. */
typedef struct roswasmc_bounded_2_aimdk_msgs_msg_ResponseHeader
{
    /** Declared field stamp; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_builtin_interfaces_msg_Time stamp;
    /** Declared field code; canonical capacity is part of CODEC_IDENTITY. */
    int64_t code;
} roswasmc_bounded_2_aimdk_msgs_msg_ResponseHeader;

# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_RESPONSEHEADER_MAX_WIRE_BYTES 16u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_RESPONSEHEADER_MIN_WIRE_BYTES 16u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_RESPONSEHEADER_CODEC_IDENTITY "UWVMROS1_1aff5b9cfbca54f9091a6295e28034b45d22481e0dbd8a75b1759cda18b57b90"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_aimdk_msgs_msg_ResponseHeader_valid(roswasmc_bounded_2_aimdk_msgs_msg_ResponseHeader const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_builtin_interfaces_msg_Time_valid(&value->stamp))
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_aimdk_msgs_msg_ResponseHeader_wire_size(roswasmc_bounded_2_aimdk_msgs_msg_ResponseHeader const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_builtin_interfaces_msg_Time_wire_size(&value->stamp);
    n += 8;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_aimdk_msgs_msg_ResponseHeader_write_fields(roswasmc_bounded_2_aimdk_msgs_msg_ResponseHeader const* value,
                                                                                 unsigned char* p,
                                                                                 size_t* offset)
{
    roswasmc_bounded_2_builtin_interfaces_msg_Time_write_fields(&value->stamp, p, offset);
    uwvm_bounded_put(p + *offset, (uint64_t)value->code, 8);
    *offset += 8;
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_aimdk_msgs_msg_ResponseHeader_read_fields(unsigned char const* p,
                                                                               size_t n,
                                                                               size_t* offset,
                                                                               roswasmc_bounded_2_aimdk_msgs_msg_ResponseHeader* value)
{
    if(!roswasmc_bounded_2_builtin_interfaces_msg_Time_read_fields(p, n, offset, &value->stamp))
        return 0;
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->code, &bits, 8);
    }
    *offset += 8;
    return roswasmc_bounded_2_aimdk_msgs_msg_ResponseHeader_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_aimdk_msgs_msg_ResponseHeader_encode(roswasmc_bounded_2_aimdk_msgs_msg_ResponseHeader const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_aimdk_msgs_msg_ResponseHeader_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_aimdk_msgs_msg_ResponseHeader_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_aimdk_msgs_msg_ResponseHeader_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_aimdk_msgs_msg_ResponseHeader_decode(void const* input, size_t length, roswasmc_bounded_2_aimdk_msgs_msg_ResponseHeader* value)
{
    roswasmc_bounded_2_aimdk_msgs_msg_ResponseHeader next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 16u || length > 16u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_ResponseHeader_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_COMMONSTATE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_COMMONSTATE_0 != 0xf6e27fc5UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_COMMONSTATE_1 != 0xc36659acUL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_COMMONSTATE_2 != 0xf15f365fUL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_COMMONSTATE_3 != 0x86f2f7c8UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_COMMONSTATE_4 != 0xec1c545cUL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_COMMONSTATE_5 != 0x862a18bbUL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_COMMONSTATE_6 != 0xeda5dcfaUL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_COMMONSTATE_7 != 0x1b41e0c2UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_COMMONSTATE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_COMMONSTATE_0 0xf6e27fc5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_COMMONSTATE_1 0xc36659acUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_COMMONSTATE_2 0xf15f365fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_COMMONSTATE_3 0x86f2f7c8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_COMMONSTATE_4 0xec1c545cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_COMMONSTATE_5 0x862a18bbUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_COMMONSTATE_6 0xeda5dcfaUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_COMMONSTATE_7 0x1b41e0c2UL

/** Complete ROS2 aimdk_msgs/msg/CommonState value; no field projects away native data. */
typedef struct roswasmc_bounded_2_aimdk_msgs_msg_CommonState
{
    /** Declared field value; canonical capacity is part of CODEC_IDENTITY. */
    int32_t value;
} roswasmc_bounded_2_aimdk_msgs_msg_CommonState;

# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_COMMONSTATE_MAX_WIRE_BYTES 4u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_COMMONSTATE_MIN_WIRE_BYTES 4u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_COMMONSTATE_CODEC_IDENTITY "UWVMROS1_263f2829cf13b7b12ceda8109834fa333d2da5828cd7a302a1818c044be4699e"
/** Original scalar constant UNKNOWN=0; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_COMMONSTATE_UNKNOWN INT32_C(0)
/** Original scalar constant SUCCESS=1; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_COMMONSTATE_SUCCESS INT32_C(1)
/** Original scalar constant FAILURE=2; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_COMMONSTATE_FAILURE INT32_C(2)
/** Original scalar constant ABORTED=3; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_COMMONSTATE_ABORTED INT32_C(3)
/** Original scalar constant TIMEOUT=4; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_COMMONSTATE_TIMEOUT INT32_C(4)
/** Original scalar constant INVALID=5; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_COMMONSTATE_INVALID INT32_C(5)
/** Original scalar constant IN_MANUAL=6; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_COMMONSTATE_IN_MANUAL INT32_C(6)
/** Original scalar constant NOT_READY=100; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_COMMONSTATE_NOT_READY INT32_C(100)
/** Original scalar constant PENDING=200; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_COMMONSTATE_PENDING INT32_C(200)
/** Original scalar constant CREATED=300; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_COMMONSTATE_CREATED INT32_C(300)
/** Original scalar constant RUNNING=400; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_COMMONSTATE_RUNNING INT32_C(400)

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_aimdk_msgs_msg_CommonState_valid(roswasmc_bounded_2_aimdk_msgs_msg_CommonState const* value)
{
    if(!value)
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_aimdk_msgs_msg_CommonState_wire_size(roswasmc_bounded_2_aimdk_msgs_msg_CommonState const* value)
{
    size_t n = 0;
    n += 4;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_aimdk_msgs_msg_CommonState_write_fields(roswasmc_bounded_2_aimdk_msgs_msg_CommonState const* value, unsigned char* p, size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->value, 4);
    *offset += 4;
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_aimdk_msgs_msg_CommonState_read_fields(unsigned char const* p,
                                                                            size_t n,
                                                                            size_t* offset,
                                                                            roswasmc_bounded_2_aimdk_msgs_msg_CommonState* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->value, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_2_aimdk_msgs_msg_CommonState_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_aimdk_msgs_msg_CommonState_encode(roswasmc_bounded_2_aimdk_msgs_msg_CommonState const* value,
                                                                            void* output,
                                                                            size_t capacity,
                                                                            size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_aimdk_msgs_msg_CommonState_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_aimdk_msgs_msg_CommonState_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_aimdk_msgs_msg_CommonState_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_aimdk_msgs_msg_CommonState_decode(void const* input, size_t length, roswasmc_bounded_2_aimdk_msgs_msg_CommonState* value)
{
    roswasmc_bounded_2_aimdk_msgs_msg_CommonState next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 4u || length > 4u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_CommonState_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_COMMONRESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_COMMONRESPONSE_0 != 0xd455b6b3UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_COMMONRESPONSE_1 != 0x00a38645UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_COMMONRESPONSE_2 != 0xa2ab3520UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_COMMONRESPONSE_3 != 0xda161f94UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_COMMONRESPONSE_4 != 0x20f0e6b8UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_COMMONRESPONSE_5 != 0xb7406d5aUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_COMMONRESPONSE_6 != 0x00bd70f9UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_COMMONRESPONSE_7 != 0x66b955e2UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_COMMONRESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_COMMONRESPONSE_0 0xd455b6b3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_COMMONRESPONSE_1 0x00a38645UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_COMMONRESPONSE_2 0xa2ab3520UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_COMMONRESPONSE_3 0xda161f94UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_COMMONRESPONSE_4 0x20f0e6b8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_COMMONRESPONSE_5 0xb7406d5aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_COMMONRESPONSE_6 0x00bd70f9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_COMMONRESPONSE_7 0x66b955e2UL

/** UTF-8 byte storage for aimdk_msgs/msg/CommonResponse.message; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_aimdk_msgs_msg_CommonResponse_message_text;

/** Complete ROS2 aimdk_msgs/msg/CommonResponse value; no field projects away native data. */
typedef struct roswasmc_bounded_2_aimdk_msgs_msg_CommonResponse
{
    /** Declared field header; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_ResponseHeader header;
    /** Declared field status; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_CommonState status;
    /** Declared field message; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_CommonResponse_message_text message;
} roswasmc_bounded_2_aimdk_msgs_msg_CommonResponse;

# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_COMMONRESPONSE_MAX_WIRE_BYTES 152u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_COMMONRESPONSE_MIN_WIRE_BYTES 24u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_COMMONRESPONSE_CODEC_IDENTITY "UWVMROS1_03f4cf42f82eef5064c9b0563dcfe07bb9e918e8a8d81e71c4d89490bf66afb6"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_aimdk_msgs_msg_CommonResponse_valid(roswasmc_bounded_2_aimdk_msgs_msg_CommonResponse const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_ResponseHeader_valid(&value->header))
        return 0;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_CommonState_valid(&value->status))
        return 0;
    if(value->message.size > 128u || !uwvm_bounded_utf8(value->message.data, value->message.size))
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_aimdk_msgs_msg_CommonResponse_wire_size(roswasmc_bounded_2_aimdk_msgs_msg_CommonResponse const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_aimdk_msgs_msg_ResponseHeader_wire_size(&value->header);
    n += roswasmc_bounded_2_aimdk_msgs_msg_CommonState_wire_size(&value->status);
    n += 4 + value->message.size;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_aimdk_msgs_msg_CommonResponse_write_fields(roswasmc_bounded_2_aimdk_msgs_msg_CommonResponse const* value,
                                                                                 unsigned char* p,
                                                                                 size_t* offset)
{
    roswasmc_bounded_2_aimdk_msgs_msg_ResponseHeader_write_fields(&value->header, p, offset);
    roswasmc_bounded_2_aimdk_msgs_msg_CommonState_write_fields(&value->status, p, offset);
    uwvm_bounded_put(p + *offset, value->message.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->message.data, value->message.size);
    *offset += value->message.size;
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_aimdk_msgs_msg_CommonResponse_read_fields(unsigned char const* p,
                                                                               size_t n,
                                                                               size_t* offset,
                                                                               roswasmc_bounded_2_aimdk_msgs_msg_CommonResponse* value)
{
    if(!roswasmc_bounded_2_aimdk_msgs_msg_ResponseHeader_read_fields(p, n, offset, &value->header))
        return 0;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_CommonState_read_fields(p, n, offset, &value->status))
        return 0;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->message.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->message.size > 128u || value->message.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->message.data, p + *offset, value->message.size);
    *offset += value->message.size;
    return roswasmc_bounded_2_aimdk_msgs_msg_CommonResponse_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_aimdk_msgs_msg_CommonResponse_encode(roswasmc_bounded_2_aimdk_msgs_msg_CommonResponse const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_aimdk_msgs_msg_CommonResponse_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_aimdk_msgs_msg_CommonResponse_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_aimdk_msgs_msg_CommonResponse_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_aimdk_msgs_msg_CommonResponse_decode(void const* input, size_t length, roswasmc_bounded_2_aimdk_msgs_msg_CommonResponse* value)
{
    roswasmc_bounded_2_aimdk_msgs_msg_CommonResponse next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 24u || length > 152u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_CommonResponse_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_COMMONTASKRESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_COMMONTASKRESPONSE_0 != 0x18882a16UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_COMMONTASKRESPONSE_1 != 0x3c1ae379UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_COMMONTASKRESPONSE_2 != 0x1cfea794UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_COMMONTASKRESPONSE_3 != 0x702d5f73UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_COMMONTASKRESPONSE_4 != 0x354e9b0eUL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_COMMONTASKRESPONSE_5 != 0x269f28d9UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_COMMONTASKRESPONSE_6 != 0x786f1d3dUL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_COMMONTASKRESPONSE_7 != 0x6eca8eb5UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_COMMONTASKRESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_COMMONTASKRESPONSE_0 0x18882a16UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_COMMONTASKRESPONSE_1 0x3c1ae379UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_COMMONTASKRESPONSE_2 0x1cfea794UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_COMMONTASKRESPONSE_3 0x702d5f73UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_COMMONTASKRESPONSE_4 0x354e9b0eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_COMMONTASKRESPONSE_5 0x269f28d9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_COMMONTASKRESPONSE_6 0x786f1d3dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_COMMONTASKRESPONSE_7 0x6eca8eb5UL

/** Complete ROS2 aimdk_msgs/msg/CommonTaskResponse value; no field projects away native data. */
typedef struct roswasmc_bounded_2_aimdk_msgs_msg_CommonTaskResponse
{
    /** Declared field header; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_ResponseHeader header;
    /** Declared field task_id; canonical capacity is part of CODEC_IDENTITY. */
    uint64_t task_id;
    /** Declared field state; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_CommonState state;
} roswasmc_bounded_2_aimdk_msgs_msg_CommonTaskResponse;

# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_COMMONTASKRESPONSE_MAX_WIRE_BYTES 28u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_COMMONTASKRESPONSE_MIN_WIRE_BYTES 28u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_COMMONTASKRESPONSE_CODEC_IDENTITY "UWVMROS1_6e0f13b88f5320fecc86125c92ef073379d31a439c1b8de3a87466c98f1b9ae2"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_aimdk_msgs_msg_CommonTaskResponse_valid(roswasmc_bounded_2_aimdk_msgs_msg_CommonTaskResponse const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_ResponseHeader_valid(&value->header))
        return 0;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_CommonState_valid(&value->state))
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_aimdk_msgs_msg_CommonTaskResponse_wire_size(roswasmc_bounded_2_aimdk_msgs_msg_CommonTaskResponse const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_aimdk_msgs_msg_ResponseHeader_wire_size(&value->header);
    n += 8;
    n += roswasmc_bounded_2_aimdk_msgs_msg_CommonState_wire_size(&value->state);
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_aimdk_msgs_msg_CommonTaskResponse_write_fields(roswasmc_bounded_2_aimdk_msgs_msg_CommonTaskResponse const* value,
                                                                                     unsigned char* p,
                                                                                     size_t* offset)
{
    roswasmc_bounded_2_aimdk_msgs_msg_ResponseHeader_write_fields(&value->header, p, offset);
    uwvm_bounded_put(p + *offset, (uint64_t)value->task_id, 8);
    *offset += 8;
    roswasmc_bounded_2_aimdk_msgs_msg_CommonState_write_fields(&value->state, p, offset);
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_aimdk_msgs_msg_CommonTaskResponse_read_fields(unsigned char const* p,
                                                                                   size_t n,
                                                                                   size_t* offset,
                                                                                   roswasmc_bounded_2_aimdk_msgs_msg_CommonTaskResponse* value)
{
    if(!roswasmc_bounded_2_aimdk_msgs_msg_ResponseHeader_read_fields(p, n, offset, &value->header))
        return 0;
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->task_id, &bits, 8);
    }
    *offset += 8;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_CommonState_read_fields(p, n, offset, &value->state))
        return 0;
    return roswasmc_bounded_2_aimdk_msgs_msg_CommonTaskResponse_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_aimdk_msgs_msg_CommonTaskResponse_encode(roswasmc_bounded_2_aimdk_msgs_msg_CommonTaskResponse const* value,
                                                                                   void* output,
                                                                                   size_t capacity,
                                                                                   size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_aimdk_msgs_msg_CommonTaskResponse_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_aimdk_msgs_msg_CommonTaskResponse_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_aimdk_msgs_msg_CommonTaskResponse_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_aimdk_msgs_msg_CommonTaskResponse_decode(void const* input, size_t length, roswasmc_bounded_2_aimdk_msgs_msg_CommonTaskResponse* value)
{
    roswasmc_bounded_2_aimdk_msgs_msg_CommonTaskResponse next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 28u || length > 28u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_CommonTaskResponse_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MESSAGEHEADER)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MESSAGEHEADER_0 != 0xce71c10fUL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MESSAGEHEADER_1 != 0x580e6e7bUL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MESSAGEHEADER_2 != 0x2f857d22UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MESSAGEHEADER_3 != 0x27a66fb7UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MESSAGEHEADER_4 != 0x18277e6fUL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MESSAGEHEADER_5 != 0x11bfec75UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MESSAGEHEADER_6 != 0x70ff4e26UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MESSAGEHEADER_7 != 0x03e5e724UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MESSAGEHEADER 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MESSAGEHEADER_0 0xce71c10fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MESSAGEHEADER_1 0x580e6e7bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MESSAGEHEADER_2 0x2f857d22UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MESSAGEHEADER_3 0x27a66fb7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MESSAGEHEADER_4 0x18277e6fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MESSAGEHEADER_5 0x11bfec75UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MESSAGEHEADER_6 0x70ff4e26UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MESSAGEHEADER_7 0x03e5e724UL

/** UTF-8 byte storage for aimdk_msgs/msg/MessageHeader.frame_id; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_aimdk_msgs_msg_MessageHeader_frame_id_text;

/** Complete ROS2 aimdk_msgs/msg/MessageHeader value; no field projects away native data. */
typedef struct roswasmc_bounded_2_aimdk_msgs_msg_MessageHeader
{
    /** Declared field stamp; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_builtin_interfaces_msg_Time stamp;
    /** Declared field frame_id; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_MessageHeader_frame_id_text frame_id;
    /** Declared field sequence; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t sequence;
    /** Declared field meas_stamp; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_builtin_interfaces_msg_Time meas_stamp;
} roswasmc_bounded_2_aimdk_msgs_msg_MessageHeader;

# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MESSAGEHEADER_MAX_WIRE_BYTES 152u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MESSAGEHEADER_MIN_WIRE_BYTES 24u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MESSAGEHEADER_CODEC_IDENTITY "UWVMROS1_6d8d9a27611d419d618f848c44ebe2c30d5393995d1f4fa7ecd70c34ded52496"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_aimdk_msgs_msg_MessageHeader_valid(roswasmc_bounded_2_aimdk_msgs_msg_MessageHeader const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_builtin_interfaces_msg_Time_valid(&value->stamp))
        return 0;
    if(value->frame_id.size > 128u || !uwvm_bounded_utf8(value->frame_id.data, value->frame_id.size))
        return 0;
    if(!roswasmc_bounded_2_builtin_interfaces_msg_Time_valid(&value->meas_stamp))
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_aimdk_msgs_msg_MessageHeader_wire_size(roswasmc_bounded_2_aimdk_msgs_msg_MessageHeader const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_builtin_interfaces_msg_Time_wire_size(&value->stamp);
    n += 4 + value->frame_id.size;
    n += 4;
    n += roswasmc_bounded_2_builtin_interfaces_msg_Time_wire_size(&value->meas_stamp);
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_aimdk_msgs_msg_MessageHeader_write_fields(roswasmc_bounded_2_aimdk_msgs_msg_MessageHeader const* value, unsigned char* p, size_t* offset)
{
    roswasmc_bounded_2_builtin_interfaces_msg_Time_write_fields(&value->stamp, p, offset);
    uwvm_bounded_put(p + *offset, value->frame_id.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->frame_id.data, value->frame_id.size);
    *offset += value->frame_id.size;
    uwvm_bounded_put(p + *offset, (uint64_t)value->sequence, 4);
    *offset += 4;
    roswasmc_bounded_2_builtin_interfaces_msg_Time_write_fields(&value->meas_stamp, p, offset);
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_aimdk_msgs_msg_MessageHeader_read_fields(unsigned char const* p,
                                                                              size_t n,
                                                                              size_t* offset,
                                                                              roswasmc_bounded_2_aimdk_msgs_msg_MessageHeader* value)
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
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->sequence, &bits, 4);
    }
    *offset += 4;
    if(!roswasmc_bounded_2_builtin_interfaces_msg_Time_read_fields(p, n, offset, &value->meas_stamp))
        return 0;
    return roswasmc_bounded_2_aimdk_msgs_msg_MessageHeader_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_aimdk_msgs_msg_MessageHeader_encode(roswasmc_bounded_2_aimdk_msgs_msg_MessageHeader const* value,
                                                                              void* output,
                                                                              size_t capacity,
                                                                              size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_aimdk_msgs_msg_MessageHeader_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_aimdk_msgs_msg_MessageHeader_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_aimdk_msgs_msg_MessageHeader_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_aimdk_msgs_msg_MessageHeader_decode(void const* input, size_t length, roswasmc_bounded_2_aimdk_msgs_msg_MessageHeader* value)
{
    roswasmc_bounded_2_aimdk_msgs_msg_MessageHeader next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 24u || length > 152u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_MessageHeader_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_FACEEMOJISTATUS)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_FACEEMOJISTATUS_0 != 0x7f7a476eUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_FACEEMOJISTATUS_1 != 0x18b6af14UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_FACEEMOJISTATUS_2 != 0xf251fb11UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_FACEEMOJISTATUS_3 != 0x6a3b5dfdUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_FACEEMOJISTATUS_4 != 0xe143629cUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_FACEEMOJISTATUS_5 != 0x0a8e7956UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_FACEEMOJISTATUS_6 != 0xc3e60441UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_FACEEMOJISTATUS_7 != 0xe5206f05UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_FACEEMOJISTATUS 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_FACEEMOJISTATUS_0 0x7f7a476eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_FACEEMOJISTATUS_1 0x18b6af14UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_FACEEMOJISTATUS_2 0xf251fb11UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_FACEEMOJISTATUS_3 0x6a3b5dfdUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_FACEEMOJISTATUS_4 0xe143629cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_FACEEMOJISTATUS_5 0x0a8e7956UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_FACEEMOJISTATUS_6 0xc3e60441UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_FACEEMOJISTATUS_7 0xe5206f05UL

/** UTF-8 byte storage for aimdk_msgs/msg/FaceEmojiStatus.e_path; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_aimdk_msgs_msg_FaceEmojiStatus_e_path_text;

/** UTF-8 byte storage for aimdk_msgs/msg/FaceEmojiStatus.e_path_list; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_aimdk_msgs_msg_FaceEmojiStatus_e_path_list_text;

/** At most16 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_2_aimdk_msgs_msg_FaceEmojiStatus_e_path_list_text data[16];
} roswasmc_bounded_2_aimdk_msgs_msg_FaceEmojiStatus_e_path_list_sequence;

/** Complete ROS2 aimdk_msgs/msg/FaceEmojiStatus value; no field projects away native data. */
typedef struct roswasmc_bounded_2_aimdk_msgs_msg_FaceEmojiStatus
{
    /** Declared field header; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_MessageHeader header;
    /** Declared field e_path; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_FaceEmojiStatus_e_path_text e_path;
    /** Declared field e_path_list; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_FaceEmojiStatus_e_path_list_sequence e_path_list;
    /** Declared field e_id; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t e_id;
    /** Declared field mode; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t mode;
    /** Declared field priority; canonical capacity is part of CODEC_IDENTITY. */
    int32_t priority;
    /** Declared field status; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t status;
    /** Declared field time_to_end_ms; canonical capacity is part of CODEC_IDENTITY. */
    double time_to_end_ms;
} roswasmc_bounded_2_aimdk_msgs_msg_FaceEmojiStatus;

# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_FACEEMOJISTATUS_MAX_WIRE_BYTES 2415u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_FACEEMOJISTATUS_MIN_WIRE_BYTES 47u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_FACEEMOJISTATUS_CODEC_IDENTITY "UWVMROS1_3200d2686ea5f26668f00d0249e774572668b4a36b3f8067dae4f93182af89f7"
/** Original scalar constant STATUS_IDLE=0; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_FACEEMOJISTATUS_STATUS_IDLE UINT32_C(0)
/** Original scalar constant STATUS_START=1; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_FACEEMOJISTATUS_STATUS_START UINT32_C(1)
/** Original scalar constant STATUS_RUNNING=2; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_FACEEMOJISTATUS_STATUS_RUNNING UINT32_C(2)
/** Original scalar constant STATUS_FINISHED=3; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_FACEEMOJISTATUS_STATUS_FINISHED UINT32_C(3)
/** Original scalar constant STATUS_STOPPED=4; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_FACEEMOJISTATUS_STATUS_STOPPED UINT32_C(4)

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_aimdk_msgs_msg_FaceEmojiStatus_valid(roswasmc_bounded_2_aimdk_msgs_msg_FaceEmojiStatus const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_MessageHeader_valid(&value->header))
        return 0;
    if(value->e_path.size > 128u || !uwvm_bounded_utf8(value->e_path.data, value->e_path.size))
        return 0;
    if(value->e_path_list.size > 16u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->e_path_list.size; ++i)
        {
            if(value->e_path_list.data[i].size > 128u || !uwvm_bounded_utf8(value->e_path_list.data[i].data, value->e_path_list.data[i].size))
                return 0;
        }
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->time_to_end_ms, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
            return 0;
    }
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_aimdk_msgs_msg_FaceEmojiStatus_wire_size(roswasmc_bounded_2_aimdk_msgs_msg_FaceEmojiStatus const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_aimdk_msgs_msg_MessageHeader_wire_size(&value->header);
    n += 4 + value->e_path.size;
    n += 4;
    if(value->e_path_list.size > 16u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->e_path_list.size; ++i)
        {
            n += 4 + value->e_path_list.data[i].size;
        }
    }
    n += 1;
    n += 1;
    n += 4;
    n += 1;
    n += 8;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_aimdk_msgs_msg_FaceEmojiStatus_write_fields(roswasmc_bounded_2_aimdk_msgs_msg_FaceEmojiStatus const* value,
                                                                                  unsigned char* p,
                                                                                  size_t* offset)
{
    roswasmc_bounded_2_aimdk_msgs_msg_MessageHeader_write_fields(&value->header, p, offset);
    uwvm_bounded_put(p + *offset, value->e_path.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->e_path.data, value->e_path.size);
    *offset += value->e_path.size;
    uwvm_bounded_put(p + *offset, value->e_path_list.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->e_path_list.size; ++i)
        {
            uwvm_bounded_put(p + *offset, value->e_path_list.data[i].size, 4);
            *offset += 4;
            uwvm_bounded_copy(p + *offset, value->e_path_list.data[i].data, value->e_path_list.data[i].size);
            *offset += value->e_path_list.data[i].size;
        }
    }
    uwvm_bounded_put(p + *offset, (uint64_t)value->e_id, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->mode, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->priority, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, (uint64_t)value->status, 1);
    *offset += 1;
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->time_to_end_ms, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_aimdk_msgs_msg_FaceEmojiStatus_read_fields(unsigned char const* p,
                                                                                size_t n,
                                                                                size_t* offset,
                                                                                roswasmc_bounded_2_aimdk_msgs_msg_FaceEmojiStatus* value)
{
    if(!roswasmc_bounded_2_aimdk_msgs_msg_MessageHeader_read_fields(p, n, offset, &value->header))
        return 0;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->e_path.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->e_path.size > 128u || value->e_path.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->e_path.data, p + *offset, value->e_path.size);
    *offset += value->e_path.size;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->e_path_list.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->e_path_list.size > 16u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->e_path_list.size; ++i)
        {
            if(*offset > n || n - *offset < 4)
                return 0;
            value->e_path_list.data[i].size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
            *offset += 4;
            if(value->e_path_list.data[i].size > 128u || value->e_path_list.data[i].size > n - *offset)
                return 0;
            uwvm_bounded_copy(value->e_path_list.data[i].data, p + *offset, value->e_path_list.data[i].size);
            *offset += value->e_path_list.data[i].size;
        }
    }
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->e_id, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->mode, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->priority, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->status, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->time_to_end_ms, &bits, 8);
    }
    *offset += 8;
    return roswasmc_bounded_2_aimdk_msgs_msg_FaceEmojiStatus_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_aimdk_msgs_msg_FaceEmojiStatus_encode(roswasmc_bounded_2_aimdk_msgs_msg_FaceEmojiStatus const* value,
                                                                                void* output,
                                                                                size_t capacity,
                                                                                size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_aimdk_msgs_msg_FaceEmojiStatus_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_aimdk_msgs_msg_FaceEmojiStatus_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_aimdk_msgs_msg_FaceEmojiStatus_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_aimdk_msgs_msg_FaceEmojiStatus_decode(void const* input, size_t length, roswasmc_bounded_2_aimdk_msgs_msg_FaceEmojiStatus* value)
{
    roswasmc_bounded_2_aimdk_msgs_msg_FaceEmojiStatus next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 47u || length > 2415u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_FaceEmojiStatus_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDCOMMAND)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDCOMMAND_0 != 0x118f7ed5UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDCOMMAND_1 != 0x4338135bUL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDCOMMAND_2 != 0x4757d0a4UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDCOMMAND_3 != 0x9d5aa4d7UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDCOMMAND_4 != 0x28201e01UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDCOMMAND_5 != 0x09f4ba09UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDCOMMAND_6 != 0x1988db08UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDCOMMAND_7 != 0xe0cda069UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDCOMMAND 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDCOMMAND_0 0x118f7ed5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDCOMMAND_1 0x4338135bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDCOMMAND_2 0x4757d0a4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDCOMMAND_3 0x9d5aa4d7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDCOMMAND_4 0x28201e01UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDCOMMAND_5 0x09f4ba09UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDCOMMAND_6 0x1988db08UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDCOMMAND_7 0xe0cda069UL

/** UTF-8 byte storage for aimdk_msgs/msg/HandCommand.name; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_aimdk_msgs_msg_HandCommand_name_text;

/** Complete ROS2 aimdk_msgs/msg/HandCommand value; no field projects away native data. */
typedef struct roswasmc_bounded_2_aimdk_msgs_msg_HandCommand
{
    /** Declared field name; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_HandCommand_name_text name;
    /** Declared field position; canonical capacity is part of CODEC_IDENTITY. */
    double position;
    /** Declared field velocity; canonical capacity is part of CODEC_IDENTITY. */
    double velocity;
    /** Declared field acceleration; canonical capacity is part of CODEC_IDENTITY. */
    double acceleration;
    /** Declared field deceleration; canonical capacity is part of CODEC_IDENTITY. */
    double deceleration;
    /** Declared field effort; canonical capacity is part of CODEC_IDENTITY. */
    double effort;
} roswasmc_bounded_2_aimdk_msgs_msg_HandCommand;

# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDCOMMAND_MAX_WIRE_BYTES 172u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDCOMMAND_MIN_WIRE_BYTES 44u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDCOMMAND_CODEC_IDENTITY "UWVMROS1_910f3d9c0907c60b2613097cc4c1426727987e2ab83f8bcc41787feb472dc4e8"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_aimdk_msgs_msg_HandCommand_valid(roswasmc_bounded_2_aimdk_msgs_msg_HandCommand const* value)
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
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->deceleration, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
            return 0;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->effort, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
            return 0;
    }
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_aimdk_msgs_msg_HandCommand_wire_size(roswasmc_bounded_2_aimdk_msgs_msg_HandCommand const* value)
{
    size_t n = 0;
    n += 4 + value->name.size;
    n += 8;
    n += 8;
    n += 8;
    n += 8;
    n += 8;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_aimdk_msgs_msg_HandCommand_write_fields(roswasmc_bounded_2_aimdk_msgs_msg_HandCommand const* value, unsigned char* p, size_t* offset)
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
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->deceleration, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->effort, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_aimdk_msgs_msg_HandCommand_read_fields(unsigned char const* p,
                                                                            size_t n,
                                                                            size_t* offset,
                                                                            roswasmc_bounded_2_aimdk_msgs_msg_HandCommand* value)
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
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->deceleration, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->effort, &bits, 8);
    }
    *offset += 8;
    return roswasmc_bounded_2_aimdk_msgs_msg_HandCommand_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_aimdk_msgs_msg_HandCommand_encode(roswasmc_bounded_2_aimdk_msgs_msg_HandCommand const* value,
                                                                            void* output,
                                                                            size_t capacity,
                                                                            size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_aimdk_msgs_msg_HandCommand_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_aimdk_msgs_msg_HandCommand_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_aimdk_msgs_msg_HandCommand_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_aimdk_msgs_msg_HandCommand_decode(void const* input, size_t length, roswasmc_bounded_2_aimdk_msgs_msg_HandCommand* value)
{
    roswasmc_bounded_2_aimdk_msgs_msg_HandCommand next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 44u || length > 172u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_HandCommand_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDTYPE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDTYPE_0 != 0x6e4eaaf7UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDTYPE_1 != 0x832c43d7UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDTYPE_2 != 0xd3484814UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDTYPE_3 != 0xae2af166UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDTYPE_4 != 0x47c61bb2UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDTYPE_5 != 0xd45e014eUL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDTYPE_6 != 0xfa85fd60UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDTYPE_7 != 0x89c94e67UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDTYPE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDTYPE_0 0x6e4eaaf7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDTYPE_1 0x832c43d7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDTYPE_2 0xd3484814UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDTYPE_3 0xae2af166UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDTYPE_4 0x47c61bb2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDTYPE_5 0xd45e014eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDTYPE_6 0xfa85fd60UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDTYPE_7 0x89c94e67UL

/** Complete ROS2 aimdk_msgs/msg/HandType value; no field projects away native data. */
typedef struct roswasmc_bounded_2_aimdk_msgs_msg_HandType
{
    /** Declared field value; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t value;
} roswasmc_bounded_2_aimdk_msgs_msg_HandType;

# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDTYPE_MAX_WIRE_BYTES 1u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDTYPE_MIN_WIRE_BYTES 1u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDTYPE_CODEC_IDENTITY "UWVMROS1_e90b6ef9fea68be96eef98d3c6ce0120846da0638145a662f35a96edb690a6e6"
/** Original scalar constant NONE=0x00; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDTYPE_NONE UINT32_C(0)
/** Original scalar constant NIMBLE_HANDS=0x01; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDTYPE_NIMBLE_HANDS UINT32_C(1)
/** Original scalar constant CLAW=0x02; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDTYPE_CLAW UINT32_C(2)
/** Original scalar constant ERROR=0xFF; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDTYPE_ERROR UINT32_C(255)

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_aimdk_msgs_msg_HandType_valid(roswasmc_bounded_2_aimdk_msgs_msg_HandType const* value)
{
    if(!value)
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_aimdk_msgs_msg_HandType_wire_size(roswasmc_bounded_2_aimdk_msgs_msg_HandType const* value)
{
    size_t n = 0;
    n += 1;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_aimdk_msgs_msg_HandType_write_fields(roswasmc_bounded_2_aimdk_msgs_msg_HandType const* value, unsigned char* p, size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->value, 1);
    *offset += 1;
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int
    roswasmc_bounded_2_aimdk_msgs_msg_HandType_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_2_aimdk_msgs_msg_HandType* value)
{
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->value, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_2_aimdk_msgs_msg_HandType_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_aimdk_msgs_msg_HandType_encode(roswasmc_bounded_2_aimdk_msgs_msg_HandType const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_aimdk_msgs_msg_HandType_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_aimdk_msgs_msg_HandType_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_aimdk_msgs_msg_HandType_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_2_aimdk_msgs_msg_HandType_decode(void const* input, size_t length, roswasmc_bounded_2_aimdk_msgs_msg_HandType* value)
{
    roswasmc_bounded_2_aimdk_msgs_msg_HandType next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 1u || length > 1u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_HandType_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDCOMMANDARRAY)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDCOMMANDARRAY_0 != 0x269ff72dUL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDCOMMANDARRAY_1 != 0x84acb2b2UL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDCOMMANDARRAY_2 != 0xf20bd24fUL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDCOMMANDARRAY_3 != 0x8b90ce11UL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDCOMMANDARRAY_4 != 0xfb2c4003UL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDCOMMANDARRAY_5 != 0x02c4a956UL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDCOMMANDARRAY_6 != 0x73034995UL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDCOMMANDARRAY_7 != 0x2ea2823aUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDCOMMANDARRAY 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDCOMMANDARRAY_0 0x269ff72dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDCOMMANDARRAY_1 0x84acb2b2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDCOMMANDARRAY_2 0xf20bd24fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDCOMMANDARRAY_3 0x8b90ce11UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDCOMMANDARRAY_4 0xfb2c4003UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDCOMMANDARRAY_5 0x02c4a956UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDCOMMANDARRAY_6 0x73034995UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDCOMMANDARRAY_7 0x2ea2823aUL

/** At most4 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_2_aimdk_msgs_msg_HandCommand data[4];
} roswasmc_bounded_2_aimdk_msgs_msg_HandCommandArray_left_hands_sequence;

/** At most4 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_2_aimdk_msgs_msg_HandCommand data[4];
} roswasmc_bounded_2_aimdk_msgs_msg_HandCommandArray_right_hands_sequence;

/** Complete ROS2 aimdk_msgs/msg/HandCommandArray value; no field projects away native data. */
typedef struct roswasmc_bounded_2_aimdk_msgs_msg_HandCommandArray
{
    /** Declared field header; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_MessageHeader header;
    /** Declared field left_hand_type; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_HandType left_hand_type;
    /** Declared field left_hands; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_HandCommandArray_left_hands_sequence left_hands;
    /** Declared field right_hand_type; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_HandType right_hand_type;
    /** Declared field right_hands; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_HandCommandArray_right_hands_sequence right_hands;
} roswasmc_bounded_2_aimdk_msgs_msg_HandCommandArray;

# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDCOMMANDARRAY_MAX_WIRE_BYTES 1538u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDCOMMANDARRAY_MIN_WIRE_BYTES 34u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDCOMMANDARRAY_CODEC_IDENTITY "UWVMROS1_6786b9d07c3f807c1b4b98a5f22481a2628c1bd530c04e75ad40a36058f5558e"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_aimdk_msgs_msg_HandCommandArray_valid(roswasmc_bounded_2_aimdk_msgs_msg_HandCommandArray const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_MessageHeader_valid(&value->header))
        return 0;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_HandType_valid(&value->left_hand_type))
        return 0;
    if(value->left_hands.size > 4u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->left_hands.size; ++i)
        {
            if(!roswasmc_bounded_2_aimdk_msgs_msg_HandCommand_valid(&value->left_hands.data[i]))
                return 0;
        }
    }
    if(!roswasmc_bounded_2_aimdk_msgs_msg_HandType_valid(&value->right_hand_type))
        return 0;
    if(value->right_hands.size > 4u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->right_hands.size; ++i)
        {
            if(!roswasmc_bounded_2_aimdk_msgs_msg_HandCommand_valid(&value->right_hands.data[i]))
                return 0;
        }
    }
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_aimdk_msgs_msg_HandCommandArray_wire_size(roswasmc_bounded_2_aimdk_msgs_msg_HandCommandArray const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_aimdk_msgs_msg_MessageHeader_wire_size(&value->header);
    n += roswasmc_bounded_2_aimdk_msgs_msg_HandType_wire_size(&value->left_hand_type);
    n += 4;
    if(value->left_hands.size > 4u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->left_hands.size; ++i)
        {
            n += roswasmc_bounded_2_aimdk_msgs_msg_HandCommand_wire_size(&value->left_hands.data[i]);
        }
    }
    n += roswasmc_bounded_2_aimdk_msgs_msg_HandType_wire_size(&value->right_hand_type);
    n += 4;
    if(value->right_hands.size > 4u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->right_hands.size; ++i)
        {
            n += roswasmc_bounded_2_aimdk_msgs_msg_HandCommand_wire_size(&value->right_hands.data[i]);
        }
    }
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_aimdk_msgs_msg_HandCommandArray_write_fields(roswasmc_bounded_2_aimdk_msgs_msg_HandCommandArray const* value,
                                                                                   unsigned char* p,
                                                                                   size_t* offset)
{
    roswasmc_bounded_2_aimdk_msgs_msg_MessageHeader_write_fields(&value->header, p, offset);
    roswasmc_bounded_2_aimdk_msgs_msg_HandType_write_fields(&value->left_hand_type, p, offset);
    uwvm_bounded_put(p + *offset, value->left_hands.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->left_hands.size; ++i)
        {
            roswasmc_bounded_2_aimdk_msgs_msg_HandCommand_write_fields(&value->left_hands.data[i], p, offset);
        }
    }
    roswasmc_bounded_2_aimdk_msgs_msg_HandType_write_fields(&value->right_hand_type, p, offset);
    uwvm_bounded_put(p + *offset, value->right_hands.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->right_hands.size; ++i)
        {
            roswasmc_bounded_2_aimdk_msgs_msg_HandCommand_write_fields(&value->right_hands.data[i], p, offset);
        }
    }
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_aimdk_msgs_msg_HandCommandArray_read_fields(unsigned char const* p,
                                                                                 size_t n,
                                                                                 size_t* offset,
                                                                                 roswasmc_bounded_2_aimdk_msgs_msg_HandCommandArray* value)
{
    if(!roswasmc_bounded_2_aimdk_msgs_msg_MessageHeader_read_fields(p, n, offset, &value->header))
        return 0;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_HandType_read_fields(p, n, offset, &value->left_hand_type))
        return 0;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->left_hands.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->left_hands.size > 4u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->left_hands.size; ++i)
        {
            if(!roswasmc_bounded_2_aimdk_msgs_msg_HandCommand_read_fields(p, n, offset, &value->left_hands.data[i]))
                return 0;
        }
    }
    if(!roswasmc_bounded_2_aimdk_msgs_msg_HandType_read_fields(p, n, offset, &value->right_hand_type))
        return 0;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->right_hands.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->right_hands.size > 4u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->right_hands.size; ++i)
        {
            if(!roswasmc_bounded_2_aimdk_msgs_msg_HandCommand_read_fields(p, n, offset, &value->right_hands.data[i]))
                return 0;
        }
    }
    return roswasmc_bounded_2_aimdk_msgs_msg_HandCommandArray_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_aimdk_msgs_msg_HandCommandArray_encode(roswasmc_bounded_2_aimdk_msgs_msg_HandCommandArray const* value,
                                                                                 void* output,
                                                                                 size_t capacity,
                                                                                 size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_aimdk_msgs_msg_HandCommandArray_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_aimdk_msgs_msg_HandCommandArray_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_aimdk_msgs_msg_HandCommandArray_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_aimdk_msgs_msg_HandCommandArray_decode(void const* input, size_t length, roswasmc_bounded_2_aimdk_msgs_msg_HandCommandArray* value)
{
    roswasmc_bounded_2_aimdk_msgs_msg_HandCommandArray next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 34u || length > 1538u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_HandCommandArray_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDSTATE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDSTATE_0 != 0x84a52898UL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDSTATE_1 != 0xea88d9f9UL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDSTATE_2 != 0x37e761beUL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDSTATE_3 != 0xa5e4ac59UL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDSTATE_4 != 0x153828a2UL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDSTATE_5 != 0xcc8137afUL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDSTATE_6 != 0x71003406UL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDSTATE_7 != 0x0d5c2169UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDSTATE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDSTATE_0 0x84a52898UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDSTATE_1 0xea88d9f9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDSTATE_2 0x37e761beUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDSTATE_3 0xa5e4ac59UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDSTATE_4 0x153828a2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDSTATE_5 0xcc8137afUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDSTATE_6 0x71003406UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDSTATE_7 0x0d5c2169UL

/** UTF-8 byte storage for aimdk_msgs/msg/HandState.name; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_aimdk_msgs_msg_HandState_name_text;

/** Complete ROS2 aimdk_msgs/msg/HandState value; no field projects away native data. */
typedef struct roswasmc_bounded_2_aimdk_msgs_msg_HandState
{
    /** Declared field name; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_HandState_name_text name;
    /** Declared field position; canonical capacity is part of CODEC_IDENTITY. */
    double position;
    /** Declared field velocity; canonical capacity is part of CODEC_IDENTITY. */
    double velocity;
    /** Declared field effort; canonical capacity is part of CODEC_IDENTITY. */
    double effort;
    /** Declared field state; canonical capacity is part of CODEC_IDENTITY. */
    int32_t state;
    /** Declared field faultcode; canonical capacity is part of CODEC_IDENTITY. */
    int32_t faultcode;
} roswasmc_bounded_2_aimdk_msgs_msg_HandState;

# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDSTATE_MAX_WIRE_BYTES 164u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDSTATE_MIN_WIRE_BYTES 36u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDSTATE_CODEC_IDENTITY "UWVMROS1_9cfb695f97c9e314103a224bcb6b321de5f279cdae85d5eef7bec0c7968a875c"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_aimdk_msgs_msg_HandState_valid(roswasmc_bounded_2_aimdk_msgs_msg_HandState const* value)
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
        uwvm_bounded_copy(&bits, &value->effort, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
            return 0;
    }
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_aimdk_msgs_msg_HandState_wire_size(roswasmc_bounded_2_aimdk_msgs_msg_HandState const* value)
{
    size_t n = 0;
    n += 4 + value->name.size;
    n += 8;
    n += 8;
    n += 8;
    n += 4;
    n += 4;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_aimdk_msgs_msg_HandState_write_fields(roswasmc_bounded_2_aimdk_msgs_msg_HandState const* value, unsigned char* p, size_t* offset)
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
        uwvm_bounded_copy(&bits, &value->effort, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    uwvm_bounded_put(p + *offset, (uint64_t)value->state, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, (uint64_t)value->faultcode, 4);
    *offset += 4;
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_aimdk_msgs_msg_HandState_read_fields(unsigned char const* p,
                                                                          size_t n,
                                                                          size_t* offset,
                                                                          roswasmc_bounded_2_aimdk_msgs_msg_HandState* value)
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
        uwvm_bounded_copy(&value->effort, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->state, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->faultcode, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_2_aimdk_msgs_msg_HandState_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_aimdk_msgs_msg_HandState_encode(roswasmc_bounded_2_aimdk_msgs_msg_HandState const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_aimdk_msgs_msg_HandState_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_aimdk_msgs_msg_HandState_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_aimdk_msgs_msg_HandState_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_2_aimdk_msgs_msg_HandState_decode(void const* input, size_t length, roswasmc_bounded_2_aimdk_msgs_msg_HandState* value)
{
    roswasmc_bounded_2_aimdk_msgs_msg_HandState next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 36u || length > 164u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_HandState_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDSTATEARRAY)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDSTATEARRAY_0 != 0x04b1f942UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDSTATEARRAY_1 != 0xa1610c39UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDSTATEARRAY_2 != 0x47ac9732UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDSTATEARRAY_3 != 0x83401aaaUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDSTATEARRAY_4 != 0x7a831f3eUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDSTATEARRAY_5 != 0xe08b6b4fUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDSTATEARRAY_6 != 0x78622396UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDSTATEARRAY_7 != 0x995e321eUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDSTATEARRAY 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDSTATEARRAY_0 0x04b1f942UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDSTATEARRAY_1 0xa1610c39UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDSTATEARRAY_2 0x47ac9732UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDSTATEARRAY_3 0x83401aaaUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDSTATEARRAY_4 0x7a831f3eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDSTATEARRAY_5 0xe08b6b4fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDSTATEARRAY_6 0x78622396UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDSTATEARRAY_7 0x995e321eUL

/** At most4 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_2_aimdk_msgs_msg_HandState data[4];
} roswasmc_bounded_2_aimdk_msgs_msg_HandStateArray_left_hands_sequence;

/** At most4 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_2_aimdk_msgs_msg_HandState data[4];
} roswasmc_bounded_2_aimdk_msgs_msg_HandStateArray_right_hands_sequence;

/** Complete ROS2 aimdk_msgs/msg/HandStateArray value; no field projects away native data. */
typedef struct roswasmc_bounded_2_aimdk_msgs_msg_HandStateArray
{
    /** Declared field header; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_MessageHeader header;
    /** Declared field left_hand_type; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_HandType left_hand_type;
    /** Declared field left_hands; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_HandStateArray_left_hands_sequence left_hands;
    /** Declared field right_hand_type; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_HandType right_hand_type;
    /** Declared field right_hands; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_HandStateArray_right_hands_sequence right_hands;
} roswasmc_bounded_2_aimdk_msgs_msg_HandStateArray;

# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDSTATEARRAY_MAX_WIRE_BYTES 1474u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDSTATEARRAY_MIN_WIRE_BYTES 34u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_HANDSTATEARRAY_CODEC_IDENTITY "UWVMROS1_241862e8351ba851c0b7124277b23dfc09df3344bae750f238422af6e820e46d"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_aimdk_msgs_msg_HandStateArray_valid(roswasmc_bounded_2_aimdk_msgs_msg_HandStateArray const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_MessageHeader_valid(&value->header))
        return 0;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_HandType_valid(&value->left_hand_type))
        return 0;
    if(value->left_hands.size > 4u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->left_hands.size; ++i)
        {
            if(!roswasmc_bounded_2_aimdk_msgs_msg_HandState_valid(&value->left_hands.data[i]))
                return 0;
        }
    }
    if(!roswasmc_bounded_2_aimdk_msgs_msg_HandType_valid(&value->right_hand_type))
        return 0;
    if(value->right_hands.size > 4u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->right_hands.size; ++i)
        {
            if(!roswasmc_bounded_2_aimdk_msgs_msg_HandState_valid(&value->right_hands.data[i]))
                return 0;
        }
    }
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_aimdk_msgs_msg_HandStateArray_wire_size(roswasmc_bounded_2_aimdk_msgs_msg_HandStateArray const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_aimdk_msgs_msg_MessageHeader_wire_size(&value->header);
    n += roswasmc_bounded_2_aimdk_msgs_msg_HandType_wire_size(&value->left_hand_type);
    n += 4;
    if(value->left_hands.size > 4u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->left_hands.size; ++i)
        {
            n += roswasmc_bounded_2_aimdk_msgs_msg_HandState_wire_size(&value->left_hands.data[i]);
        }
    }
    n += roswasmc_bounded_2_aimdk_msgs_msg_HandType_wire_size(&value->right_hand_type);
    n += 4;
    if(value->right_hands.size > 4u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->right_hands.size; ++i)
        {
            n += roswasmc_bounded_2_aimdk_msgs_msg_HandState_wire_size(&value->right_hands.data[i]);
        }
    }
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_aimdk_msgs_msg_HandStateArray_write_fields(roswasmc_bounded_2_aimdk_msgs_msg_HandStateArray const* value,
                                                                                 unsigned char* p,
                                                                                 size_t* offset)
{
    roswasmc_bounded_2_aimdk_msgs_msg_MessageHeader_write_fields(&value->header, p, offset);
    roswasmc_bounded_2_aimdk_msgs_msg_HandType_write_fields(&value->left_hand_type, p, offset);
    uwvm_bounded_put(p + *offset, value->left_hands.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->left_hands.size; ++i)
        {
            roswasmc_bounded_2_aimdk_msgs_msg_HandState_write_fields(&value->left_hands.data[i], p, offset);
        }
    }
    roswasmc_bounded_2_aimdk_msgs_msg_HandType_write_fields(&value->right_hand_type, p, offset);
    uwvm_bounded_put(p + *offset, value->right_hands.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->right_hands.size; ++i)
        {
            roswasmc_bounded_2_aimdk_msgs_msg_HandState_write_fields(&value->right_hands.data[i], p, offset);
        }
    }
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_aimdk_msgs_msg_HandStateArray_read_fields(unsigned char const* p,
                                                                               size_t n,
                                                                               size_t* offset,
                                                                               roswasmc_bounded_2_aimdk_msgs_msg_HandStateArray* value)
{
    if(!roswasmc_bounded_2_aimdk_msgs_msg_MessageHeader_read_fields(p, n, offset, &value->header))
        return 0;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_HandType_read_fields(p, n, offset, &value->left_hand_type))
        return 0;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->left_hands.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->left_hands.size > 4u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->left_hands.size; ++i)
        {
            if(!roswasmc_bounded_2_aimdk_msgs_msg_HandState_read_fields(p, n, offset, &value->left_hands.data[i]))
                return 0;
        }
    }
    if(!roswasmc_bounded_2_aimdk_msgs_msg_HandType_read_fields(p, n, offset, &value->right_hand_type))
        return 0;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->right_hands.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->right_hands.size > 4u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->right_hands.size; ++i)
        {
            if(!roswasmc_bounded_2_aimdk_msgs_msg_HandState_read_fields(p, n, offset, &value->right_hands.data[i]))
                return 0;
        }
    }
    return roswasmc_bounded_2_aimdk_msgs_msg_HandStateArray_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_aimdk_msgs_msg_HandStateArray_encode(roswasmc_bounded_2_aimdk_msgs_msg_HandStateArray const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_aimdk_msgs_msg_HandStateArray_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_aimdk_msgs_msg_HandStateArray_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_aimdk_msgs_msg_HandStateArray_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_aimdk_msgs_msg_HandStateArray_decode(void const* input, size_t length, roswasmc_bounded_2_aimdk_msgs_msg_HandStateArray* value)
{
    roswasmc_bounded_2_aimdk_msgs_msg_HandStateArray next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 34u || length > 1474u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_HandStateArray_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTCOMMAND)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTCOMMAND_0 != 0x5ebe458eUL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTCOMMAND_1 != 0x54586e57UL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTCOMMAND_2 != 0x87586094UL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTCOMMAND_3 != 0x91e92c48UL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTCOMMAND_4 != 0x4bc3183cUL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTCOMMAND_5 != 0xddeca8d3UL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTCOMMAND_6 != 0x9366fa49UL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTCOMMAND_7 != 0x9b619a1dUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTCOMMAND 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTCOMMAND_0 0x5ebe458eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTCOMMAND_1 0x54586e57UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTCOMMAND_2 0x87586094UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTCOMMAND_3 0x91e92c48UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTCOMMAND_4 0x4bc3183cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTCOMMAND_5 0xddeca8d3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTCOMMAND_6 0x9366fa49UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTCOMMAND_7 0x9b619a1dUL

/** UTF-8 byte storage for aimdk_msgs/msg/JointCommand.name; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_aimdk_msgs_msg_JointCommand_name_text;

/** Complete ROS2 aimdk_msgs/msg/JointCommand value; no field projects away native data. */
typedef struct roswasmc_bounded_2_aimdk_msgs_msg_JointCommand
{
    /** Declared field name; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_JointCommand_name_text name;
    /** Declared field position; canonical capacity is part of CODEC_IDENTITY. */
    double position;
    /** Declared field velocity; canonical capacity is part of CODEC_IDENTITY. */
    double velocity;
    /** Declared field effort; canonical capacity is part of CODEC_IDENTITY. */
    double effort;
    /** Declared field stiffness; canonical capacity is part of CODEC_IDENTITY. */
    double stiffness;
    /** Declared field damping; canonical capacity is part of CODEC_IDENTITY. */
    double damping;
} roswasmc_bounded_2_aimdk_msgs_msg_JointCommand;

# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTCOMMAND_MAX_WIRE_BYTES 172u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTCOMMAND_MIN_WIRE_BYTES 44u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTCOMMAND_CODEC_IDENTITY "UWVMROS1_32c4e24dc7ea567136fc811efc68eea5b8d1072a5ed58e1c4b67b4d705a9fc3f"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_aimdk_msgs_msg_JointCommand_valid(roswasmc_bounded_2_aimdk_msgs_msg_JointCommand const* value)
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
        uwvm_bounded_copy(&bits, &value->effort, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
            return 0;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->stiffness, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
            return 0;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->damping, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
            return 0;
    }
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_aimdk_msgs_msg_JointCommand_wire_size(roswasmc_bounded_2_aimdk_msgs_msg_JointCommand const* value)
{
    size_t n = 0;
    n += 4 + value->name.size;
    n += 8;
    n += 8;
    n += 8;
    n += 8;
    n += 8;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_aimdk_msgs_msg_JointCommand_write_fields(roswasmc_bounded_2_aimdk_msgs_msg_JointCommand const* value, unsigned char* p, size_t* offset)
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
        uwvm_bounded_copy(&bits, &value->effort, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->stiffness, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->damping, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_aimdk_msgs_msg_JointCommand_read_fields(unsigned char const* p,
                                                                             size_t n,
                                                                             size_t* offset,
                                                                             roswasmc_bounded_2_aimdk_msgs_msg_JointCommand* value)
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
        uwvm_bounded_copy(&value->effort, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->stiffness, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->damping, &bits, 8);
    }
    *offset += 8;
    return roswasmc_bounded_2_aimdk_msgs_msg_JointCommand_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_aimdk_msgs_msg_JointCommand_encode(roswasmc_bounded_2_aimdk_msgs_msg_JointCommand const* value,
                                                                             void* output,
                                                                             size_t capacity,
                                                                             size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_aimdk_msgs_msg_JointCommand_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_aimdk_msgs_msg_JointCommand_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_aimdk_msgs_msg_JointCommand_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_aimdk_msgs_msg_JointCommand_decode(void const* input, size_t length, roswasmc_bounded_2_aimdk_msgs_msg_JointCommand* value)
{
    roswasmc_bounded_2_aimdk_msgs_msg_JointCommand next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 44u || length > 172u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_JointCommand_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTCOMMANDARRAY)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTCOMMANDARRAY_0 != 0xa6354341UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTCOMMANDARRAY_1 != 0x41e290f5UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTCOMMANDARRAY_2 != 0x1863c459UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTCOMMANDARRAY_3 != 0x0e454ff0UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTCOMMANDARRAY_4 != 0x6c605bf7UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTCOMMANDARRAY_5 != 0x554ec823UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTCOMMANDARRAY_6 != 0x2b3b755eUL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTCOMMANDARRAY_7 != 0xf3ee96f2UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTCOMMANDARRAY 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTCOMMANDARRAY_0 0xa6354341UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTCOMMANDARRAY_1 0x41e290f5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTCOMMANDARRAY_2 0x1863c459UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTCOMMANDARRAY_3 0x0e454ff0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTCOMMANDARRAY_4 0x6c605bf7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTCOMMANDARRAY_5 0x554ec823UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTCOMMANDARRAY_6 0x2b3b755eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTCOMMANDARRAY_7 0xf3ee96f2UL

/** At most64 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_2_aimdk_msgs_msg_JointCommand data[64];
} roswasmc_bounded_2_aimdk_msgs_msg_JointCommandArray_joints_sequence;

/** Complete ROS2 aimdk_msgs/msg/JointCommandArray value; no field projects away native data. */
typedef struct roswasmc_bounded_2_aimdk_msgs_msg_JointCommandArray
{
    /** Declared field header; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_MessageHeader header;
    /** Declared field joints; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_JointCommandArray_joints_sequence joints;
} roswasmc_bounded_2_aimdk_msgs_msg_JointCommandArray;

# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTCOMMANDARRAY_MAX_WIRE_BYTES 11164u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTCOMMANDARRAY_MIN_WIRE_BYTES 28u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTCOMMANDARRAY_CODEC_IDENTITY "UWVMROS1_b8f8d9b00f02524cfdd21f81d7e683290e92ba0b00d086d4506fd3600123d9d6"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_aimdk_msgs_msg_JointCommandArray_valid(roswasmc_bounded_2_aimdk_msgs_msg_JointCommandArray const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_MessageHeader_valid(&value->header))
        return 0;
    if(value->joints.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->joints.size; ++i)
        {
            if(!roswasmc_bounded_2_aimdk_msgs_msg_JointCommand_valid(&value->joints.data[i]))
                return 0;
        }
    }
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_aimdk_msgs_msg_JointCommandArray_wire_size(roswasmc_bounded_2_aimdk_msgs_msg_JointCommandArray const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_aimdk_msgs_msg_MessageHeader_wire_size(&value->header);
    n += 4;
    if(value->joints.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->joints.size; ++i)
        {
            n += roswasmc_bounded_2_aimdk_msgs_msg_JointCommand_wire_size(&value->joints.data[i]);
        }
    }
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_aimdk_msgs_msg_JointCommandArray_write_fields(roswasmc_bounded_2_aimdk_msgs_msg_JointCommandArray const* value,
                                                                                    unsigned char* p,
                                                                                    size_t* offset)
{
    roswasmc_bounded_2_aimdk_msgs_msg_MessageHeader_write_fields(&value->header, p, offset);
    uwvm_bounded_put(p + *offset, value->joints.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->joints.size; ++i)
        {
            roswasmc_bounded_2_aimdk_msgs_msg_JointCommand_write_fields(&value->joints.data[i], p, offset);
        }
    }
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_aimdk_msgs_msg_JointCommandArray_read_fields(unsigned char const* p,
                                                                                  size_t n,
                                                                                  size_t* offset,
                                                                                  roswasmc_bounded_2_aimdk_msgs_msg_JointCommandArray* value)
{
    if(!roswasmc_bounded_2_aimdk_msgs_msg_MessageHeader_read_fields(p, n, offset, &value->header))
        return 0;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->joints.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->joints.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->joints.size; ++i)
        {
            if(!roswasmc_bounded_2_aimdk_msgs_msg_JointCommand_read_fields(p, n, offset, &value->joints.data[i]))
                return 0;
        }
    }
    return roswasmc_bounded_2_aimdk_msgs_msg_JointCommandArray_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_aimdk_msgs_msg_JointCommandArray_encode(roswasmc_bounded_2_aimdk_msgs_msg_JointCommandArray const* value,
                                                                                  void* output,
                                                                                  size_t capacity,
                                                                                  size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_aimdk_msgs_msg_JointCommandArray_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_aimdk_msgs_msg_JointCommandArray_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_aimdk_msgs_msg_JointCommandArray_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_aimdk_msgs_msg_JointCommandArray_decode(void const* input, size_t length, roswasmc_bounded_2_aimdk_msgs_msg_JointCommandArray* value)
{
    roswasmc_bounded_2_aimdk_msgs_msg_JointCommandArray next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 28u || length > 11164u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_JointCommandArray_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTSTATE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTSTATE_0 != 0x818ea40fUL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTSTATE_1 != 0x10467143UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTSTATE_2 != 0x6557601cUL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTSTATE_3 != 0xf4f3b0dfUL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTSTATE_4 != 0x8158c98dUL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTSTATE_5 != 0xa97a69d4UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTSTATE_6 != 0xb7d246e8UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTSTATE_7 != 0xce9fd4c4UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTSTATE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTSTATE_0 0x818ea40fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTSTATE_1 0x10467143UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTSTATE_2 0x6557601cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTSTATE_3 0xf4f3b0dfUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTSTATE_4 0x8158c98dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTSTATE_5 0xa97a69d4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTSTATE_6 0xb7d246e8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTSTATE_7 0xce9fd4c4UL

/** UTF-8 byte storage for aimdk_msgs/msg/JointState.name; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_aimdk_msgs_msg_JointState_name_text;

/** Complete ROS2 aimdk_msgs/msg/JointState value; no field projects away native data. */
typedef struct roswasmc_bounded_2_aimdk_msgs_msg_JointState
{
    /** Declared field name; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_JointState_name_text name;
    /** Declared field position; canonical capacity is part of CODEC_IDENTITY. */
    double position;
    /** Declared field velocity; canonical capacity is part of CODEC_IDENTITY. */
    double velocity;
    /** Declared field effort; canonical capacity is part of CODEC_IDENTITY. */
    double effort;
    /** Declared field coil_temp; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t coil_temp;
    /** Declared field motor_temp; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t motor_temp;
    /** Declared field motor_vol; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t motor_vol;
} roswasmc_bounded_2_aimdk_msgs_msg_JointState;

# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTSTATE_MAX_WIRE_BYTES 159u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTSTATE_MIN_WIRE_BYTES 31u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTSTATE_CODEC_IDENTITY "UWVMROS1_1b786e0a54b6e19cbc8cdad4bffc7458534ce3db05064216eb3cf6b50674610f"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_aimdk_msgs_msg_JointState_valid(roswasmc_bounded_2_aimdk_msgs_msg_JointState const* value)
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
        uwvm_bounded_copy(&bits, &value->effort, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
            return 0;
    }
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_aimdk_msgs_msg_JointState_wire_size(roswasmc_bounded_2_aimdk_msgs_msg_JointState const* value)
{
    size_t n = 0;
    n += 4 + value->name.size;
    n += 8;
    n += 8;
    n += 8;
    n += 1;
    n += 1;
    n += 1;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_aimdk_msgs_msg_JointState_write_fields(roswasmc_bounded_2_aimdk_msgs_msg_JointState const* value, unsigned char* p, size_t* offset)
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
        uwvm_bounded_copy(&bits, &value->effort, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    uwvm_bounded_put(p + *offset, (uint64_t)value->coil_temp, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->motor_temp, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->motor_vol, 1);
    *offset += 1;
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_aimdk_msgs_msg_JointState_read_fields(unsigned char const* p,
                                                                           size_t n,
                                                                           size_t* offset,
                                                                           roswasmc_bounded_2_aimdk_msgs_msg_JointState* value)
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
        uwvm_bounded_copy(&value->effort, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->coil_temp, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->motor_temp, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->motor_vol, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_2_aimdk_msgs_msg_JointState_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_aimdk_msgs_msg_JointState_encode(roswasmc_bounded_2_aimdk_msgs_msg_JointState const* value,
                                                                           void* output,
                                                                           size_t capacity,
                                                                           size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_aimdk_msgs_msg_JointState_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_aimdk_msgs_msg_JointState_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_aimdk_msgs_msg_JointState_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_aimdk_msgs_msg_JointState_decode(void const* input, size_t length, roswasmc_bounded_2_aimdk_msgs_msg_JointState* value)
{
    roswasmc_bounded_2_aimdk_msgs_msg_JointState next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 31u || length > 159u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_JointState_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTSTATEARRAY)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTSTATEARRAY_0 != 0x1efe233eUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTSTATEARRAY_1 != 0xb6ab7ad8UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTSTATEARRAY_2 != 0xc9721cb6UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTSTATEARRAY_3 != 0x746949deUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTSTATEARRAY_4 != 0x7bbdfbfcUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTSTATEARRAY_5 != 0x989da61bUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTSTATEARRAY_6 != 0xdef9d2ebUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTSTATEARRAY_7 != 0x6b31a631UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTSTATEARRAY 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTSTATEARRAY_0 0x1efe233eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTSTATEARRAY_1 0xb6ab7ad8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTSTATEARRAY_2 0xc9721cb6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTSTATEARRAY_3 0x746949deUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTSTATEARRAY_4 0x7bbdfbfcUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTSTATEARRAY_5 0x989da61bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTSTATEARRAY_6 0xdef9d2ebUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTSTATEARRAY_7 0x6b31a631UL

/** At most64 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_2_aimdk_msgs_msg_JointState data[64];
} roswasmc_bounded_2_aimdk_msgs_msg_JointStateArray_joints_sequence;

/** Complete ROS2 aimdk_msgs/msg/JointStateArray value; no field projects away native data. */
typedef struct roswasmc_bounded_2_aimdk_msgs_msg_JointStateArray
{
    /** Declared field header; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_MessageHeader header;
    /** Declared field joints; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_JointStateArray_joints_sequence joints;
} roswasmc_bounded_2_aimdk_msgs_msg_JointStateArray;

# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTSTATEARRAY_MAX_WIRE_BYTES 10332u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTSTATEARRAY_MIN_WIRE_BYTES 28u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTSTATEARRAY_CODEC_IDENTITY "UWVMROS1_6bf212a55e2cbe59e4e1bd675bdb41d3461db28e11d91244c21bac45070683fa"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_aimdk_msgs_msg_JointStateArray_valid(roswasmc_bounded_2_aimdk_msgs_msg_JointStateArray const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_MessageHeader_valid(&value->header))
        return 0;
    if(value->joints.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->joints.size; ++i)
        {
            if(!roswasmc_bounded_2_aimdk_msgs_msg_JointState_valid(&value->joints.data[i]))
                return 0;
        }
    }
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_aimdk_msgs_msg_JointStateArray_wire_size(roswasmc_bounded_2_aimdk_msgs_msg_JointStateArray const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_aimdk_msgs_msg_MessageHeader_wire_size(&value->header);
    n += 4;
    if(value->joints.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->joints.size; ++i)
        {
            n += roswasmc_bounded_2_aimdk_msgs_msg_JointState_wire_size(&value->joints.data[i]);
        }
    }
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_aimdk_msgs_msg_JointStateArray_write_fields(roswasmc_bounded_2_aimdk_msgs_msg_JointStateArray const* value,
                                                                                  unsigned char* p,
                                                                                  size_t* offset)
{
    roswasmc_bounded_2_aimdk_msgs_msg_MessageHeader_write_fields(&value->header, p, offset);
    uwvm_bounded_put(p + *offset, value->joints.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->joints.size; ++i)
        {
            roswasmc_bounded_2_aimdk_msgs_msg_JointState_write_fields(&value->joints.data[i], p, offset);
        }
    }
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_aimdk_msgs_msg_JointStateArray_read_fields(unsigned char const* p,
                                                                                size_t n,
                                                                                size_t* offset,
                                                                                roswasmc_bounded_2_aimdk_msgs_msg_JointStateArray* value)
{
    if(!roswasmc_bounded_2_aimdk_msgs_msg_MessageHeader_read_fields(p, n, offset, &value->header))
        return 0;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->joints.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->joints.size > 64u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->joints.size; ++i)
        {
            if(!roswasmc_bounded_2_aimdk_msgs_msg_JointState_read_fields(p, n, offset, &value->joints.data[i]))
                return 0;
        }
    }
    return roswasmc_bounded_2_aimdk_msgs_msg_JointStateArray_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_aimdk_msgs_msg_JointStateArray_encode(roswasmc_bounded_2_aimdk_msgs_msg_JointStateArray const* value,
                                                                                void* output,
                                                                                size_t capacity,
                                                                                size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_aimdk_msgs_msg_JointStateArray_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_aimdk_msgs_msg_JointStateArray_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_aimdk_msgs_msg_JointStateArray_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_aimdk_msgs_msg_JointStateArray_decode(void const* input, size_t length, roswasmc_bounded_2_aimdk_msgs_msg_JointStateArray* value)
{
    roswasmc_bounded_2_aimdk_msgs_msg_JointStateArray next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 28u || length > 10332u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_JointStateArray_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTION)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTION_0 != 0x47205907UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTION_1 != 0xbf78b89eUL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTION_2 != 0xe54d37fbUL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTION_3 != 0xbc60da1fUL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTION_4 != 0x660bd903UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTION_5 != 0xc7ffdae0UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTION_6 != 0x399809d2UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTION_7 != 0xd6dfc2c6UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTION 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTION_0 0x47205907UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTION_1 0xbf78b89eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTION_2 0xe54d37fbUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTION_3 0xbc60da1fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTION_4 0x660bd903UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTION_5 0xc7ffdae0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTION_6 0x399809d2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTION_7 0xd6dfc2c6UL

/** Complete ROS2 aimdk_msgs/msg/McAction value; no field projects away native data. */
typedef struct roswasmc_bounded_2_aimdk_msgs_msg_McAction
{
    /** Declared field value; canonical capacity is part of CODEC_IDENTITY. */
    int32_t value;
} roswasmc_bounded_2_aimdk_msgs_msg_McAction;

# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTION_MAX_WIRE_BYTES 4u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTION_MIN_WIRE_BYTES 4u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTION_CODEC_IDENTITY "UWVMROS1_a43927486ae637ff4e5b8d60e1f45c91a9e3cf07b4505ea00550c6dc58e9354b"
/** Original scalar constant PASSIVE_DEFAULT=1; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTION_PASSIVE_DEFAULT INT32_C(1)
/** Original scalar constant SOFT_EMERGENCY_STOP=2; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTION_SOFT_EMERGENCY_STOP INT32_C(2)
/** Original scalar constant DAMPING_DEFAULT=3; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTION_DAMPING_DEFAULT INT32_C(3)
/** Original scalar constant ZERO_TORQUE_DEFAULT=4; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTION_ZERO_TORQUE_DEFAULT INT32_C(4)
/** Original scalar constant JOINT_DEFAULT=100; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTION_JOINT_DEFAULT INT32_C(100)
/** Original scalar constant JOINT_FREEZE=101; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTION_JOINT_FREEZE INT32_C(101)
/** Original scalar constant STAND_DEFAULT=200; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTION_STAND_DEFAULT INT32_C(200)
/** Original scalar constant STAND_BODY_CONTROL=201; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTION_STAND_BODY_CONTROL INT32_C(201)
/** Original scalar constant LOCOMOTION_DEFAULT=300; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTION_LOCOMOTION_DEFAULT INT32_C(300)
/** Original scalar constant RUN_DEFAULT=301; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTION_RUN_DEFAULT INT32_C(301)
/** Original scalar constant LOCOMOTION_STEP=302; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTION_LOCOMOTION_STEP INT32_C(302)
/** Original scalar constant VR_REMOTE_CONTROLLER=400; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTION_VR_REMOTE_CONTROLLER INT32_C(400)
/** Original scalar constant SIT_DOWN_DEFAULT=2000; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTION_SIT_DOWN_DEFAULT INT32_C(2000)
/** Original scalar constant CROUCH_DOWN_DEFAULT=2002; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTION_CROUCH_DOWN_DEFAULT INT32_C(2002)
/** Original scalar constant LIE_DOWN_DEFAULT=2004; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTION_LIE_DOWN_DEFAULT INT32_C(2004)
/** Original scalar constant STAND_UP_DEFAULT=2005; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTION_STAND_UP_DEFAULT INT32_C(2005)
/** Original scalar constant ASCEND_STAIRS=2006; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTION_ASCEND_STAIRS INT32_C(2006)
/** Original scalar constant DESCEND_STAIRS=2008; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTION_DESCEND_STAIRS INT32_C(2008)

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_aimdk_msgs_msg_McAction_valid(roswasmc_bounded_2_aimdk_msgs_msg_McAction const* value)
{
    if(!value)
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_aimdk_msgs_msg_McAction_wire_size(roswasmc_bounded_2_aimdk_msgs_msg_McAction const* value)
{
    size_t n = 0;
    n += 4;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_aimdk_msgs_msg_McAction_write_fields(roswasmc_bounded_2_aimdk_msgs_msg_McAction const* value, unsigned char* p, size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->value, 4);
    *offset += 4;
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int
    roswasmc_bounded_2_aimdk_msgs_msg_McAction_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_2_aimdk_msgs_msg_McAction* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->value, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_2_aimdk_msgs_msg_McAction_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_aimdk_msgs_msg_McAction_encode(roswasmc_bounded_2_aimdk_msgs_msg_McAction const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_aimdk_msgs_msg_McAction_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_aimdk_msgs_msg_McAction_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_aimdk_msgs_msg_McAction_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_2_aimdk_msgs_msg_McAction_decode(void const* input, size_t length, roswasmc_bounded_2_aimdk_msgs_msg_McAction* value)
{
    roswasmc_bounded_2_aimdk_msgs_msg_McAction next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 4u || length > 4u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_McAction_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTIONCOMMAND)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTIONCOMMAND_0 != 0x05d31a89UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTIONCOMMAND_1 != 0x2ba20db9UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTIONCOMMAND_2 != 0x3c7fbf01UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTIONCOMMAND_3 != 0x961d033aUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTIONCOMMAND_4 != 0xcebf1fc5UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTIONCOMMAND_5 != 0x87d5be17UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTIONCOMMAND_6 != 0xc089a4e2UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTIONCOMMAND_7 != 0x232b4873UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTIONCOMMAND 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTIONCOMMAND_0 0x05d31a89UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTIONCOMMAND_1 0x2ba20db9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTIONCOMMAND_2 0x3c7fbf01UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTIONCOMMAND_3 0x961d033aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTIONCOMMAND_4 0xcebf1fc5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTIONCOMMAND_5 0x87d5be17UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTIONCOMMAND_6 0xc089a4e2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTIONCOMMAND_7 0x232b4873UL

/** UTF-8 byte storage for aimdk_msgs/msg/McActionCommand.action_desc; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_aimdk_msgs_msg_McActionCommand_action_desc_text;

/** Complete ROS2 aimdk_msgs/msg/McActionCommand value; no field projects away native data. */
typedef struct roswasmc_bounded_2_aimdk_msgs_msg_McActionCommand
{
    /** Declared field action; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_McAction action;
    /** Declared field action_desc; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_McActionCommand_action_desc_text action_desc;
} roswasmc_bounded_2_aimdk_msgs_msg_McActionCommand;

# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTIONCOMMAND_MAX_WIRE_BYTES 136u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTIONCOMMAND_MIN_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTIONCOMMAND_CODEC_IDENTITY "UWVMROS1_9a529c7988535cbc65c36425ffb0935b210a806906598baa3a2f1f717df4f648"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_aimdk_msgs_msg_McActionCommand_valid(roswasmc_bounded_2_aimdk_msgs_msg_McActionCommand const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_McAction_valid(&value->action))
        return 0;
    if(value->action_desc.size > 128u || !uwvm_bounded_utf8(value->action_desc.data, value->action_desc.size))
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_aimdk_msgs_msg_McActionCommand_wire_size(roswasmc_bounded_2_aimdk_msgs_msg_McActionCommand const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_aimdk_msgs_msg_McAction_wire_size(&value->action);
    n += 4 + value->action_desc.size;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_aimdk_msgs_msg_McActionCommand_write_fields(roswasmc_bounded_2_aimdk_msgs_msg_McActionCommand const* value,
                                                                                  unsigned char* p,
                                                                                  size_t* offset)
{
    roswasmc_bounded_2_aimdk_msgs_msg_McAction_write_fields(&value->action, p, offset);
    uwvm_bounded_put(p + *offset, value->action_desc.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->action_desc.data, value->action_desc.size);
    *offset += value->action_desc.size;
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_aimdk_msgs_msg_McActionCommand_read_fields(unsigned char const* p,
                                                                                size_t n,
                                                                                size_t* offset,
                                                                                roswasmc_bounded_2_aimdk_msgs_msg_McActionCommand* value)
{
    if(!roswasmc_bounded_2_aimdk_msgs_msg_McAction_read_fields(p, n, offset, &value->action))
        return 0;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->action_desc.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->action_desc.size > 128u || value->action_desc.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->action_desc.data, p + *offset, value->action_desc.size);
    *offset += value->action_desc.size;
    return roswasmc_bounded_2_aimdk_msgs_msg_McActionCommand_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_aimdk_msgs_msg_McActionCommand_encode(roswasmc_bounded_2_aimdk_msgs_msg_McActionCommand const* value,
                                                                                void* output,
                                                                                size_t capacity,
                                                                                size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_aimdk_msgs_msg_McActionCommand_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_aimdk_msgs_msg_McActionCommand_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_aimdk_msgs_msg_McActionCommand_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_aimdk_msgs_msg_McActionCommand_decode(void const* input, size_t length, roswasmc_bounded_2_aimdk_msgs_msg_McActionCommand* value)
{
    roswasmc_bounded_2_aimdk_msgs_msg_McActionCommand next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 8u || length > 136u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_McActionCommand_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTIONSTATUS)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTIONSTATUS_0 != 0xe2d98254UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTIONSTATUS_1 != 0x9f9e8b6dUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTIONSTATUS_2 != 0xe16e2dddUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTIONSTATUS_3 != 0x667a38d9UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTIONSTATUS_4 != 0xfc418fe1UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTIONSTATUS_5 != 0xd4727953UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTIONSTATUS_6 != 0x4bc7dbdaUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTIONSTATUS_7 != 0x5ea43ca0UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTIONSTATUS 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTIONSTATUS_0 0xe2d98254UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTIONSTATUS_1 0x9f9e8b6dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTIONSTATUS_2 0xe16e2dddUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTIONSTATUS_3 0x667a38d9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTIONSTATUS_4 0xfc418fe1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTIONSTATUS_5 0xd4727953UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTIONSTATUS_6 0x4bc7dbdaUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTIONSTATUS_7 0x5ea43ca0UL

/** Complete ROS2 aimdk_msgs/msg/McActionStatus value; no field projects away native data. */
typedef struct roswasmc_bounded_2_aimdk_msgs_msg_McActionStatus
{
    /** Declared field value; canonical capacity is part of CODEC_IDENTITY. */
    int32_t value;
} roswasmc_bounded_2_aimdk_msgs_msg_McActionStatus;

# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTIONSTATUS_MAX_WIRE_BYTES 4u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTIONSTATUS_MIN_WIRE_BYTES 4u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTIONSTATUS_CODEC_IDENTITY "UWVMROS1_8c05e9540004b968b042b32ed0164af4857574186776f311be9b3ecde209ad48"
/** Original scalar constant IDLE=0; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTIONSTATUS_IDLE INT32_C(0)
/** Original scalar constant RUNNING=100; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTIONSTATUS_RUNNING INT32_C(100)
/** Original scalar constant TRANSITION=200; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTIONSTATUS_TRANSITION INT32_C(200)

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_aimdk_msgs_msg_McActionStatus_valid(roswasmc_bounded_2_aimdk_msgs_msg_McActionStatus const* value)
{
    if(!value)
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_aimdk_msgs_msg_McActionStatus_wire_size(roswasmc_bounded_2_aimdk_msgs_msg_McActionStatus const* value)
{
    size_t n = 0;
    n += 4;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_aimdk_msgs_msg_McActionStatus_write_fields(roswasmc_bounded_2_aimdk_msgs_msg_McActionStatus const* value,
                                                                                 unsigned char* p,
                                                                                 size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->value, 4);
    *offset += 4;
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_aimdk_msgs_msg_McActionStatus_read_fields(unsigned char const* p,
                                                                               size_t n,
                                                                               size_t* offset,
                                                                               roswasmc_bounded_2_aimdk_msgs_msg_McActionStatus* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->value, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_2_aimdk_msgs_msg_McActionStatus_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_aimdk_msgs_msg_McActionStatus_encode(roswasmc_bounded_2_aimdk_msgs_msg_McActionStatus const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_aimdk_msgs_msg_McActionStatus_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_aimdk_msgs_msg_McActionStatus_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_aimdk_msgs_msg_McActionStatus_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_aimdk_msgs_msg_McActionStatus_decode(void const* input, size_t length, roswasmc_bounded_2_aimdk_msgs_msg_McActionStatus* value)
{
    roswasmc_bounded_2_aimdk_msgs_msg_McActionStatus next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 4u || length > 4u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_McActionStatus_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTIONINFO)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTIONINFO_0 != 0xac647eecUL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTIONINFO_1 != 0x8fa60777UL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTIONINFO_2 != 0x0eb6a9c9UL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTIONINFO_3 != 0x600df45cUL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTIONINFO_4 != 0x11db6e6dUL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTIONINFO_5 != 0xa84693a3UL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTIONINFO_6 != 0x1b1b780fUL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTIONINFO_7 != 0x97170d0cUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTIONINFO 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTIONINFO_0 0xac647eecUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTIONINFO_1 0x8fa60777UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTIONINFO_2 0x0eb6a9c9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTIONINFO_3 0x600df45cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTIONINFO_4 0x11db6e6dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTIONINFO_5 0xa84693a3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTIONINFO_6 0x1b1b780fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTIONINFO_7 0x97170d0cUL

/** UTF-8 byte storage for aimdk_msgs/msg/McActionInfo.action_desc; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_aimdk_msgs_msg_McActionInfo_action_desc_text;

/** Complete ROS2 aimdk_msgs/msg/McActionInfo value; no field projects away native data. */
typedef struct roswasmc_bounded_2_aimdk_msgs_msg_McActionInfo
{
    /** Declared field current_action; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_McAction current_action;
    /** Declared field action_desc; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_McActionInfo_action_desc_text action_desc;
    /** Declared field status; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_McActionStatus status;
} roswasmc_bounded_2_aimdk_msgs_msg_McActionInfo;

# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTIONINFO_MAX_WIRE_BYTES 140u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTIONINFO_MIN_WIRE_BYTES 12u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCACTIONINFO_CODEC_IDENTITY "UWVMROS1_9c3c209060709befea26f340e6a607f4c6ddb00c638d1dedf5dd0cfa23f2e5e9"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_aimdk_msgs_msg_McActionInfo_valid(roswasmc_bounded_2_aimdk_msgs_msg_McActionInfo const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_McAction_valid(&value->current_action))
        return 0;
    if(value->action_desc.size > 128u || !uwvm_bounded_utf8(value->action_desc.data, value->action_desc.size))
        return 0;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_McActionStatus_valid(&value->status))
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_aimdk_msgs_msg_McActionInfo_wire_size(roswasmc_bounded_2_aimdk_msgs_msg_McActionInfo const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_aimdk_msgs_msg_McAction_wire_size(&value->current_action);
    n += 4 + value->action_desc.size;
    n += roswasmc_bounded_2_aimdk_msgs_msg_McActionStatus_wire_size(&value->status);
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_aimdk_msgs_msg_McActionInfo_write_fields(roswasmc_bounded_2_aimdk_msgs_msg_McActionInfo const* value, unsigned char* p, size_t* offset)
{
    roswasmc_bounded_2_aimdk_msgs_msg_McAction_write_fields(&value->current_action, p, offset);
    uwvm_bounded_put(p + *offset, value->action_desc.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->action_desc.data, value->action_desc.size);
    *offset += value->action_desc.size;
    roswasmc_bounded_2_aimdk_msgs_msg_McActionStatus_write_fields(&value->status, p, offset);
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_aimdk_msgs_msg_McActionInfo_read_fields(unsigned char const* p,
                                                                             size_t n,
                                                                             size_t* offset,
                                                                             roswasmc_bounded_2_aimdk_msgs_msg_McActionInfo* value)
{
    if(!roswasmc_bounded_2_aimdk_msgs_msg_McAction_read_fields(p, n, offset, &value->current_action))
        return 0;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->action_desc.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->action_desc.size > 128u || value->action_desc.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->action_desc.data, p + *offset, value->action_desc.size);
    *offset += value->action_desc.size;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_McActionStatus_read_fields(p, n, offset, &value->status))
        return 0;
    return roswasmc_bounded_2_aimdk_msgs_msg_McActionInfo_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_aimdk_msgs_msg_McActionInfo_encode(roswasmc_bounded_2_aimdk_msgs_msg_McActionInfo const* value,
                                                                             void* output,
                                                                             size_t capacity,
                                                                             size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_aimdk_msgs_msg_McActionInfo_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_aimdk_msgs_msg_McActionInfo_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_aimdk_msgs_msg_McActionInfo_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_aimdk_msgs_msg_McActionInfo_decode(void const* input, size_t length, roswasmc_bounded_2_aimdk_msgs_msg_McActionInfo* value)
{
    roswasmc_bounded_2_aimdk_msgs_msg_McActionInfo next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 12u || length > 140u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_McActionInfo_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCCONTROLAREA)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCCONTROLAREA_0 != 0x3b19e0b1UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCCONTROLAREA_1 != 0xe636c94eUL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCCONTROLAREA_2 != 0x2dacba9dUL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCCONTROLAREA_3 != 0x2f51b7bdUL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCCONTROLAREA_4 != 0x340dedf5UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCCONTROLAREA_5 != 0x5364d872UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCCONTROLAREA_6 != 0xb1842af7UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCCONTROLAREA_7 != 0x5937ced0UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCCONTROLAREA 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCCONTROLAREA_0 0x3b19e0b1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCCONTROLAREA_1 0xe636c94eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCCONTROLAREA_2 0x2dacba9dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCCONTROLAREA_3 0x2f51b7bdUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCCONTROLAREA_4 0x340dedf5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCCONTROLAREA_5 0x5364d872UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCCONTROLAREA_6 0xb1842af7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCCONTROLAREA_7 0x5937ced0UL

/** Complete ROS2 aimdk_msgs/msg/McControlArea value; no field projects away native data. */
typedef struct roswasmc_bounded_2_aimdk_msgs_msg_McControlArea
{
    /** Declared field value; canonical capacity is part of CODEC_IDENTITY. */
    int32_t value;
} roswasmc_bounded_2_aimdk_msgs_msg_McControlArea;

# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCCONTROLAREA_MAX_WIRE_BYTES 4u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCCONTROLAREA_MIN_WIRE_BYTES 4u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCCONTROLAREA_CODEC_IDENTITY "UWVMROS1_ca241b8a191674136f0eeb0deee84b5e284de71f384038c9a5d6083eb4fc75c9"
/** Original scalar constant NONE=0; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCCONTROLAREA_NONE INT32_C(0)
/** Original scalar constant LEFT_HAND=1; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCCONTROLAREA_LEFT_HAND INT32_C(1)
/** Original scalar constant RIGHT_HAND=2; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCCONTROLAREA_RIGHT_HAND INT32_C(2)
/** Original scalar constant HEAD=4; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCCONTROLAREA_HEAD INT32_C(4)
/** Original scalar constant WAIST=8; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCCONTROLAREA_WAIST INT32_C(8)

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_aimdk_msgs_msg_McControlArea_valid(roswasmc_bounded_2_aimdk_msgs_msg_McControlArea const* value)
{
    if(!value)
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_aimdk_msgs_msg_McControlArea_wire_size(roswasmc_bounded_2_aimdk_msgs_msg_McControlArea const* value)
{
    size_t n = 0;
    n += 4;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_aimdk_msgs_msg_McControlArea_write_fields(roswasmc_bounded_2_aimdk_msgs_msg_McControlArea const* value, unsigned char* p, size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->value, 4);
    *offset += 4;
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_aimdk_msgs_msg_McControlArea_read_fields(unsigned char const* p,
                                                                              size_t n,
                                                                              size_t* offset,
                                                                              roswasmc_bounded_2_aimdk_msgs_msg_McControlArea* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->value, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_2_aimdk_msgs_msg_McControlArea_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_aimdk_msgs_msg_McControlArea_encode(roswasmc_bounded_2_aimdk_msgs_msg_McControlArea const* value,
                                                                              void* output,
                                                                              size_t capacity,
                                                                              size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_aimdk_msgs_msg_McControlArea_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_aimdk_msgs_msg_McControlArea_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_aimdk_msgs_msg_McControlArea_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_aimdk_msgs_msg_McControlArea_decode(void const* input, size_t length, roswasmc_bounded_2_aimdk_msgs_msg_McControlArea* value)
{
    roswasmc_bounded_2_aimdk_msgs_msg_McControlArea next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 4u || length > 4u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_McControlArea_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCINPUTACTION)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCINPUTACTION_0 != 0x659c1c3fUL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCINPUTACTION_1 != 0x09953dc6UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCINPUTACTION_2 != 0xf0b56535UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCINPUTACTION_3 != 0x34ec3610UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCINPUTACTION_4 != 0xcc100098UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCINPUTACTION_5 != 0xedb75032UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCINPUTACTION_6 != 0x84e25147UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCINPUTACTION_7 != 0xd412b630UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCINPUTACTION 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCINPUTACTION_0 0x659c1c3fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCINPUTACTION_1 0x09953dc6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCINPUTACTION_2 0xf0b56535UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCINPUTACTION_3 0x34ec3610UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCINPUTACTION_4 0xcc100098UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCINPUTACTION_5 0xedb75032UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCINPUTACTION_6 0x84e25147UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCINPUTACTION_7 0xd412b630UL

/** Complete ROS2 aimdk_msgs/msg/McInputAction value; no field projects away native data. */
typedef struct roswasmc_bounded_2_aimdk_msgs_msg_McInputAction
{
    /** Declared field value; canonical capacity is part of CODEC_IDENTITY. */
    int32_t value;
} roswasmc_bounded_2_aimdk_msgs_msg_McInputAction;

# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCINPUTACTION_MAX_WIRE_BYTES 4u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCINPUTACTION_MIN_WIRE_BYTES 4u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCINPUTACTION_CODEC_IDENTITY "UWVMROS1_7016737845145fd03a104665957b475c512400775b93981573a40d0da30e15d9"
/** Original scalar constant INPUTACTION_ADD=1001; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCINPUTACTION_INPUTACTION_ADD INT32_C(1001)
/** Original scalar constant INPUTACTION_MODIFY=1002; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCINPUTACTION_INPUTACTION_MODIFY INT32_C(1002)
/** Original scalar constant INPUTACTION_DELETE=1003; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCINPUTACTION_INPUTACTION_DELETE INT32_C(1003)
/** Original scalar constant INPUTACTION_ENABLE=2001; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCINPUTACTION_INPUTACTION_ENABLE INT32_C(2001)
/** Original scalar constant INPUTACTION_DISABLE=2002; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCINPUTACTION_INPUTACTION_DISABLE INT32_C(2002)

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_aimdk_msgs_msg_McInputAction_valid(roswasmc_bounded_2_aimdk_msgs_msg_McInputAction const* value)
{
    if(!value)
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_aimdk_msgs_msg_McInputAction_wire_size(roswasmc_bounded_2_aimdk_msgs_msg_McInputAction const* value)
{
    size_t n = 0;
    n += 4;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_aimdk_msgs_msg_McInputAction_write_fields(roswasmc_bounded_2_aimdk_msgs_msg_McInputAction const* value, unsigned char* p, size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->value, 4);
    *offset += 4;
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_aimdk_msgs_msg_McInputAction_read_fields(unsigned char const* p,
                                                                              size_t n,
                                                                              size_t* offset,
                                                                              roswasmc_bounded_2_aimdk_msgs_msg_McInputAction* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->value, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_2_aimdk_msgs_msg_McInputAction_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_aimdk_msgs_msg_McInputAction_encode(roswasmc_bounded_2_aimdk_msgs_msg_McInputAction const* value,
                                                                              void* output,
                                                                              size_t capacity,
                                                                              size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_aimdk_msgs_msg_McInputAction_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_aimdk_msgs_msg_McInputAction_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_aimdk_msgs_msg_McInputAction_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_aimdk_msgs_msg_McInputAction_decode(void const* input, size_t length, roswasmc_bounded_2_aimdk_msgs_msg_McInputAction* value)
{
    roswasmc_bounded_2_aimdk_msgs_msg_McInputAction next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 4u || length > 4u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_McInputAction_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCINPUTSOURCE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCINPUTSOURCE_0 != 0xe7b58469UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCINPUTSOURCE_1 != 0xa7904850UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCINPUTSOURCE_2 != 0x2c4d8ba3UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCINPUTSOURCE_3 != 0xb9c65819UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCINPUTSOURCE_4 != 0x17a51d82UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCINPUTSOURCE_5 != 0xfae710a7UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCINPUTSOURCE_6 != 0xb0d7ded8UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCINPUTSOURCE_7 != 0xf01aad6fUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCINPUTSOURCE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCINPUTSOURCE_0 0xe7b58469UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCINPUTSOURCE_1 0xa7904850UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCINPUTSOURCE_2 0x2c4d8ba3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCINPUTSOURCE_3 0xb9c65819UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCINPUTSOURCE_4 0x17a51d82UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCINPUTSOURCE_5 0xfae710a7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCINPUTSOURCE_6 0xb0d7ded8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCINPUTSOURCE_7 0xf01aad6fUL

/** UTF-8 byte storage for aimdk_msgs/msg/McInputSource.name; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_aimdk_msgs_msg_McInputSource_name_text;

/** Complete ROS2 aimdk_msgs/msg/McInputSource value; no field projects away native data. */
typedef struct roswasmc_bounded_2_aimdk_msgs_msg_McInputSource
{
    /** Declared field name; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_McInputSource_name_text name;
    /** Declared field priority; canonical capacity is part of CODEC_IDENTITY. */
    int32_t priority;
    /** Declared field timeout; canonical capacity is part of CODEC_IDENTITY. */
    int32_t timeout;
} roswasmc_bounded_2_aimdk_msgs_msg_McInputSource;

# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCINPUTSOURCE_MAX_WIRE_BYTES 140u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCINPUTSOURCE_MIN_WIRE_BYTES 12u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCINPUTSOURCE_CODEC_IDENTITY "UWVMROS1_4909fe165c71d1104207b393ba76d55347aa02836ebac251f6b57259ced1d1dd"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_aimdk_msgs_msg_McInputSource_valid(roswasmc_bounded_2_aimdk_msgs_msg_McInputSource const* value)
{
    if(!value)
        return 0;
    if(value->name.size > 128u || !uwvm_bounded_utf8(value->name.data, value->name.size))
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_aimdk_msgs_msg_McInputSource_wire_size(roswasmc_bounded_2_aimdk_msgs_msg_McInputSource const* value)
{
    size_t n = 0;
    n += 4 + value->name.size;
    n += 4;
    n += 4;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_aimdk_msgs_msg_McInputSource_write_fields(roswasmc_bounded_2_aimdk_msgs_msg_McInputSource const* value, unsigned char* p, size_t* offset)
{
    uwvm_bounded_put(p + *offset, value->name.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->name.data, value->name.size);
    *offset += value->name.size;
    uwvm_bounded_put(p + *offset, (uint64_t)value->priority, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, (uint64_t)value->timeout, 4);
    *offset += 4;
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_aimdk_msgs_msg_McInputSource_read_fields(unsigned char const* p,
                                                                              size_t n,
                                                                              size_t* offset,
                                                                              roswasmc_bounded_2_aimdk_msgs_msg_McInputSource* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    value->name.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->name.size > 128u || value->name.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->name.data, p + *offset, value->name.size);
    *offset += value->name.size;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->priority, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->timeout, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_2_aimdk_msgs_msg_McInputSource_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_aimdk_msgs_msg_McInputSource_encode(roswasmc_bounded_2_aimdk_msgs_msg_McInputSource const* value,
                                                                              void* output,
                                                                              size_t capacity,
                                                                              size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_aimdk_msgs_msg_McInputSource_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_aimdk_msgs_msg_McInputSource_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_aimdk_msgs_msg_McInputSource_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_aimdk_msgs_msg_McInputSource_decode(void const* input, size_t length, roswasmc_bounded_2_aimdk_msgs_msg_McInputSource* value)
{
    roswasmc_bounded_2_aimdk_msgs_msg_McInputSource next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 12u || length > 140u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_McInputSource_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCLOCOMOTIONVELOCITY)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCLOCOMOTIONVELOCITY_0 != 0x3308c0bdUL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCLOCOMOTIONVELOCITY_1 != 0xda09e3b6UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCLOCOMOTIONVELOCITY_2 != 0x09fbeb4dUL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCLOCOMOTIONVELOCITY_3 != 0x134d2233UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCLOCOMOTIONVELOCITY_4 != 0x7230c7c0UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCLOCOMOTIONVELOCITY_5 != 0x4ccb700fUL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCLOCOMOTIONVELOCITY_6 != 0x4646c879UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCLOCOMOTIONVELOCITY_7 != 0x7804097dUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCLOCOMOTIONVELOCITY 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCLOCOMOTIONVELOCITY_0 0x3308c0bdUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCLOCOMOTIONVELOCITY_1 0xda09e3b6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCLOCOMOTIONVELOCITY_2 0x09fbeb4dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCLOCOMOTIONVELOCITY_3 0x134d2233UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCLOCOMOTIONVELOCITY_4 0x7230c7c0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCLOCOMOTIONVELOCITY_5 0x4ccb700fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCLOCOMOTIONVELOCITY_6 0x4646c879UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCLOCOMOTIONVELOCITY_7 0x7804097dUL

/** UTF-8 byte storage for aimdk_msgs/msg/McLocomotionVelocity.source; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_aimdk_msgs_msg_McLocomotionVelocity_source_text;

/** Complete ROS2 aimdk_msgs/msg/McLocomotionVelocity value; no field projects away native data. */
typedef struct roswasmc_bounded_2_aimdk_msgs_msg_McLocomotionVelocity
{
    /** Declared field header; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_MessageHeader header;
    /** Declared field source; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_McLocomotionVelocity_source_text source;
    /** Declared field forward_velocity; canonical capacity is part of CODEC_IDENTITY. */
    double forward_velocity;
    /** Declared field lateral_velocity; canonical capacity is part of CODEC_IDENTITY. */
    double lateral_velocity;
    /** Declared field angular_velocity; canonical capacity is part of CODEC_IDENTITY. */
    double angular_velocity;
} roswasmc_bounded_2_aimdk_msgs_msg_McLocomotionVelocity;

# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCLOCOMOTIONVELOCITY_MAX_WIRE_BYTES 308u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCLOCOMOTIONVELOCITY_MIN_WIRE_BYTES 52u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCLOCOMOTIONVELOCITY_CODEC_IDENTITY "UWVMROS1_a3c45cd56bc3098af00eefba2b2fc5c34c6439228d3429ab077d80b60ef8ca00"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_aimdk_msgs_msg_McLocomotionVelocity_valid(roswasmc_bounded_2_aimdk_msgs_msg_McLocomotionVelocity const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_MessageHeader_valid(&value->header))
        return 0;
    if(value->source.size > 128u || !uwvm_bounded_utf8(value->source.data, value->source.size))
        return 0;
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->forward_velocity, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
            return 0;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->lateral_velocity, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
            return 0;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->angular_velocity, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
            return 0;
    }
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_aimdk_msgs_msg_McLocomotionVelocity_wire_size(roswasmc_bounded_2_aimdk_msgs_msg_McLocomotionVelocity const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_aimdk_msgs_msg_MessageHeader_wire_size(&value->header);
    n += 4 + value->source.size;
    n += 8;
    n += 8;
    n += 8;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_aimdk_msgs_msg_McLocomotionVelocity_write_fields(roswasmc_bounded_2_aimdk_msgs_msg_McLocomotionVelocity const* value,
                                                                                       unsigned char* p,
                                                                                       size_t* offset)
{
    roswasmc_bounded_2_aimdk_msgs_msg_MessageHeader_write_fields(&value->header, p, offset);
    uwvm_bounded_put(p + *offset, value->source.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->source.data, value->source.size);
    *offset += value->source.size;
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->forward_velocity, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->lateral_velocity, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->angular_velocity, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_aimdk_msgs_msg_McLocomotionVelocity_read_fields(unsigned char const* p,
                                                                                     size_t n,
                                                                                     size_t* offset,
                                                                                     roswasmc_bounded_2_aimdk_msgs_msg_McLocomotionVelocity* value)
{
    if(!roswasmc_bounded_2_aimdk_msgs_msg_MessageHeader_read_fields(p, n, offset, &value->header))
        return 0;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->source.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->source.size > 128u || value->source.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->source.data, p + *offset, value->source.size);
    *offset += value->source.size;
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->forward_velocity, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->lateral_velocity, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->angular_velocity, &bits, 8);
    }
    *offset += 8;
    return roswasmc_bounded_2_aimdk_msgs_msg_McLocomotionVelocity_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_aimdk_msgs_msg_McLocomotionVelocity_encode(roswasmc_bounded_2_aimdk_msgs_msg_McLocomotionVelocity const* value,
                                                                                     void* output,
                                                                                     size_t capacity,
                                                                                     size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_aimdk_msgs_msg_McLocomotionVelocity_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_aimdk_msgs_msg_McLocomotionVelocity_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_aimdk_msgs_msg_McLocomotionVelocity_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_2_aimdk_msgs_msg_McLocomotionVelocity_decode(void const* input,
                                                                                     size_t length,
                                                                                     roswasmc_bounded_2_aimdk_msgs_msg_McLocomotionVelocity* value)
{
    roswasmc_bounded_2_aimdk_msgs_msg_McLocomotionVelocity next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 52u || length > 308u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_McLocomotionVelocity_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCPRESETMOTION)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCPRESETMOTION_0 != 0x4b9e4122UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCPRESETMOTION_1 != 0xa0b75d3cUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCPRESETMOTION_2 != 0xb6eecdb4UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCPRESETMOTION_3 != 0xccc8e1f7UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCPRESETMOTION_4 != 0x4c946d9eUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCPRESETMOTION_5 != 0x8d14c27cUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCPRESETMOTION_6 != 0xd5d84ffbUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCPRESETMOTION_7 != 0xa474af27UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCPRESETMOTION 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCPRESETMOTION_0 0x4b9e4122UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCPRESETMOTION_1 0xa0b75d3cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCPRESETMOTION_2 0xb6eecdb4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCPRESETMOTION_3 0xccc8e1f7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCPRESETMOTION_4 0x4c946d9eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCPRESETMOTION_5 0x8d14c27cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCPRESETMOTION_6 0xd5d84ffbUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCPRESETMOTION_7 0xa474af27UL

/** Complete ROS2 aimdk_msgs/msg/McPresetMotion value; no field projects away native data. */
typedef struct roswasmc_bounded_2_aimdk_msgs_msg_McPresetMotion
{
    /** Declared field value; canonical capacity is part of CODEC_IDENTITY. */
    int32_t value;
} roswasmc_bounded_2_aimdk_msgs_msg_McPresetMotion;

# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCPRESETMOTION_MAX_WIRE_BYTES 4u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCPRESETMOTION_MIN_WIRE_BYTES 4u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCPRESETMOTION_CODEC_IDENTITY "UWVMROS1_7421ee5b50a30799907e6f521dd97874158a945019f09cecf168a8f3130c9153"
/** Original scalar constant RAISE_HAND=1001; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCPRESETMOTION_RAISE_HAND INT32_C(1001)
/** Original scalar constant WAVE_HAND=1002; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCPRESETMOTION_WAVE_HAND INT32_C(1002)
/** Original scalar constant SHAKE_HAND=1003; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCPRESETMOTION_SHAKE_HAND INT32_C(1003)
/** Original scalar constant FLYING_KISS_HAND=1004; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCPRESETMOTION_FLYING_KISS_HAND INT32_C(1004)
/** Original scalar constant CLAP_HAND=1008; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCPRESETMOTION_CLAP_HAND INT32_C(1008)
/** Original scalar constant TURN_WAVE_HAND=2001; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCPRESETMOTION_TURN_WAVE_HAND INT32_C(2001)
/** Original scalar constant INTERACTION_BOW=3001; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCPRESETMOTION_INTERACTION_BOW INT32_C(3001)
/** Original scalar constant INTERACTION_LIKE=3002; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCPRESETMOTION_INTERACTION_LIKE INT32_C(3002)
/** Original scalar constant INTERACTION_YE=3003; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCPRESETMOTION_INTERACTION_YE INT32_C(3003)
/** Original scalar constant INTERACTION_SWEATHEART=3004; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCPRESETMOTION_INTERACTION_SWEATHEART INT32_C(3004)
/** Original scalar constant SALUTE=1013; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCPRESETMOTION_SALUTE INT32_C(1013)
/** Original scalar constant INTERACTION_SAD=3006; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCPRESETMOTION_INTERACTION_SAD INT32_C(3006)
/** Original scalar constant INTERACTION_LIGHTWAVE=3007; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCPRESETMOTION_INTERACTION_LIGHTWAVE INT32_C(3007)
/** Original scalar constant INTERACTION_HUG=3008; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCPRESETMOTION_INTERACTION_HUG INT32_C(3008)
/** Original scalar constant INTERACTION_HANDX=3009; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCPRESETMOTION_INTERACTION_HANDX INT32_C(3009)
/** Original scalar constant INTERACTION_CHESTWAVE=3010; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCPRESETMOTION_INTERACTION_CHESTWAVE INT32_C(3010)
/** Original scalar constant INTERACTION_CHEER=3011; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCPRESETMOTION_INTERACTION_CHEER INT32_C(3011)
/** Original scalar constant INTERACTION_BLOWKISS=3012; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCPRESETMOTION_INTERACTION_BLOWKISS INT32_C(3012)
/** Original scalar constant INTERACTION_BASSDANCE1=3013; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCPRESETMOTION_INTERACTION_BASSDANCE1 INT32_C(3013)
/** Original scalar constant INTERACTION_BASSDANCE2=3014; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCPRESETMOTION_INTERACTION_BASSDANCE2 INT32_C(3014)
/** Original scalar constant HITCLAP=3015; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCPRESETMOTION_HITCLAP INT32_C(3015)
/** Original scalar constant INTERACTION_SPEAK=3016; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCPRESETMOTION_INTERACTION_SPEAK INT32_C(3016)
/** Original scalar constant CLIPFIST=1009; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCPRESETMOTION_CLIPFIST INT32_C(1009)
/** Original scalar constant INTERACTION_PHOTOPOSTURE=3018; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCPRESETMOTION_INTERACTION_PHOTOPOSTURE INT32_C(3018)
/** Original scalar constant INTERACTION_PHOTOTRIPPLEPOSTURE=3019; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCPRESETMOTION_INTERACTION_PHOTOTRIPPLEPOSTURE INT32_C(3019)
/** Original scalar constant POINT_HEAD=4001; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCPRESETMOTION_POINT_HEAD INT32_C(4001)
/** Original scalar constant SHAKE_HEAD=4002; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MCPRESETMOTION_SHAKE_HEAD INT32_C(4002)

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_aimdk_msgs_msg_McPresetMotion_valid(roswasmc_bounded_2_aimdk_msgs_msg_McPresetMotion const* value)
{
    if(!value)
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_aimdk_msgs_msg_McPresetMotion_wire_size(roswasmc_bounded_2_aimdk_msgs_msg_McPresetMotion const* value)
{
    size_t n = 0;
    n += 4;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_aimdk_msgs_msg_McPresetMotion_write_fields(roswasmc_bounded_2_aimdk_msgs_msg_McPresetMotion const* value,
                                                                                 unsigned char* p,
                                                                                 size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->value, 4);
    *offset += 4;
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_aimdk_msgs_msg_McPresetMotion_read_fields(unsigned char const* p,
                                                                               size_t n,
                                                                               size_t* offset,
                                                                               roswasmc_bounded_2_aimdk_msgs_msg_McPresetMotion* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->value, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_2_aimdk_msgs_msg_McPresetMotion_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_aimdk_msgs_msg_McPresetMotion_encode(roswasmc_bounded_2_aimdk_msgs_msg_McPresetMotion const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_aimdk_msgs_msg_McPresetMotion_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_aimdk_msgs_msg_McPresetMotion_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_aimdk_msgs_msg_McPresetMotion_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_aimdk_msgs_msg_McPresetMotion_decode(void const* input, size_t length, roswasmc_bounded_2_aimdk_msgs_msg_McPresetMotion* value)
{
    roswasmc_bounded_2_aimdk_msgs_msg_McPresetMotion next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 4u || length > 4u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_McPresetMotion_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_TTSPRIORITYLEVEL)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_TTSPRIORITYLEVEL_0 != 0x3adaa475UL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_TTSPRIORITYLEVEL_1 != 0xe3f86666UL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_TTSPRIORITYLEVEL_2 != 0xf77ca8f7UL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_TTSPRIORITYLEVEL_3 != 0xb7f594f6UL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_TTSPRIORITYLEVEL_4 != 0x58434fffUL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_TTSPRIORITYLEVEL_5 != 0xa455ecc2UL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_TTSPRIORITYLEVEL_6 != 0x4024f1c6UL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_TTSPRIORITYLEVEL_7 != 0x6f19c578UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_TTSPRIORITYLEVEL 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_TTSPRIORITYLEVEL_0 0x3adaa475UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_TTSPRIORITYLEVEL_1 0xe3f86666UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_TTSPRIORITYLEVEL_2 0xf77ca8f7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_TTSPRIORITYLEVEL_3 0xb7f594f6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_TTSPRIORITYLEVEL_4 0x58434fffUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_TTSPRIORITYLEVEL_5 0xa455ecc2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_TTSPRIORITYLEVEL_6 0x4024f1c6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_TTSPRIORITYLEVEL_7 0x6f19c578UL

/** Complete ROS2 aimdk_msgs/msg/TtsPriorityLevel value; no field projects away native data. */
typedef struct roswasmc_bounded_2_aimdk_msgs_msg_TtsPriorityLevel
{
    /** Declared field value; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t value;
} roswasmc_bounded_2_aimdk_msgs_msg_TtsPriorityLevel;

# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_TTSPRIORITYLEVEL_MAX_WIRE_BYTES 1u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_TTSPRIORITYLEVEL_MIN_WIRE_BYTES 1u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_TTSPRIORITYLEVEL_CODEC_IDENTITY "UWVMROS1_38bce7b033528697c6667c348c66d327a0d63f176b519189d3720279591cd90a"
/** Original scalar constant UNKNOWN=0x00; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_TTSPRIORITYLEVEL_UNKNOWN UINT32_C(0)
/** Original scalar constant BACKGROUND_L1=0x01; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_TTSPRIORITYLEVEL_BACKGROUND_L1 UINT32_C(1)
/** Original scalar constant SERVICE_L2=0x02; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_TTSPRIORITYLEVEL_SERVICE_L2 UINT32_C(2)
/** Original scalar constant MISSION_L4=0x04; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_TTSPRIORITYLEVEL_MISSION_L4 UINT32_C(4)
/** Original scalar constant INTERACTION_L6=0x06; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_TTSPRIORITYLEVEL_INTERACTION_L6 UINT32_C(6)
/** Original scalar constant WARNING_L8=0x08; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_TTSPRIORITYLEVEL_WARNING_L8 UINT32_C(8)
/** Original scalar constant SAFETY_L10=0x0a; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_TTSPRIORITYLEVEL_SAFETY_L10 UINT32_C(10)

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_aimdk_msgs_msg_TtsPriorityLevel_valid(roswasmc_bounded_2_aimdk_msgs_msg_TtsPriorityLevel const* value)
{
    if(!value)
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_aimdk_msgs_msg_TtsPriorityLevel_wire_size(roswasmc_bounded_2_aimdk_msgs_msg_TtsPriorityLevel const* value)
{
    size_t n = 0;
    n += 1;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_aimdk_msgs_msg_TtsPriorityLevel_write_fields(roswasmc_bounded_2_aimdk_msgs_msg_TtsPriorityLevel const* value,
                                                                                   unsigned char* p,
                                                                                   size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->value, 1);
    *offset += 1;
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_aimdk_msgs_msg_TtsPriorityLevel_read_fields(unsigned char const* p,
                                                                                 size_t n,
                                                                                 size_t* offset,
                                                                                 roswasmc_bounded_2_aimdk_msgs_msg_TtsPriorityLevel* value)
{
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->value, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_2_aimdk_msgs_msg_TtsPriorityLevel_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_aimdk_msgs_msg_TtsPriorityLevel_encode(roswasmc_bounded_2_aimdk_msgs_msg_TtsPriorityLevel const* value,
                                                                                 void* output,
                                                                                 size_t capacity,
                                                                                 size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_aimdk_msgs_msg_TtsPriorityLevel_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_aimdk_msgs_msg_TtsPriorityLevel_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_aimdk_msgs_msg_TtsPriorityLevel_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_aimdk_msgs_msg_TtsPriorityLevel_decode(void const* input, size_t length, roswasmc_bounded_2_aimdk_msgs_msg_TtsPriorityLevel* value)
{
    roswasmc_bounded_2_aimdk_msgs_msg_TtsPriorityLevel next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 1u || length > 1u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_TtsPriorityLevel_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PLAYMEDIAFILEREQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PLAYMEDIAFILEREQUEST_0 != 0x41b6cc77UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PLAYMEDIAFILEREQUEST_1 != 0x108add86UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PLAYMEDIAFILEREQUEST_2 != 0x4bab5877UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PLAYMEDIAFILEREQUEST_3 != 0xa15babbdUL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PLAYMEDIAFILEREQUEST_4 != 0x6f2fbe64UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PLAYMEDIAFILEREQUEST_5 != 0xfc40d922UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PLAYMEDIAFILEREQUEST_6 != 0x4047bf49UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PLAYMEDIAFILEREQUEST_7 != 0xc64c1b9bUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PLAYMEDIAFILEREQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PLAYMEDIAFILEREQUEST_0 0x41b6cc77UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PLAYMEDIAFILEREQUEST_1 0x108add86UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PLAYMEDIAFILEREQUEST_2 0x4bab5877UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PLAYMEDIAFILEREQUEST_3 0xa15babbdUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PLAYMEDIAFILEREQUEST_4 0x6f2fbe64UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PLAYMEDIAFILEREQUEST_5 0xfc40d922UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PLAYMEDIAFILEREQUEST_6 0x4047bf49UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PLAYMEDIAFILEREQUEST_7 0xc64c1b9bUL

/** UTF-8 byte storage for aimdk_msgs/msg/PlayMediaFileRequest.file_name; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_aimdk_msgs_msg_PlayMediaFileRequest_file_name_text;

/** UTF-8 byte storage for aimdk_msgs/msg/PlayMediaFileRequest.domain; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_aimdk_msgs_msg_PlayMediaFileRequest_domain_text;

/** UTF-8 byte storage for aimdk_msgs/msg/PlayMediaFileRequest.trace_id; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_aimdk_msgs_msg_PlayMediaFileRequest_trace_id_text;

/** Complete ROS2 aimdk_msgs/msg/PlayMediaFileRequest value; no field projects away native data. */
typedef struct roswasmc_bounded_2_aimdk_msgs_msg_PlayMediaFileRequest
{
    /** Declared field file_name; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_PlayMediaFileRequest_file_name_text file_name;
    /** Declared field sample_rate; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t sample_rate;
    /** Declared field priority_level; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_TtsPriorityLevel priority_level;
    /** Declared field priority_weight; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t priority_weight;
    /** Declared field domain; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_PlayMediaFileRequest_domain_text domain;
    /** Declared field trace_id; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_PlayMediaFileRequest_trace_id_text trace_id;
    /** Declared field is_interrupted; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t is_interrupted;
} roswasmc_bounded_2_aimdk_msgs_msg_PlayMediaFileRequest;

# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PLAYMEDIAFILEREQUEST_MAX_WIRE_BYTES 406u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PLAYMEDIAFILEREQUEST_MIN_WIRE_BYTES 22u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PLAYMEDIAFILEREQUEST_CODEC_IDENTITY "UWVMROS1_de5d1ad3e7b16b0aaac78736982e24c1a1f3366952cb1b08f59a86bfaf70d254"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_aimdk_msgs_msg_PlayMediaFileRequest_valid(roswasmc_bounded_2_aimdk_msgs_msg_PlayMediaFileRequest const* value)
{
    if(!value)
        return 0;
    if(value->file_name.size > 128u || !uwvm_bounded_utf8(value->file_name.data, value->file_name.size))
        return 0;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_TtsPriorityLevel_valid(&value->priority_level))
        return 0;
    if(value->domain.size > 128u || !uwvm_bounded_utf8(value->domain.data, value->domain.size))
        return 0;
    if(value->trace_id.size > 128u || !uwvm_bounded_utf8(value->trace_id.data, value->trace_id.size))
        return 0;
    if(value->is_interrupted > 1)
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_aimdk_msgs_msg_PlayMediaFileRequest_wire_size(roswasmc_bounded_2_aimdk_msgs_msg_PlayMediaFileRequest const* value)
{
    size_t n = 0;
    n += 4 + value->file_name.size;
    n += 4;
    n += roswasmc_bounded_2_aimdk_msgs_msg_TtsPriorityLevel_wire_size(&value->priority_level);
    n += 4;
    n += 4 + value->domain.size;
    n += 4 + value->trace_id.size;
    n += 1;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_aimdk_msgs_msg_PlayMediaFileRequest_write_fields(roswasmc_bounded_2_aimdk_msgs_msg_PlayMediaFileRequest const* value,
                                                                                       unsigned char* p,
                                                                                       size_t* offset)
{
    uwvm_bounded_put(p + *offset, value->file_name.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->file_name.data, value->file_name.size);
    *offset += value->file_name.size;
    uwvm_bounded_put(p + *offset, (uint64_t)value->sample_rate, 4);
    *offset += 4;
    roswasmc_bounded_2_aimdk_msgs_msg_TtsPriorityLevel_write_fields(&value->priority_level, p, offset);
    uwvm_bounded_put(p + *offset, (uint64_t)value->priority_weight, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, value->domain.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->domain.data, value->domain.size);
    *offset += value->domain.size;
    uwvm_bounded_put(p + *offset, value->trace_id.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->trace_id.data, value->trace_id.size);
    *offset += value->trace_id.size;
    uwvm_bounded_put(p + *offset, (uint64_t)value->is_interrupted, 1);
    *offset += 1;
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_aimdk_msgs_msg_PlayMediaFileRequest_read_fields(unsigned char const* p,
                                                                                     size_t n,
                                                                                     size_t* offset,
                                                                                     roswasmc_bounded_2_aimdk_msgs_msg_PlayMediaFileRequest* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    value->file_name.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->file_name.size > 128u || value->file_name.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->file_name.data, p + *offset, value->file_name.size);
    *offset += value->file_name.size;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->sample_rate, &bits, 4);
    }
    *offset += 4;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_TtsPriorityLevel_read_fields(p, n, offset, &value->priority_level))
        return 0;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->priority_weight, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->domain.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->domain.size > 128u || value->domain.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->domain.data, p + *offset, value->domain.size);
    *offset += value->domain.size;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->trace_id.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->trace_id.size > 128u || value->trace_id.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->trace_id.data, p + *offset, value->trace_id.size);
    *offset += value->trace_id.size;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->is_interrupted, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_2_aimdk_msgs_msg_PlayMediaFileRequest_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_aimdk_msgs_msg_PlayMediaFileRequest_encode(roswasmc_bounded_2_aimdk_msgs_msg_PlayMediaFileRequest const* value,
                                                                                     void* output,
                                                                                     size_t capacity,
                                                                                     size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_aimdk_msgs_msg_PlayMediaFileRequest_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_aimdk_msgs_msg_PlayMediaFileRequest_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_aimdk_msgs_msg_PlayMediaFileRequest_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_2_aimdk_msgs_msg_PlayMediaFileRequest_decode(void const* input,
                                                                                     size_t length,
                                                                                     roswasmc_bounded_2_aimdk_msgs_msg_PlayMediaFileRequest* value)
{
    roswasmc_bounded_2_aimdk_msgs_msg_PlayMediaFileRequest next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 22u || length > 406u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_PlayMediaFileRequest_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PLAYTTSREQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PLAYTTSREQUEST_0 != 0xc31450dbUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PLAYTTSREQUEST_1 != 0x9c51f658UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PLAYTTSREQUEST_2 != 0x3a80f93bUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PLAYTTSREQUEST_3 != 0xd1cdb20dUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PLAYTTSREQUEST_4 != 0xa84d68f3UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PLAYTTSREQUEST_5 != 0xcce8dab7UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PLAYTTSREQUEST_6 != 0xc6648698UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PLAYTTSREQUEST_7 != 0x89d9f23aUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PLAYTTSREQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PLAYTTSREQUEST_0 0xc31450dbUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PLAYTTSREQUEST_1 0x9c51f658UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PLAYTTSREQUEST_2 0x3a80f93bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PLAYTTSREQUEST_3 0xd1cdb20dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PLAYTTSREQUEST_4 0xa84d68f3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PLAYTTSREQUEST_5 0xcce8dab7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PLAYTTSREQUEST_6 0xc6648698UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PLAYTTSREQUEST_7 0x89d9f23aUL

/** UTF-8 byte storage for aimdk_msgs/msg/PlayTtsRequest.text; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_aimdk_msgs_msg_PlayTtsRequest_text_text;

/** UTF-8 byte storage for aimdk_msgs/msg/PlayTtsRequest.domain; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_aimdk_msgs_msg_PlayTtsRequest_domain_text;

/** UTF-8 byte storage for aimdk_msgs/msg/PlayTtsRequest.trace_id; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_aimdk_msgs_msg_PlayTtsRequest_trace_id_text;

/** Complete ROS2 aimdk_msgs/msg/PlayTtsRequest value; no field projects away native data. */
typedef struct roswasmc_bounded_2_aimdk_msgs_msg_PlayTtsRequest
{
    /** Declared field text; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_PlayTtsRequest_text_text text;
    /** Declared field priority_level; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_TtsPriorityLevel priority_level;
    /** Declared field priority_weight; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t priority_weight;
    /** Declared field domain; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_PlayTtsRequest_domain_text domain;
    /** Declared field trace_id; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_PlayTtsRequest_trace_id_text trace_id;
    /** Declared field is_interrupted; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t is_interrupted;
} roswasmc_bounded_2_aimdk_msgs_msg_PlayTtsRequest;

# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PLAYTTSREQUEST_MAX_WIRE_BYTES 402u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PLAYTTSREQUEST_MIN_WIRE_BYTES 18u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PLAYTTSREQUEST_CODEC_IDENTITY "UWVMROS1_d6410f21a03f560429a39216f36ce03ad040323054f5775b75586b3890802bbd"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_aimdk_msgs_msg_PlayTtsRequest_valid(roswasmc_bounded_2_aimdk_msgs_msg_PlayTtsRequest const* value)
{
    if(!value)
        return 0;
    if(value->text.size > 128u || !uwvm_bounded_utf8(value->text.data, value->text.size))
        return 0;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_TtsPriorityLevel_valid(&value->priority_level))
        return 0;
    if(value->domain.size > 128u || !uwvm_bounded_utf8(value->domain.data, value->domain.size))
        return 0;
    if(value->trace_id.size > 128u || !uwvm_bounded_utf8(value->trace_id.data, value->trace_id.size))
        return 0;
    if(value->is_interrupted > 1)
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_aimdk_msgs_msg_PlayTtsRequest_wire_size(roswasmc_bounded_2_aimdk_msgs_msg_PlayTtsRequest const* value)
{
    size_t n = 0;
    n += 4 + value->text.size;
    n += roswasmc_bounded_2_aimdk_msgs_msg_TtsPriorityLevel_wire_size(&value->priority_level);
    n += 4;
    n += 4 + value->domain.size;
    n += 4 + value->trace_id.size;
    n += 1;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_aimdk_msgs_msg_PlayTtsRequest_write_fields(roswasmc_bounded_2_aimdk_msgs_msg_PlayTtsRequest const* value,
                                                                                 unsigned char* p,
                                                                                 size_t* offset)
{
    uwvm_bounded_put(p + *offset, value->text.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->text.data, value->text.size);
    *offset += value->text.size;
    roswasmc_bounded_2_aimdk_msgs_msg_TtsPriorityLevel_write_fields(&value->priority_level, p, offset);
    uwvm_bounded_put(p + *offset, (uint64_t)value->priority_weight, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, value->domain.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->domain.data, value->domain.size);
    *offset += value->domain.size;
    uwvm_bounded_put(p + *offset, value->trace_id.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->trace_id.data, value->trace_id.size);
    *offset += value->trace_id.size;
    uwvm_bounded_put(p + *offset, (uint64_t)value->is_interrupted, 1);
    *offset += 1;
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_aimdk_msgs_msg_PlayTtsRequest_read_fields(unsigned char const* p,
                                                                               size_t n,
                                                                               size_t* offset,
                                                                               roswasmc_bounded_2_aimdk_msgs_msg_PlayTtsRequest* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    value->text.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->text.size > 128u || value->text.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->text.data, p + *offset, value->text.size);
    *offset += value->text.size;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_TtsPriorityLevel_read_fields(p, n, offset, &value->priority_level))
        return 0;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->priority_weight, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->domain.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->domain.size > 128u || value->domain.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->domain.data, p + *offset, value->domain.size);
    *offset += value->domain.size;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->trace_id.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->trace_id.size > 128u || value->trace_id.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->trace_id.data, p + *offset, value->trace_id.size);
    *offset += value->trace_id.size;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->is_interrupted, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_2_aimdk_msgs_msg_PlayTtsRequest_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_aimdk_msgs_msg_PlayTtsRequest_encode(roswasmc_bounded_2_aimdk_msgs_msg_PlayTtsRequest const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_aimdk_msgs_msg_PlayTtsRequest_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_aimdk_msgs_msg_PlayTtsRequest_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_aimdk_msgs_msg_PlayTtsRequest_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_aimdk_msgs_msg_PlayTtsRequest_decode(void const* input, size_t length, roswasmc_bounded_2_aimdk_msgs_msg_PlayTtsRequest* value)
{
    roswasmc_bounded_2_aimdk_msgs_msg_PlayTtsRequest next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 18u || length > 402u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_PlayTtsRequest_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PLAYTTSRESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PLAYTTSRESPONSE_0 != 0x20bd7cbbUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PLAYTTSRESPONSE_1 != 0x721d4d86UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PLAYTTSRESPONSE_2 != 0x6c7d67d6UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PLAYTTSRESPONSE_3 != 0xb0360ea8UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PLAYTTSRESPONSE_4 != 0xb0f175f2UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PLAYTTSRESPONSE_5 != 0xbdeec4e1UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PLAYTTSRESPONSE_6 != 0xe4b9cc7cUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PLAYTTSRESPONSE_7 != 0xc4b13918UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PLAYTTSRESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PLAYTTSRESPONSE_0 0x20bd7cbbUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PLAYTTSRESPONSE_1 0x721d4d86UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PLAYTTSRESPONSE_2 0x6c7d67d6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PLAYTTSRESPONSE_3 0xb0360ea8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PLAYTTSRESPONSE_4 0xb0f175f2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PLAYTTSRESPONSE_5 0xbdeec4e1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PLAYTTSRESPONSE_6 0xe4b9cc7cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PLAYTTSRESPONSE_7 0xc4b13918UL

/** UTF-8 byte storage for aimdk_msgs/msg/PlayTtsResponse.text; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_aimdk_msgs_msg_PlayTtsResponse_text_text;

/** UTF-8 byte storage for aimdk_msgs/msg/PlayTtsResponse.domain; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_aimdk_msgs_msg_PlayTtsResponse_domain_text;

/** UTF-8 byte storage for aimdk_msgs/msg/PlayTtsResponse.trace_id; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_aimdk_msgs_msg_PlayTtsResponse_trace_id_text;

/** UTF-8 byte storage for aimdk_msgs/msg/PlayTtsResponse.error_message; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_aimdk_msgs_msg_PlayTtsResponse_error_message_text;

/** Complete ROS2 aimdk_msgs/msg/PlayTtsResponse value; no field projects away native data. */
typedef struct roswasmc_bounded_2_aimdk_msgs_msg_PlayTtsResponse
{
    /** Declared field text; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_PlayTtsResponse_text_text text;
    /** Declared field priority_level; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_TtsPriorityLevel priority_level;
    /** Declared field priority_weight; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t priority_weight;
    /** Declared field domain; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_PlayTtsResponse_domain_text domain;
    /** Declared field trace_id; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_PlayTtsResponse_trace_id_text trace_id;
    /** Declared field is_success; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t is_success;
    /** Declared field error_message; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_PlayTtsResponse_error_message_text error_message;
    /** Declared field estimated_duration; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t estimated_duration;
} roswasmc_bounded_2_aimdk_msgs_msg_PlayTtsResponse;

# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PLAYTTSRESPONSE_MAX_WIRE_BYTES 538u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PLAYTTSRESPONSE_MIN_WIRE_BYTES 26u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PLAYTTSRESPONSE_CODEC_IDENTITY "UWVMROS1_8347d2c5ae04c1db9ea2fd0c6afdffcb5e1327a170e15a7e861a00a08c8a8af3"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_aimdk_msgs_msg_PlayTtsResponse_valid(roswasmc_bounded_2_aimdk_msgs_msg_PlayTtsResponse const* value)
{
    if(!value)
        return 0;
    if(value->text.size > 128u || !uwvm_bounded_utf8(value->text.data, value->text.size))
        return 0;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_TtsPriorityLevel_valid(&value->priority_level))
        return 0;
    if(value->domain.size > 128u || !uwvm_bounded_utf8(value->domain.data, value->domain.size))
        return 0;
    if(value->trace_id.size > 128u || !uwvm_bounded_utf8(value->trace_id.data, value->trace_id.size))
        return 0;
    if(value->is_success > 1)
        return 0;
    if(value->error_message.size > 128u || !uwvm_bounded_utf8(value->error_message.data, value->error_message.size))
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_aimdk_msgs_msg_PlayTtsResponse_wire_size(roswasmc_bounded_2_aimdk_msgs_msg_PlayTtsResponse const* value)
{
    size_t n = 0;
    n += 4 + value->text.size;
    n += roswasmc_bounded_2_aimdk_msgs_msg_TtsPriorityLevel_wire_size(&value->priority_level);
    n += 4;
    n += 4 + value->domain.size;
    n += 4 + value->trace_id.size;
    n += 1;
    n += 4 + value->error_message.size;
    n += 4;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_aimdk_msgs_msg_PlayTtsResponse_write_fields(roswasmc_bounded_2_aimdk_msgs_msg_PlayTtsResponse const* value,
                                                                                  unsigned char* p,
                                                                                  size_t* offset)
{
    uwvm_bounded_put(p + *offset, value->text.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->text.data, value->text.size);
    *offset += value->text.size;
    roswasmc_bounded_2_aimdk_msgs_msg_TtsPriorityLevel_write_fields(&value->priority_level, p, offset);
    uwvm_bounded_put(p + *offset, (uint64_t)value->priority_weight, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, value->domain.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->domain.data, value->domain.size);
    *offset += value->domain.size;
    uwvm_bounded_put(p + *offset, value->trace_id.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->trace_id.data, value->trace_id.size);
    *offset += value->trace_id.size;
    uwvm_bounded_put(p + *offset, (uint64_t)value->is_success, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, value->error_message.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->error_message.data, value->error_message.size);
    *offset += value->error_message.size;
    uwvm_bounded_put(p + *offset, (uint64_t)value->estimated_duration, 4);
    *offset += 4;
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_aimdk_msgs_msg_PlayTtsResponse_read_fields(unsigned char const* p,
                                                                                size_t n,
                                                                                size_t* offset,
                                                                                roswasmc_bounded_2_aimdk_msgs_msg_PlayTtsResponse* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    value->text.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->text.size > 128u || value->text.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->text.data, p + *offset, value->text.size);
    *offset += value->text.size;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_TtsPriorityLevel_read_fields(p, n, offset, &value->priority_level))
        return 0;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->priority_weight, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->domain.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->domain.size > 128u || value->domain.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->domain.data, p + *offset, value->domain.size);
    *offset += value->domain.size;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->trace_id.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->trace_id.size > 128u || value->trace_id.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->trace_id.data, p + *offset, value->trace_id.size);
    *offset += value->trace_id.size;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->is_success, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->error_message.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->error_message.size > 128u || value->error_message.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->error_message.data, p + *offset, value->error_message.size);
    *offset += value->error_message.size;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->estimated_duration, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_2_aimdk_msgs_msg_PlayTtsResponse_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_aimdk_msgs_msg_PlayTtsResponse_encode(roswasmc_bounded_2_aimdk_msgs_msg_PlayTtsResponse const* value,
                                                                                void* output,
                                                                                size_t capacity,
                                                                                size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_aimdk_msgs_msg_PlayTtsResponse_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_aimdk_msgs_msg_PlayTtsResponse_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_aimdk_msgs_msg_PlayTtsResponse_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_aimdk_msgs_msg_PlayTtsResponse_decode(void const* input, size_t length, roswasmc_bounded_2_aimdk_msgs_msg_PlayTtsResponse* value)
{
    roswasmc_bounded_2_aimdk_msgs_msg_PlayTtsResponse next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 26u || length > 538u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_PlayTtsResponse_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PMUSTATE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PMUSTATE_0 != 0x60375921UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PMUSTATE_1 != 0x943b5659UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PMUSTATE_2 != 0x26ad5699UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PMUSTATE_3 != 0xd139f1f2UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PMUSTATE_4 != 0x20174f70UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PMUSTATE_5 != 0xe06c791bUL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PMUSTATE_6 != 0xb094dc3cUL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PMUSTATE_7 != 0xd572f34aUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PMUSTATE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PMUSTATE_0 0x60375921UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PMUSTATE_1 0x943b5659UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PMUSTATE_2 0x26ad5699UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PMUSTATE_3 0xd139f1f2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PMUSTATE_4 0x20174f70UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PMUSTATE_5 0xe06c791bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PMUSTATE_6 0xb094dc3cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PMUSTATE_7 0xd572f34aUL

/** UTF-8 byte storage for aimdk_msgs/msg/PmuState.pmu_software_version; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_aimdk_msgs_msg_PmuState_pmu_software_version_text;

/** UTF-8 byte storage for aimdk_msgs/msg/PmuState.pmu_hardware_version; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_aimdk_msgs_msg_PmuState_pmu_hardware_version_text;

/** UTF-8 byte storage for aimdk_msgs/msg/PmuState.pmu_protocol_version; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_aimdk_msgs_msg_PmuState_pmu_protocol_version_text;

/** UTF-8 byte storage for aimdk_msgs/msg/PmuState.bms_manufacturer; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_aimdk_msgs_msg_PmuState_bms_manufacturer_text;

/** UTF-8 byte storage for aimdk_msgs/msg/PmuState.bms_serial_number; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_aimdk_msgs_msg_PmuState_bms_serial_number_text;

/** UTF-8 byte storage for aimdk_msgs/msg/PmuState.bms_hardware_version; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_aimdk_msgs_msg_PmuState_bms_hardware_version_text;

/** UTF-8 byte storage for aimdk_msgs/msg/PmuState.bms_software_version; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_aimdk_msgs_msg_PmuState_bms_software_version_text;

/** Complete ROS2 aimdk_msgs/msg/PmuState value; no field projects away native data. */
typedef struct roswasmc_bounded_2_aimdk_msgs_msg_PmuState
{
    /** Declared field pmu_software_version; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_PmuState_pmu_software_version_text pmu_software_version;
    /** Declared field pmu_hardware_version; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_PmuState_pmu_hardware_version_text pmu_hardware_version;
    /** Declared field pmu_protocol_version; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_PmuState_pmu_protocol_version_text pmu_protocol_version;
    /** Declared field pmu_bool_status; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t pmu_bool_status;
    /** Declared field head_power_current; canonical capacity is part of CODEC_IDENTITY. */
    double head_power_current;
    /** Declared field output_48v_current; canonical capacity is part of CODEC_IDENTITY. */
    double output_48v_current;
    /** Declared field rk3588_current; canonical capacity is part of CODEC_IDENTITY. */
    double rk3588_current;
    /** Declared field output_12v_current; canonical capacity is part of CODEC_IDENTITY. */
    double output_12v_current;
    /** Declared field bus_48v_current; canonical capacity is part of CODEC_IDENTITY. */
    double bus_48v_current;
    /** Declared field orin_current; canonical capacity is part of CODEC_IDENTITY. */
    double orin_current;
    /** Declared field bus_48v_pmos_voltage; canonical capacity is part of CODEC_IDENTITY. */
    double bus_48v_pmos_voltage;
    /** Declared field battery_voltage; canonical capacity is part of CODEC_IDENTITY. */
    double battery_voltage;
    /** Declared field fan_voltage; canonical capacity is part of CODEC_IDENTITY. */
    double fan_voltage;
    /** Declared field output_12v_voltage; canonical capacity is part of CODEC_IDENTITY. */
    double output_12v_voltage;
    /** Declared field output_48v_voltage; canonical capacity is part of CODEC_IDENTITY. */
    double output_48v_voltage;
    /** Declared field bus_48v_voltage; canonical capacity is part of CODEC_IDENTITY. */
    double bus_48v_voltage;
    /** Declared field head_power_voltage; canonical capacity is part of CODEC_IDENTITY. */
    double head_power_voltage;
    /** Declared field orin_voltage; canonical capacity is part of CODEC_IDENTITY. */
    double orin_voltage;
    /** Declared field rk3588_voltage; canonical capacity is part of CODEC_IDENTITY. */
    double rk3588_voltage;
    /** Declared field bms_manufacturer; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_PmuState_bms_manufacturer_text bms_manufacturer;
    /** Declared field bms_serial_number; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_PmuState_bms_serial_number_text bms_serial_number;
    /** Declared field bms_hardware_version; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_PmuState_bms_hardware_version_text bms_hardware_version;
    /** Declared field bms_software_version; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_PmuState_bms_software_version_text bms_software_version;
    /** Declared field bms_status_bits; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t bms_status_bits;
    /** Declared field battery_balance_line_resistance; canonical capacity is part of CODEC_IDENTITY. */
    uint16_t battery_balance_line_resistance;
    /** Declared field battery_pack_voltage; canonical capacity is part of CODEC_IDENTITY. */
    double battery_pack_voltage;
    /** Declared field battery_current; canonical capacity is part of CODEC_IDENTITY. */
    double battery_current;
    /** Declared field battery_output_power; canonical capacity is part of CODEC_IDENTITY. */
    double battery_output_power;
    /** Declared field battery_temperature; canonical capacity is part of CODEC_IDENTITY. */
    double battery_temperature;
    /** Declared field battery_remaining_capacity; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t battery_remaining_capacity;
    /** Declared field battery_remaining_capacity_percentage; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t battery_remaining_capacity_percentage;
    /** Declared field battery_cycle_count; canonical capacity is part of CODEC_IDENTITY. */
    uint16_t battery_cycle_count;
    /** Declared field battery_cycle_total_capacity; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t battery_cycle_total_capacity;
} roswasmc_bounded_2_aimdk_msgs_msg_PmuState;

# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PMUSTATE_MAX_WIRE_BYTES 1097u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PMUSTATE_MIN_WIRE_BYTES 201u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PMUSTATE_CODEC_IDENTITY "UWVMROS1_5b7bda78c820384993ef98ff4563e61cc55fa29d5176db91b91bd787c91b8a1c"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_aimdk_msgs_msg_PmuState_valid(roswasmc_bounded_2_aimdk_msgs_msg_PmuState const* value)
{
    if(!value)
        return 0;
    if(value->pmu_software_version.size > 128u || !uwvm_bounded_utf8(value->pmu_software_version.data, value->pmu_software_version.size))
        return 0;
    if(value->pmu_hardware_version.size > 128u || !uwvm_bounded_utf8(value->pmu_hardware_version.data, value->pmu_hardware_version.size))
        return 0;
    if(value->pmu_protocol_version.size > 128u || !uwvm_bounded_utf8(value->pmu_protocol_version.data, value->pmu_protocol_version.size))
        return 0;
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->head_power_current, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
            return 0;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->output_48v_current, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
            return 0;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->rk3588_current, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
            return 0;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->output_12v_current, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
            return 0;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->bus_48v_current, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
            return 0;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->orin_current, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
            return 0;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->bus_48v_pmos_voltage, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
            return 0;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->battery_voltage, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
            return 0;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->fan_voltage, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
            return 0;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->output_12v_voltage, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
            return 0;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->output_48v_voltage, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
            return 0;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->bus_48v_voltage, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
            return 0;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->head_power_voltage, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
            return 0;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->orin_voltage, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
            return 0;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->rk3588_voltage, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
            return 0;
    }
    if(value->bms_manufacturer.size > 128u || !uwvm_bounded_utf8(value->bms_manufacturer.data, value->bms_manufacturer.size))
        return 0;
    if(value->bms_serial_number.size > 128u || !uwvm_bounded_utf8(value->bms_serial_number.data, value->bms_serial_number.size))
        return 0;
    if(value->bms_hardware_version.size > 128u || !uwvm_bounded_utf8(value->bms_hardware_version.data, value->bms_hardware_version.size))
        return 0;
    if(value->bms_software_version.size > 128u || !uwvm_bounded_utf8(value->bms_software_version.data, value->bms_software_version.size))
        return 0;
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->battery_pack_voltage, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
            return 0;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->battery_current, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
            return 0;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->battery_output_power, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
            return 0;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->battery_temperature, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
            return 0;
    }
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_aimdk_msgs_msg_PmuState_wire_size(roswasmc_bounded_2_aimdk_msgs_msg_PmuState const* value)
{
    size_t n = 0;
    n += 4 + value->pmu_software_version.size;
    n += 4 + value->pmu_hardware_version.size;
    n += 4 + value->pmu_protocol_version.size;
    n += 4;
    n += 8;
    n += 8;
    n += 8;
    n += 8;
    n += 8;
    n += 8;
    n += 8;
    n += 8;
    n += 8;
    n += 8;
    n += 8;
    n += 8;
    n += 8;
    n += 8;
    n += 8;
    n += 4 + value->bms_manufacturer.size;
    n += 4 + value->bms_serial_number.size;
    n += 4 + value->bms_hardware_version.size;
    n += 4 + value->bms_software_version.size;
    n += 4;
    n += 2;
    n += 8;
    n += 8;
    n += 8;
    n += 8;
    n += 4;
    n += 1;
    n += 2;
    n += 4;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_aimdk_msgs_msg_PmuState_write_fields(roswasmc_bounded_2_aimdk_msgs_msg_PmuState const* value, unsigned char* p, size_t* offset)
{
    uwvm_bounded_put(p + *offset, value->pmu_software_version.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->pmu_software_version.data, value->pmu_software_version.size);
    *offset += value->pmu_software_version.size;
    uwvm_bounded_put(p + *offset, value->pmu_hardware_version.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->pmu_hardware_version.data, value->pmu_hardware_version.size);
    *offset += value->pmu_hardware_version.size;
    uwvm_bounded_put(p + *offset, value->pmu_protocol_version.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->pmu_protocol_version.data, value->pmu_protocol_version.size);
    *offset += value->pmu_protocol_version.size;
    uwvm_bounded_put(p + *offset, (uint64_t)value->pmu_bool_status, 4);
    *offset += 4;
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->head_power_current, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->output_48v_current, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->rk3588_current, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->output_12v_current, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->bus_48v_current, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->orin_current, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->bus_48v_pmos_voltage, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->battery_voltage, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->fan_voltage, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->output_12v_voltage, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->output_48v_voltage, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->bus_48v_voltage, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->head_power_voltage, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->orin_voltage, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->rk3588_voltage, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    uwvm_bounded_put(p + *offset, value->bms_manufacturer.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->bms_manufacturer.data, value->bms_manufacturer.size);
    *offset += value->bms_manufacturer.size;
    uwvm_bounded_put(p + *offset, value->bms_serial_number.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->bms_serial_number.data, value->bms_serial_number.size);
    *offset += value->bms_serial_number.size;
    uwvm_bounded_put(p + *offset, value->bms_hardware_version.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->bms_hardware_version.data, value->bms_hardware_version.size);
    *offset += value->bms_hardware_version.size;
    uwvm_bounded_put(p + *offset, value->bms_software_version.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->bms_software_version.data, value->bms_software_version.size);
    *offset += value->bms_software_version.size;
    uwvm_bounded_put(p + *offset, (uint64_t)value->bms_status_bits, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, (uint64_t)value->battery_balance_line_resistance, 2);
    *offset += 2;
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->battery_pack_voltage, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->battery_current, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->battery_output_power, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->battery_temperature, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    uwvm_bounded_put(p + *offset, (uint64_t)value->battery_remaining_capacity, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, (uint64_t)value->battery_remaining_capacity_percentage, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->battery_cycle_count, 2);
    *offset += 2;
    uwvm_bounded_put(p + *offset, (uint64_t)value->battery_cycle_total_capacity, 4);
    *offset += 4;
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int
    roswasmc_bounded_2_aimdk_msgs_msg_PmuState_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_2_aimdk_msgs_msg_PmuState* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    value->pmu_software_version.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->pmu_software_version.size > 128u || value->pmu_software_version.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->pmu_software_version.data, p + *offset, value->pmu_software_version.size);
    *offset += value->pmu_software_version.size;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->pmu_hardware_version.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->pmu_hardware_version.size > 128u || value->pmu_hardware_version.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->pmu_hardware_version.data, p + *offset, value->pmu_hardware_version.size);
    *offset += value->pmu_hardware_version.size;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->pmu_protocol_version.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->pmu_protocol_version.size > 128u || value->pmu_protocol_version.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->pmu_protocol_version.data, p + *offset, value->pmu_protocol_version.size);
    *offset += value->pmu_protocol_version.size;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->pmu_bool_status, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->head_power_current, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->output_48v_current, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->rk3588_current, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->output_12v_current, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->bus_48v_current, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->orin_current, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->bus_48v_pmos_voltage, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->battery_voltage, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->fan_voltage, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->output_12v_voltage, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->output_48v_voltage, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->bus_48v_voltage, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->head_power_voltage, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->orin_voltage, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->rk3588_voltage, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->bms_manufacturer.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->bms_manufacturer.size > 128u || value->bms_manufacturer.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->bms_manufacturer.data, p + *offset, value->bms_manufacturer.size);
    *offset += value->bms_manufacturer.size;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->bms_serial_number.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->bms_serial_number.size > 128u || value->bms_serial_number.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->bms_serial_number.data, p + *offset, value->bms_serial_number.size);
    *offset += value->bms_serial_number.size;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->bms_hardware_version.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->bms_hardware_version.size > 128u || value->bms_hardware_version.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->bms_hardware_version.data, p + *offset, value->bms_hardware_version.size);
    *offset += value->bms_hardware_version.size;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->bms_software_version.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->bms_software_version.size > 128u || value->bms_software_version.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->bms_software_version.data, p + *offset, value->bms_software_version.size);
    *offset += value->bms_software_version.size;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->bms_status_bits, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 2)
        return 0;
    {
        uint16_t bits = (uint16_t)uwvm_bounded_get(p + *offset, 2);
        uwvm_bounded_copy(&value->battery_balance_line_resistance, &bits, 2);
    }
    *offset += 2;
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->battery_pack_voltage, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->battery_current, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->battery_output_power, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->battery_temperature, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->battery_remaining_capacity, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->battery_remaining_capacity_percentage, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 2)
        return 0;
    {
        uint16_t bits = (uint16_t)uwvm_bounded_get(p + *offset, 2);
        uwvm_bounded_copy(&value->battery_cycle_count, &bits, 2);
    }
    *offset += 2;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->battery_cycle_total_capacity, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_2_aimdk_msgs_msg_PmuState_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_aimdk_msgs_msg_PmuState_encode(roswasmc_bounded_2_aimdk_msgs_msg_PmuState const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_aimdk_msgs_msg_PmuState_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_aimdk_msgs_msg_PmuState_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_aimdk_msgs_msg_PmuState_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_2_aimdk_msgs_msg_PmuState_decode(void const* input, size_t length, roswasmc_bounded_2_aimdk_msgs_msg_PmuState* value)
{
    roswasmc_bounded_2_aimdk_msgs_msg_PmuState next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 201u || length > 1097u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_PmuState_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PROCESSEDAUDIOOUTPUT)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PROCESSEDAUDIOOUTPUT_0 != 0x2bf906a5UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PROCESSEDAUDIOOUTPUT_1 != 0x00a866afUL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PROCESSEDAUDIOOUTPUT_2 != 0x9ae250f1UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PROCESSEDAUDIOOUTPUT_3 != 0x8be44048UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PROCESSEDAUDIOOUTPUT_4 != 0x0be835b3UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PROCESSEDAUDIOOUTPUT_5 != 0xb9ac5af0UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PROCESSEDAUDIOOUTPUT_6 != 0x1ca0378dUL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PROCESSEDAUDIOOUTPUT_7 != 0xf34074e7UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PROCESSEDAUDIOOUTPUT 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PROCESSEDAUDIOOUTPUT_0 0x2bf906a5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PROCESSEDAUDIOOUTPUT_1 0x00a866afUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PROCESSEDAUDIOOUTPUT_2 0x9ae250f1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PROCESSEDAUDIOOUTPUT_3 0x8be44048UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PROCESSEDAUDIOOUTPUT_4 0x0be835b3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PROCESSEDAUDIOOUTPUT_5 0xb9ac5af0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PROCESSEDAUDIOOUTPUT_6 0x1ca0378dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PROCESSEDAUDIOOUTPUT_7 0xf34074e7UL

/** At most256 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    uint8_t data[256];
} roswasmc_bounded_2_aimdk_msgs_msg_ProcessedAudioOutput_audio_data_sequence;

/** Complete ROS2 aimdk_msgs/msg/ProcessedAudioOutput value; no field projects away native data. */
typedef struct roswasmc_bounded_2_aimdk_msgs_msg_ProcessedAudioOutput
{
    /** Declared field header; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_MessageHeader header;
    /** Declared field stream_id; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t stream_id;
    /** Declared field audio_vad_state; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_AudioVadStateType audio_vad_state;
    /** Declared field audio_data; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_ProcessedAudioOutput_audio_data_sequence audio_data;
} roswasmc_bounded_2_aimdk_msgs_msg_ProcessedAudioOutput;

# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PROCESSEDAUDIOOUTPUT_MAX_WIRE_BYTES 417u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PROCESSEDAUDIOOUTPUT_MIN_WIRE_BYTES 33u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PROCESSEDAUDIOOUTPUT_CODEC_IDENTITY "UWVMROS1_8b0ea5b4fc3db2efe41730f74a261ee6ea94ad34ee35ff42ae5288ddf501cc30"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_aimdk_msgs_msg_ProcessedAudioOutput_valid(roswasmc_bounded_2_aimdk_msgs_msg_ProcessedAudioOutput const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_MessageHeader_valid(&value->header))
        return 0;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_AudioVadStateType_valid(&value->audio_vad_state))
        return 0;
    if(value->audio_data.size > 256u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->audio_data.size; ++i)
        {
        }
    }
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_aimdk_msgs_msg_ProcessedAudioOutput_wire_size(roswasmc_bounded_2_aimdk_msgs_msg_ProcessedAudioOutput const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_aimdk_msgs_msg_MessageHeader_wire_size(&value->header);
    n += 4;
    n += roswasmc_bounded_2_aimdk_msgs_msg_AudioVadStateType_wire_size(&value->audio_vad_state);
    n += 4;
    if(value->audio_data.size > 256u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->audio_data.size; ++i)
        {
            n += 1;
        }
    }
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_aimdk_msgs_msg_ProcessedAudioOutput_write_fields(roswasmc_bounded_2_aimdk_msgs_msg_ProcessedAudioOutput const* value,
                                                                                       unsigned char* p,
                                                                                       size_t* offset)
{
    roswasmc_bounded_2_aimdk_msgs_msg_MessageHeader_write_fields(&value->header, p, offset);
    uwvm_bounded_put(p + *offset, (uint64_t)value->stream_id, 4);
    *offset += 4;
    roswasmc_bounded_2_aimdk_msgs_msg_AudioVadStateType_write_fields(&value->audio_vad_state, p, offset);
    uwvm_bounded_put(p + *offset, value->audio_data.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->audio_data.size; ++i)
        {
            uwvm_bounded_put(p + *offset, (uint64_t)value->audio_data.data[i], 1);
            *offset += 1;
        }
    }
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_aimdk_msgs_msg_ProcessedAudioOutput_read_fields(unsigned char const* p,
                                                                                     size_t n,
                                                                                     size_t* offset,
                                                                                     roswasmc_bounded_2_aimdk_msgs_msg_ProcessedAudioOutput* value)
{
    if(!roswasmc_bounded_2_aimdk_msgs_msg_MessageHeader_read_fields(p, n, offset, &value->header))
        return 0;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->stream_id, &bits, 4);
    }
    *offset += 4;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_AudioVadStateType_read_fields(p, n, offset, &value->audio_vad_state))
        return 0;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->audio_data.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->audio_data.size > 256u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->audio_data.size; ++i)
        {
            if(*offset > n || n - *offset < 1)
                return 0;
            {
                uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
                uwvm_bounded_copy(&value->audio_data.data[i], &bits, 1);
            }
            *offset += 1;
        }
    }
    return roswasmc_bounded_2_aimdk_msgs_msg_ProcessedAudioOutput_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_aimdk_msgs_msg_ProcessedAudioOutput_encode(roswasmc_bounded_2_aimdk_msgs_msg_ProcessedAudioOutput const* value,
                                                                                     void* output,
                                                                                     size_t capacity,
                                                                                     size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_aimdk_msgs_msg_ProcessedAudioOutput_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_aimdk_msgs_msg_ProcessedAudioOutput_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_aimdk_msgs_msg_ProcessedAudioOutput_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_2_aimdk_msgs_msg_ProcessedAudioOutput_decode(void const* input,
                                                                                     size_t length,
                                                                                     roswasmc_bounded_2_aimdk_msgs_msg_ProcessedAudioOutput* value)
{
    roswasmc_bounded_2_aimdk_msgs_msg_ProcessedAudioOutput next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 33u || length > 417u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_ProcessedAudioOutput_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_TOUCHSTATE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_TOUCHSTATE_0 != 0x12871d8aUL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_TOUCHSTATE_1 != 0x25a10bebUL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_TOUCHSTATE_2 != 0x62500cdbUL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_TOUCHSTATE_3 != 0xc1ce125dUL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_TOUCHSTATE_4 != 0xf7be7a65UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_TOUCHSTATE_5 != 0x261b9347UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_TOUCHSTATE_6 != 0xdf82e2b5UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_TOUCHSTATE_7 != 0x2a47181aUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_TOUCHSTATE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_TOUCHSTATE_0 0x12871d8aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_TOUCHSTATE_1 0x25a10bebUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_TOUCHSTATE_2 0x62500cdbUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_TOUCHSTATE_3 0xc1ce125dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_TOUCHSTATE_4 0xf7be7a65UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_TOUCHSTATE_5 0x261b9347UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_TOUCHSTATE_6 0xdf82e2b5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_TOUCHSTATE_7 0x2a47181aUL

/** Complete ROS2 aimdk_msgs/msg/TouchState value; no field projects away native data. */
typedef struct roswasmc_bounded_2_aimdk_msgs_msg_TouchState
{
    /** Declared field header; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_MessageHeader header;
    /** Declared field event_type; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t event_type;
    /** Declared field data; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t data[8];
    /** Declared field threshold; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t threshold[8];
    /** Declared field is_touched; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t is_touched[8];
} roswasmc_bounded_2_aimdk_msgs_msg_TouchState;

# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_TOUCHSTATE_MAX_WIRE_BYTES 225u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_TOUCHSTATE_MIN_WIRE_BYTES 97u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_TOUCHSTATE_CODEC_IDENTITY "UWVMROS1_90d5626f09f2254a102224e74c1f8a4d8db63910b7e5eeafa519afd79c7b1564"
/** Original scalar constant UNKNOWN=0; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_TOUCHSTATE_UNKNOWN UINT32_C(0)
/** Original scalar constant IDLE=1; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_TOUCHSTATE_IDLE UINT32_C(1)
/** Original scalar constant TOUCH=2; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_TOUCHSTATE_TOUCH UINT32_C(2)
/** Original scalar constant SLIDE=3; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_TOUCHSTATE_SLIDE UINT32_C(3)
/** Original scalar constant PAT_ONCE=4; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_TOUCHSTATE_PAT_ONCE UINT32_C(4)
/** Original scalar constant PAT_TWICE=5; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_TOUCHSTATE_PAT_TWICE UINT32_C(5)
/** Original scalar constant PAT_TRIPLE=6; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_TOUCHSTATE_PAT_TRIPLE UINT32_C(6)

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_aimdk_msgs_msg_TouchState_valid(roswasmc_bounded_2_aimdk_msgs_msg_TouchState const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_MessageHeader_valid(&value->header))
        return 0;
    {
        size_t i;
        for(i = 0; i < 8u; ++i)
        {
        }
    }
    {
        size_t i;
        for(i = 0; i < 8u; ++i)
        {
        }
    }
    {
        size_t i;
        for(i = 0; i < 8u; ++i)
        {
            if(value->is_touched[i] > 1)
                return 0;
        }
    }
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_aimdk_msgs_msg_TouchState_wire_size(roswasmc_bounded_2_aimdk_msgs_msg_TouchState const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_aimdk_msgs_msg_MessageHeader_wire_size(&value->header);
    n += 1;
    {
        size_t i;
        for(i = 0; i < 8u; ++i)
        {
            n += 4;
        }
    }
    {
        size_t i;
        for(i = 0; i < 8u; ++i)
        {
            n += 4;
        }
    }
    {
        size_t i;
        for(i = 0; i < 8u; ++i)
        {
            n += 1;
        }
    }
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_aimdk_msgs_msg_TouchState_write_fields(roswasmc_bounded_2_aimdk_msgs_msg_TouchState const* value, unsigned char* p, size_t* offset)
{
    roswasmc_bounded_2_aimdk_msgs_msg_MessageHeader_write_fields(&value->header, p, offset);
    uwvm_bounded_put(p + *offset, (uint64_t)value->event_type, 1);
    *offset += 1;
    {
        size_t i;
        for(i = 0; i < 8u; ++i)
        {
            uwvm_bounded_put(p + *offset, (uint64_t)value->data[i], 4);
            *offset += 4;
        }
    }
    {
        size_t i;
        for(i = 0; i < 8u; ++i)
        {
            uwvm_bounded_put(p + *offset, (uint64_t)value->threshold[i], 4);
            *offset += 4;
        }
    }
    {
        size_t i;
        for(i = 0; i < 8u; ++i)
        {
            uwvm_bounded_put(p + *offset, (uint64_t)value->is_touched[i], 1);
            *offset += 1;
        }
    }
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_aimdk_msgs_msg_TouchState_read_fields(unsigned char const* p,
                                                                           size_t n,
                                                                           size_t* offset,
                                                                           roswasmc_bounded_2_aimdk_msgs_msg_TouchState* value)
{
    if(!roswasmc_bounded_2_aimdk_msgs_msg_MessageHeader_read_fields(p, n, offset, &value->header))
        return 0;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->event_type, &bits, 1);
    }
    *offset += 1;
    {
        size_t i;
        for(i = 0; i < 8u; ++i)
        {
            if(*offset > n || n - *offset < 4)
                return 0;
            {
                uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
                uwvm_bounded_copy(&value->data[i], &bits, 4);
            }
            *offset += 4;
        }
    }
    {
        size_t i;
        for(i = 0; i < 8u; ++i)
        {
            if(*offset > n || n - *offset < 4)
                return 0;
            {
                uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
                uwvm_bounded_copy(&value->threshold[i], &bits, 4);
            }
            *offset += 4;
        }
    }
    {
        size_t i;
        for(i = 0; i < 8u; ++i)
        {
            if(*offset > n || n - *offset < 1)
                return 0;
            {
                uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
                uwvm_bounded_copy(&value->is_touched[i], &bits, 1);
            }
            *offset += 1;
        }
    }
    return roswasmc_bounded_2_aimdk_msgs_msg_TouchState_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_aimdk_msgs_msg_TouchState_encode(roswasmc_bounded_2_aimdk_msgs_msg_TouchState const* value,
                                                                           void* output,
                                                                           size_t capacity,
                                                                           size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_aimdk_msgs_msg_TouchState_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_aimdk_msgs_msg_TouchState_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_aimdk_msgs_msg_TouchState_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_aimdk_msgs_msg_TouchState_decode(void const* input, size_t length, roswasmc_bounded_2_aimdk_msgs_msg_TouchState* value)
{
    roswasmc_bounded_2_aimdk_msgs_msg_TouchState next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 97u || length > 225u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_TouchState_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETALLJOINTSTATE_REQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETALLJOINTSTATE_REQUEST_0 != 0x3cf17175UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETALLJOINTSTATE_REQUEST_1 != 0xd6d5cee5UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETALLJOINTSTATE_REQUEST_2 != 0xd1847cfeUL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETALLJOINTSTATE_REQUEST_3 != 0x900d675fUL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETALLJOINTSTATE_REQUEST_4 != 0x4cec4f8dUL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETALLJOINTSTATE_REQUEST_5 != 0xee6e5abaUL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETALLJOINTSTATE_REQUEST_6 != 0xca2d0a28UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETALLJOINTSTATE_REQUEST_7 != 0xf880483fUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETALLJOINTSTATE_REQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETALLJOINTSTATE_REQUEST_0 0x3cf17175UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETALLJOINTSTATE_REQUEST_1 0xd6d5cee5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETALLJOINTSTATE_REQUEST_2 0xd1847cfeUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETALLJOINTSTATE_REQUEST_3 0x900d675fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETALLJOINTSTATE_REQUEST_4 0x4cec4f8dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETALLJOINTSTATE_REQUEST_5 0xee6e5abaUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETALLJOINTSTATE_REQUEST_6 0xca2d0a28UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETALLJOINTSTATE_REQUEST_7 0xf880483fUL

/** Complete ROS2 aimdk_msgs/srv/GetAllJointState_Request value; no field projects away native data. */
typedef struct roswasmc_bounded_2_aimdk_msgs_srv_GetAllJointState_Request
{
    /** Declared field request; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_CommonRequest request;
} roswasmc_bounded_2_aimdk_msgs_srv_GetAllJointState_Request;

# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETALLJOINTSTATE_REQUEST_MAX_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETALLJOINTSTATE_REQUEST_MIN_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETALLJOINTSTATE_REQUEST_CODEC_IDENTITY "UWVMROS1_6ebdd4b2a15c8d5f3089fa93003d73adb818d92b51ecb65ea817b72e0ee90260"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_aimdk_msgs_srv_GetAllJointState_Request_valid(roswasmc_bounded_2_aimdk_msgs_srv_GetAllJointState_Request const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_CommonRequest_valid(&value->request))
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_2_aimdk_msgs_srv_GetAllJointState_Request_wire_size(roswasmc_bounded_2_aimdk_msgs_srv_GetAllJointState_Request const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_aimdk_msgs_msg_CommonRequest_wire_size(&value->request);
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_aimdk_msgs_srv_GetAllJointState_Request_write_fields(roswasmc_bounded_2_aimdk_msgs_srv_GetAllJointState_Request const* value,
                                                                            unsigned char* p,
                                                                            size_t* offset)
{
    roswasmc_bounded_2_aimdk_msgs_msg_CommonRequest_write_fields(&value->request, p, offset);
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_aimdk_msgs_srv_GetAllJointState_Request_read_fields(unsigned char const* p,
                                                                                         size_t n,
                                                                                         size_t* offset,
                                                                                         roswasmc_bounded_2_aimdk_msgs_srv_GetAllJointState_Request* value)
{
    if(!roswasmc_bounded_2_aimdk_msgs_msg_CommonRequest_read_fields(p, n, offset, &value->request))
        return 0;
    return roswasmc_bounded_2_aimdk_msgs_srv_GetAllJointState_Request_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_aimdk_msgs_srv_GetAllJointState_Request_encode(roswasmc_bounded_2_aimdk_msgs_srv_GetAllJointState_Request const* value,
                                                                      void* output,
                                                                      size_t capacity,
                                                                      size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_aimdk_msgs_srv_GetAllJointState_Request_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_aimdk_msgs_srv_GetAllJointState_Request_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_aimdk_msgs_srv_GetAllJointState_Request_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_2_aimdk_msgs_srv_GetAllJointState_Request_decode(void const* input,
                                                                                         size_t length,
                                                                                         roswasmc_bounded_2_aimdk_msgs_srv_GetAllJointState_Request* value)
{
    roswasmc_bounded_2_aimdk_msgs_srv_GetAllJointState_Request next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 8u || length > 8u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_aimdk_msgs_srv_GetAllJointState_Request_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETALLJOINTSTATE_RESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETALLJOINTSTATE_RESPONSE_0 != 0x25132c65UL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETALLJOINTSTATE_RESPONSE_1 != 0x168786b8UL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETALLJOINTSTATE_RESPONSE_2 != 0x39a7e41bUL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETALLJOINTSTATE_RESPONSE_3 != 0xad3919c0UL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETALLJOINTSTATE_RESPONSE_4 != 0xcdddbb5aUL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETALLJOINTSTATE_RESPONSE_5 != 0x797e1918UL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETALLJOINTSTATE_RESPONSE_6 != 0x04525efaUL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETALLJOINTSTATE_RESPONSE_7 != 0x8561e85aUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETALLJOINTSTATE_RESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETALLJOINTSTATE_RESPONSE_0 0x25132c65UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETALLJOINTSTATE_RESPONSE_1 0x168786b8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETALLJOINTSTATE_RESPONSE_2 0x39a7e41bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETALLJOINTSTATE_RESPONSE_3 0xad3919c0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETALLJOINTSTATE_RESPONSE_4 0xcdddbb5aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETALLJOINTSTATE_RESPONSE_5 0x797e1918UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETALLJOINTSTATE_RESPONSE_6 0x04525efaUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETALLJOINTSTATE_RESPONSE_7 0x8561e85aUL

/** At most4 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_2_aimdk_msgs_msg_JointState data[4];
} roswasmc_bounded_2_aimdk_msgs_srv_GetAllJointState_Response_head_joints_sequence;

/** At most4 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_2_aimdk_msgs_msg_JointState data[4];
} roswasmc_bounded_2_aimdk_msgs_srv_GetAllJointState_Response_arm_joints_sequence;

/** At most4 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_2_aimdk_msgs_msg_JointState data[4];
} roswasmc_bounded_2_aimdk_msgs_srv_GetAllJointState_Response_waist_joints_sequence;

/** At most4 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_2_aimdk_msgs_msg_JointState data[4];
} roswasmc_bounded_2_aimdk_msgs_srv_GetAllJointState_Response_leg_joints_sequence;

/** Complete ROS2 aimdk_msgs/srv/GetAllJointState_Response value; no field projects away native data. */
typedef struct roswasmc_bounded_2_aimdk_msgs_srv_GetAllJointState_Response
{
    /** Declared field reponse; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_CommonResponse reponse;
    /** Declared field head_joints; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_srv_GetAllJointState_Response_head_joints_sequence head_joints;
    /** Declared field arm_joints; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_srv_GetAllJointState_Response_arm_joints_sequence arm_joints;
    /** Declared field waist_joints; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_srv_GetAllJointState_Response_waist_joints_sequence waist_joints;
    /** Declared field leg_joints; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_srv_GetAllJointState_Response_leg_joints_sequence leg_joints;
} roswasmc_bounded_2_aimdk_msgs_srv_GetAllJointState_Response;

# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETALLJOINTSTATE_RESPONSE_MAX_WIRE_BYTES 2712u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETALLJOINTSTATE_RESPONSE_MIN_WIRE_BYTES 40u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETALLJOINTSTATE_RESPONSE_CODEC_IDENTITY "UWVMROS1_14baa3fa0f7685798bdc9f15f4f65ca87070ca388fcbe65696fa030b0d68f793"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_aimdk_msgs_srv_GetAllJointState_Response_valid(roswasmc_bounded_2_aimdk_msgs_srv_GetAllJointState_Response const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_CommonResponse_valid(&value->reponse))
        return 0;
    if(value->head_joints.size > 4u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->head_joints.size; ++i)
        {
            if(!roswasmc_bounded_2_aimdk_msgs_msg_JointState_valid(&value->head_joints.data[i]))
                return 0;
        }
    }
    if(value->arm_joints.size > 4u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->arm_joints.size; ++i)
        {
            if(!roswasmc_bounded_2_aimdk_msgs_msg_JointState_valid(&value->arm_joints.data[i]))
                return 0;
        }
    }
    if(value->waist_joints.size > 4u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->waist_joints.size; ++i)
        {
            if(!roswasmc_bounded_2_aimdk_msgs_msg_JointState_valid(&value->waist_joints.data[i]))
                return 0;
        }
    }
    if(value->leg_joints.size > 4u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->leg_joints.size; ++i)
        {
            if(!roswasmc_bounded_2_aimdk_msgs_msg_JointState_valid(&value->leg_joints.data[i]))
                return 0;
        }
    }
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_2_aimdk_msgs_srv_GetAllJointState_Response_wire_size(roswasmc_bounded_2_aimdk_msgs_srv_GetAllJointState_Response const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_aimdk_msgs_msg_CommonResponse_wire_size(&value->reponse);
    n += 4;
    if(value->head_joints.size > 4u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->head_joints.size; ++i)
        {
            n += roswasmc_bounded_2_aimdk_msgs_msg_JointState_wire_size(&value->head_joints.data[i]);
        }
    }
    n += 4;
    if(value->arm_joints.size > 4u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->arm_joints.size; ++i)
        {
            n += roswasmc_bounded_2_aimdk_msgs_msg_JointState_wire_size(&value->arm_joints.data[i]);
        }
    }
    n += 4;
    if(value->waist_joints.size > 4u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->waist_joints.size; ++i)
        {
            n += roswasmc_bounded_2_aimdk_msgs_msg_JointState_wire_size(&value->waist_joints.data[i]);
        }
    }
    n += 4;
    if(value->leg_joints.size > 4u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->leg_joints.size; ++i)
        {
            n += roswasmc_bounded_2_aimdk_msgs_msg_JointState_wire_size(&value->leg_joints.data[i]);
        }
    }
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_aimdk_msgs_srv_GetAllJointState_Response_write_fields(roswasmc_bounded_2_aimdk_msgs_srv_GetAllJointState_Response const* value,
                                                                             unsigned char* p,
                                                                             size_t* offset)
{
    roswasmc_bounded_2_aimdk_msgs_msg_CommonResponse_write_fields(&value->reponse, p, offset);
    uwvm_bounded_put(p + *offset, value->head_joints.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->head_joints.size; ++i)
        {
            roswasmc_bounded_2_aimdk_msgs_msg_JointState_write_fields(&value->head_joints.data[i], p, offset);
        }
    }
    uwvm_bounded_put(p + *offset, value->arm_joints.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->arm_joints.size; ++i)
        {
            roswasmc_bounded_2_aimdk_msgs_msg_JointState_write_fields(&value->arm_joints.data[i], p, offset);
        }
    }
    uwvm_bounded_put(p + *offset, value->waist_joints.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->waist_joints.size; ++i)
        {
            roswasmc_bounded_2_aimdk_msgs_msg_JointState_write_fields(&value->waist_joints.data[i], p, offset);
        }
    }
    uwvm_bounded_put(p + *offset, value->leg_joints.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->leg_joints.size; ++i)
        {
            roswasmc_bounded_2_aimdk_msgs_msg_JointState_write_fields(&value->leg_joints.data[i], p, offset);
        }
    }
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_aimdk_msgs_srv_GetAllJointState_Response_read_fields(unsigned char const* p,
                                                                                          size_t n,
                                                                                          size_t* offset,
                                                                                          roswasmc_bounded_2_aimdk_msgs_srv_GetAllJointState_Response* value)
{
    if(!roswasmc_bounded_2_aimdk_msgs_msg_CommonResponse_read_fields(p, n, offset, &value->reponse))
        return 0;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->head_joints.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->head_joints.size > 4u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->head_joints.size; ++i)
        {
            if(!roswasmc_bounded_2_aimdk_msgs_msg_JointState_read_fields(p, n, offset, &value->head_joints.data[i]))
                return 0;
        }
    }
    if(*offset > n || n - *offset < 4)
        return 0;
    value->arm_joints.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->arm_joints.size > 4u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->arm_joints.size; ++i)
        {
            if(!roswasmc_bounded_2_aimdk_msgs_msg_JointState_read_fields(p, n, offset, &value->arm_joints.data[i]))
                return 0;
        }
    }
    if(*offset > n || n - *offset < 4)
        return 0;
    value->waist_joints.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->waist_joints.size > 4u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->waist_joints.size; ++i)
        {
            if(!roswasmc_bounded_2_aimdk_msgs_msg_JointState_read_fields(p, n, offset, &value->waist_joints.data[i]))
                return 0;
        }
    }
    if(*offset > n || n - *offset < 4)
        return 0;
    value->leg_joints.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->leg_joints.size > 4u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->leg_joints.size; ++i)
        {
            if(!roswasmc_bounded_2_aimdk_msgs_msg_JointState_read_fields(p, n, offset, &value->leg_joints.data[i]))
                return 0;
        }
    }
    return roswasmc_bounded_2_aimdk_msgs_srv_GetAllJointState_Response_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_aimdk_msgs_srv_GetAllJointState_Response_encode(roswasmc_bounded_2_aimdk_msgs_srv_GetAllJointState_Response const* value,
                                                                       void* output,
                                                                       size_t capacity,
                                                                       size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_aimdk_msgs_srv_GetAllJointState_Response_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_aimdk_msgs_srv_GetAllJointState_Response_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_aimdk_msgs_srv_GetAllJointState_Response_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_2_aimdk_msgs_srv_GetAllJointState_Response_decode(void const* input,
                                                                                          size_t length,
                                                                                          roswasmc_bounded_2_aimdk_msgs_srv_GetAllJointState_Response* value)
{
    roswasmc_bounded_2_aimdk_msgs_srv_GetAllJointState_Response next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 40u || length > 2712u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_aimdk_msgs_srv_GetAllJointState_Response_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETCURRENTINPUTSOURCE_REQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETCURRENTINPUTSOURCE_REQUEST_0 != 0x2c5b6fa3UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETCURRENTINPUTSOURCE_REQUEST_1 != 0xf7ae1dcfUL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETCURRENTINPUTSOURCE_REQUEST_2 != 0x90dd9c78UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETCURRENTINPUTSOURCE_REQUEST_3 != 0xe10714e9UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETCURRENTINPUTSOURCE_REQUEST_4 != 0x9917bbcbUL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETCURRENTINPUTSOURCE_REQUEST_5 != 0x8031d1b2UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETCURRENTINPUTSOURCE_REQUEST_6 != 0x2a238c15UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETCURRENTINPUTSOURCE_REQUEST_7 != 0x06e176dfUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETCURRENTINPUTSOURCE_REQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETCURRENTINPUTSOURCE_REQUEST_0 0x2c5b6fa3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETCURRENTINPUTSOURCE_REQUEST_1 0xf7ae1dcfUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETCURRENTINPUTSOURCE_REQUEST_2 0x90dd9c78UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETCURRENTINPUTSOURCE_REQUEST_3 0xe10714e9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETCURRENTINPUTSOURCE_REQUEST_4 0x9917bbcbUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETCURRENTINPUTSOURCE_REQUEST_5 0x8031d1b2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETCURRENTINPUTSOURCE_REQUEST_6 0x2a238c15UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETCURRENTINPUTSOURCE_REQUEST_7 0x06e176dfUL

/** Complete ROS2 aimdk_msgs/srv/GetCurrentInputSource_Request value; no field projects away native data. */
typedef struct roswasmc_bounded_2_aimdk_msgs_srv_GetCurrentInputSource_Request
{
    /** Declared field request; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_CommonRequest request;
} roswasmc_bounded_2_aimdk_msgs_srv_GetCurrentInputSource_Request;

# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETCURRENTINPUTSOURCE_REQUEST_MAX_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETCURRENTINPUTSOURCE_REQUEST_MIN_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETCURRENTINPUTSOURCE_REQUEST_CODEC_IDENTITY                                                                        \
     "UWVMROS1_d5b73ba9bc2ea2f864884a0e278e2a3e327e0af405594a5e7aac7d3884e7143a"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int
    roswasmc_bounded_2_aimdk_msgs_srv_GetCurrentInputSource_Request_valid(roswasmc_bounded_2_aimdk_msgs_srv_GetCurrentInputSource_Request const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_CommonRequest_valid(&value->request))
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_2_aimdk_msgs_srv_GetCurrentInputSource_Request_wire_size(roswasmc_bounded_2_aimdk_msgs_srv_GetCurrentInputSource_Request const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_aimdk_msgs_msg_CommonRequest_wire_size(&value->request);
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_aimdk_msgs_srv_GetCurrentInputSource_Request_write_fields(roswasmc_bounded_2_aimdk_msgs_srv_GetCurrentInputSource_Request const* value,
                                                                                 unsigned char* p,
                                                                                 size_t* offset)
{
    roswasmc_bounded_2_aimdk_msgs_msg_CommonRequest_write_fields(&value->request, p, offset);
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int
    roswasmc_bounded_2_aimdk_msgs_srv_GetCurrentInputSource_Request_read_fields(unsigned char const* p,
                                                                                size_t n,
                                                                                size_t* offset,
                                                                                roswasmc_bounded_2_aimdk_msgs_srv_GetCurrentInputSource_Request* value)
{
    if(!roswasmc_bounded_2_aimdk_msgs_msg_CommonRequest_read_fields(p, n, offset, &value->request))
        return 0;
    return roswasmc_bounded_2_aimdk_msgs_srv_GetCurrentInputSource_Request_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_aimdk_msgs_srv_GetCurrentInputSource_Request_encode(roswasmc_bounded_2_aimdk_msgs_srv_GetCurrentInputSource_Request const* value,
                                                                           void* output,
                                                                           size_t capacity,
                                                                           size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_aimdk_msgs_srv_GetCurrentInputSource_Request_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_aimdk_msgs_srv_GetCurrentInputSource_Request_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_aimdk_msgs_srv_GetCurrentInputSource_Request_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_aimdk_msgs_srv_GetCurrentInputSource_Request_decode(void const* input,
                                                                           size_t length,
                                                                           roswasmc_bounded_2_aimdk_msgs_srv_GetCurrentInputSource_Request* value)
{
    roswasmc_bounded_2_aimdk_msgs_srv_GetCurrentInputSource_Request next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 8u || length > 8u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_aimdk_msgs_srv_GetCurrentInputSource_Request_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETCURRENTINPUTSOURCE_RESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETCURRENTINPUTSOURCE_RESPONSE_0 != 0xa299f008UL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETCURRENTINPUTSOURCE_RESPONSE_1 != 0xee2df288UL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETCURRENTINPUTSOURCE_RESPONSE_2 != 0xf41508abUL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETCURRENTINPUTSOURCE_RESPONSE_3 != 0x748c88baUL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETCURRENTINPUTSOURCE_RESPONSE_4 != 0x4496f7dfUL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETCURRENTINPUTSOURCE_RESPONSE_5 != 0x6caf955cUL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETCURRENTINPUTSOURCE_RESPONSE_6 != 0x7930c392UL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETCURRENTINPUTSOURCE_RESPONSE_7 != 0x46f44275UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETCURRENTINPUTSOURCE_RESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETCURRENTINPUTSOURCE_RESPONSE_0 0xa299f008UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETCURRENTINPUTSOURCE_RESPONSE_1 0xee2df288UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETCURRENTINPUTSOURCE_RESPONSE_2 0xf41508abUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETCURRENTINPUTSOURCE_RESPONSE_3 0x748c88baUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETCURRENTINPUTSOURCE_RESPONSE_4 0x4496f7dfUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETCURRENTINPUTSOURCE_RESPONSE_5 0x6caf955cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETCURRENTINPUTSOURCE_RESPONSE_6 0x7930c392UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETCURRENTINPUTSOURCE_RESPONSE_7 0x46f44275UL

/** Complete ROS2 aimdk_msgs/srv/GetCurrentInputSource_Response value; no field projects away native data. */
typedef struct roswasmc_bounded_2_aimdk_msgs_srv_GetCurrentInputSource_Response
{
    /** Declared field response; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_CommonTaskResponse response;
    /** Declared field input_source; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_McInputSource input_source;
} roswasmc_bounded_2_aimdk_msgs_srv_GetCurrentInputSource_Response;

# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETCURRENTINPUTSOURCE_RESPONSE_MAX_WIRE_BYTES 168u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETCURRENTINPUTSOURCE_RESPONSE_MIN_WIRE_BYTES 40u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETCURRENTINPUTSOURCE_RESPONSE_CODEC_IDENTITY                                                                       \
     "UWVMROS1_74952e748930b62ef98f8837c39e3925425b6f3a715fadb0d01339104bafbe5e"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int
    roswasmc_bounded_2_aimdk_msgs_srv_GetCurrentInputSource_Response_valid(roswasmc_bounded_2_aimdk_msgs_srv_GetCurrentInputSource_Response const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_CommonTaskResponse_valid(&value->response))
        return 0;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_McInputSource_valid(&value->input_source))
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_2_aimdk_msgs_srv_GetCurrentInputSource_Response_wire_size(roswasmc_bounded_2_aimdk_msgs_srv_GetCurrentInputSource_Response const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_aimdk_msgs_msg_CommonTaskResponse_wire_size(&value->response);
    n += roswasmc_bounded_2_aimdk_msgs_msg_McInputSource_wire_size(&value->input_source);
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_aimdk_msgs_srv_GetCurrentInputSource_Response_write_fields(roswasmc_bounded_2_aimdk_msgs_srv_GetCurrentInputSource_Response const* value,
                                                                                  unsigned char* p,
                                                                                  size_t* offset)
{
    roswasmc_bounded_2_aimdk_msgs_msg_CommonTaskResponse_write_fields(&value->response, p, offset);
    roswasmc_bounded_2_aimdk_msgs_msg_McInputSource_write_fields(&value->input_source, p, offset);
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int
    roswasmc_bounded_2_aimdk_msgs_srv_GetCurrentInputSource_Response_read_fields(unsigned char const* p,
                                                                                 size_t n,
                                                                                 size_t* offset,
                                                                                 roswasmc_bounded_2_aimdk_msgs_srv_GetCurrentInputSource_Response* value)
{
    if(!roswasmc_bounded_2_aimdk_msgs_msg_CommonTaskResponse_read_fields(p, n, offset, &value->response))
        return 0;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_McInputSource_read_fields(p, n, offset, &value->input_source))
        return 0;
    return roswasmc_bounded_2_aimdk_msgs_srv_GetCurrentInputSource_Response_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_aimdk_msgs_srv_GetCurrentInputSource_Response_encode(roswasmc_bounded_2_aimdk_msgs_srv_GetCurrentInputSource_Response const* value,
                                                                            void* output,
                                                                            size_t capacity,
                                                                            size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_aimdk_msgs_srv_GetCurrentInputSource_Response_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_aimdk_msgs_srv_GetCurrentInputSource_Response_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_aimdk_msgs_srv_GetCurrentInputSource_Response_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_aimdk_msgs_srv_GetCurrentInputSource_Response_decode(void const* input,
                                                                            size_t length,
                                                                            roswasmc_bounded_2_aimdk_msgs_srv_GetCurrentInputSource_Response* value)
{
    roswasmc_bounded_2_aimdk_msgs_srv_GetCurrentInputSource_Response next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 40u || length > 168u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_aimdk_msgs_srv_GetCurrentInputSource_Response_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETHANDTYPE_REQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETHANDTYPE_REQUEST_0 != 0x629d50e1UL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETHANDTYPE_REQUEST_1 != 0xace70468UL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETHANDTYPE_REQUEST_2 != 0x448e2aa1UL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETHANDTYPE_REQUEST_3 != 0xe6dcd183UL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETHANDTYPE_REQUEST_4 != 0xae531f9bUL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETHANDTYPE_REQUEST_5 != 0xfb3d4fcdUL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETHANDTYPE_REQUEST_6 != 0xc7ffa8ddUL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETHANDTYPE_REQUEST_7 != 0xc76ade58UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETHANDTYPE_REQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETHANDTYPE_REQUEST_0 0x629d50e1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETHANDTYPE_REQUEST_1 0xace70468UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETHANDTYPE_REQUEST_2 0x448e2aa1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETHANDTYPE_REQUEST_3 0xe6dcd183UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETHANDTYPE_REQUEST_4 0xae531f9bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETHANDTYPE_REQUEST_5 0xfb3d4fcdUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETHANDTYPE_REQUEST_6 0xc7ffa8ddUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETHANDTYPE_REQUEST_7 0xc76ade58UL

/** Complete ROS2 aimdk_msgs/srv/GetHandType_Request value; no field projects away native data. */
typedef struct roswasmc_bounded_2_aimdk_msgs_srv_GetHandType_Request
{
    /** Declared field request; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_CommonRequest request;
} roswasmc_bounded_2_aimdk_msgs_srv_GetHandType_Request;

# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETHANDTYPE_REQUEST_MAX_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETHANDTYPE_REQUEST_MIN_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETHANDTYPE_REQUEST_CODEC_IDENTITY "UWVMROS1_d286d9ff63fa2191490e6aa526330d2a448b37fc47231d9e42d61a3b4ddca470"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_aimdk_msgs_srv_GetHandType_Request_valid(roswasmc_bounded_2_aimdk_msgs_srv_GetHandType_Request const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_CommonRequest_valid(&value->request))
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_aimdk_msgs_srv_GetHandType_Request_wire_size(roswasmc_bounded_2_aimdk_msgs_srv_GetHandType_Request const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_aimdk_msgs_msg_CommonRequest_wire_size(&value->request);
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_aimdk_msgs_srv_GetHandType_Request_write_fields(roswasmc_bounded_2_aimdk_msgs_srv_GetHandType_Request const* value,
                                                                                      unsigned char* p,
                                                                                      size_t* offset)
{
    roswasmc_bounded_2_aimdk_msgs_msg_CommonRequest_write_fields(&value->request, p, offset);
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_aimdk_msgs_srv_GetHandType_Request_read_fields(unsigned char const* p,
                                                                                    size_t n,
                                                                                    size_t* offset,
                                                                                    roswasmc_bounded_2_aimdk_msgs_srv_GetHandType_Request* value)
{
    if(!roswasmc_bounded_2_aimdk_msgs_msg_CommonRequest_read_fields(p, n, offset, &value->request))
        return 0;
    return roswasmc_bounded_2_aimdk_msgs_srv_GetHandType_Request_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_aimdk_msgs_srv_GetHandType_Request_encode(roswasmc_bounded_2_aimdk_msgs_srv_GetHandType_Request const* value,
                                                                                    void* output,
                                                                                    size_t capacity,
                                                                                    size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_aimdk_msgs_srv_GetHandType_Request_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_aimdk_msgs_srv_GetHandType_Request_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_aimdk_msgs_srv_GetHandType_Request_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_aimdk_msgs_srv_GetHandType_Request_decode(void const* input, size_t length, roswasmc_bounded_2_aimdk_msgs_srv_GetHandType_Request* value)
{
    roswasmc_bounded_2_aimdk_msgs_srv_GetHandType_Request next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 8u || length > 8u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_aimdk_msgs_srv_GetHandType_Request_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETHANDTYPE_RESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETHANDTYPE_RESPONSE_0 != 0x56348857UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETHANDTYPE_RESPONSE_1 != 0x3632f5acUL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETHANDTYPE_RESPONSE_2 != 0x8fb4f9b1UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETHANDTYPE_RESPONSE_3 != 0xc8d9dfb3UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETHANDTYPE_RESPONSE_4 != 0x336f1264UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETHANDTYPE_RESPONSE_5 != 0x849c0f28UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETHANDTYPE_RESPONSE_6 != 0x705b06cfUL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETHANDTYPE_RESPONSE_7 != 0x9ef57714UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETHANDTYPE_RESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETHANDTYPE_RESPONSE_0 0x56348857UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETHANDTYPE_RESPONSE_1 0x3632f5acUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETHANDTYPE_RESPONSE_2 0x8fb4f9b1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETHANDTYPE_RESPONSE_3 0xc8d9dfb3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETHANDTYPE_RESPONSE_4 0x336f1264UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETHANDTYPE_RESPONSE_5 0x849c0f28UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETHANDTYPE_RESPONSE_6 0x705b06cfUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETHANDTYPE_RESPONSE_7 0x9ef57714UL

/** Complete ROS2 aimdk_msgs/srv/GetHandType_Response value; no field projects away native data. */
typedef struct roswasmc_bounded_2_aimdk_msgs_srv_GetHandType_Response
{
    /** Declared field reponse; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_CommonResponse reponse;
    /** Declared field left_hands_type; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_HandType left_hands_type;
    /** Declared field right_hands_type; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_HandType right_hands_type;
} roswasmc_bounded_2_aimdk_msgs_srv_GetHandType_Response;

# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETHANDTYPE_RESPONSE_MAX_WIRE_BYTES 154u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETHANDTYPE_RESPONSE_MIN_WIRE_BYTES 26u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETHANDTYPE_RESPONSE_CODEC_IDENTITY "UWVMROS1_04f69fc5f7df302c1e73d2a51ffaef813b002ec387014b6d4d8a648e1e5d098c"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_aimdk_msgs_srv_GetHandType_Response_valid(roswasmc_bounded_2_aimdk_msgs_srv_GetHandType_Response const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_CommonResponse_valid(&value->reponse))
        return 0;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_HandType_valid(&value->left_hands_type))
        return 0;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_HandType_valid(&value->right_hands_type))
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_aimdk_msgs_srv_GetHandType_Response_wire_size(roswasmc_bounded_2_aimdk_msgs_srv_GetHandType_Response const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_aimdk_msgs_msg_CommonResponse_wire_size(&value->reponse);
    n += roswasmc_bounded_2_aimdk_msgs_msg_HandType_wire_size(&value->left_hands_type);
    n += roswasmc_bounded_2_aimdk_msgs_msg_HandType_wire_size(&value->right_hands_type);
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_aimdk_msgs_srv_GetHandType_Response_write_fields(roswasmc_bounded_2_aimdk_msgs_srv_GetHandType_Response const* value,
                                                                                       unsigned char* p,
                                                                                       size_t* offset)
{
    roswasmc_bounded_2_aimdk_msgs_msg_CommonResponse_write_fields(&value->reponse, p, offset);
    roswasmc_bounded_2_aimdk_msgs_msg_HandType_write_fields(&value->left_hands_type, p, offset);
    roswasmc_bounded_2_aimdk_msgs_msg_HandType_write_fields(&value->right_hands_type, p, offset);
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_aimdk_msgs_srv_GetHandType_Response_read_fields(unsigned char const* p,
                                                                                     size_t n,
                                                                                     size_t* offset,
                                                                                     roswasmc_bounded_2_aimdk_msgs_srv_GetHandType_Response* value)
{
    if(!roswasmc_bounded_2_aimdk_msgs_msg_CommonResponse_read_fields(p, n, offset, &value->reponse))
        return 0;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_HandType_read_fields(p, n, offset, &value->left_hands_type))
        return 0;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_HandType_read_fields(p, n, offset, &value->right_hands_type))
        return 0;
    return roswasmc_bounded_2_aimdk_msgs_srv_GetHandType_Response_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_aimdk_msgs_srv_GetHandType_Response_encode(roswasmc_bounded_2_aimdk_msgs_srv_GetHandType_Response const* value,
                                                                                     void* output,
                                                                                     size_t capacity,
                                                                                     size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_aimdk_msgs_srv_GetHandType_Response_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_aimdk_msgs_srv_GetHandType_Response_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_aimdk_msgs_srv_GetHandType_Response_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_2_aimdk_msgs_srv_GetHandType_Response_decode(void const* input,
                                                                                     size_t length,
                                                                                     roswasmc_bounded_2_aimdk_msgs_srv_GetHandType_Response* value)
{
    roswasmc_bounded_2_aimdk_msgs_srv_GetHandType_Response next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 26u || length > 154u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_aimdk_msgs_srv_GetHandType_Response_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETMCACTION_REQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETMCACTION_REQUEST_0 != 0xe708431dUL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETMCACTION_REQUEST_1 != 0x955c43f1UL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETMCACTION_REQUEST_2 != 0x615bc77dUL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETMCACTION_REQUEST_3 != 0x1a1958beUL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETMCACTION_REQUEST_4 != 0x03593eb0UL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETMCACTION_REQUEST_5 != 0xdbde1289UL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETMCACTION_REQUEST_6 != 0xf10c952dUL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETMCACTION_REQUEST_7 != 0x286cfa27UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETMCACTION_REQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETMCACTION_REQUEST_0 0xe708431dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETMCACTION_REQUEST_1 0x955c43f1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETMCACTION_REQUEST_2 0x615bc77dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETMCACTION_REQUEST_3 0x1a1958beUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETMCACTION_REQUEST_4 0x03593eb0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETMCACTION_REQUEST_5 0xdbde1289UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETMCACTION_REQUEST_6 0xf10c952dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETMCACTION_REQUEST_7 0x286cfa27UL

/** Complete ROS2 aimdk_msgs/srv/GetMcAction_Request value; no field projects away native data. */
typedef struct roswasmc_bounded_2_aimdk_msgs_srv_GetMcAction_Request
{
    /** Declared field request; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_CommonRequest request;
} roswasmc_bounded_2_aimdk_msgs_srv_GetMcAction_Request;

# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETMCACTION_REQUEST_MAX_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETMCACTION_REQUEST_MIN_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETMCACTION_REQUEST_CODEC_IDENTITY "UWVMROS1_f6dc5b72271fc51bfb1950b67d671619b65dfabc7931e12889a237fe47d18cfe"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_aimdk_msgs_srv_GetMcAction_Request_valid(roswasmc_bounded_2_aimdk_msgs_srv_GetMcAction_Request const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_CommonRequest_valid(&value->request))
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_aimdk_msgs_srv_GetMcAction_Request_wire_size(roswasmc_bounded_2_aimdk_msgs_srv_GetMcAction_Request const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_aimdk_msgs_msg_CommonRequest_wire_size(&value->request);
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_aimdk_msgs_srv_GetMcAction_Request_write_fields(roswasmc_bounded_2_aimdk_msgs_srv_GetMcAction_Request const* value,
                                                                                      unsigned char* p,
                                                                                      size_t* offset)
{
    roswasmc_bounded_2_aimdk_msgs_msg_CommonRequest_write_fields(&value->request, p, offset);
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_aimdk_msgs_srv_GetMcAction_Request_read_fields(unsigned char const* p,
                                                                                    size_t n,
                                                                                    size_t* offset,
                                                                                    roswasmc_bounded_2_aimdk_msgs_srv_GetMcAction_Request* value)
{
    if(!roswasmc_bounded_2_aimdk_msgs_msg_CommonRequest_read_fields(p, n, offset, &value->request))
        return 0;
    return roswasmc_bounded_2_aimdk_msgs_srv_GetMcAction_Request_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_aimdk_msgs_srv_GetMcAction_Request_encode(roswasmc_bounded_2_aimdk_msgs_srv_GetMcAction_Request const* value,
                                                                                    void* output,
                                                                                    size_t capacity,
                                                                                    size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_aimdk_msgs_srv_GetMcAction_Request_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_aimdk_msgs_srv_GetMcAction_Request_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_aimdk_msgs_srv_GetMcAction_Request_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_aimdk_msgs_srv_GetMcAction_Request_decode(void const* input, size_t length, roswasmc_bounded_2_aimdk_msgs_srv_GetMcAction_Request* value)
{
    roswasmc_bounded_2_aimdk_msgs_srv_GetMcAction_Request next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 8u || length > 8u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_aimdk_msgs_srv_GetMcAction_Request_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETMCACTION_RESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETMCACTION_RESPONSE_0 != 0x9826ceeeUL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETMCACTION_RESPONSE_1 != 0x195321c0UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETMCACTION_RESPONSE_2 != 0x44b654c3UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETMCACTION_RESPONSE_3 != 0x572797b1UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETMCACTION_RESPONSE_4 != 0xdaa3bf42UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETMCACTION_RESPONSE_5 != 0x931213c5UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETMCACTION_RESPONSE_6 != 0x63c3e125UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETMCACTION_RESPONSE_7 != 0xa39b18ddUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETMCACTION_RESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETMCACTION_RESPONSE_0 0x9826ceeeUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETMCACTION_RESPONSE_1 0x195321c0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETMCACTION_RESPONSE_2 0x44b654c3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETMCACTION_RESPONSE_3 0x572797b1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETMCACTION_RESPONSE_4 0xdaa3bf42UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETMCACTION_RESPONSE_5 0x931213c5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETMCACTION_RESPONSE_6 0x63c3e125UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETMCACTION_RESPONSE_7 0xa39b18ddUL

/** Complete ROS2 aimdk_msgs/srv/GetMcAction_Response value; no field projects away native data. */
typedef struct roswasmc_bounded_2_aimdk_msgs_srv_GetMcAction_Response
{
    /** Declared field header; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_ResponseHeader header;
    /** Declared field info; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_McActionInfo info;
} roswasmc_bounded_2_aimdk_msgs_srv_GetMcAction_Response;

# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETMCACTION_RESPONSE_MAX_WIRE_BYTES 156u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETMCACTION_RESPONSE_MIN_WIRE_BYTES 28u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETMCACTION_RESPONSE_CODEC_IDENTITY "UWVMROS1_e2518bce930bc6f8e195b638d9eb5c132dffa93449c94b6f044e6192843df18f"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_aimdk_msgs_srv_GetMcAction_Response_valid(roswasmc_bounded_2_aimdk_msgs_srv_GetMcAction_Response const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_ResponseHeader_valid(&value->header))
        return 0;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_McActionInfo_valid(&value->info))
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_aimdk_msgs_srv_GetMcAction_Response_wire_size(roswasmc_bounded_2_aimdk_msgs_srv_GetMcAction_Response const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_aimdk_msgs_msg_ResponseHeader_wire_size(&value->header);
    n += roswasmc_bounded_2_aimdk_msgs_msg_McActionInfo_wire_size(&value->info);
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_aimdk_msgs_srv_GetMcAction_Response_write_fields(roswasmc_bounded_2_aimdk_msgs_srv_GetMcAction_Response const* value,
                                                                                       unsigned char* p,
                                                                                       size_t* offset)
{
    roswasmc_bounded_2_aimdk_msgs_msg_ResponseHeader_write_fields(&value->header, p, offset);
    roswasmc_bounded_2_aimdk_msgs_msg_McActionInfo_write_fields(&value->info, p, offset);
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_aimdk_msgs_srv_GetMcAction_Response_read_fields(unsigned char const* p,
                                                                                     size_t n,
                                                                                     size_t* offset,
                                                                                     roswasmc_bounded_2_aimdk_msgs_srv_GetMcAction_Response* value)
{
    if(!roswasmc_bounded_2_aimdk_msgs_msg_ResponseHeader_read_fields(p, n, offset, &value->header))
        return 0;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_McActionInfo_read_fields(p, n, offset, &value->info))
        return 0;
    return roswasmc_bounded_2_aimdk_msgs_srv_GetMcAction_Response_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_aimdk_msgs_srv_GetMcAction_Response_encode(roswasmc_bounded_2_aimdk_msgs_srv_GetMcAction_Response const* value,
                                                                                     void* output,
                                                                                     size_t capacity,
                                                                                     size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_aimdk_msgs_srv_GetMcAction_Response_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_aimdk_msgs_srv_GetMcAction_Response_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_aimdk_msgs_srv_GetMcAction_Response_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_2_aimdk_msgs_srv_GetMcAction_Response_decode(void const* input,
                                                                                     size_t length,
                                                                                     roswasmc_bounded_2_aimdk_msgs_srv_GetMcAction_Response* value)
{
    roswasmc_bounded_2_aimdk_msgs_srv_GetMcAction_Response next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 28u || length > 156u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_aimdk_msgs_srv_GetMcAction_Response_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETMUTE_REQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETMUTE_REQUEST_0 != 0x3431ed80UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETMUTE_REQUEST_1 != 0x1f646bb3UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETMUTE_REQUEST_2 != 0xaaacda89UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETMUTE_REQUEST_3 != 0xf679b541UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETMUTE_REQUEST_4 != 0x440bca2eUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETMUTE_REQUEST_5 != 0xc1857986UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETMUTE_REQUEST_6 != 0xaf503520UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETMUTE_REQUEST_7 != 0x7a494c4dUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETMUTE_REQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETMUTE_REQUEST_0 0x3431ed80UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETMUTE_REQUEST_1 0x1f646bb3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETMUTE_REQUEST_2 0xaaacda89UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETMUTE_REQUEST_3 0xf679b541UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETMUTE_REQUEST_4 0x440bca2eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETMUTE_REQUEST_5 0xc1857986UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETMUTE_REQUEST_6 0xaf503520UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETMUTE_REQUEST_7 0x7a494c4dUL

/** Complete ROS2 aimdk_msgs/srv/GetMute_Request value; no field projects away native data. */
typedef struct roswasmc_bounded_2_aimdk_msgs_srv_GetMute_Request
{
    /** Declared field request; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_CommonRequest request;
} roswasmc_bounded_2_aimdk_msgs_srv_GetMute_Request;

# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETMUTE_REQUEST_MAX_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETMUTE_REQUEST_MIN_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETMUTE_REQUEST_CODEC_IDENTITY "UWVMROS1_0f3d2a1679b2af2dca96bcdba69e8f076e9a333d4166a53501de40594c723ca5"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_aimdk_msgs_srv_GetMute_Request_valid(roswasmc_bounded_2_aimdk_msgs_srv_GetMute_Request const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_CommonRequest_valid(&value->request))
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_aimdk_msgs_srv_GetMute_Request_wire_size(roswasmc_bounded_2_aimdk_msgs_srv_GetMute_Request const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_aimdk_msgs_msg_CommonRequest_wire_size(&value->request);
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_aimdk_msgs_srv_GetMute_Request_write_fields(roswasmc_bounded_2_aimdk_msgs_srv_GetMute_Request const* value,
                                                                                  unsigned char* p,
                                                                                  size_t* offset)
{
    roswasmc_bounded_2_aimdk_msgs_msg_CommonRequest_write_fields(&value->request, p, offset);
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_aimdk_msgs_srv_GetMute_Request_read_fields(unsigned char const* p,
                                                                                size_t n,
                                                                                size_t* offset,
                                                                                roswasmc_bounded_2_aimdk_msgs_srv_GetMute_Request* value)
{
    if(!roswasmc_bounded_2_aimdk_msgs_msg_CommonRequest_read_fields(p, n, offset, &value->request))
        return 0;
    return roswasmc_bounded_2_aimdk_msgs_srv_GetMute_Request_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_aimdk_msgs_srv_GetMute_Request_encode(roswasmc_bounded_2_aimdk_msgs_srv_GetMute_Request const* value,
                                                                                void* output,
                                                                                size_t capacity,
                                                                                size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_aimdk_msgs_srv_GetMute_Request_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_aimdk_msgs_srv_GetMute_Request_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_aimdk_msgs_srv_GetMute_Request_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_aimdk_msgs_srv_GetMute_Request_decode(void const* input, size_t length, roswasmc_bounded_2_aimdk_msgs_srv_GetMute_Request* value)
{
    roswasmc_bounded_2_aimdk_msgs_srv_GetMute_Request next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 8u || length > 8u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_aimdk_msgs_srv_GetMute_Request_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETMUTE_RESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETMUTE_RESPONSE_0 != 0x3399b16dUL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETMUTE_RESPONSE_1 != 0xa4f2c6bbUL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETMUTE_RESPONSE_2 != 0xe30d7ddeUL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETMUTE_RESPONSE_3 != 0xd634838aUL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETMUTE_RESPONSE_4 != 0x761da7dcUL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETMUTE_RESPONSE_5 != 0xfa47802fUL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETMUTE_RESPONSE_6 != 0x5a741a78UL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETMUTE_RESPONSE_7 != 0x4916163bUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETMUTE_RESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETMUTE_RESPONSE_0 0x3399b16dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETMUTE_RESPONSE_1 0xa4f2c6bbUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETMUTE_RESPONSE_2 0xe30d7ddeUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETMUTE_RESPONSE_3 0xd634838aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETMUTE_RESPONSE_4 0x761da7dcUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETMUTE_RESPONSE_5 0xfa47802fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETMUTE_RESPONSE_6 0x5a741a78UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETMUTE_RESPONSE_7 0x4916163bUL

/** Complete ROS2 aimdk_msgs/srv/GetMute_Response value; no field projects away native data. */
typedef struct roswasmc_bounded_2_aimdk_msgs_srv_GetMute_Response
{
    /** Declared field reponse; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_CommonResponse reponse;
    /** Declared field is_mute; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t is_mute;
} roswasmc_bounded_2_aimdk_msgs_srv_GetMute_Response;

# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETMUTE_RESPONSE_MAX_WIRE_BYTES 153u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETMUTE_RESPONSE_MIN_WIRE_BYTES 25u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETMUTE_RESPONSE_CODEC_IDENTITY "UWVMROS1_c1beb5c0c269083a0be2c3a4718043ec92639b6ac58cf1d74bae051bec2d8a42"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_aimdk_msgs_srv_GetMute_Response_valid(roswasmc_bounded_2_aimdk_msgs_srv_GetMute_Response const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_CommonResponse_valid(&value->reponse))
        return 0;
    if(value->is_mute > 1)
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_aimdk_msgs_srv_GetMute_Response_wire_size(roswasmc_bounded_2_aimdk_msgs_srv_GetMute_Response const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_aimdk_msgs_msg_CommonResponse_wire_size(&value->reponse);
    n += 1;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_aimdk_msgs_srv_GetMute_Response_write_fields(roswasmc_bounded_2_aimdk_msgs_srv_GetMute_Response const* value,
                                                                                   unsigned char* p,
                                                                                   size_t* offset)
{
    roswasmc_bounded_2_aimdk_msgs_msg_CommonResponse_write_fields(&value->reponse, p, offset);
    uwvm_bounded_put(p + *offset, (uint64_t)value->is_mute, 1);
    *offset += 1;
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_aimdk_msgs_srv_GetMute_Response_read_fields(unsigned char const* p,
                                                                                 size_t n,
                                                                                 size_t* offset,
                                                                                 roswasmc_bounded_2_aimdk_msgs_srv_GetMute_Response* value)
{
    if(!roswasmc_bounded_2_aimdk_msgs_msg_CommonResponse_read_fields(p, n, offset, &value->reponse))
        return 0;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->is_mute, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_2_aimdk_msgs_srv_GetMute_Response_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_aimdk_msgs_srv_GetMute_Response_encode(roswasmc_bounded_2_aimdk_msgs_srv_GetMute_Response const* value,
                                                                                 void* output,
                                                                                 size_t capacity,
                                                                                 size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_aimdk_msgs_srv_GetMute_Response_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_aimdk_msgs_srv_GetMute_Response_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_aimdk_msgs_srv_GetMute_Response_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_aimdk_msgs_srv_GetMute_Response_decode(void const* input, size_t length, roswasmc_bounded_2_aimdk_msgs_srv_GetMute_Response* value)
{
    roswasmc_bounded_2_aimdk_msgs_srv_GetMute_Response next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 25u || length > 153u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_aimdk_msgs_srv_GetMute_Response_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETVOLUME_REQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETVOLUME_REQUEST_0 != 0xf0715f48UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETVOLUME_REQUEST_1 != 0xe27ecdecUL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETVOLUME_REQUEST_2 != 0x6987b017UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETVOLUME_REQUEST_3 != 0x433a918aUL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETVOLUME_REQUEST_4 != 0xd19311b9UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETVOLUME_REQUEST_5 != 0xd99feb45UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETVOLUME_REQUEST_6 != 0x3ab5602fUL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETVOLUME_REQUEST_7 != 0x81b33003UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETVOLUME_REQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETVOLUME_REQUEST_0 0xf0715f48UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETVOLUME_REQUEST_1 0xe27ecdecUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETVOLUME_REQUEST_2 0x6987b017UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETVOLUME_REQUEST_3 0x433a918aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETVOLUME_REQUEST_4 0xd19311b9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETVOLUME_REQUEST_5 0xd99feb45UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETVOLUME_REQUEST_6 0x3ab5602fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETVOLUME_REQUEST_7 0x81b33003UL

/** Complete ROS2 aimdk_msgs/srv/GetVolume_Request value; no field projects away native data. */
typedef struct roswasmc_bounded_2_aimdk_msgs_srv_GetVolume_Request
{
    /** Declared field request; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_CommonRequest request;
} roswasmc_bounded_2_aimdk_msgs_srv_GetVolume_Request;

# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETVOLUME_REQUEST_MAX_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETVOLUME_REQUEST_MIN_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETVOLUME_REQUEST_CODEC_IDENTITY "UWVMROS1_6e0d1472098c746f350535d30a3281758480e8e7c7b8ef54485310dae16dfc2b"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_aimdk_msgs_srv_GetVolume_Request_valid(roswasmc_bounded_2_aimdk_msgs_srv_GetVolume_Request const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_CommonRequest_valid(&value->request))
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_aimdk_msgs_srv_GetVolume_Request_wire_size(roswasmc_bounded_2_aimdk_msgs_srv_GetVolume_Request const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_aimdk_msgs_msg_CommonRequest_wire_size(&value->request);
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_aimdk_msgs_srv_GetVolume_Request_write_fields(roswasmc_bounded_2_aimdk_msgs_srv_GetVolume_Request const* value,
                                                                                    unsigned char* p,
                                                                                    size_t* offset)
{
    roswasmc_bounded_2_aimdk_msgs_msg_CommonRequest_write_fields(&value->request, p, offset);
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_aimdk_msgs_srv_GetVolume_Request_read_fields(unsigned char const* p,
                                                                                  size_t n,
                                                                                  size_t* offset,
                                                                                  roswasmc_bounded_2_aimdk_msgs_srv_GetVolume_Request* value)
{
    if(!roswasmc_bounded_2_aimdk_msgs_msg_CommonRequest_read_fields(p, n, offset, &value->request))
        return 0;
    return roswasmc_bounded_2_aimdk_msgs_srv_GetVolume_Request_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_aimdk_msgs_srv_GetVolume_Request_encode(roswasmc_bounded_2_aimdk_msgs_srv_GetVolume_Request const* value,
                                                                                  void* output,
                                                                                  size_t capacity,
                                                                                  size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_aimdk_msgs_srv_GetVolume_Request_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_aimdk_msgs_srv_GetVolume_Request_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_aimdk_msgs_srv_GetVolume_Request_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_aimdk_msgs_srv_GetVolume_Request_decode(void const* input, size_t length, roswasmc_bounded_2_aimdk_msgs_srv_GetVolume_Request* value)
{
    roswasmc_bounded_2_aimdk_msgs_srv_GetVolume_Request next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 8u || length > 8u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_aimdk_msgs_srv_GetVolume_Request_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETVOLUME_RESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETVOLUME_RESPONSE_0 != 0x76a17ab5UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETVOLUME_RESPONSE_1 != 0x01951994UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETVOLUME_RESPONSE_2 != 0x65dca417UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETVOLUME_RESPONSE_3 != 0x37534f24UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETVOLUME_RESPONSE_4 != 0x4cafb333UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETVOLUME_RESPONSE_5 != 0x762c704aUL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETVOLUME_RESPONSE_6 != 0xb513c710UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETVOLUME_RESPONSE_7 != 0xf67c6e0eUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETVOLUME_RESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETVOLUME_RESPONSE_0 0x76a17ab5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETVOLUME_RESPONSE_1 0x01951994UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETVOLUME_RESPONSE_2 0x65dca417UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETVOLUME_RESPONSE_3 0x37534f24UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETVOLUME_RESPONSE_4 0x4cafb333UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETVOLUME_RESPONSE_5 0x762c704aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETVOLUME_RESPONSE_6 0xb513c710UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETVOLUME_RESPONSE_7 0xf67c6e0eUL

/** Complete ROS2 aimdk_msgs/srv/GetVolume_Response value; no field projects away native data. */
typedef struct roswasmc_bounded_2_aimdk_msgs_srv_GetVolume_Response
{
    /** Declared field reponse; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_CommonResponse reponse;
    /** Declared field audio_volume; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t audio_volume;
} roswasmc_bounded_2_aimdk_msgs_srv_GetVolume_Response;

# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETVOLUME_RESPONSE_MAX_WIRE_BYTES 156u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETVOLUME_RESPONSE_MIN_WIRE_BYTES 28u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_GETVOLUME_RESPONSE_CODEC_IDENTITY "UWVMROS1_24a04a12d640be4e17e24d372b0bbb2f65a89bd56e4ee1448e252db2c833c266"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_aimdk_msgs_srv_GetVolume_Response_valid(roswasmc_bounded_2_aimdk_msgs_srv_GetVolume_Response const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_CommonResponse_valid(&value->reponse))
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_aimdk_msgs_srv_GetVolume_Response_wire_size(roswasmc_bounded_2_aimdk_msgs_srv_GetVolume_Response const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_aimdk_msgs_msg_CommonResponse_wire_size(&value->reponse);
    n += 4;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_aimdk_msgs_srv_GetVolume_Response_write_fields(roswasmc_bounded_2_aimdk_msgs_srv_GetVolume_Response const* value,
                                                                                     unsigned char* p,
                                                                                     size_t* offset)
{
    roswasmc_bounded_2_aimdk_msgs_msg_CommonResponse_write_fields(&value->reponse, p, offset);
    uwvm_bounded_put(p + *offset, (uint64_t)value->audio_volume, 4);
    *offset += 4;
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_aimdk_msgs_srv_GetVolume_Response_read_fields(unsigned char const* p,
                                                                                   size_t n,
                                                                                   size_t* offset,
                                                                                   roswasmc_bounded_2_aimdk_msgs_srv_GetVolume_Response* value)
{
    if(!roswasmc_bounded_2_aimdk_msgs_msg_CommonResponse_read_fields(p, n, offset, &value->reponse))
        return 0;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->audio_volume, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_2_aimdk_msgs_srv_GetVolume_Response_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_aimdk_msgs_srv_GetVolume_Response_encode(roswasmc_bounded_2_aimdk_msgs_srv_GetVolume_Response const* value,
                                                                                   void* output,
                                                                                   size_t capacity,
                                                                                   size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_aimdk_msgs_srv_GetVolume_Response_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_aimdk_msgs_srv_GetVolume_Response_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_aimdk_msgs_srv_GetVolume_Response_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_aimdk_msgs_srv_GetVolume_Response_decode(void const* input, size_t length, roswasmc_bounded_2_aimdk_msgs_srv_GetVolume_Response* value)
{
    roswasmc_bounded_2_aimdk_msgs_srv_GetVolume_Response next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 28u || length > 156u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_aimdk_msgs_srv_GetVolume_Response_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_LEDSTRIPCOMMAND_REQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_LEDSTRIPCOMMAND_REQUEST_0 != 0x6e9e19f2UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_LEDSTRIPCOMMAND_REQUEST_1 != 0xfa68900bUL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_LEDSTRIPCOMMAND_REQUEST_2 != 0x884ad7e2UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_LEDSTRIPCOMMAND_REQUEST_3 != 0xb79e7e6aUL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_LEDSTRIPCOMMAND_REQUEST_4 != 0x9a6dcd10UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_LEDSTRIPCOMMAND_REQUEST_5 != 0xadefdd57UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_LEDSTRIPCOMMAND_REQUEST_6 != 0x3a50ffa0UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_LEDSTRIPCOMMAND_REQUEST_7 != 0x81e1176cUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_LEDSTRIPCOMMAND_REQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_LEDSTRIPCOMMAND_REQUEST_0 0x6e9e19f2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_LEDSTRIPCOMMAND_REQUEST_1 0xfa68900bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_LEDSTRIPCOMMAND_REQUEST_2 0x884ad7e2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_LEDSTRIPCOMMAND_REQUEST_3 0xb79e7e6aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_LEDSTRIPCOMMAND_REQUEST_4 0x9a6dcd10UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_LEDSTRIPCOMMAND_REQUEST_5 0xadefdd57UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_LEDSTRIPCOMMAND_REQUEST_6 0x3a50ffa0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_LEDSTRIPCOMMAND_REQUEST_7 0x81e1176cUL

/** Complete ROS2 aimdk_msgs/srv/LedStripCommand_Request value; no field projects away native data. */
typedef struct roswasmc_bounded_2_aimdk_msgs_srv_LedStripCommand_Request
{
    /** Declared field request; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_CommonRequest request;
    /** Declared field led_strip_mode; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t led_strip_mode;
    /** Declared field r; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t r;
    /** Declared field g; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t g;
    /** Declared field b; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t b;
} roswasmc_bounded_2_aimdk_msgs_srv_LedStripCommand_Request;

# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_LEDSTRIPCOMMAND_REQUEST_MAX_WIRE_BYTES 12u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_LEDSTRIPCOMMAND_REQUEST_MIN_WIRE_BYTES 12u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_LEDSTRIPCOMMAND_REQUEST_CODEC_IDENTITY "UWVMROS1_bd3167edba193b3ed932c8f6e841d229cf6e6574b2ce0c157d5f8bfc4cbc80a6"
/** Original scalar constant LED_STRIP_MODE_CONSTANT=0; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_LEDSTRIPCOMMAND_REQUEST_LED_STRIP_MODE_CONSTANT UINT32_C(0)
/** Original scalar constant LED_STRIP_MODE_BREATH=1; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_LEDSTRIPCOMMAND_REQUEST_LED_STRIP_MODE_BREATH UINT32_C(1)
/** Original scalar constant LED_STRIP_MODE_FLASH=2; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_LEDSTRIPCOMMAND_REQUEST_LED_STRIP_MODE_FLASH UINT32_C(2)
/** Original scalar constant LED_STRIP_MODE_FLOW=3; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_LEDSTRIPCOMMAND_REQUEST_LED_STRIP_MODE_FLOW UINT32_C(3)
/** Original scalar constant LED_STRIP_MODE_MAX=4; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_LEDSTRIPCOMMAND_REQUEST_LED_STRIP_MODE_MAX UINT32_C(4)

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_aimdk_msgs_srv_LedStripCommand_Request_valid(roswasmc_bounded_2_aimdk_msgs_srv_LedStripCommand_Request const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_CommonRequest_valid(&value->request))
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_aimdk_msgs_srv_LedStripCommand_Request_wire_size(roswasmc_bounded_2_aimdk_msgs_srv_LedStripCommand_Request const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_aimdk_msgs_msg_CommonRequest_wire_size(&value->request);
    n += 1;
    n += 1;
    n += 1;
    n += 1;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_aimdk_msgs_srv_LedStripCommand_Request_write_fields(roswasmc_bounded_2_aimdk_msgs_srv_LedStripCommand_Request const* value,
                                                                           unsigned char* p,
                                                                           size_t* offset)
{
    roswasmc_bounded_2_aimdk_msgs_msg_CommonRequest_write_fields(&value->request, p, offset);
    uwvm_bounded_put(p + *offset, (uint64_t)value->led_strip_mode, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->r, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->g, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->b, 1);
    *offset += 1;
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_aimdk_msgs_srv_LedStripCommand_Request_read_fields(unsigned char const* p,
                                                                                        size_t n,
                                                                                        size_t* offset,
                                                                                        roswasmc_bounded_2_aimdk_msgs_srv_LedStripCommand_Request* value)
{
    if(!roswasmc_bounded_2_aimdk_msgs_msg_CommonRequest_read_fields(p, n, offset, &value->request))
        return 0;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->led_strip_mode, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->r, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->g, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->b, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_2_aimdk_msgs_srv_LedStripCommand_Request_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_aimdk_msgs_srv_LedStripCommand_Request_encode(roswasmc_bounded_2_aimdk_msgs_srv_LedStripCommand_Request const* value,
                                                                                        void* output,
                                                                                        size_t capacity,
                                                                                        size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_aimdk_msgs_srv_LedStripCommand_Request_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_aimdk_msgs_srv_LedStripCommand_Request_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_aimdk_msgs_srv_LedStripCommand_Request_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_2_aimdk_msgs_srv_LedStripCommand_Request_decode(void const* input,
                                                                                        size_t length,
                                                                                        roswasmc_bounded_2_aimdk_msgs_srv_LedStripCommand_Request* value)
{
    roswasmc_bounded_2_aimdk_msgs_srv_LedStripCommand_Request next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 12u || length > 12u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_aimdk_msgs_srv_LedStripCommand_Request_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_LEDSTRIPCOMMAND_RESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_LEDSTRIPCOMMAND_RESPONSE_0 != 0xdb85c7b4UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_LEDSTRIPCOMMAND_RESPONSE_1 != 0x0eec8512UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_LEDSTRIPCOMMAND_RESPONSE_2 != 0x6a332acdUL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_LEDSTRIPCOMMAND_RESPONSE_3 != 0x935066d5UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_LEDSTRIPCOMMAND_RESPONSE_4 != 0x04d610afUL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_LEDSTRIPCOMMAND_RESPONSE_5 != 0x694fd6bdUL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_LEDSTRIPCOMMAND_RESPONSE_6 != 0x1f942b76UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_LEDSTRIPCOMMAND_RESPONSE_7 != 0xd925a3d3UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_LEDSTRIPCOMMAND_RESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_LEDSTRIPCOMMAND_RESPONSE_0 0xdb85c7b4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_LEDSTRIPCOMMAND_RESPONSE_1 0x0eec8512UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_LEDSTRIPCOMMAND_RESPONSE_2 0x6a332acdUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_LEDSTRIPCOMMAND_RESPONSE_3 0x935066d5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_LEDSTRIPCOMMAND_RESPONSE_4 0x04d610afUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_LEDSTRIPCOMMAND_RESPONSE_5 0x694fd6bdUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_LEDSTRIPCOMMAND_RESPONSE_6 0x1f942b76UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_LEDSTRIPCOMMAND_RESPONSE_7 0xd925a3d3UL

/** Complete ROS2 aimdk_msgs/srv/LedStripCommand_Response value; no field projects away native data. */
typedef struct roswasmc_bounded_2_aimdk_msgs_srv_LedStripCommand_Response
{
    /** Declared field header; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_ResponseHeader header;
    /** Declared field status_code; canonical capacity is part of CODEC_IDENTITY. */
    uint16_t status_code;
} roswasmc_bounded_2_aimdk_msgs_srv_LedStripCommand_Response;

# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_LEDSTRIPCOMMAND_RESPONSE_MAX_WIRE_BYTES 18u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_LEDSTRIPCOMMAND_RESPONSE_MIN_WIRE_BYTES 18u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_LEDSTRIPCOMMAND_RESPONSE_CODEC_IDENTITY "UWVMROS1_3e08fb0103545c0d4e1558eba1dd8adad52f90ef083e7e8fb336087386e3c2a9"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_aimdk_msgs_srv_LedStripCommand_Response_valid(roswasmc_bounded_2_aimdk_msgs_srv_LedStripCommand_Response const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_ResponseHeader_valid(&value->header))
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_2_aimdk_msgs_srv_LedStripCommand_Response_wire_size(roswasmc_bounded_2_aimdk_msgs_srv_LedStripCommand_Response const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_aimdk_msgs_msg_ResponseHeader_wire_size(&value->header);
    n += 2;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_aimdk_msgs_srv_LedStripCommand_Response_write_fields(roswasmc_bounded_2_aimdk_msgs_srv_LedStripCommand_Response const* value,
                                                                            unsigned char* p,
                                                                            size_t* offset)
{
    roswasmc_bounded_2_aimdk_msgs_msg_ResponseHeader_write_fields(&value->header, p, offset);
    uwvm_bounded_put(p + *offset, (uint64_t)value->status_code, 2);
    *offset += 2;
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_aimdk_msgs_srv_LedStripCommand_Response_read_fields(unsigned char const* p,
                                                                                         size_t n,
                                                                                         size_t* offset,
                                                                                         roswasmc_bounded_2_aimdk_msgs_srv_LedStripCommand_Response* value)
{
    if(!roswasmc_bounded_2_aimdk_msgs_msg_ResponseHeader_read_fields(p, n, offset, &value->header))
        return 0;
    if(*offset > n || n - *offset < 2)
        return 0;
    {
        uint16_t bits = (uint16_t)uwvm_bounded_get(p + *offset, 2);
        uwvm_bounded_copy(&value->status_code, &bits, 2);
    }
    *offset += 2;
    return roswasmc_bounded_2_aimdk_msgs_srv_LedStripCommand_Response_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_aimdk_msgs_srv_LedStripCommand_Response_encode(roswasmc_bounded_2_aimdk_msgs_srv_LedStripCommand_Response const* value,
                                                                      void* output,
                                                                      size_t capacity,
                                                                      size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_aimdk_msgs_srv_LedStripCommand_Response_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_aimdk_msgs_srv_LedStripCommand_Response_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_aimdk_msgs_srv_LedStripCommand_Response_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_2_aimdk_msgs_srv_LedStripCommand_Response_decode(void const* input,
                                                                                         size_t length,
                                                                                         roswasmc_bounded_2_aimdk_msgs_srv_LedStripCommand_Response* value)
{
    roswasmc_bounded_2_aimdk_msgs_srv_LedStripCommand_Response next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 18u || length > 18u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_aimdk_msgs_srv_LedStripCommand_Response_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYEMOJI_REQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYEMOJI_REQUEST_0 != 0x3d6fa992UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYEMOJI_REQUEST_1 != 0x1f1bd823UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYEMOJI_REQUEST_2 != 0xde7edfa8UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYEMOJI_REQUEST_3 != 0x1b57612fUL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYEMOJI_REQUEST_4 != 0x1ed8f517UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYEMOJI_REQUEST_5 != 0x673400c9UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYEMOJI_REQUEST_6 != 0x972765b1UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYEMOJI_REQUEST_7 != 0x72f11bd6UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYEMOJI_REQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYEMOJI_REQUEST_0 0x3d6fa992UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYEMOJI_REQUEST_1 0x1f1bd823UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYEMOJI_REQUEST_2 0xde7edfa8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYEMOJI_REQUEST_3 0x1b57612fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYEMOJI_REQUEST_4 0x1ed8f517UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYEMOJI_REQUEST_5 0x673400c9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYEMOJI_REQUEST_6 0x972765b1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYEMOJI_REQUEST_7 0x72f11bd6UL

/** Complete ROS2 aimdk_msgs/srv/PlayEmoji_Request value; no field projects away native data. */
typedef struct roswasmc_bounded_2_aimdk_msgs_srv_PlayEmoji_Request
{
    /** Declared field header; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_CommonRequest header;
    /** Declared field emotion_id; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t emotion_id;
    /** Declared field mode; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t mode;
    /** Declared field priority; canonical capacity is part of CODEC_IDENTITY. */
    int32_t priority;
} roswasmc_bounded_2_aimdk_msgs_srv_PlayEmoji_Request;

# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYEMOJI_REQUEST_MAX_WIRE_BYTES 14u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYEMOJI_REQUEST_MIN_WIRE_BYTES 14u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYEMOJI_REQUEST_CODEC_IDENTITY "UWVMROS1_ba31bdc232369e170ee9fb00ac8e51639d81a657de8f6e61f9acfccc2a083d43"
/** Original scalar constant EMOTION_UNKNOWN=0; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYEMOJI_REQUEST_EMOTION_UNKNOWN UINT32_C(0)
/** Original scalar constant EMOTION_IDLE_BLINK=1; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYEMOJI_REQUEST_EMOTION_IDLE_BLINK UINT32_C(1)
/** Original scalar constant EMOTION_IDLE_CALM_1=10; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYEMOJI_REQUEST_EMOTION_IDLE_CALM_1 UINT32_C(10)
/** Original scalar constant EMOTION_IDLE_CALM_2=11; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYEMOJI_REQUEST_EMOTION_IDLE_CALM_2 UINT32_C(11)
/** Original scalar constant EMOTION_IDLE_GAME=20; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYEMOJI_REQUEST_EMOTION_IDLE_GAME UINT32_C(20)
/** Original scalar constant EMOTION_IDLE_CUTE_1=30; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYEMOJI_REQUEST_EMOTION_IDLE_CUTE_1 UINT32_C(30)
/** Original scalar constant EMOTION_IDLE_CUTE_2=31; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYEMOJI_REQUEST_EMOTION_IDLE_CUTE_2 UINT32_C(31)
/** Original scalar constant EMOTION_IDLE_CUTE_3=32; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYEMOJI_REQUEST_EMOTION_IDLE_CUTE_3 UINT32_C(32)
/** Original scalar constant EMOTION_IDLE_CUTE_4=33; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYEMOJI_REQUEST_EMOTION_IDLE_CUTE_4 UINT32_C(33)
/** Original scalar constant EMOTION_EYE_CLOSE=40; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYEMOJI_REQUEST_EMOTION_EYE_CLOSE UINT32_C(40)
/** Original scalar constant EMOTION_EYE_OPEN=50; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYEMOJI_REQUEST_EMOTION_EYE_OPEN UINT32_C(50)
/** Original scalar constant EMOTION_EYE_BORING_1=60; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYEMOJI_REQUEST_EMOTION_EYE_BORING_1 UINT32_C(60)
/** Original scalar constant EMOTION_EYE_ABNORMAL=70; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYEMOJI_REQUEST_EMOTION_EYE_ABNORMAL UINT32_C(70)
/** Original scalar constant EMOTION_EYE_SLEEPY=80; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYEMOJI_REQUEST_EMOTION_EYE_SLEEPY UINT32_C(80)
/** Original scalar constant EMOTION_EYE_HAPPY=90; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYEMOJI_REQUEST_EMOTION_EYE_HAPPY UINT32_C(90)
/** Original scalar constant EMOTION_EYE_EXTREMEHAPPY_1=100; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYEMOJI_REQUEST_EMOTION_EYE_EXTREMEHAPPY_1 UINT32_C(100)
/** Original scalar constant EMOTION_EYE_EXTREMEHAPPY_2=101; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYEMOJI_REQUEST_EMOTION_EYE_EXTREMEHAPPY_2 UINT32_C(101)
/** Original scalar constant EMOTION_EYE_SAD=110; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYEMOJI_REQUEST_EMOTION_EYE_SAD UINT32_C(110)
/** Original scalar constant EMOTION_EYE_SYMPATHY=120; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYEMOJI_REQUEST_EMOTION_EYE_SYMPATHY UINT32_C(120)
/** Original scalar constant EMOTION_EYE_CONFUSE=130; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYEMOJI_REQUEST_EMOTION_EYE_CONFUSE UINT32_C(130)
/** Original scalar constant EMOTION_EYE_SHOCK=140; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYEMOJI_REQUEST_EMOTION_EYE_SHOCK UINT32_C(140)
/** Original scalar constant EMOTION_EYE_ACTCUTE=150; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYEMOJI_REQUEST_EMOTION_EYE_ACTCUTE UINT32_C(150)
/** Original scalar constant EMOTION_EYE_SERIOUS=160; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYEMOJI_REQUEST_EMOTION_EYE_SERIOUS UINT32_C(160)
/** Original scalar constant EMOTION_EYE_THINKING=170; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYEMOJI_REQUEST_EMOTION_EYE_THINKING UINT32_C(170)
/** Original scalar constant EMOTION_EYE_ANGRY=180; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYEMOJI_REQUEST_EMOTION_EYE_ANGRY UINT32_C(180)
/** Original scalar constant EMOTION_EYE_EXTREMEANGRY=190; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYEMOJI_REQUEST_EMOTION_EYE_EXTREMEANGRY UINT32_C(190)
/** Original scalar constant EMOTION_EYE_ADORE=200; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYEMOJI_REQUEST_EMOTION_EYE_ADORE UINT32_C(200)
/** Original scalar constant EMOTION_EYE_EXTREMEADORE=210; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYEMOJI_REQUEST_EMOTION_EYE_EXTREMEADORE UINT32_C(210)
/** Original scalar constant EMOTION_EYE_CHARGE=220; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYEMOJI_REQUEST_EMOTION_EYE_CHARGE UINT32_C(220)
/** Original scalar constant EMOTION_MODE_ONCE=1; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYEMOJI_REQUEST_EMOTION_MODE_ONCE UINT32_C(1)
/** Original scalar constant EMOTION_MODE_LOOP=2; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYEMOJI_REQUEST_EMOTION_MODE_LOOP UINT32_C(2)

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_aimdk_msgs_srv_PlayEmoji_Request_valid(roswasmc_bounded_2_aimdk_msgs_srv_PlayEmoji_Request const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_CommonRequest_valid(&value->header))
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_aimdk_msgs_srv_PlayEmoji_Request_wire_size(roswasmc_bounded_2_aimdk_msgs_srv_PlayEmoji_Request const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_aimdk_msgs_msg_CommonRequest_wire_size(&value->header);
    n += 1;
    n += 1;
    n += 4;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_aimdk_msgs_srv_PlayEmoji_Request_write_fields(roswasmc_bounded_2_aimdk_msgs_srv_PlayEmoji_Request const* value,
                                                                                    unsigned char* p,
                                                                                    size_t* offset)
{
    roswasmc_bounded_2_aimdk_msgs_msg_CommonRequest_write_fields(&value->header, p, offset);
    uwvm_bounded_put(p + *offset, (uint64_t)value->emotion_id, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->mode, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->priority, 4);
    *offset += 4;
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_aimdk_msgs_srv_PlayEmoji_Request_read_fields(unsigned char const* p,
                                                                                  size_t n,
                                                                                  size_t* offset,
                                                                                  roswasmc_bounded_2_aimdk_msgs_srv_PlayEmoji_Request* value)
{
    if(!roswasmc_bounded_2_aimdk_msgs_msg_CommonRequest_read_fields(p, n, offset, &value->header))
        return 0;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->emotion_id, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->mode, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->priority, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_2_aimdk_msgs_srv_PlayEmoji_Request_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_aimdk_msgs_srv_PlayEmoji_Request_encode(roswasmc_bounded_2_aimdk_msgs_srv_PlayEmoji_Request const* value,
                                                                                  void* output,
                                                                                  size_t capacity,
                                                                                  size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_aimdk_msgs_srv_PlayEmoji_Request_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_aimdk_msgs_srv_PlayEmoji_Request_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_aimdk_msgs_srv_PlayEmoji_Request_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_aimdk_msgs_srv_PlayEmoji_Request_decode(void const* input, size_t length, roswasmc_bounded_2_aimdk_msgs_srv_PlayEmoji_Request* value)
{
    roswasmc_bounded_2_aimdk_msgs_srv_PlayEmoji_Request next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 14u || length > 14u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_aimdk_msgs_srv_PlayEmoji_Request_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYEMOJI_RESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYEMOJI_RESPONSE_0 != 0x0054de93UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYEMOJI_RESPONSE_1 != 0x8926f9dfUL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYEMOJI_RESPONSE_2 != 0x19e90b03UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYEMOJI_RESPONSE_3 != 0xd1c5f031UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYEMOJI_RESPONSE_4 != 0xb3fd63ecUL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYEMOJI_RESPONSE_5 != 0x350ce1b2UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYEMOJI_RESPONSE_6 != 0x5eae8c51UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYEMOJI_RESPONSE_7 != 0x6c73c93aUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYEMOJI_RESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYEMOJI_RESPONSE_0 0x0054de93UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYEMOJI_RESPONSE_1 0x8926f9dfUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYEMOJI_RESPONSE_2 0x19e90b03UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYEMOJI_RESPONSE_3 0xd1c5f031UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYEMOJI_RESPONSE_4 0xb3fd63ecUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYEMOJI_RESPONSE_5 0x350ce1b2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYEMOJI_RESPONSE_6 0x5eae8c51UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYEMOJI_RESPONSE_7 0x6c73c93aUL

/** UTF-8 byte storage for aimdk_msgs/srv/PlayEmoji_Response.message; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_aimdk_msgs_srv_PlayEmoji_Response_message_text;

/** Complete ROS2 aimdk_msgs/srv/PlayEmoji_Response value; no field projects away native data. */
typedef struct roswasmc_bounded_2_aimdk_msgs_srv_PlayEmoji_Response
{
    /** Declared field header; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_CommonResponse header;
    /** Declared field success; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t success;
    /** Declared field message; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_srv_PlayEmoji_Response_message_text message;
} roswasmc_bounded_2_aimdk_msgs_srv_PlayEmoji_Response;

# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYEMOJI_RESPONSE_MAX_WIRE_BYTES 285u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYEMOJI_RESPONSE_MIN_WIRE_BYTES 29u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYEMOJI_RESPONSE_CODEC_IDENTITY "UWVMROS1_5e5ba0082cf9bf5d9b9c7eae034efd76bd44503306bb4994e06862a802cfb6b9"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_aimdk_msgs_srv_PlayEmoji_Response_valid(roswasmc_bounded_2_aimdk_msgs_srv_PlayEmoji_Response const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_CommonResponse_valid(&value->header))
        return 0;
    if(value->success > 1)
        return 0;
    if(value->message.size > 128u || !uwvm_bounded_utf8(value->message.data, value->message.size))
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_aimdk_msgs_srv_PlayEmoji_Response_wire_size(roswasmc_bounded_2_aimdk_msgs_srv_PlayEmoji_Response const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_aimdk_msgs_msg_CommonResponse_wire_size(&value->header);
    n += 1;
    n += 4 + value->message.size;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_aimdk_msgs_srv_PlayEmoji_Response_write_fields(roswasmc_bounded_2_aimdk_msgs_srv_PlayEmoji_Response const* value,
                                                                                     unsigned char* p,
                                                                                     size_t* offset)
{
    roswasmc_bounded_2_aimdk_msgs_msg_CommonResponse_write_fields(&value->header, p, offset);
    uwvm_bounded_put(p + *offset, (uint64_t)value->success, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, value->message.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->message.data, value->message.size);
    *offset += value->message.size;
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_aimdk_msgs_srv_PlayEmoji_Response_read_fields(unsigned char const* p,
                                                                                   size_t n,
                                                                                   size_t* offset,
                                                                                   roswasmc_bounded_2_aimdk_msgs_srv_PlayEmoji_Response* value)
{
    if(!roswasmc_bounded_2_aimdk_msgs_msg_CommonResponse_read_fields(p, n, offset, &value->header))
        return 0;
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
    if(value->message.size > 128u || value->message.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->message.data, p + *offset, value->message.size);
    *offset += value->message.size;
    return roswasmc_bounded_2_aimdk_msgs_srv_PlayEmoji_Response_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_aimdk_msgs_srv_PlayEmoji_Response_encode(roswasmc_bounded_2_aimdk_msgs_srv_PlayEmoji_Response const* value,
                                                                                   void* output,
                                                                                   size_t capacity,
                                                                                   size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_aimdk_msgs_srv_PlayEmoji_Response_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_aimdk_msgs_srv_PlayEmoji_Response_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_aimdk_msgs_srv_PlayEmoji_Response_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_aimdk_msgs_srv_PlayEmoji_Response_decode(void const* input, size_t length, roswasmc_bounded_2_aimdk_msgs_srv_PlayEmoji_Response* value)
{
    roswasmc_bounded_2_aimdk_msgs_srv_PlayEmoji_Response next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 29u || length > 285u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_aimdk_msgs_srv_PlayEmoji_Response_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYMEDIAFILE_REQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYMEDIAFILE_REQUEST_0 != 0xfddf5bc6UL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYMEDIAFILE_REQUEST_1 != 0xa257d00cUL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYMEDIAFILE_REQUEST_2 != 0xdc488974UL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYMEDIAFILE_REQUEST_3 != 0xad9383daUL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYMEDIAFILE_REQUEST_4 != 0x9e62660dUL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYMEDIAFILE_REQUEST_5 != 0x13cbb86bUL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYMEDIAFILE_REQUEST_6 != 0x61f65bb2UL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYMEDIAFILE_REQUEST_7 != 0x6751e1ccUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYMEDIAFILE_REQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYMEDIAFILE_REQUEST_0 0xfddf5bc6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYMEDIAFILE_REQUEST_1 0xa257d00cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYMEDIAFILE_REQUEST_2 0xdc488974UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYMEDIAFILE_REQUEST_3 0xad9383daUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYMEDIAFILE_REQUEST_4 0x9e62660dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYMEDIAFILE_REQUEST_5 0x13cbb86bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYMEDIAFILE_REQUEST_6 0x61f65bb2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYMEDIAFILE_REQUEST_7 0x6751e1ccUL

/** Complete ROS2 aimdk_msgs/srv/PlayMediaFile_Request value; no field projects away native data. */
typedef struct roswasmc_bounded_2_aimdk_msgs_srv_PlayMediaFile_Request
{
    /** Declared field header; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_CommonRequest header;
    /** Declared field media_file_req; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_PlayMediaFileRequest media_file_req;
} roswasmc_bounded_2_aimdk_msgs_srv_PlayMediaFile_Request;

# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYMEDIAFILE_REQUEST_MAX_WIRE_BYTES 414u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYMEDIAFILE_REQUEST_MIN_WIRE_BYTES 30u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYMEDIAFILE_REQUEST_CODEC_IDENTITY "UWVMROS1_546706b9797f99c98a014f9849171aef262775e8ab702cfe6517d92f5047247c"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_aimdk_msgs_srv_PlayMediaFile_Request_valid(roswasmc_bounded_2_aimdk_msgs_srv_PlayMediaFile_Request const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_CommonRequest_valid(&value->header))
        return 0;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_PlayMediaFileRequest_valid(&value->media_file_req))
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_aimdk_msgs_srv_PlayMediaFile_Request_wire_size(roswasmc_bounded_2_aimdk_msgs_srv_PlayMediaFile_Request const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_aimdk_msgs_msg_CommonRequest_wire_size(&value->header);
    n += roswasmc_bounded_2_aimdk_msgs_msg_PlayMediaFileRequest_wire_size(&value->media_file_req);
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_aimdk_msgs_srv_PlayMediaFile_Request_write_fields(roswasmc_bounded_2_aimdk_msgs_srv_PlayMediaFile_Request const* value,
                                                                                        unsigned char* p,
                                                                                        size_t* offset)
{
    roswasmc_bounded_2_aimdk_msgs_msg_CommonRequest_write_fields(&value->header, p, offset);
    roswasmc_bounded_2_aimdk_msgs_msg_PlayMediaFileRequest_write_fields(&value->media_file_req, p, offset);
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_aimdk_msgs_srv_PlayMediaFile_Request_read_fields(unsigned char const* p,
                                                                                      size_t n,
                                                                                      size_t* offset,
                                                                                      roswasmc_bounded_2_aimdk_msgs_srv_PlayMediaFile_Request* value)
{
    if(!roswasmc_bounded_2_aimdk_msgs_msg_CommonRequest_read_fields(p, n, offset, &value->header))
        return 0;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_PlayMediaFileRequest_read_fields(p, n, offset, &value->media_file_req))
        return 0;
    return roswasmc_bounded_2_aimdk_msgs_srv_PlayMediaFile_Request_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_aimdk_msgs_srv_PlayMediaFile_Request_encode(roswasmc_bounded_2_aimdk_msgs_srv_PlayMediaFile_Request const* value,
                                                                                      void* output,
                                                                                      size_t capacity,
                                                                                      size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_aimdk_msgs_srv_PlayMediaFile_Request_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_aimdk_msgs_srv_PlayMediaFile_Request_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_aimdk_msgs_srv_PlayMediaFile_Request_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_2_aimdk_msgs_srv_PlayMediaFile_Request_decode(void const* input,
                                                                                      size_t length,
                                                                                      roswasmc_bounded_2_aimdk_msgs_srv_PlayMediaFile_Request* value)
{
    roswasmc_bounded_2_aimdk_msgs_srv_PlayMediaFile_Request next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 30u || length > 414u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_aimdk_msgs_srv_PlayMediaFile_Request_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYMEDIAFILE_RESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYMEDIAFILE_RESPONSE_0 != 0x5663282cUL ||                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYMEDIAFILE_RESPONSE_1 != 0xacdfe466UL ||                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYMEDIAFILE_RESPONSE_2 != 0xf9191e64UL ||                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYMEDIAFILE_RESPONSE_3 != 0x3ae7d612UL ||                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYMEDIAFILE_RESPONSE_4 != 0xeaf9c96bUL ||                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYMEDIAFILE_RESPONSE_5 != 0x9d4396e6UL ||                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYMEDIAFILE_RESPONSE_6 != 0xba878565UL ||                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYMEDIAFILE_RESPONSE_7 != 0x98dba1ecUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYMEDIAFILE_RESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYMEDIAFILE_RESPONSE_0 0x5663282cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYMEDIAFILE_RESPONSE_1 0xacdfe466UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYMEDIAFILE_RESPONSE_2 0xf9191e64UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYMEDIAFILE_RESPONSE_3 0x3ae7d612UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYMEDIAFILE_RESPONSE_4 0xeaf9c96bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYMEDIAFILE_RESPONSE_5 0x9d4396e6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYMEDIAFILE_RESPONSE_6 0xba878565UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYMEDIAFILE_RESPONSE_7 0x98dba1ecUL

/** Complete ROS2 aimdk_msgs/srv/PlayMediaFile_Response value; no field projects away native data. */
typedef struct roswasmc_bounded_2_aimdk_msgs_srv_PlayMediaFile_Response
{
    /** Declared field header; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_CommonResponse header;
    /** Declared field tts_resp; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_PlayTtsResponse tts_resp;
} roswasmc_bounded_2_aimdk_msgs_srv_PlayMediaFile_Response;

# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYMEDIAFILE_RESPONSE_MAX_WIRE_BYTES 690u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYMEDIAFILE_RESPONSE_MIN_WIRE_BYTES 50u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYMEDIAFILE_RESPONSE_CODEC_IDENTITY "UWVMROS1_124871324704ab61f208168e64d4789376b3935b34895e824996e07561795099"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_aimdk_msgs_srv_PlayMediaFile_Response_valid(roswasmc_bounded_2_aimdk_msgs_srv_PlayMediaFile_Response const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_CommonResponse_valid(&value->header))
        return 0;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_PlayTtsResponse_valid(&value->tts_resp))
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_aimdk_msgs_srv_PlayMediaFile_Response_wire_size(roswasmc_bounded_2_aimdk_msgs_srv_PlayMediaFile_Response const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_aimdk_msgs_msg_CommonResponse_wire_size(&value->header);
    n += roswasmc_bounded_2_aimdk_msgs_msg_PlayTtsResponse_wire_size(&value->tts_resp);
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_aimdk_msgs_srv_PlayMediaFile_Response_write_fields(roswasmc_bounded_2_aimdk_msgs_srv_PlayMediaFile_Response const* value,
                                                                                         unsigned char* p,
                                                                                         size_t* offset)
{
    roswasmc_bounded_2_aimdk_msgs_msg_CommonResponse_write_fields(&value->header, p, offset);
    roswasmc_bounded_2_aimdk_msgs_msg_PlayTtsResponse_write_fields(&value->tts_resp, p, offset);
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_aimdk_msgs_srv_PlayMediaFile_Response_read_fields(unsigned char const* p,
                                                                                       size_t n,
                                                                                       size_t* offset,
                                                                                       roswasmc_bounded_2_aimdk_msgs_srv_PlayMediaFile_Response* value)
{
    if(!roswasmc_bounded_2_aimdk_msgs_msg_CommonResponse_read_fields(p, n, offset, &value->header))
        return 0;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_PlayTtsResponse_read_fields(p, n, offset, &value->tts_resp))
        return 0;
    return roswasmc_bounded_2_aimdk_msgs_srv_PlayMediaFile_Response_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_aimdk_msgs_srv_PlayMediaFile_Response_encode(roswasmc_bounded_2_aimdk_msgs_srv_PlayMediaFile_Response const* value,
                                                                                       void* output,
                                                                                       size_t capacity,
                                                                                       size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_aimdk_msgs_srv_PlayMediaFile_Response_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_aimdk_msgs_srv_PlayMediaFile_Response_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_aimdk_msgs_srv_PlayMediaFile_Response_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_2_aimdk_msgs_srv_PlayMediaFile_Response_decode(void const* input,
                                                                                       size_t length,
                                                                                       roswasmc_bounded_2_aimdk_msgs_srv_PlayMediaFile_Response* value)
{
    roswasmc_bounded_2_aimdk_msgs_srv_PlayMediaFile_Response next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 50u || length > 690u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_aimdk_msgs_srv_PlayMediaFile_Response_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYTTS_REQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYTTS_REQUEST_0 != 0xca6a7533UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYTTS_REQUEST_1 != 0x00dc995bUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYTTS_REQUEST_2 != 0x06b3ba52UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYTTS_REQUEST_3 != 0xd48e7d3bUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYTTS_REQUEST_4 != 0xda40b2d9UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYTTS_REQUEST_5 != 0xd9c7c059UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYTTS_REQUEST_6 != 0x7333b910UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYTTS_REQUEST_7 != 0xe60cd5a3UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYTTS_REQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYTTS_REQUEST_0 0xca6a7533UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYTTS_REQUEST_1 0x00dc995bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYTTS_REQUEST_2 0x06b3ba52UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYTTS_REQUEST_3 0xd48e7d3bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYTTS_REQUEST_4 0xda40b2d9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYTTS_REQUEST_5 0xd9c7c059UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYTTS_REQUEST_6 0x7333b910UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYTTS_REQUEST_7 0xe60cd5a3UL

/** Complete ROS2 aimdk_msgs/srv/PlayTts_Request value; no field projects away native data. */
typedef struct roswasmc_bounded_2_aimdk_msgs_srv_PlayTts_Request
{
    /** Declared field header; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_CommonRequest header;
    /** Declared field tts_req; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_PlayTtsRequest tts_req;
} roswasmc_bounded_2_aimdk_msgs_srv_PlayTts_Request;

# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYTTS_REQUEST_MAX_WIRE_BYTES 410u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYTTS_REQUEST_MIN_WIRE_BYTES 26u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYTTS_REQUEST_CODEC_IDENTITY "UWVMROS1_2325b475e9d2777afe139aff54b29254f3e0ac0fd1fa499db049cf535810c6f7"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_aimdk_msgs_srv_PlayTts_Request_valid(roswasmc_bounded_2_aimdk_msgs_srv_PlayTts_Request const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_CommonRequest_valid(&value->header))
        return 0;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_PlayTtsRequest_valid(&value->tts_req))
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_aimdk_msgs_srv_PlayTts_Request_wire_size(roswasmc_bounded_2_aimdk_msgs_srv_PlayTts_Request const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_aimdk_msgs_msg_CommonRequest_wire_size(&value->header);
    n += roswasmc_bounded_2_aimdk_msgs_msg_PlayTtsRequest_wire_size(&value->tts_req);
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_aimdk_msgs_srv_PlayTts_Request_write_fields(roswasmc_bounded_2_aimdk_msgs_srv_PlayTts_Request const* value,
                                                                                  unsigned char* p,
                                                                                  size_t* offset)
{
    roswasmc_bounded_2_aimdk_msgs_msg_CommonRequest_write_fields(&value->header, p, offset);
    roswasmc_bounded_2_aimdk_msgs_msg_PlayTtsRequest_write_fields(&value->tts_req, p, offset);
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_aimdk_msgs_srv_PlayTts_Request_read_fields(unsigned char const* p,
                                                                                size_t n,
                                                                                size_t* offset,
                                                                                roswasmc_bounded_2_aimdk_msgs_srv_PlayTts_Request* value)
{
    if(!roswasmc_bounded_2_aimdk_msgs_msg_CommonRequest_read_fields(p, n, offset, &value->header))
        return 0;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_PlayTtsRequest_read_fields(p, n, offset, &value->tts_req))
        return 0;
    return roswasmc_bounded_2_aimdk_msgs_srv_PlayTts_Request_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_aimdk_msgs_srv_PlayTts_Request_encode(roswasmc_bounded_2_aimdk_msgs_srv_PlayTts_Request const* value,
                                                                                void* output,
                                                                                size_t capacity,
                                                                                size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_aimdk_msgs_srv_PlayTts_Request_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_aimdk_msgs_srv_PlayTts_Request_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_aimdk_msgs_srv_PlayTts_Request_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_aimdk_msgs_srv_PlayTts_Request_decode(void const* input, size_t length, roswasmc_bounded_2_aimdk_msgs_srv_PlayTts_Request* value)
{
    roswasmc_bounded_2_aimdk_msgs_srv_PlayTts_Request next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 26u || length > 410u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_aimdk_msgs_srv_PlayTts_Request_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYTTS_RESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYTTS_RESPONSE_0 != 0xbaa5d70cUL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYTTS_RESPONSE_1 != 0x2d0fa33dUL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYTTS_RESPONSE_2 != 0x03f99574UL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYTTS_RESPONSE_3 != 0x052b5546UL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYTTS_RESPONSE_4 != 0x5d78bd9aUL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYTTS_RESPONSE_5 != 0xa7075f3cUL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYTTS_RESPONSE_6 != 0xd9eec026UL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYTTS_RESPONSE_7 != 0xe1a30906UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYTTS_RESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYTTS_RESPONSE_0 0xbaa5d70cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYTTS_RESPONSE_1 0x2d0fa33dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYTTS_RESPONSE_2 0x03f99574UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYTTS_RESPONSE_3 0x052b5546UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYTTS_RESPONSE_4 0x5d78bd9aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYTTS_RESPONSE_5 0xa7075f3cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYTTS_RESPONSE_6 0xd9eec026UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYTTS_RESPONSE_7 0xe1a30906UL

/** Complete ROS2 aimdk_msgs/srv/PlayTts_Response value; no field projects away native data. */
typedef struct roswasmc_bounded_2_aimdk_msgs_srv_PlayTts_Response
{
    /** Declared field header; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_CommonResponse header;
    /** Declared field tts_resp; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_PlayTtsResponse tts_resp;
} roswasmc_bounded_2_aimdk_msgs_srv_PlayTts_Response;

# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYTTS_RESPONSE_MAX_WIRE_BYTES 690u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYTTS_RESPONSE_MIN_WIRE_BYTES 50u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYTTS_RESPONSE_CODEC_IDENTITY "UWVMROS1_a0587cd9d9294f30dc27c095bfc1acdf54d98b47cf4ac8ddd77b6b75530c290a"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_aimdk_msgs_srv_PlayTts_Response_valid(roswasmc_bounded_2_aimdk_msgs_srv_PlayTts_Response const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_CommonResponse_valid(&value->header))
        return 0;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_PlayTtsResponse_valid(&value->tts_resp))
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_aimdk_msgs_srv_PlayTts_Response_wire_size(roswasmc_bounded_2_aimdk_msgs_srv_PlayTts_Response const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_aimdk_msgs_msg_CommonResponse_wire_size(&value->header);
    n += roswasmc_bounded_2_aimdk_msgs_msg_PlayTtsResponse_wire_size(&value->tts_resp);
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_aimdk_msgs_srv_PlayTts_Response_write_fields(roswasmc_bounded_2_aimdk_msgs_srv_PlayTts_Response const* value,
                                                                                   unsigned char* p,
                                                                                   size_t* offset)
{
    roswasmc_bounded_2_aimdk_msgs_msg_CommonResponse_write_fields(&value->header, p, offset);
    roswasmc_bounded_2_aimdk_msgs_msg_PlayTtsResponse_write_fields(&value->tts_resp, p, offset);
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_aimdk_msgs_srv_PlayTts_Response_read_fields(unsigned char const* p,
                                                                                 size_t n,
                                                                                 size_t* offset,
                                                                                 roswasmc_bounded_2_aimdk_msgs_srv_PlayTts_Response* value)
{
    if(!roswasmc_bounded_2_aimdk_msgs_msg_CommonResponse_read_fields(p, n, offset, &value->header))
        return 0;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_PlayTtsResponse_read_fields(p, n, offset, &value->tts_resp))
        return 0;
    return roswasmc_bounded_2_aimdk_msgs_srv_PlayTts_Response_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_aimdk_msgs_srv_PlayTts_Response_encode(roswasmc_bounded_2_aimdk_msgs_srv_PlayTts_Response const* value,
                                                                                 void* output,
                                                                                 size_t capacity,
                                                                                 size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_aimdk_msgs_srv_PlayTts_Response_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_aimdk_msgs_srv_PlayTts_Response_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_aimdk_msgs_srv_PlayTts_Response_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_aimdk_msgs_srv_PlayTts_Response_decode(void const* input, size_t length, roswasmc_bounded_2_aimdk_msgs_srv_PlayTts_Response* value)
{
    roswasmc_bounded_2_aimdk_msgs_srv_PlayTts_Response next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 50u || length > 690u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_aimdk_msgs_srv_PlayTts_Response_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYVIDEO_REQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYVIDEO_REQUEST_0 != 0x47d5febfUL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYVIDEO_REQUEST_1 != 0xa2b41bf7UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYVIDEO_REQUEST_2 != 0xf65fd623UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYVIDEO_REQUEST_3 != 0xbd6b345aUL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYVIDEO_REQUEST_4 != 0x684d2234UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYVIDEO_REQUEST_5 != 0xf9a9b397UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYVIDEO_REQUEST_6 != 0x68a5864eUL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYVIDEO_REQUEST_7 != 0x2970f341UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYVIDEO_REQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYVIDEO_REQUEST_0 0x47d5febfUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYVIDEO_REQUEST_1 0xa2b41bf7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYVIDEO_REQUEST_2 0xf65fd623UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYVIDEO_REQUEST_3 0xbd6b345aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYVIDEO_REQUEST_4 0x684d2234UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYVIDEO_REQUEST_5 0xf9a9b397UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYVIDEO_REQUEST_6 0x68a5864eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYVIDEO_REQUEST_7 0x2970f341UL

/** UTF-8 byte storage for aimdk_msgs/srv/PlayVideo_Request.video_path; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_aimdk_msgs_srv_PlayVideo_Request_video_path_text;

/** Complete ROS2 aimdk_msgs/srv/PlayVideo_Request value; no field projects away native data. */
typedef struct roswasmc_bounded_2_aimdk_msgs_srv_PlayVideo_Request
{
    /** Declared field header; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_CommonRequest header;
    /** Declared field video_path; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_srv_PlayVideo_Request_video_path_text video_path;
    /** Declared field mode; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t mode;
    /** Declared field priority; canonical capacity is part of CODEC_IDENTITY. */
    int32_t priority;
} roswasmc_bounded_2_aimdk_msgs_srv_PlayVideo_Request;

# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYVIDEO_REQUEST_MAX_WIRE_BYTES 145u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYVIDEO_REQUEST_MIN_WIRE_BYTES 17u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYVIDEO_REQUEST_CODEC_IDENTITY "UWVMROS1_a42348160bfed67c90f9ddc96beaca7b37e6099ba67c8c025d6ac0f95e6bc878"
/** Original scalar constant EMOTION_MODE_ONCE=1; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYVIDEO_REQUEST_EMOTION_MODE_ONCE UINT32_C(1)
/** Original scalar constant EMOTION_MODE_LOOP=2; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYVIDEO_REQUEST_EMOTION_MODE_LOOP UINT32_C(2)

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_aimdk_msgs_srv_PlayVideo_Request_valid(roswasmc_bounded_2_aimdk_msgs_srv_PlayVideo_Request const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_CommonRequest_valid(&value->header))
        return 0;
    if(value->video_path.size > 128u || !uwvm_bounded_utf8(value->video_path.data, value->video_path.size))
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_aimdk_msgs_srv_PlayVideo_Request_wire_size(roswasmc_bounded_2_aimdk_msgs_srv_PlayVideo_Request const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_aimdk_msgs_msg_CommonRequest_wire_size(&value->header);
    n += 4 + value->video_path.size;
    n += 1;
    n += 4;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_aimdk_msgs_srv_PlayVideo_Request_write_fields(roswasmc_bounded_2_aimdk_msgs_srv_PlayVideo_Request const* value,
                                                                                    unsigned char* p,
                                                                                    size_t* offset)
{
    roswasmc_bounded_2_aimdk_msgs_msg_CommonRequest_write_fields(&value->header, p, offset);
    uwvm_bounded_put(p + *offset, value->video_path.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->video_path.data, value->video_path.size);
    *offset += value->video_path.size;
    uwvm_bounded_put(p + *offset, (uint64_t)value->mode, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->priority, 4);
    *offset += 4;
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_aimdk_msgs_srv_PlayVideo_Request_read_fields(unsigned char const* p,
                                                                                  size_t n,
                                                                                  size_t* offset,
                                                                                  roswasmc_bounded_2_aimdk_msgs_srv_PlayVideo_Request* value)
{
    if(!roswasmc_bounded_2_aimdk_msgs_msg_CommonRequest_read_fields(p, n, offset, &value->header))
        return 0;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->video_path.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->video_path.size > 128u || value->video_path.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->video_path.data, p + *offset, value->video_path.size);
    *offset += value->video_path.size;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->mode, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->priority, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_2_aimdk_msgs_srv_PlayVideo_Request_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_aimdk_msgs_srv_PlayVideo_Request_encode(roswasmc_bounded_2_aimdk_msgs_srv_PlayVideo_Request const* value,
                                                                                  void* output,
                                                                                  size_t capacity,
                                                                                  size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_aimdk_msgs_srv_PlayVideo_Request_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_aimdk_msgs_srv_PlayVideo_Request_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_aimdk_msgs_srv_PlayVideo_Request_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_aimdk_msgs_srv_PlayVideo_Request_decode(void const* input, size_t length, roswasmc_bounded_2_aimdk_msgs_srv_PlayVideo_Request* value)
{
    roswasmc_bounded_2_aimdk_msgs_srv_PlayVideo_Request next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 17u || length > 145u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_aimdk_msgs_srv_PlayVideo_Request_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYVIDEO_RESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYVIDEO_RESPONSE_0 != 0xcf5b87a7UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYVIDEO_RESPONSE_1 != 0x717b4b8aUL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYVIDEO_RESPONSE_2 != 0xc08c3907UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYVIDEO_RESPONSE_3 != 0x3d6ecc38UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYVIDEO_RESPONSE_4 != 0xcb1b84bdUL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYVIDEO_RESPONSE_5 != 0x62bd23b5UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYVIDEO_RESPONSE_6 != 0x816c2304UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYVIDEO_RESPONSE_7 != 0x92f106daUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYVIDEO_RESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYVIDEO_RESPONSE_0 0xcf5b87a7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYVIDEO_RESPONSE_1 0x717b4b8aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYVIDEO_RESPONSE_2 0xc08c3907UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYVIDEO_RESPONSE_3 0x3d6ecc38UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYVIDEO_RESPONSE_4 0xcb1b84bdUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYVIDEO_RESPONSE_5 0x62bd23b5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYVIDEO_RESPONSE_6 0x816c2304UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYVIDEO_RESPONSE_7 0x92f106daUL

/** UTF-8 byte storage for aimdk_msgs/srv/PlayVideo_Response.message; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_aimdk_msgs_srv_PlayVideo_Response_message_text;

/** Complete ROS2 aimdk_msgs/srv/PlayVideo_Response value; no field projects away native data. */
typedef struct roswasmc_bounded_2_aimdk_msgs_srv_PlayVideo_Response
{
    /** Declared field header; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_CommonResponse header;
    /** Declared field success; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t success;
    /** Declared field message; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_srv_PlayVideo_Response_message_text message;
} roswasmc_bounded_2_aimdk_msgs_srv_PlayVideo_Response;

# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYVIDEO_RESPONSE_MAX_WIRE_BYTES 285u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYVIDEO_RESPONSE_MIN_WIRE_BYTES 29u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_PLAYVIDEO_RESPONSE_CODEC_IDENTITY "UWVMROS1_f714873f193ca3ee0d02c822dbc3262033a2fe7913748ba177136a24d5b7f627"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_aimdk_msgs_srv_PlayVideo_Response_valid(roswasmc_bounded_2_aimdk_msgs_srv_PlayVideo_Response const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_CommonResponse_valid(&value->header))
        return 0;
    if(value->success > 1)
        return 0;
    if(value->message.size > 128u || !uwvm_bounded_utf8(value->message.data, value->message.size))
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_aimdk_msgs_srv_PlayVideo_Response_wire_size(roswasmc_bounded_2_aimdk_msgs_srv_PlayVideo_Response const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_aimdk_msgs_msg_CommonResponse_wire_size(&value->header);
    n += 1;
    n += 4 + value->message.size;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_aimdk_msgs_srv_PlayVideo_Response_write_fields(roswasmc_bounded_2_aimdk_msgs_srv_PlayVideo_Response const* value,
                                                                                     unsigned char* p,
                                                                                     size_t* offset)
{
    roswasmc_bounded_2_aimdk_msgs_msg_CommonResponse_write_fields(&value->header, p, offset);
    uwvm_bounded_put(p + *offset, (uint64_t)value->success, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, value->message.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->message.data, value->message.size);
    *offset += value->message.size;
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_aimdk_msgs_srv_PlayVideo_Response_read_fields(unsigned char const* p,
                                                                                   size_t n,
                                                                                   size_t* offset,
                                                                                   roswasmc_bounded_2_aimdk_msgs_srv_PlayVideo_Response* value)
{
    if(!roswasmc_bounded_2_aimdk_msgs_msg_CommonResponse_read_fields(p, n, offset, &value->header))
        return 0;
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
    if(value->message.size > 128u || value->message.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->message.data, p + *offset, value->message.size);
    *offset += value->message.size;
    return roswasmc_bounded_2_aimdk_msgs_srv_PlayVideo_Response_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_aimdk_msgs_srv_PlayVideo_Response_encode(roswasmc_bounded_2_aimdk_msgs_srv_PlayVideo_Response const* value,
                                                                                   void* output,
                                                                                   size_t capacity,
                                                                                   size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_aimdk_msgs_srv_PlayVideo_Response_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_aimdk_msgs_srv_PlayVideo_Response_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_aimdk_msgs_srv_PlayVideo_Response_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_aimdk_msgs_srv_PlayVideo_Response_decode(void const* input, size_t length, roswasmc_bounded_2_aimdk_msgs_srv_PlayVideo_Response* value)
{
    roswasmc_bounded_2_aimdk_msgs_srv_PlayVideo_Response next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 29u || length > 285u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_aimdk_msgs_srv_PlayVideo_Response_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETAGENTPROPERTIESREQUEST_REQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETAGENTPROPERTIESREQUEST_REQUEST_0 != 0x737e94caUL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETAGENTPROPERTIESREQUEST_REQUEST_1 != 0x18660f87UL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETAGENTPROPERTIESREQUEST_REQUEST_2 != 0xcee55674UL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETAGENTPROPERTIESREQUEST_REQUEST_3 != 0x7624afb9UL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETAGENTPROPERTIESREQUEST_REQUEST_4 != 0xca47c9caUL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETAGENTPROPERTIESREQUEST_REQUEST_5 != 0x8b954e4cUL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETAGENTPROPERTIESREQUEST_REQUEST_6 != 0x1699c2efUL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETAGENTPROPERTIESREQUEST_REQUEST_7 != 0xae23e50fUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETAGENTPROPERTIESREQUEST_REQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETAGENTPROPERTIESREQUEST_REQUEST_0 0x737e94caUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETAGENTPROPERTIESREQUEST_REQUEST_1 0x18660f87UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETAGENTPROPERTIESREQUEST_REQUEST_2 0xcee55674UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETAGENTPROPERTIESREQUEST_REQUEST_3 0x7624afb9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETAGENTPROPERTIESREQUEST_REQUEST_4 0xca47c9caUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETAGENTPROPERTIESREQUEST_REQUEST_5 0x8b954e4cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETAGENTPROPERTIESREQUEST_REQUEST_6 0x1699c2efUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETAGENTPROPERTIESREQUEST_REQUEST_7 0xae23e50fUL

/** Complete ROS2 aimdk_msgs/srv/SetAgentPropertiesRequest_Request value; no field projects away native data. */
typedef struct roswasmc_bounded_2_aimdk_msgs_srv_SetAgentPropertiesRequest_Request
{
    /** Declared field header; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_CommonRequest header;
    /** Declared field contents; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_AgentProperties contents;
} roswasmc_bounded_2_aimdk_msgs_srv_SetAgentPropertiesRequest_Request;

# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETAGENTPROPERTIESREQUEST_REQUEST_MAX_WIRE_BYTES 544u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETAGENTPROPERTIESREQUEST_REQUEST_MIN_WIRE_BYTES 12u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETAGENTPROPERTIESREQUEST_REQUEST_CODEC_IDENTITY                                                                    \
     "UWVMROS1_965af85f35239b728d7b2ea3c8e995a7cd54d3254bc1e89d3eeb36612ada5dec"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int
    roswasmc_bounded_2_aimdk_msgs_srv_SetAgentPropertiesRequest_Request_valid(roswasmc_bounded_2_aimdk_msgs_srv_SetAgentPropertiesRequest_Request const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_CommonRequest_valid(&value->header))
        return 0;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_AgentProperties_valid(&value->contents))
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_aimdk_msgs_srv_SetAgentPropertiesRequest_Request_wire_size(
    roswasmc_bounded_2_aimdk_msgs_srv_SetAgentPropertiesRequest_Request const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_aimdk_msgs_msg_CommonRequest_wire_size(&value->header);
    n += roswasmc_bounded_2_aimdk_msgs_msg_AgentProperties_wire_size(&value->contents);
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_aimdk_msgs_srv_SetAgentPropertiesRequest_Request_write_fields(
    roswasmc_bounded_2_aimdk_msgs_srv_SetAgentPropertiesRequest_Request const* value,
    unsigned char* p,
    size_t* offset)
{
    roswasmc_bounded_2_aimdk_msgs_msg_CommonRequest_write_fields(&value->header, p, offset);
    roswasmc_bounded_2_aimdk_msgs_msg_AgentProperties_write_fields(&value->contents, p, offset);
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int
    roswasmc_bounded_2_aimdk_msgs_srv_SetAgentPropertiesRequest_Request_read_fields(unsigned char const* p,
                                                                                    size_t n,
                                                                                    size_t* offset,
                                                                                    roswasmc_bounded_2_aimdk_msgs_srv_SetAgentPropertiesRequest_Request* value)
{
    if(!roswasmc_bounded_2_aimdk_msgs_msg_CommonRequest_read_fields(p, n, offset, &value->header))
        return 0;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_AgentProperties_read_fields(p, n, offset, &value->contents))
        return 0;
    return roswasmc_bounded_2_aimdk_msgs_srv_SetAgentPropertiesRequest_Request_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_aimdk_msgs_srv_SetAgentPropertiesRequest_Request_encode(roswasmc_bounded_2_aimdk_msgs_srv_SetAgentPropertiesRequest_Request const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_aimdk_msgs_srv_SetAgentPropertiesRequest_Request_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_aimdk_msgs_srv_SetAgentPropertiesRequest_Request_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_aimdk_msgs_srv_SetAgentPropertiesRequest_Request_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_aimdk_msgs_srv_SetAgentPropertiesRequest_Request_decode(void const* input,
                                                                               size_t length,
                                                                               roswasmc_bounded_2_aimdk_msgs_srv_SetAgentPropertiesRequest_Request* value)
{
    roswasmc_bounded_2_aimdk_msgs_srv_SetAgentPropertiesRequest_Request next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 12u || length > 544u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_aimdk_msgs_srv_SetAgentPropertiesRequest_Request_read_fields((unsigned char const*)input, length, &offset, &next) ||
       offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETAGENTPROPERTIESREQUEST_RESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETAGENTPROPERTIESREQUEST_RESPONSE_0 != 0x0c05c785UL ||                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETAGENTPROPERTIESREQUEST_RESPONSE_1 != 0xb33dd342UL ||                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETAGENTPROPERTIESREQUEST_RESPONSE_2 != 0x9ceb20daUL ||                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETAGENTPROPERTIESREQUEST_RESPONSE_3 != 0x159086eaUL ||                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETAGENTPROPERTIESREQUEST_RESPONSE_4 != 0x4904c230UL ||                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETAGENTPROPERTIESREQUEST_RESPONSE_5 != 0xf5a0c6c0UL ||                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETAGENTPROPERTIESREQUEST_RESPONSE_6 != 0x986d9fedUL ||                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETAGENTPROPERTIESREQUEST_RESPONSE_7 != 0x6a984b82UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETAGENTPROPERTIESREQUEST_RESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETAGENTPROPERTIESREQUEST_RESPONSE_0 0x0c05c785UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETAGENTPROPERTIESREQUEST_RESPONSE_1 0xb33dd342UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETAGENTPROPERTIESREQUEST_RESPONSE_2 0x9ceb20daUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETAGENTPROPERTIESREQUEST_RESPONSE_3 0x159086eaUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETAGENTPROPERTIESREQUEST_RESPONSE_4 0x4904c230UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETAGENTPROPERTIESREQUEST_RESPONSE_5 0xf5a0c6c0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETAGENTPROPERTIESREQUEST_RESPONSE_6 0x986d9fedUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETAGENTPROPERTIESREQUEST_RESPONSE_7 0x6a984b82UL

/** Complete ROS2 aimdk_msgs/srv/SetAgentPropertiesRequest_Response value; no field projects away native data. */
typedef struct roswasmc_bounded_2_aimdk_msgs_srv_SetAgentPropertiesRequest_Response
{
    /** Declared field header; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_CommonResponse header;
} roswasmc_bounded_2_aimdk_msgs_srv_SetAgentPropertiesRequest_Response;

# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETAGENTPROPERTIESREQUEST_RESPONSE_MAX_WIRE_BYTES 152u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETAGENTPROPERTIESREQUEST_RESPONSE_MIN_WIRE_BYTES 24u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETAGENTPROPERTIESREQUEST_RESPONSE_CODEC_IDENTITY                                                                   \
     "UWVMROS1_193eace6181c5da860dd9fa0d274415bdcb2246f7054acece8ae925414b0a81b"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_aimdk_msgs_srv_SetAgentPropertiesRequest_Response_valid(
    roswasmc_bounded_2_aimdk_msgs_srv_SetAgentPropertiesRequest_Response const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_CommonResponse_valid(&value->header))
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_aimdk_msgs_srv_SetAgentPropertiesRequest_Response_wire_size(
    roswasmc_bounded_2_aimdk_msgs_srv_SetAgentPropertiesRequest_Response const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_aimdk_msgs_msg_CommonResponse_wire_size(&value->header);
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_aimdk_msgs_srv_SetAgentPropertiesRequest_Response_write_fields(
    roswasmc_bounded_2_aimdk_msgs_srv_SetAgentPropertiesRequest_Response const* value,
    unsigned char* p,
    size_t* offset)
{
    roswasmc_bounded_2_aimdk_msgs_msg_CommonResponse_write_fields(&value->header, p, offset);
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_aimdk_msgs_srv_SetAgentPropertiesRequest_Response_read_fields(
    unsigned char const* p,
    size_t n,
    size_t* offset,
    roswasmc_bounded_2_aimdk_msgs_srv_SetAgentPropertiesRequest_Response* value)
{
    if(!roswasmc_bounded_2_aimdk_msgs_msg_CommonResponse_read_fields(p, n, offset, &value->header))
        return 0;
    return roswasmc_bounded_2_aimdk_msgs_srv_SetAgentPropertiesRequest_Response_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_aimdk_msgs_srv_SetAgentPropertiesRequest_Response_encode(
    roswasmc_bounded_2_aimdk_msgs_srv_SetAgentPropertiesRequest_Response const* value,
    void* output,
    size_t capacity,
    size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_aimdk_msgs_srv_SetAgentPropertiesRequest_Response_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_aimdk_msgs_srv_SetAgentPropertiesRequest_Response_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_aimdk_msgs_srv_SetAgentPropertiesRequest_Response_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_aimdk_msgs_srv_SetAgentPropertiesRequest_Response_decode(void const* input,
                                                                                size_t length,
                                                                                roswasmc_bounded_2_aimdk_msgs_srv_SetAgentPropertiesRequest_Response* value)
{
    roswasmc_bounded_2_aimdk_msgs_srv_SetAgentPropertiesRequest_Response next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 24u || length > 152u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_aimdk_msgs_srv_SetAgentPropertiesRequest_Response_read_fields((unsigned char const*)input, length, &offset, &next) ||
       offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCACTION_REQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCACTION_REQUEST_0 != 0x11ff39d6UL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCACTION_REQUEST_1 != 0xbfd58443UL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCACTION_REQUEST_2 != 0x22f267b6UL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCACTION_REQUEST_3 != 0x4b051598UL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCACTION_REQUEST_4 != 0x917881eaUL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCACTION_REQUEST_5 != 0xd2cc1b03UL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCACTION_REQUEST_6 != 0x5763a407UL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCACTION_REQUEST_7 != 0xaf152662UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCACTION_REQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCACTION_REQUEST_0 0x11ff39d6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCACTION_REQUEST_1 0xbfd58443UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCACTION_REQUEST_2 0x22f267b6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCACTION_REQUEST_3 0x4b051598UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCACTION_REQUEST_4 0x917881eaUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCACTION_REQUEST_5 0xd2cc1b03UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCACTION_REQUEST_6 0x5763a407UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCACTION_REQUEST_7 0xaf152662UL

/** Complete ROS2 aimdk_msgs/srv/SetMcAction_Request value; no field projects away native data. */
typedef struct roswasmc_bounded_2_aimdk_msgs_srv_SetMcAction_Request
{
    /** Declared field header; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_RequestHeader header;
    /** Declared field command; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_McActionCommand command;
} roswasmc_bounded_2_aimdk_msgs_srv_SetMcAction_Request;

# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCACTION_REQUEST_MAX_WIRE_BYTES 144u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCACTION_REQUEST_MIN_WIRE_BYTES 16u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCACTION_REQUEST_CODEC_IDENTITY "UWVMROS1_6ad0e14f9aefc0ae34c383eec4498c556c97757f03eb315b74977327691489d5"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_aimdk_msgs_srv_SetMcAction_Request_valid(roswasmc_bounded_2_aimdk_msgs_srv_SetMcAction_Request const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_RequestHeader_valid(&value->header))
        return 0;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_McActionCommand_valid(&value->command))
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_aimdk_msgs_srv_SetMcAction_Request_wire_size(roswasmc_bounded_2_aimdk_msgs_srv_SetMcAction_Request const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_aimdk_msgs_msg_RequestHeader_wire_size(&value->header);
    n += roswasmc_bounded_2_aimdk_msgs_msg_McActionCommand_wire_size(&value->command);
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_aimdk_msgs_srv_SetMcAction_Request_write_fields(roswasmc_bounded_2_aimdk_msgs_srv_SetMcAction_Request const* value,
                                                                                      unsigned char* p,
                                                                                      size_t* offset)
{
    roswasmc_bounded_2_aimdk_msgs_msg_RequestHeader_write_fields(&value->header, p, offset);
    roswasmc_bounded_2_aimdk_msgs_msg_McActionCommand_write_fields(&value->command, p, offset);
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_aimdk_msgs_srv_SetMcAction_Request_read_fields(unsigned char const* p,
                                                                                    size_t n,
                                                                                    size_t* offset,
                                                                                    roswasmc_bounded_2_aimdk_msgs_srv_SetMcAction_Request* value)
{
    if(!roswasmc_bounded_2_aimdk_msgs_msg_RequestHeader_read_fields(p, n, offset, &value->header))
        return 0;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_McActionCommand_read_fields(p, n, offset, &value->command))
        return 0;
    return roswasmc_bounded_2_aimdk_msgs_srv_SetMcAction_Request_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_aimdk_msgs_srv_SetMcAction_Request_encode(roswasmc_bounded_2_aimdk_msgs_srv_SetMcAction_Request const* value,
                                                                                    void* output,
                                                                                    size_t capacity,
                                                                                    size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_aimdk_msgs_srv_SetMcAction_Request_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_aimdk_msgs_srv_SetMcAction_Request_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_aimdk_msgs_srv_SetMcAction_Request_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_aimdk_msgs_srv_SetMcAction_Request_decode(void const* input, size_t length, roswasmc_bounded_2_aimdk_msgs_srv_SetMcAction_Request* value)
{
    roswasmc_bounded_2_aimdk_msgs_srv_SetMcAction_Request next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 16u || length > 144u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_aimdk_msgs_srv_SetMcAction_Request_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCACTION_RESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCACTION_RESPONSE_0 != 0x7798a2a8UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCACTION_RESPONSE_1 != 0xcb7cda0bUL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCACTION_RESPONSE_2 != 0x1813c964UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCACTION_RESPONSE_3 != 0x27185fc2UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCACTION_RESPONSE_4 != 0xe79300caUL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCACTION_RESPONSE_5 != 0xd412bd10UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCACTION_RESPONSE_6 != 0xee3e008aUL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCACTION_RESPONSE_7 != 0x194a4bd6UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCACTION_RESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCACTION_RESPONSE_0 0x7798a2a8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCACTION_RESPONSE_1 0xcb7cda0bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCACTION_RESPONSE_2 0x1813c964UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCACTION_RESPONSE_3 0x27185fc2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCACTION_RESPONSE_4 0xe79300caUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCACTION_RESPONSE_5 0xd412bd10UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCACTION_RESPONSE_6 0xee3e008aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCACTION_RESPONSE_7 0x194a4bd6UL

/** Complete ROS2 aimdk_msgs/srv/SetMcAction_Response value; no field projects away native data. */
typedef struct roswasmc_bounded_2_aimdk_msgs_srv_SetMcAction_Response
{
    /** Declared field response; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_CommonResponse response;
} roswasmc_bounded_2_aimdk_msgs_srv_SetMcAction_Response;

# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCACTION_RESPONSE_MAX_WIRE_BYTES 152u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCACTION_RESPONSE_MIN_WIRE_BYTES 24u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCACTION_RESPONSE_CODEC_IDENTITY "UWVMROS1_64c336314ea7d3635494d1e3f9da9b23442653033e3ddfb0936440520141d24f"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_aimdk_msgs_srv_SetMcAction_Response_valid(roswasmc_bounded_2_aimdk_msgs_srv_SetMcAction_Response const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_CommonResponse_valid(&value->response))
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_aimdk_msgs_srv_SetMcAction_Response_wire_size(roswasmc_bounded_2_aimdk_msgs_srv_SetMcAction_Response const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_aimdk_msgs_msg_CommonResponse_wire_size(&value->response);
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_aimdk_msgs_srv_SetMcAction_Response_write_fields(roswasmc_bounded_2_aimdk_msgs_srv_SetMcAction_Response const* value,
                                                                                       unsigned char* p,
                                                                                       size_t* offset)
{
    roswasmc_bounded_2_aimdk_msgs_msg_CommonResponse_write_fields(&value->response, p, offset);
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_aimdk_msgs_srv_SetMcAction_Response_read_fields(unsigned char const* p,
                                                                                     size_t n,
                                                                                     size_t* offset,
                                                                                     roswasmc_bounded_2_aimdk_msgs_srv_SetMcAction_Response* value)
{
    if(!roswasmc_bounded_2_aimdk_msgs_msg_CommonResponse_read_fields(p, n, offset, &value->response))
        return 0;
    return roswasmc_bounded_2_aimdk_msgs_srv_SetMcAction_Response_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_aimdk_msgs_srv_SetMcAction_Response_encode(roswasmc_bounded_2_aimdk_msgs_srv_SetMcAction_Response const* value,
                                                                                     void* output,
                                                                                     size_t capacity,
                                                                                     size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_aimdk_msgs_srv_SetMcAction_Response_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_aimdk_msgs_srv_SetMcAction_Response_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_aimdk_msgs_srv_SetMcAction_Response_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_2_aimdk_msgs_srv_SetMcAction_Response_decode(void const* input,
                                                                                     size_t length,
                                                                                     roswasmc_bounded_2_aimdk_msgs_srv_SetMcAction_Response* value)
{
    roswasmc_bounded_2_aimdk_msgs_srv_SetMcAction_Response next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 24u || length > 152u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_aimdk_msgs_srv_SetMcAction_Response_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCINPUTSOURCE_REQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCINPUTSOURCE_REQUEST_0 != 0x8e4b14ddUL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCINPUTSOURCE_REQUEST_1 != 0xd23ceef9UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCINPUTSOURCE_REQUEST_2 != 0x83a50b39UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCINPUTSOURCE_REQUEST_3 != 0xdaa1a84dUL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCINPUTSOURCE_REQUEST_4 != 0x11780afcUL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCINPUTSOURCE_REQUEST_5 != 0x3a3a9180UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCINPUTSOURCE_REQUEST_6 != 0x515448d9UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCINPUTSOURCE_REQUEST_7 != 0x8ec968d9UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCINPUTSOURCE_REQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCINPUTSOURCE_REQUEST_0 0x8e4b14ddUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCINPUTSOURCE_REQUEST_1 0xd23ceef9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCINPUTSOURCE_REQUEST_2 0x83a50b39UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCINPUTSOURCE_REQUEST_3 0xdaa1a84dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCINPUTSOURCE_REQUEST_4 0x11780afcUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCINPUTSOURCE_REQUEST_5 0x3a3a9180UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCINPUTSOURCE_REQUEST_6 0x515448d9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCINPUTSOURCE_REQUEST_7 0x8ec968d9UL

/** Complete ROS2 aimdk_msgs/srv/SetMcInputSource_Request value; no field projects away native data. */
typedef struct roswasmc_bounded_2_aimdk_msgs_srv_SetMcInputSource_Request
{
    /** Declared field request; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_CommonRequest request;
    /** Declared field action; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_McInputAction action;
    /** Declared field input_source; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_McInputSource input_source;
} roswasmc_bounded_2_aimdk_msgs_srv_SetMcInputSource_Request;

# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCINPUTSOURCE_REQUEST_MAX_WIRE_BYTES 152u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCINPUTSOURCE_REQUEST_MIN_WIRE_BYTES 24u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCINPUTSOURCE_REQUEST_CODEC_IDENTITY "UWVMROS1_853ae368291aa7e14c665d3d47caad66ba626c086ad759180c31223a9785b021"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_aimdk_msgs_srv_SetMcInputSource_Request_valid(roswasmc_bounded_2_aimdk_msgs_srv_SetMcInputSource_Request const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_CommonRequest_valid(&value->request))
        return 0;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_McInputAction_valid(&value->action))
        return 0;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_McInputSource_valid(&value->input_source))
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_2_aimdk_msgs_srv_SetMcInputSource_Request_wire_size(roswasmc_bounded_2_aimdk_msgs_srv_SetMcInputSource_Request const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_aimdk_msgs_msg_CommonRequest_wire_size(&value->request);
    n += roswasmc_bounded_2_aimdk_msgs_msg_McInputAction_wire_size(&value->action);
    n += roswasmc_bounded_2_aimdk_msgs_msg_McInputSource_wire_size(&value->input_source);
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_aimdk_msgs_srv_SetMcInputSource_Request_write_fields(roswasmc_bounded_2_aimdk_msgs_srv_SetMcInputSource_Request const* value,
                                                                            unsigned char* p,
                                                                            size_t* offset)
{
    roswasmc_bounded_2_aimdk_msgs_msg_CommonRequest_write_fields(&value->request, p, offset);
    roswasmc_bounded_2_aimdk_msgs_msg_McInputAction_write_fields(&value->action, p, offset);
    roswasmc_bounded_2_aimdk_msgs_msg_McInputSource_write_fields(&value->input_source, p, offset);
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_aimdk_msgs_srv_SetMcInputSource_Request_read_fields(unsigned char const* p,
                                                                                         size_t n,
                                                                                         size_t* offset,
                                                                                         roswasmc_bounded_2_aimdk_msgs_srv_SetMcInputSource_Request* value)
{
    if(!roswasmc_bounded_2_aimdk_msgs_msg_CommonRequest_read_fields(p, n, offset, &value->request))
        return 0;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_McInputAction_read_fields(p, n, offset, &value->action))
        return 0;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_McInputSource_read_fields(p, n, offset, &value->input_source))
        return 0;
    return roswasmc_bounded_2_aimdk_msgs_srv_SetMcInputSource_Request_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_aimdk_msgs_srv_SetMcInputSource_Request_encode(roswasmc_bounded_2_aimdk_msgs_srv_SetMcInputSource_Request const* value,
                                                                      void* output,
                                                                      size_t capacity,
                                                                      size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_aimdk_msgs_srv_SetMcInputSource_Request_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_aimdk_msgs_srv_SetMcInputSource_Request_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_aimdk_msgs_srv_SetMcInputSource_Request_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_2_aimdk_msgs_srv_SetMcInputSource_Request_decode(void const* input,
                                                                                         size_t length,
                                                                                         roswasmc_bounded_2_aimdk_msgs_srv_SetMcInputSource_Request* value)
{
    roswasmc_bounded_2_aimdk_msgs_srv_SetMcInputSource_Request next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 24u || length > 152u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_aimdk_msgs_srv_SetMcInputSource_Request_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCINPUTSOURCE_RESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCINPUTSOURCE_RESPONSE_0 != 0xb12bca6eUL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCINPUTSOURCE_RESPONSE_1 != 0xb037e4e9UL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCINPUTSOURCE_RESPONSE_2 != 0x3051308fUL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCINPUTSOURCE_RESPONSE_3 != 0x4887cdf0UL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCINPUTSOURCE_RESPONSE_4 != 0xfba0fd2dUL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCINPUTSOURCE_RESPONSE_5 != 0xc8cf1901UL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCINPUTSOURCE_RESPONSE_6 != 0xcea86aabUL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCINPUTSOURCE_RESPONSE_7 != 0x4b547bf1UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCINPUTSOURCE_RESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCINPUTSOURCE_RESPONSE_0 0xb12bca6eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCINPUTSOURCE_RESPONSE_1 0xb037e4e9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCINPUTSOURCE_RESPONSE_2 0x3051308fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCINPUTSOURCE_RESPONSE_3 0x4887cdf0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCINPUTSOURCE_RESPONSE_4 0xfba0fd2dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCINPUTSOURCE_RESPONSE_5 0xc8cf1901UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCINPUTSOURCE_RESPONSE_6 0xcea86aabUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCINPUTSOURCE_RESPONSE_7 0x4b547bf1UL

/** Complete ROS2 aimdk_msgs/srv/SetMcInputSource_Response value; no field projects away native data. */
typedef struct roswasmc_bounded_2_aimdk_msgs_srv_SetMcInputSource_Response
{
    /** Declared field response; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_CommonTaskResponse response;
} roswasmc_bounded_2_aimdk_msgs_srv_SetMcInputSource_Response;

# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCINPUTSOURCE_RESPONSE_MAX_WIRE_BYTES 28u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCINPUTSOURCE_RESPONSE_MIN_WIRE_BYTES 28u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCINPUTSOURCE_RESPONSE_CODEC_IDENTITY "UWVMROS1_0c0764d24b86f57f3c2f1a59966a787113cf9411cf89f40d29a7708bf03650cb"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_aimdk_msgs_srv_SetMcInputSource_Response_valid(roswasmc_bounded_2_aimdk_msgs_srv_SetMcInputSource_Response const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_CommonTaskResponse_valid(&value->response))
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_2_aimdk_msgs_srv_SetMcInputSource_Response_wire_size(roswasmc_bounded_2_aimdk_msgs_srv_SetMcInputSource_Response const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_aimdk_msgs_msg_CommonTaskResponse_wire_size(&value->response);
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_aimdk_msgs_srv_SetMcInputSource_Response_write_fields(roswasmc_bounded_2_aimdk_msgs_srv_SetMcInputSource_Response const* value,
                                                                             unsigned char* p,
                                                                             size_t* offset)
{
    roswasmc_bounded_2_aimdk_msgs_msg_CommonTaskResponse_write_fields(&value->response, p, offset);
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_aimdk_msgs_srv_SetMcInputSource_Response_read_fields(unsigned char const* p,
                                                                                          size_t n,
                                                                                          size_t* offset,
                                                                                          roswasmc_bounded_2_aimdk_msgs_srv_SetMcInputSource_Response* value)
{
    if(!roswasmc_bounded_2_aimdk_msgs_msg_CommonTaskResponse_read_fields(p, n, offset, &value->response))
        return 0;
    return roswasmc_bounded_2_aimdk_msgs_srv_SetMcInputSource_Response_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_aimdk_msgs_srv_SetMcInputSource_Response_encode(roswasmc_bounded_2_aimdk_msgs_srv_SetMcInputSource_Response const* value,
                                                                       void* output,
                                                                       size_t capacity,
                                                                       size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_aimdk_msgs_srv_SetMcInputSource_Response_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_aimdk_msgs_srv_SetMcInputSource_Response_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_aimdk_msgs_srv_SetMcInputSource_Response_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_2_aimdk_msgs_srv_SetMcInputSource_Response_decode(void const* input,
                                                                                          size_t length,
                                                                                          roswasmc_bounded_2_aimdk_msgs_srv_SetMcInputSource_Response* value)
{
    roswasmc_bounded_2_aimdk_msgs_srv_SetMcInputSource_Response next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 28u || length > 28u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_aimdk_msgs_srv_SetMcInputSource_Response_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCPRESETMOTION_REQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCPRESETMOTION_REQUEST_0 != 0xccdd2182UL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCPRESETMOTION_REQUEST_1 != 0xc30629e0UL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCPRESETMOTION_REQUEST_2 != 0x289a2f9eUL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCPRESETMOTION_REQUEST_3 != 0xf1019488UL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCPRESETMOTION_REQUEST_4 != 0x5490520dUL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCPRESETMOTION_REQUEST_5 != 0x92fb858dUL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCPRESETMOTION_REQUEST_6 != 0xcf97ad81UL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCPRESETMOTION_REQUEST_7 != 0x906a573aUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCPRESETMOTION_REQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCPRESETMOTION_REQUEST_0 0xccdd2182UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCPRESETMOTION_REQUEST_1 0xc30629e0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCPRESETMOTION_REQUEST_2 0x289a2f9eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCPRESETMOTION_REQUEST_3 0xf1019488UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCPRESETMOTION_REQUEST_4 0x5490520dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCPRESETMOTION_REQUEST_5 0x92fb858dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCPRESETMOTION_REQUEST_6 0xcf97ad81UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCPRESETMOTION_REQUEST_7 0x906a573aUL

/** UTF-8 byte storage for aimdk_msgs/srv/SetMcPresetMotion_Request.ani_path; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_aimdk_msgs_srv_SetMcPresetMotion_Request_ani_path_text;

/** Complete ROS2 aimdk_msgs/srv/SetMcPresetMotion_Request value; no field projects away native data. */
typedef struct roswasmc_bounded_2_aimdk_msgs_srv_SetMcPresetMotion_Request
{
    /** Declared field header; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_RequestHeader header;
    /** Declared field area; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_McControlArea area;
    /** Declared field motion; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_McPresetMotion motion;
    /** Declared field interrupt; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t interrupt;
    /** Declared field ani_path; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_srv_SetMcPresetMotion_Request_ani_path_text ani_path;
} roswasmc_bounded_2_aimdk_msgs_srv_SetMcPresetMotion_Request;

# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCPRESETMOTION_REQUEST_MAX_WIRE_BYTES 149u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCPRESETMOTION_REQUEST_MIN_WIRE_BYTES 21u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCPRESETMOTION_REQUEST_CODEC_IDENTITY "UWVMROS1_f8789c1eb47184c1a1c219ac861b5551d22bdc624caf1f7022523160c6cd62ea"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_aimdk_msgs_srv_SetMcPresetMotion_Request_valid(roswasmc_bounded_2_aimdk_msgs_srv_SetMcPresetMotion_Request const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_RequestHeader_valid(&value->header))
        return 0;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_McControlArea_valid(&value->area))
        return 0;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_McPresetMotion_valid(&value->motion))
        return 0;
    if(value->interrupt > 1)
        return 0;
    if(value->ani_path.size > 128u || !uwvm_bounded_utf8(value->ani_path.data, value->ani_path.size))
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_2_aimdk_msgs_srv_SetMcPresetMotion_Request_wire_size(roswasmc_bounded_2_aimdk_msgs_srv_SetMcPresetMotion_Request const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_aimdk_msgs_msg_RequestHeader_wire_size(&value->header);
    n += roswasmc_bounded_2_aimdk_msgs_msg_McControlArea_wire_size(&value->area);
    n += roswasmc_bounded_2_aimdk_msgs_msg_McPresetMotion_wire_size(&value->motion);
    n += 1;
    n += 4 + value->ani_path.size;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_aimdk_msgs_srv_SetMcPresetMotion_Request_write_fields(roswasmc_bounded_2_aimdk_msgs_srv_SetMcPresetMotion_Request const* value,
                                                                             unsigned char* p,
                                                                             size_t* offset)
{
    roswasmc_bounded_2_aimdk_msgs_msg_RequestHeader_write_fields(&value->header, p, offset);
    roswasmc_bounded_2_aimdk_msgs_msg_McControlArea_write_fields(&value->area, p, offset);
    roswasmc_bounded_2_aimdk_msgs_msg_McPresetMotion_write_fields(&value->motion, p, offset);
    uwvm_bounded_put(p + *offset, (uint64_t)value->interrupt, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, value->ani_path.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->ani_path.data, value->ani_path.size);
    *offset += value->ani_path.size;
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_aimdk_msgs_srv_SetMcPresetMotion_Request_read_fields(unsigned char const* p,
                                                                                          size_t n,
                                                                                          size_t* offset,
                                                                                          roswasmc_bounded_2_aimdk_msgs_srv_SetMcPresetMotion_Request* value)
{
    if(!roswasmc_bounded_2_aimdk_msgs_msg_RequestHeader_read_fields(p, n, offset, &value->header))
        return 0;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_McControlArea_read_fields(p, n, offset, &value->area))
        return 0;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_McPresetMotion_read_fields(p, n, offset, &value->motion))
        return 0;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->interrupt, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->ani_path.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->ani_path.size > 128u || value->ani_path.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->ani_path.data, p + *offset, value->ani_path.size);
    *offset += value->ani_path.size;
    return roswasmc_bounded_2_aimdk_msgs_srv_SetMcPresetMotion_Request_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_aimdk_msgs_srv_SetMcPresetMotion_Request_encode(roswasmc_bounded_2_aimdk_msgs_srv_SetMcPresetMotion_Request const* value,
                                                                       void* output,
                                                                       size_t capacity,
                                                                       size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_aimdk_msgs_srv_SetMcPresetMotion_Request_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_aimdk_msgs_srv_SetMcPresetMotion_Request_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_aimdk_msgs_srv_SetMcPresetMotion_Request_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_2_aimdk_msgs_srv_SetMcPresetMotion_Request_decode(void const* input,
                                                                                          size_t length,
                                                                                          roswasmc_bounded_2_aimdk_msgs_srv_SetMcPresetMotion_Request* value)
{
    roswasmc_bounded_2_aimdk_msgs_srv_SetMcPresetMotion_Request next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 21u || length > 149u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_aimdk_msgs_srv_SetMcPresetMotion_Request_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCPRESETMOTION_RESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCPRESETMOTION_RESPONSE_0 != 0x40795893UL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCPRESETMOTION_RESPONSE_1 != 0xa4368253UL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCPRESETMOTION_RESPONSE_2 != 0x46d5fce9UL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCPRESETMOTION_RESPONSE_3 != 0xd086e80cUL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCPRESETMOTION_RESPONSE_4 != 0xcf35d83dUL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCPRESETMOTION_RESPONSE_5 != 0xaeb21cd8UL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCPRESETMOTION_RESPONSE_6 != 0xce855803UL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCPRESETMOTION_RESPONSE_7 != 0x8a63f55eUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCPRESETMOTION_RESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCPRESETMOTION_RESPONSE_0 0x40795893UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCPRESETMOTION_RESPONSE_1 0xa4368253UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCPRESETMOTION_RESPONSE_2 0x46d5fce9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCPRESETMOTION_RESPONSE_3 0xd086e80cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCPRESETMOTION_RESPONSE_4 0xcf35d83dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCPRESETMOTION_RESPONSE_5 0xaeb21cd8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCPRESETMOTION_RESPONSE_6 0xce855803UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCPRESETMOTION_RESPONSE_7 0x8a63f55eUL

/** Complete ROS2 aimdk_msgs/srv/SetMcPresetMotion_Response value; no field projects away native data. */
typedef struct roswasmc_bounded_2_aimdk_msgs_srv_SetMcPresetMotion_Response
{
    /** Declared field response; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_CommonTaskResponse response;
} roswasmc_bounded_2_aimdk_msgs_srv_SetMcPresetMotion_Response;

# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCPRESETMOTION_RESPONSE_MAX_WIRE_BYTES 28u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCPRESETMOTION_RESPONSE_MIN_WIRE_BYTES 28u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMCPRESETMOTION_RESPONSE_CODEC_IDENTITY "UWVMROS1_9534060f44b6d36c7f0c585e7ce1f1e8b06a2561a2161a29fe6d0e4d22c77e85"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_aimdk_msgs_srv_SetMcPresetMotion_Response_valid(roswasmc_bounded_2_aimdk_msgs_srv_SetMcPresetMotion_Response const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_CommonTaskResponse_valid(&value->response))
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_2_aimdk_msgs_srv_SetMcPresetMotion_Response_wire_size(roswasmc_bounded_2_aimdk_msgs_srv_SetMcPresetMotion_Response const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_aimdk_msgs_msg_CommonTaskResponse_wire_size(&value->response);
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_aimdk_msgs_srv_SetMcPresetMotion_Response_write_fields(roswasmc_bounded_2_aimdk_msgs_srv_SetMcPresetMotion_Response const* value,
                                                                              unsigned char* p,
                                                                              size_t* offset)
{
    roswasmc_bounded_2_aimdk_msgs_msg_CommonTaskResponse_write_fields(&value->response, p, offset);
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_aimdk_msgs_srv_SetMcPresetMotion_Response_read_fields(unsigned char const* p,
                                                                                           size_t n,
                                                                                           size_t* offset,
                                                                                           roswasmc_bounded_2_aimdk_msgs_srv_SetMcPresetMotion_Response* value)
{
    if(!roswasmc_bounded_2_aimdk_msgs_msg_CommonTaskResponse_read_fields(p, n, offset, &value->response))
        return 0;
    return roswasmc_bounded_2_aimdk_msgs_srv_SetMcPresetMotion_Response_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_aimdk_msgs_srv_SetMcPresetMotion_Response_encode(roswasmc_bounded_2_aimdk_msgs_srv_SetMcPresetMotion_Response const* value,
                                                                        void* output,
                                                                        size_t capacity,
                                                                        size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_aimdk_msgs_srv_SetMcPresetMotion_Response_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_aimdk_msgs_srv_SetMcPresetMotion_Response_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_aimdk_msgs_srv_SetMcPresetMotion_Response_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_2_aimdk_msgs_srv_SetMcPresetMotion_Response_decode(void const* input,
                                                                                           size_t length,
                                                                                           roswasmc_bounded_2_aimdk_msgs_srv_SetMcPresetMotion_Response* value)
{
    roswasmc_bounded_2_aimdk_msgs_srv_SetMcPresetMotion_Response next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 28u || length > 28u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_aimdk_msgs_srv_SetMcPresetMotion_Response_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMUTE_REQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMUTE_REQUEST_0 != 0x50846f71UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMUTE_REQUEST_1 != 0xcd26202cUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMUTE_REQUEST_2 != 0x61c0ba8dUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMUTE_REQUEST_3 != 0x88516f21UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMUTE_REQUEST_4 != 0xf0b2d526UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMUTE_REQUEST_5 != 0x8da65cf5UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMUTE_REQUEST_6 != 0xbeebc577UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMUTE_REQUEST_7 != 0x607dfc1bUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMUTE_REQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMUTE_REQUEST_0 0x50846f71UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMUTE_REQUEST_1 0xcd26202cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMUTE_REQUEST_2 0x61c0ba8dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMUTE_REQUEST_3 0x88516f21UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMUTE_REQUEST_4 0xf0b2d526UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMUTE_REQUEST_5 0x8da65cf5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMUTE_REQUEST_6 0xbeebc577UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMUTE_REQUEST_7 0x607dfc1bUL

/** Complete ROS2 aimdk_msgs/srv/SetMute_Request value; no field projects away native data. */
typedef struct roswasmc_bounded_2_aimdk_msgs_srv_SetMute_Request
{
    /** Declared field request; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_CommonRequest request;
    /** Declared field is_mute; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t is_mute;
} roswasmc_bounded_2_aimdk_msgs_srv_SetMute_Request;

# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMUTE_REQUEST_MAX_WIRE_BYTES 9u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMUTE_REQUEST_MIN_WIRE_BYTES 9u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMUTE_REQUEST_CODEC_IDENTITY "UWVMROS1_a37f6b638f226a9d150315baa5b11e6994422ba8f58541ac7b04df11e5c21fe3"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_aimdk_msgs_srv_SetMute_Request_valid(roswasmc_bounded_2_aimdk_msgs_srv_SetMute_Request const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_CommonRequest_valid(&value->request))
        return 0;
    if(value->is_mute > 1)
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_aimdk_msgs_srv_SetMute_Request_wire_size(roswasmc_bounded_2_aimdk_msgs_srv_SetMute_Request const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_aimdk_msgs_msg_CommonRequest_wire_size(&value->request);
    n += 1;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_aimdk_msgs_srv_SetMute_Request_write_fields(roswasmc_bounded_2_aimdk_msgs_srv_SetMute_Request const* value,
                                                                                  unsigned char* p,
                                                                                  size_t* offset)
{
    roswasmc_bounded_2_aimdk_msgs_msg_CommonRequest_write_fields(&value->request, p, offset);
    uwvm_bounded_put(p + *offset, (uint64_t)value->is_mute, 1);
    *offset += 1;
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_aimdk_msgs_srv_SetMute_Request_read_fields(unsigned char const* p,
                                                                                size_t n,
                                                                                size_t* offset,
                                                                                roswasmc_bounded_2_aimdk_msgs_srv_SetMute_Request* value)
{
    if(!roswasmc_bounded_2_aimdk_msgs_msg_CommonRequest_read_fields(p, n, offset, &value->request))
        return 0;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->is_mute, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_2_aimdk_msgs_srv_SetMute_Request_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_aimdk_msgs_srv_SetMute_Request_encode(roswasmc_bounded_2_aimdk_msgs_srv_SetMute_Request const* value,
                                                                                void* output,
                                                                                size_t capacity,
                                                                                size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_aimdk_msgs_srv_SetMute_Request_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_aimdk_msgs_srv_SetMute_Request_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_aimdk_msgs_srv_SetMute_Request_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_aimdk_msgs_srv_SetMute_Request_decode(void const* input, size_t length, roswasmc_bounded_2_aimdk_msgs_srv_SetMute_Request* value)
{
    roswasmc_bounded_2_aimdk_msgs_srv_SetMute_Request next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 9u || length > 9u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_aimdk_msgs_srv_SetMute_Request_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMUTE_RESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMUTE_RESPONSE_0 != 0x4db7cf67UL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMUTE_RESPONSE_1 != 0x1c831327UL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMUTE_RESPONSE_2 != 0xeb5adfefUL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMUTE_RESPONSE_3 != 0x20c7e26dUL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMUTE_RESPONSE_4 != 0x4814dceeUL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMUTE_RESPONSE_5 != 0x281069d8UL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMUTE_RESPONSE_6 != 0x345f351bUL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMUTE_RESPONSE_7 != 0xa59e52bdUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMUTE_RESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMUTE_RESPONSE_0 0x4db7cf67UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMUTE_RESPONSE_1 0x1c831327UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMUTE_RESPONSE_2 0xeb5adfefUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMUTE_RESPONSE_3 0x20c7e26dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMUTE_RESPONSE_4 0x4814dceeUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMUTE_RESPONSE_5 0x281069d8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMUTE_RESPONSE_6 0x345f351bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMUTE_RESPONSE_7 0xa59e52bdUL

/** Complete ROS2 aimdk_msgs/srv/SetMute_Response value; no field projects away native data. */
typedef struct roswasmc_bounded_2_aimdk_msgs_srv_SetMute_Response
{
    /** Declared field reponse; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_CommonResponse reponse;
    /** Declared field is_mute; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t is_mute;
} roswasmc_bounded_2_aimdk_msgs_srv_SetMute_Response;

# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMUTE_RESPONSE_MAX_WIRE_BYTES 153u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMUTE_RESPONSE_MIN_WIRE_BYTES 25u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETMUTE_RESPONSE_CODEC_IDENTITY "UWVMROS1_0ba7d8046b7a0d23deb0b4cdb2ba5d144543a68a2468d657cc0b29f60efdca50"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_aimdk_msgs_srv_SetMute_Response_valid(roswasmc_bounded_2_aimdk_msgs_srv_SetMute_Response const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_CommonResponse_valid(&value->reponse))
        return 0;
    if(value->is_mute > 1)
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_aimdk_msgs_srv_SetMute_Response_wire_size(roswasmc_bounded_2_aimdk_msgs_srv_SetMute_Response const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_aimdk_msgs_msg_CommonResponse_wire_size(&value->reponse);
    n += 1;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_aimdk_msgs_srv_SetMute_Response_write_fields(roswasmc_bounded_2_aimdk_msgs_srv_SetMute_Response const* value,
                                                                                   unsigned char* p,
                                                                                   size_t* offset)
{
    roswasmc_bounded_2_aimdk_msgs_msg_CommonResponse_write_fields(&value->reponse, p, offset);
    uwvm_bounded_put(p + *offset, (uint64_t)value->is_mute, 1);
    *offset += 1;
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_aimdk_msgs_srv_SetMute_Response_read_fields(unsigned char const* p,
                                                                                 size_t n,
                                                                                 size_t* offset,
                                                                                 roswasmc_bounded_2_aimdk_msgs_srv_SetMute_Response* value)
{
    if(!roswasmc_bounded_2_aimdk_msgs_msg_CommonResponse_read_fields(p, n, offset, &value->reponse))
        return 0;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->is_mute, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_2_aimdk_msgs_srv_SetMute_Response_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_aimdk_msgs_srv_SetMute_Response_encode(roswasmc_bounded_2_aimdk_msgs_srv_SetMute_Response const* value,
                                                                                 void* output,
                                                                                 size_t capacity,
                                                                                 size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_aimdk_msgs_srv_SetMute_Response_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_aimdk_msgs_srv_SetMute_Response_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_aimdk_msgs_srv_SetMute_Response_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_aimdk_msgs_srv_SetMute_Response_decode(void const* input, size_t length, roswasmc_bounded_2_aimdk_msgs_srv_SetMute_Response* value)
{
    roswasmc_bounded_2_aimdk_msgs_srv_SetMute_Response next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 25u || length > 153u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_aimdk_msgs_srv_SetMute_Response_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETVOLUME_REQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETVOLUME_REQUEST_0 != 0xbba7f017UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETVOLUME_REQUEST_1 != 0xcee04c2eUL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETVOLUME_REQUEST_2 != 0x55a4bc45UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETVOLUME_REQUEST_3 != 0xb3408552UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETVOLUME_REQUEST_4 != 0x2ee45d77UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETVOLUME_REQUEST_5 != 0x3a4aef9aUL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETVOLUME_REQUEST_6 != 0x7dd00c36UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETVOLUME_REQUEST_7 != 0x75279dbcUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETVOLUME_REQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETVOLUME_REQUEST_0 0xbba7f017UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETVOLUME_REQUEST_1 0xcee04c2eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETVOLUME_REQUEST_2 0x55a4bc45UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETVOLUME_REQUEST_3 0xb3408552UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETVOLUME_REQUEST_4 0x2ee45d77UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETVOLUME_REQUEST_5 0x3a4aef9aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETVOLUME_REQUEST_6 0x7dd00c36UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETVOLUME_REQUEST_7 0x75279dbcUL

/** Complete ROS2 aimdk_msgs/srv/SetVolume_Request value; no field projects away native data. */
typedef struct roswasmc_bounded_2_aimdk_msgs_srv_SetVolume_Request
{
    /** Declared field request; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_CommonRequest request;
    /** Declared field audio_volume; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t audio_volume;
} roswasmc_bounded_2_aimdk_msgs_srv_SetVolume_Request;

# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETVOLUME_REQUEST_MAX_WIRE_BYTES 12u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETVOLUME_REQUEST_MIN_WIRE_BYTES 12u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETVOLUME_REQUEST_CODEC_IDENTITY "UWVMROS1_09161b7a7ae47ab702190725e42e27cd247f681702de05c4f68fa59581f85aad"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_aimdk_msgs_srv_SetVolume_Request_valid(roswasmc_bounded_2_aimdk_msgs_srv_SetVolume_Request const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_CommonRequest_valid(&value->request))
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_aimdk_msgs_srv_SetVolume_Request_wire_size(roswasmc_bounded_2_aimdk_msgs_srv_SetVolume_Request const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_aimdk_msgs_msg_CommonRequest_wire_size(&value->request);
    n += 4;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_aimdk_msgs_srv_SetVolume_Request_write_fields(roswasmc_bounded_2_aimdk_msgs_srv_SetVolume_Request const* value,
                                                                                    unsigned char* p,
                                                                                    size_t* offset)
{
    roswasmc_bounded_2_aimdk_msgs_msg_CommonRequest_write_fields(&value->request, p, offset);
    uwvm_bounded_put(p + *offset, (uint64_t)value->audio_volume, 4);
    *offset += 4;
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_aimdk_msgs_srv_SetVolume_Request_read_fields(unsigned char const* p,
                                                                                  size_t n,
                                                                                  size_t* offset,
                                                                                  roswasmc_bounded_2_aimdk_msgs_srv_SetVolume_Request* value)
{
    if(!roswasmc_bounded_2_aimdk_msgs_msg_CommonRequest_read_fields(p, n, offset, &value->request))
        return 0;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->audio_volume, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_2_aimdk_msgs_srv_SetVolume_Request_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_aimdk_msgs_srv_SetVolume_Request_encode(roswasmc_bounded_2_aimdk_msgs_srv_SetVolume_Request const* value,
                                                                                  void* output,
                                                                                  size_t capacity,
                                                                                  size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_aimdk_msgs_srv_SetVolume_Request_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_aimdk_msgs_srv_SetVolume_Request_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_aimdk_msgs_srv_SetVolume_Request_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_aimdk_msgs_srv_SetVolume_Request_decode(void const* input, size_t length, roswasmc_bounded_2_aimdk_msgs_srv_SetVolume_Request* value)
{
    roswasmc_bounded_2_aimdk_msgs_srv_SetVolume_Request next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 12u || length > 12u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_aimdk_msgs_srv_SetVolume_Request_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETVOLUME_RESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETVOLUME_RESPONSE_0 != 0x806a6cafUL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETVOLUME_RESPONSE_1 != 0x62b1680aUL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETVOLUME_RESPONSE_2 != 0xeaba5d2fUL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETVOLUME_RESPONSE_3 != 0x4a86aa73UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETVOLUME_RESPONSE_4 != 0x682da952UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETVOLUME_RESPONSE_5 != 0x0359b042UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETVOLUME_RESPONSE_6 != 0x0cf1f6c3UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETVOLUME_RESPONSE_7 != 0x94c29316UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETVOLUME_RESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETVOLUME_RESPONSE_0 0x806a6cafUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETVOLUME_RESPONSE_1 0x62b1680aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETVOLUME_RESPONSE_2 0xeaba5d2fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETVOLUME_RESPONSE_3 0x4a86aa73UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETVOLUME_RESPONSE_4 0x682da952UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETVOLUME_RESPONSE_5 0x0359b042UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETVOLUME_RESPONSE_6 0x0cf1f6c3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETVOLUME_RESPONSE_7 0x94c29316UL

/** Complete ROS2 aimdk_msgs/srv/SetVolume_Response value; no field projects away native data. */
typedef struct roswasmc_bounded_2_aimdk_msgs_srv_SetVolume_Response
{
    /** Declared field reponse; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_CommonResponse reponse;
    /** Declared field audio_volume; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t audio_volume;
} roswasmc_bounded_2_aimdk_msgs_srv_SetVolume_Response;

# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETVOLUME_RESPONSE_MAX_WIRE_BYTES 156u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETVOLUME_RESPONSE_MIN_WIRE_BYTES 28u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_SRV_SETVOLUME_RESPONSE_CODEC_IDENTITY "UWVMROS1_e5baf36b9fe876cfa8633c769aa7bcf085b813a7174de2bd6dd2026bc3744a1e"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_aimdk_msgs_srv_SetVolume_Response_valid(roswasmc_bounded_2_aimdk_msgs_srv_SetVolume_Response const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_CommonResponse_valid(&value->reponse))
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_aimdk_msgs_srv_SetVolume_Response_wire_size(roswasmc_bounded_2_aimdk_msgs_srv_SetVolume_Response const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_aimdk_msgs_msg_CommonResponse_wire_size(&value->reponse);
    n += 4;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_aimdk_msgs_srv_SetVolume_Response_write_fields(roswasmc_bounded_2_aimdk_msgs_srv_SetVolume_Response const* value,
                                                                                     unsigned char* p,
                                                                                     size_t* offset)
{
    roswasmc_bounded_2_aimdk_msgs_msg_CommonResponse_write_fields(&value->reponse, p, offset);
    uwvm_bounded_put(p + *offset, (uint64_t)value->audio_volume, 4);
    *offset += 4;
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_aimdk_msgs_srv_SetVolume_Response_read_fields(unsigned char const* p,
                                                                                   size_t n,
                                                                                   size_t* offset,
                                                                                   roswasmc_bounded_2_aimdk_msgs_srv_SetVolume_Response* value)
{
    if(!roswasmc_bounded_2_aimdk_msgs_msg_CommonResponse_read_fields(p, n, offset, &value->reponse))
        return 0;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->audio_volume, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_2_aimdk_msgs_srv_SetVolume_Response_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_aimdk_msgs_srv_SetVolume_Response_encode(roswasmc_bounded_2_aimdk_msgs_srv_SetVolume_Response const* value,
                                                                                   void* output,
                                                                                   size_t capacity,
                                                                                   size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_aimdk_msgs_srv_SetVolume_Response_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_aimdk_msgs_srv_SetVolume_Response_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_aimdk_msgs_srv_SetVolume_Response_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_aimdk_msgs_srv_SetVolume_Response_decode(void const* input, size_t length, roswasmc_bounded_2_aimdk_msgs_srv_SetVolume_Response* value)
{
    roswasmc_bounded_2_aimdk_msgs_srv_SetVolume_Response next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 28u || length > 156u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_aimdk_msgs_srv_SetVolume_Response_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#undef UWVM_BOUNDED_ASSERT
#endif
