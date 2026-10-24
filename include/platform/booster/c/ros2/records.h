/** @file Generated bounded-v2 canonical values; no native ROS serialization or authority.
 * Every dynamic field has inline caller-owned capacity. Encode validates and measures
 * the full value before writes; decode commits one temporary only after full validation.
 * Supply distinct record, byte and size-output storage; overlap is explicitly refused.
 * Empty Service/Action components use a C layout dummy that is never a wire field. */
#ifndef UWVM_BOOSTER_RECORDS_EB2B1BBA397CD65E5AA232175A47C92101B5265B6EE1E19C32219BB222B5E4F7
#define UWVM_BOOSTER_RECORDS_EB2B1BBA397CD65E5AA232175A47C92101B5265B6EE1E19C32219BB222B5E4F7
#include <stdint.h>
#include <stddef.h>
#include <float.h>
#include <limits.h>

/**
 * @brief Initialize every member of a C or C++ aggregate to its zero value.
 * @details C uses its standard leading-zero aggregate initializer; C++ uses
 * empty aggregate initialization, including nested arrays and record members.
 * This macro does not apply the optional native ROS field defaults.
 */
#ifndef UWVM_ROS_C_ZERO_INITIALIZER
# if defined(__cplusplus)
#  define UWVM_ROS_C_ZERO_INITIALIZER                                                                                                                          \
      {                                                                                                                                                        \
      }
# else
#  define UWVM_ROS_C_ZERO_INITIALIZER {0}
# endif
#endif

#ifndef UWVM_ROS_BOUNDED_CODEC_HELPERS
# define UWVM_ROS_BOUNDED_CODEC_HELPERS
# define BOOSTER_BOUNDED_INVALID 22u
# define BOOSTER_BOUNDED_TOO_LARGE 90u
# if defined(__cplusplus) && __cplusplus >= 201103L
#  define BOOSTER_BOUNDED_ASSERT(x) static_assert(x, "canonical representation required")
# elif defined(__cplusplus)
#  define BOOSTER_BOUNDED_ASSERT(x) typedef char booster_bounded_representation_required[(x) ? 1 : -1]
# else
#  define BOOSTER_BOUNDED_ASSERT(x) _Static_assert(x, "canonical representation required")
# endif
BOOSTER_BOUNDED_ASSERT(CHAR_BIT == 8 && sizeof(float) == 4 && sizeof(double) == 8 && FLT_RADIX == 2 && FLT_MANT_DIG == 24 && DBL_MANT_DIG == 53 &&
                       FLT_MAX_EXP == 128 && DBL_MAX_EXP == 1024);

/** @brief Copy exact primitive/string bytes; compiler intrinsics avoid byte-at-a-time copies. */
static inline void booster_bounded_copy(void* out, void const* in, size_t n)
{
# if defined(__GNUC__) || defined(__clang__)
    __builtin_memcpy(out, in, n);
# else
    size_t i;
    for(i = 0; i < n; ++i)
        ((unsigned char*)out)[i] = ((unsigned char const*)in)[i];
# endif
}

static inline uint64_t booster_bounded_get(unsigned char const* p, unsigned n)
{
    uint64_t v = 0;
    unsigned i;
    for(i = 0; i < n; ++i)
        v |= (uint64_t)p[i] << (8 * i);
    return v;
}

static inline void booster_bounded_put(unsigned char* p, uint64_t v, unsigned n)
{
    unsigned i;
    for(i = 0; i < n; ++i)
        p[i] = (unsigned char)(v >> (8 * i));
}

/** @brief Strict Unicode scalar UTF-8, rejecting embedded NUL as required by this profile. */
static inline int booster_bounded_utf8(unsigned char const* p, size_t n)
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

static inline int booster_bounded_overlap(void const* a, size_t an, void const* b, size_t bn)
{
    uintptr_t x = (uintptr_t)a, y = (uintptr_t)b;
    if((an && !a) || (bn && !b) || an > UINTPTR_MAX - x || bn > UINTPTR_MAX - y)
        return 1;
    return an && bn && x < y + bn && y < x + an;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_BOOSTERAPIREQMSG)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_BOOSTERAPIREQMSG_0 != 0xfbb66fe1UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_BOOSTERAPIREQMSG_1 != 0xdab0b1c8UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_BOOSTERAPIREQMSG_2 != 0xa2596cf6UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_BOOSTERAPIREQMSG_3 != 0x461ff23fUL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_BOOSTERAPIREQMSG_4 != 0xb5c57222UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_BOOSTERAPIREQMSG_5 != 0xbf3308d5UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_BOOSTERAPIREQMSG_6 != 0x9c2f0b10UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_BOOSTERAPIREQMSG_7 != 0x46c9f732UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_BOOSTERAPIREQMSG 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_BOOSTERAPIREQMSG_0 0xfbb66fe1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_BOOSTERAPIREQMSG_1 0xdab0b1c8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_BOOSTERAPIREQMSG_2 0xa2596cf6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_BOOSTERAPIREQMSG_3 0x461ff23fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_BOOSTERAPIREQMSG_4 0xb5c57222UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_BOOSTERAPIREQMSG_5 0xbf3308d5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_BOOSTERAPIREQMSG_6 0x9c2f0b10UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_BOOSTERAPIREQMSG_7 0x46c9f732UL

/** @brief UTF-8 byte storage for booster_interface/msg/BoosterApiReqMsg.body; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[4096];
} roswasmc_bounded_2_booster_interface_msg_BoosterApiReqMsg_body_text;

/** @brief Complete ROS2 booster_interface/msg/BoosterApiReqMsg value; no field projects away native data. */
typedef struct roswasmc_bounded_2_booster_interface_msg_BoosterApiReqMsg
{
    /** @brief Declared field api_id; canonical capacity is part of CODEC_IDENTITY. */
    int64_t api_id;
    /** @brief Declared field body; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_booster_interface_msg_BoosterApiReqMsg_body_text body;
} roswasmc_bounded_2_booster_interface_msg_BoosterApiReqMsg;

# define ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_BOOSTERAPIREQMSG_MAX_WIRE_BYTES 4108u
# define ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_BOOSTERAPIREQMSG_MIN_WIRE_BYTES 12u
# define ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_BOOSTERAPIREQMSG_CODEC_IDENTITY "UWVMROS1_e2f9b66467bcb40a8194c744694f314e7fca56061f1cf3121eed565f724edd40"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_booster_interface_msg_BoosterApiReqMsg_valid(roswasmc_bounded_2_booster_interface_msg_BoosterApiReqMsg const* value)
{
    if(!value)
        return 0;
    if(value->body.size > 4096u || !booster_bounded_utf8(value->body.data, value->body.size))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_booster_interface_msg_BoosterApiReqMsg_wire_size(roswasmc_bounded_2_booster_interface_msg_BoosterApiReqMsg const* value)
{
    size_t n = 0;
    n += 8;
    n += 4 + value->body.size;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_booster_interface_msg_BoosterApiReqMsg_write_fields(roswasmc_bounded_2_booster_interface_msg_BoosterApiReqMsg const* value,
                                                                           unsigned char* p,
                                                                           size_t* offset)
{
    booster_bounded_put(p + *offset, (uint64_t)value->api_id, 8);
    *offset += 8;
    booster_bounded_put(p + *offset, value->body.size, 4);
    *offset += 4;
    booster_bounded_copy(p + *offset, value->body.data, value->body.size);
    *offset += value->body.size;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_booster_interface_msg_BoosterApiReqMsg_read_fields(unsigned char const* p,
                                                                                        size_t n,
                                                                                        size_t* offset,
                                                                                        roswasmc_bounded_2_booster_interface_msg_BoosterApiReqMsg* value)
{
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)booster_bounded_get(p + *offset, 8);
        booster_bounded_copy(&value->api_id, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->body.size = (uint32_t)booster_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->body.size > 4096u || value->body.size > n - *offset)
        return 0;
    booster_bounded_copy(value->body.data, p + *offset, value->body.size);
    *offset += value->body.size;
    return roswasmc_bounded_2_booster_interface_msg_BoosterApiReqMsg_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_booster_interface_msg_BoosterApiReqMsg_encode(roswasmc_bounded_2_booster_interface_msg_BoosterApiReqMsg const* value,
                                                                                        void* output,
                                                                                        size_t capacity,
                                                                                        size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_booster_interface_msg_BoosterApiReqMsg_valid(value))
        return BOOSTER_BOUNDED_INVALID;
    n = roswasmc_bounded_2_booster_interface_msg_BoosterApiReqMsg_wire_size(value);
    if(capacity < n)
        return BOOSTER_BOUNDED_TOO_LARGE;
    if((n && !output) || booster_bounded_overlap(value, sizeof *value, output, n) || booster_bounded_overlap(length, sizeof *length, output, n) ||
       booster_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return BOOSTER_BOUNDED_INVALID;
    roswasmc_bounded_2_booster_interface_msg_BoosterApiReqMsg_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_2_booster_interface_msg_BoosterApiReqMsg_decode(void const* input,
                                                                                        size_t length,
                                                                                        roswasmc_bounded_2_booster_interface_msg_BoosterApiReqMsg* value)
{
    roswasmc_bounded_2_booster_interface_msg_BoosterApiReqMsg next = UWVM_ROS_C_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 12u || length > 4108u || booster_bounded_overlap(value, sizeof *value, input, length))
        return BOOSTER_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_booster_interface_msg_BoosterApiReqMsg_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return BOOSTER_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_BOOSTERAPIRESPMSG)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_BOOSTERAPIRESPMSG_0 != 0xbd7758afUL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_BOOSTERAPIRESPMSG_1 != 0xa32e99bcUL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_BOOSTERAPIRESPMSG_2 != 0x1c9431f9UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_BOOSTERAPIRESPMSG_3 != 0x8eb8502cUL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_BOOSTERAPIRESPMSG_4 != 0x9b9e7b0eUL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_BOOSTERAPIRESPMSG_5 != 0x5c23db45UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_BOOSTERAPIRESPMSG_6 != 0xcf290bbbUL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_BOOSTERAPIRESPMSG_7 != 0x93d8b642UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_BOOSTERAPIRESPMSG 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_BOOSTERAPIRESPMSG_0 0xbd7758afUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_BOOSTERAPIRESPMSG_1 0xa32e99bcUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_BOOSTERAPIRESPMSG_2 0x1c9431f9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_BOOSTERAPIRESPMSG_3 0x8eb8502cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_BOOSTERAPIRESPMSG_4 0x9b9e7b0eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_BOOSTERAPIRESPMSG_5 0x5c23db45UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_BOOSTERAPIRESPMSG_6 0xcf290bbbUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_BOOSTERAPIRESPMSG_7 0x93d8b642UL

/** @brief UTF-8 byte storage for booster_interface/msg/BoosterApiRespMsg.body; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[4096];
} roswasmc_bounded_2_booster_interface_msg_BoosterApiRespMsg_body_text;

/** @brief Complete ROS2 booster_interface/msg/BoosterApiRespMsg value; no field projects away native data. */
typedef struct roswasmc_bounded_2_booster_interface_msg_BoosterApiRespMsg
{
    /** @brief Declared field status; canonical capacity is part of CODEC_IDENTITY. */
    int64_t status;
    /** @brief Declared field body; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_booster_interface_msg_BoosterApiRespMsg_body_text body;
} roswasmc_bounded_2_booster_interface_msg_BoosterApiRespMsg;

# define ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_BOOSTERAPIRESPMSG_MAX_WIRE_BYTES 4108u
# define ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_BOOSTERAPIRESPMSG_MIN_WIRE_BYTES 12u
# define ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_BOOSTERAPIRESPMSG_CODEC_IDENTITY "UWVMROS1_21ce208a51f60843eecb72edbc408e926353b1a6f178424c0b691ac237fed11f"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_booster_interface_msg_BoosterApiRespMsg_valid(roswasmc_bounded_2_booster_interface_msg_BoosterApiRespMsg const* value)
{
    if(!value)
        return 0;
    if(value->body.size > 4096u || !booster_bounded_utf8(value->body.data, value->body.size))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_2_booster_interface_msg_BoosterApiRespMsg_wire_size(roswasmc_bounded_2_booster_interface_msg_BoosterApiRespMsg const* value)
{
    size_t n = 0;
    n += 8;
    n += 4 + value->body.size;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_booster_interface_msg_BoosterApiRespMsg_write_fields(roswasmc_bounded_2_booster_interface_msg_BoosterApiRespMsg const* value,
                                                                            unsigned char* p,
                                                                            size_t* offset)
{
    booster_bounded_put(p + *offset, (uint64_t)value->status, 8);
    *offset += 8;
    booster_bounded_put(p + *offset, value->body.size, 4);
    *offset += 4;
    booster_bounded_copy(p + *offset, value->body.data, value->body.size);
    *offset += value->body.size;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_booster_interface_msg_BoosterApiRespMsg_read_fields(unsigned char const* p,
                                                                                         size_t n,
                                                                                         size_t* offset,
                                                                                         roswasmc_bounded_2_booster_interface_msg_BoosterApiRespMsg* value)
{
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)booster_bounded_get(p + *offset, 8);
        booster_bounded_copy(&value->status, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->body.size = (uint32_t)booster_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->body.size > 4096u || value->body.size > n - *offset)
        return 0;
    booster_bounded_copy(value->body.data, p + *offset, value->body.size);
    *offset += value->body.size;
    return roswasmc_bounded_2_booster_interface_msg_BoosterApiRespMsg_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_booster_interface_msg_BoosterApiRespMsg_encode(roswasmc_bounded_2_booster_interface_msg_BoosterApiRespMsg const* value,
                                                                      void* output,
                                                                      size_t capacity,
                                                                      size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_booster_interface_msg_BoosterApiRespMsg_valid(value))
        return BOOSTER_BOUNDED_INVALID;
    n = roswasmc_bounded_2_booster_interface_msg_BoosterApiRespMsg_wire_size(value);
    if(capacity < n)
        return BOOSTER_BOUNDED_TOO_LARGE;
    if((n && !output) || booster_bounded_overlap(value, sizeof *value, output, n) || booster_bounded_overlap(length, sizeof *length, output, n) ||
       booster_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return BOOSTER_BOUNDED_INVALID;
    roswasmc_bounded_2_booster_interface_msg_BoosterApiRespMsg_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_2_booster_interface_msg_BoosterApiRespMsg_decode(void const* input,
                                                                                         size_t length,
                                                                                         roswasmc_bounded_2_booster_interface_msg_BoosterApiRespMsg* value)
{
    roswasmc_bounded_2_booster_interface_msg_BoosterApiRespMsg next = UWVM_ROS_C_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 12u || length > 4108u || booster_bounded_overlap(value, sizeof *value, input, length))
        return BOOSTER_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_booster_interface_msg_BoosterApiRespMsg_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return BOOSTER_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_BUTTONEVENTMSG)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_BUTTONEVENTMSG_0 != 0xe2b140a9UL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_BUTTONEVENTMSG_1 != 0x6702caa5UL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_BUTTONEVENTMSG_2 != 0xaa72191cUL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_BUTTONEVENTMSG_3 != 0xfb98193eUL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_BUTTONEVENTMSG_4 != 0x1242671aUL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_BUTTONEVENTMSG_5 != 0x89d675acUL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_BUTTONEVENTMSG_6 != 0xad51e64bUL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_BUTTONEVENTMSG_7 != 0x643facb9UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_BUTTONEVENTMSG 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_BUTTONEVENTMSG_0 0xe2b140a9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_BUTTONEVENTMSG_1 0x6702caa5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_BUTTONEVENTMSG_2 0xaa72191cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_BUTTONEVENTMSG_3 0xfb98193eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_BUTTONEVENTMSG_4 0x1242671aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_BUTTONEVENTMSG_5 0x89d675acUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_BUTTONEVENTMSG_6 0xad51e64bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_BUTTONEVENTMSG_7 0x643facb9UL

/** @brief Complete ROS2 booster_interface/msg/ButtonEventMsg value; no field projects away native data. */
typedef struct roswasmc_bounded_2_booster_interface_msg_ButtonEventMsg
{
    /** @brief Declared field event; canonical capacity is part of CODEC_IDENTITY. */
    int8_t event;
    /** @brief Declared field button; canonical capacity is part of CODEC_IDENTITY. */
    int32_t button;
} roswasmc_bounded_2_booster_interface_msg_ButtonEventMsg;

# define ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_BUTTONEVENTMSG_MAX_WIRE_BYTES 5u
# define ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_BUTTONEVENTMSG_MIN_WIRE_BYTES 5u
# define ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_BUTTONEVENTMSG_CODEC_IDENTITY "UWVMROS1_b61682fd9c35bd54c52000224411f4373b8620e16587b31d8a683076e0d14fe4"
/** @brief Original scalar constant PRESS_DOWN=0; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_BUTTONEVENTMSG_PRESS_DOWN INT32_C(0)
/** @brief Original scalar constant PRESS_UP=1; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_BUTTONEVENTMSG_PRESS_UP INT32_C(1)
/** @brief Original scalar constant SINGLE_CLICK=0; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_BUTTONEVENTMSG_SINGLE_CLICK INT32_C(0)
/** @brief Original scalar constant DOUBLE_CLICK=1; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_BUTTONEVENTMSG_DOUBLE_CLICK INT32_C(1)
/** @brief Original scalar constant TRIPLE_CLICK=0; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_BUTTONEVENTMSG_TRIPLE_CLICK INT32_C(0)
/** @brief Original scalar constant LONG_PRESS_START=1; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_BUTTONEVENTMSG_LONG_PRESS_START INT32_C(1)
/** @brief Original scalar constant LONG_PRESS_HOLD=0; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_BUTTONEVENTMSG_LONG_PRESS_HOLD INT32_C(0)
/** @brief Original scalar constant LONG_PRESS_END=1; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_BUTTONEVENTMSG_LONG_PRESS_END INT32_C(1)

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_booster_interface_msg_ButtonEventMsg_valid(roswasmc_bounded_2_booster_interface_msg_ButtonEventMsg const* value)
{
    if(!value)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_booster_interface_msg_ButtonEventMsg_wire_size(roswasmc_bounded_2_booster_interface_msg_ButtonEventMsg const* value)
{
    (void)value;
    size_t n = 0;
    n += 1;
    n += 4;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_booster_interface_msg_ButtonEventMsg_write_fields(roswasmc_bounded_2_booster_interface_msg_ButtonEventMsg const* value,
                                                                                        unsigned char* p,
                                                                                        size_t* offset)
{
    booster_bounded_put(p + *offset, (uint64_t)value->event, 1);
    *offset += 1;
    booster_bounded_put(p + *offset, (uint64_t)value->button, 4);
    *offset += 4;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_booster_interface_msg_ButtonEventMsg_read_fields(unsigned char const* p,
                                                                                      size_t n,
                                                                                      size_t* offset,
                                                                                      roswasmc_bounded_2_booster_interface_msg_ButtonEventMsg* value)
{
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)booster_bounded_get(p + *offset, 1);
        booster_bounded_copy(&value->event, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)booster_bounded_get(p + *offset, 4);
        booster_bounded_copy(&value->button, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_2_booster_interface_msg_ButtonEventMsg_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_booster_interface_msg_ButtonEventMsg_encode(roswasmc_bounded_2_booster_interface_msg_ButtonEventMsg const* value,
                                                                                      void* output,
                                                                                      size_t capacity,
                                                                                      size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_booster_interface_msg_ButtonEventMsg_valid(value))
        return BOOSTER_BOUNDED_INVALID;
    n = roswasmc_bounded_2_booster_interface_msg_ButtonEventMsg_wire_size(value);
    if(capacity < n)
        return BOOSTER_BOUNDED_TOO_LARGE;
    if((n && !output) || booster_bounded_overlap(value, sizeof *value, output, n) || booster_bounded_overlap(length, sizeof *length, output, n) ||
       booster_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return BOOSTER_BOUNDED_INVALID;
    roswasmc_bounded_2_booster_interface_msg_ButtonEventMsg_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_2_booster_interface_msg_ButtonEventMsg_decode(void const* input,
                                                                                      size_t length,
                                                                                      roswasmc_bounded_2_booster_interface_msg_ButtonEventMsg* value)
{
    roswasmc_bounded_2_booster_interface_msg_ButtonEventMsg next = UWVM_ROS_C_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 5u || length > 5u || booster_bounded_overlap(value, sizeof *value, input, length))
        return BOOSTER_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_booster_interface_msg_ButtonEventMsg_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return BOOSTER_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_FALLDOWNSTATE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_FALLDOWNSTATE_0 != 0x130d5ab1UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_FALLDOWNSTATE_1 != 0x631d044cUL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_FALLDOWNSTATE_2 != 0x05255eb1UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_FALLDOWNSTATE_3 != 0xa6e572d7UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_FALLDOWNSTATE_4 != 0x5afb73d3UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_FALLDOWNSTATE_5 != 0xe1fbcc50UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_FALLDOWNSTATE_6 != 0x29dcbfdbUL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_FALLDOWNSTATE_7 != 0xa9ae3f4aUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_FALLDOWNSTATE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_FALLDOWNSTATE_0 0x130d5ab1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_FALLDOWNSTATE_1 0x631d044cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_FALLDOWNSTATE_2 0x05255eb1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_FALLDOWNSTATE_3 0xa6e572d7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_FALLDOWNSTATE_4 0x5afb73d3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_FALLDOWNSTATE_5 0xe1fbcc50UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_FALLDOWNSTATE_6 0x29dcbfdbUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_FALLDOWNSTATE_7 0xa9ae3f4aUL

/** @brief Complete ROS2 booster_interface/msg/FallDownState value; no field projects away native data. */
typedef struct roswasmc_bounded_2_booster_interface_msg_FallDownState
{
    /** @brief Declared field fall_down_state; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t fall_down_state;
    /** @brief Declared field is_recovery_available; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t is_recovery_available;
} roswasmc_bounded_2_booster_interface_msg_FallDownState;

# define ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_FALLDOWNSTATE_MAX_WIRE_BYTES 5u
# define ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_FALLDOWNSTATE_MIN_WIRE_BYTES 5u
# define ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_FALLDOWNSTATE_CODEC_IDENTITY "UWVMROS1_8bf168ccefac72eda6070704c70e12e62776d29ad3db908095cc01220f4b533f"
/** @brief Original scalar constant IS_READY=0; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_FALLDOWNSTATE_IS_READY UINT32_C(0)
/** @brief Original scalar constant IS_FALLING=1; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_FALLDOWNSTATE_IS_FALLING UINT32_C(1)
/** @brief Original scalar constant HAS_FALLEN=2; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_FALLDOWNSTATE_HAS_FALLEN UINT32_C(2)
/** @brief Original scalar constant IS_GETTING_UP=3; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_FALLDOWNSTATE_IS_GETTING_UP UINT32_C(3)

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_booster_interface_msg_FallDownState_valid(roswasmc_bounded_2_booster_interface_msg_FallDownState const* value)
{
    if(!value)
        return 0;
    if(value->is_recovery_available > 1)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_booster_interface_msg_FallDownState_wire_size(roswasmc_bounded_2_booster_interface_msg_FallDownState const* value)
{
    (void)value;
    size_t n = 0;
    n += 4;
    n += 1;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_booster_interface_msg_FallDownState_write_fields(roswasmc_bounded_2_booster_interface_msg_FallDownState const* value,
                                                                                       unsigned char* p,
                                                                                       size_t* offset)
{
    booster_bounded_put(p + *offset, (uint64_t)value->fall_down_state, 4);
    *offset += 4;
    booster_bounded_put(p + *offset, (uint64_t)value->is_recovery_available, 1);
    *offset += 1;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_booster_interface_msg_FallDownState_read_fields(unsigned char const* p,
                                                                                     size_t n,
                                                                                     size_t* offset,
                                                                                     roswasmc_bounded_2_booster_interface_msg_FallDownState* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)booster_bounded_get(p + *offset, 4);
        booster_bounded_copy(&value->fall_down_state, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)booster_bounded_get(p + *offset, 1);
        booster_bounded_copy(&value->is_recovery_available, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_2_booster_interface_msg_FallDownState_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_booster_interface_msg_FallDownState_encode(roswasmc_bounded_2_booster_interface_msg_FallDownState const* value,
                                                                                     void* output,
                                                                                     size_t capacity,
                                                                                     size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_booster_interface_msg_FallDownState_valid(value))
        return BOOSTER_BOUNDED_INVALID;
    n = roswasmc_bounded_2_booster_interface_msg_FallDownState_wire_size(value);
    if(capacity < n)
        return BOOSTER_BOUNDED_TOO_LARGE;
    if((n && !output) || booster_bounded_overlap(value, sizeof *value, output, n) || booster_bounded_overlap(length, sizeof *length, output, n) ||
       booster_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return BOOSTER_BOUNDED_INVALID;
    roswasmc_bounded_2_booster_interface_msg_FallDownState_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_2_booster_interface_msg_FallDownState_decode(void const* input,
                                                                                     size_t length,
                                                                                     roswasmc_bounded_2_booster_interface_msg_FallDownState* value)
{
    roswasmc_bounded_2_booster_interface_msg_FallDownState next = UWVM_ROS_C_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 5u || length > 5u || booster_bounded_overlap(value, sizeof *value, input, length))
        return BOOSTER_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_booster_interface_msg_FallDownState_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return BOOSTER_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_HANDPARAM)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_HANDPARAM_0 != 0x8c7efaddUL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_HANDPARAM_1 != 0x77ece3c7UL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_HANDPARAM_2 != 0x27f4599eUL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_HANDPARAM_3 != 0x56016334UL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_HANDPARAM_4 != 0x7cee352dUL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_HANDPARAM_5 != 0xec125c4cUL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_HANDPARAM_6 != 0x0350bee6UL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_HANDPARAM_7 != 0x0dd81e34UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_HANDPARAM 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_HANDPARAM_0 0x8c7efaddUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_HANDPARAM_1 0x77ece3c7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_HANDPARAM_2 0x27f4599eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_HANDPARAM_3 0x56016334UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_HANDPARAM_4 0x7cee352dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_HANDPARAM_5 0xec125c4cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_HANDPARAM_6 0x0350bee6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_HANDPARAM_7 0x0dd81e34UL

/** @brief Complete ROS2 booster_interface/msg/HandParam value; no field projects away native data. */
typedef struct roswasmc_bounded_2_booster_interface_msg_HandParam
{
    /** @brief Declared field angle; canonical capacity is part of CODEC_IDENTITY. */
    int32_t angle;
    /** @brief Declared field force; canonical capacity is part of CODEC_IDENTITY. */
    int32_t force;
    /** @brief Declared field speed; canonical capacity is part of CODEC_IDENTITY. */
    int32_t speed;
    /** @brief Declared field seq; canonical capacity is part of CODEC_IDENTITY. */
    int32_t seq;
} roswasmc_bounded_2_booster_interface_msg_HandParam;

# define ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_HANDPARAM_MAX_WIRE_BYTES 16u
# define ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_HANDPARAM_MIN_WIRE_BYTES 16u
# define ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_HANDPARAM_CODEC_IDENTITY "UWVMROS1_3b91722e751e7c00c773335bb42af34850190ecc26a029e8792c49d912def158"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_booster_interface_msg_HandParam_valid(roswasmc_bounded_2_booster_interface_msg_HandParam const* value)
{
    if(!value)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_booster_interface_msg_HandParam_wire_size(roswasmc_bounded_2_booster_interface_msg_HandParam const* value)
{
    (void)value;
    size_t n = 0;
    n += 4;
    n += 4;
    n += 4;
    n += 4;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_booster_interface_msg_HandParam_write_fields(roswasmc_bounded_2_booster_interface_msg_HandParam const* value,
                                                                                   unsigned char* p,
                                                                                   size_t* offset)
{
    booster_bounded_put(p + *offset, (uint64_t)value->angle, 4);
    *offset += 4;
    booster_bounded_put(p + *offset, (uint64_t)value->force, 4);
    *offset += 4;
    booster_bounded_put(p + *offset, (uint64_t)value->speed, 4);
    *offset += 4;
    booster_bounded_put(p + *offset, (uint64_t)value->seq, 4);
    *offset += 4;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_booster_interface_msg_HandParam_read_fields(unsigned char const* p,
                                                                                 size_t n,
                                                                                 size_t* offset,
                                                                                 roswasmc_bounded_2_booster_interface_msg_HandParam* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)booster_bounded_get(p + *offset, 4);
        booster_bounded_copy(&value->angle, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)booster_bounded_get(p + *offset, 4);
        booster_bounded_copy(&value->force, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)booster_bounded_get(p + *offset, 4);
        booster_bounded_copy(&value->speed, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)booster_bounded_get(p + *offset, 4);
        booster_bounded_copy(&value->seq, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_2_booster_interface_msg_HandParam_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_booster_interface_msg_HandParam_encode(roswasmc_bounded_2_booster_interface_msg_HandParam const* value,
                                                                                 void* output,
                                                                                 size_t capacity,
                                                                                 size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_booster_interface_msg_HandParam_valid(value))
        return BOOSTER_BOUNDED_INVALID;
    n = roswasmc_bounded_2_booster_interface_msg_HandParam_wire_size(value);
    if(capacity < n)
        return BOOSTER_BOUNDED_TOO_LARGE;
    if((n && !output) || booster_bounded_overlap(value, sizeof *value, output, n) || booster_bounded_overlap(length, sizeof *length, output, n) ||
       booster_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return BOOSTER_BOUNDED_INVALID;
    roswasmc_bounded_2_booster_interface_msg_HandParam_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_booster_interface_msg_HandParam_decode(void const* input, size_t length, roswasmc_bounded_2_booster_interface_msg_HandParam* value)
{
    roswasmc_bounded_2_booster_interface_msg_HandParam next = UWVM_ROS_C_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 16u || length > 16u || booster_bounded_overlap(value, sizeof *value, input, length))
        return BOOSTER_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_booster_interface_msg_HandParam_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return BOOSTER_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_HANDCOMMAND)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_HANDCOMMAND_0 != 0x98ecb3d5UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_HANDCOMMAND_1 != 0xcf7f2a11UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_HANDCOMMAND_2 != 0x10b6d823UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_HANDCOMMAND_3 != 0x93dffaecUL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_HANDCOMMAND_4 != 0x2a6764f3UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_HANDCOMMAND_5 != 0xf98126fdUL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_HANDCOMMAND_6 != 0x0db4a7deUL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_HANDCOMMAND_7 != 0x2104eb25UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_HANDCOMMAND 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_HANDCOMMAND_0 0x98ecb3d5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_HANDCOMMAND_1 0xcf7f2a11UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_HANDCOMMAND_2 0x10b6d823UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_HANDCOMMAND_3 0x93dffaecUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_HANDCOMMAND_4 0x2a6764f3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_HANDCOMMAND_5 0xf98126fdUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_HANDCOMMAND_6 0x0db4a7deUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_HANDCOMMAND_7 0x2104eb25UL

/** @brief At most32 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_2_booster_interface_msg_HandParam data[32];
} roswasmc_bounded_2_booster_interface_msg_HandCommand_hand_param_sequence;

/** @brief Complete ROS2 booster_interface/msg/HandCommand value; no field projects away native data. */
typedef struct roswasmc_bounded_2_booster_interface_msg_HandCommand
{
    /** @brief Declared field hand_param; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_booster_interface_msg_HandCommand_hand_param_sequence hand_param;
    /** @brief Declared field force_mode; canonical capacity is part of CODEC_IDENTITY. */
    int32_t force_mode;
    /** @brief Declared field hand_index; canonical capacity is part of CODEC_IDENTITY. */
    int32_t hand_index;
    /** @brief Declared field hand_type; canonical capacity is part of CODEC_IDENTITY. */
    int32_t hand_type;
} roswasmc_bounded_2_booster_interface_msg_HandCommand;

# define ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_HANDCOMMAND_MAX_WIRE_BYTES 528u
# define ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_HANDCOMMAND_MIN_WIRE_BYTES 16u
# define ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_HANDCOMMAND_CODEC_IDENTITY "UWVMROS1_06f3d6c0e9bef1da409330038aadbfacfe60b02e099f2ae0c4dcb92a632b20a0"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_booster_interface_msg_HandCommand_valid(roswasmc_bounded_2_booster_interface_msg_HandCommand const* value)
{
    if(!value)
        return 0;
    if(value->hand_param.size > 32u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->hand_param.size; ++i)
        {
            if(!roswasmc_bounded_2_booster_interface_msg_HandParam_valid(&value->hand_param.data[i]))
                return 0;
        }
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_booster_interface_msg_HandCommand_wire_size(roswasmc_bounded_2_booster_interface_msg_HandCommand const* value)
{
    size_t n = 0;
    n += 4;
    if(value->hand_param.size > 32u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->hand_param.size; ++i)
        {
            n += roswasmc_bounded_2_booster_interface_msg_HandParam_wire_size(&value->hand_param.data[i]);
        }
    }
    n += 4;
    n += 4;
    n += 4;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_booster_interface_msg_HandCommand_write_fields(roswasmc_bounded_2_booster_interface_msg_HandCommand const* value,
                                                                                     unsigned char* p,
                                                                                     size_t* offset)
{
    booster_bounded_put(p + *offset, value->hand_param.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->hand_param.size; ++i)
        {
            roswasmc_bounded_2_booster_interface_msg_HandParam_write_fields(&value->hand_param.data[i], p, offset);
        }
    }
    booster_bounded_put(p + *offset, (uint64_t)value->force_mode, 4);
    *offset += 4;
    booster_bounded_put(p + *offset, (uint64_t)value->hand_index, 4);
    *offset += 4;
    booster_bounded_put(p + *offset, (uint64_t)value->hand_type, 4);
    *offset += 4;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_booster_interface_msg_HandCommand_read_fields(unsigned char const* p,
                                                                                   size_t n,
                                                                                   size_t* offset,
                                                                                   roswasmc_bounded_2_booster_interface_msg_HandCommand* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    value->hand_param.size = (uint32_t)booster_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->hand_param.size > 32u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->hand_param.size; ++i)
        {
            if(!roswasmc_bounded_2_booster_interface_msg_HandParam_read_fields(p, n, offset, &value->hand_param.data[i]))
                return 0;
        }
    }
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)booster_bounded_get(p + *offset, 4);
        booster_bounded_copy(&value->force_mode, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)booster_bounded_get(p + *offset, 4);
        booster_bounded_copy(&value->hand_index, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)booster_bounded_get(p + *offset, 4);
        booster_bounded_copy(&value->hand_type, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_2_booster_interface_msg_HandCommand_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_booster_interface_msg_HandCommand_encode(roswasmc_bounded_2_booster_interface_msg_HandCommand const* value,
                                                                                   void* output,
                                                                                   size_t capacity,
                                                                                   size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_booster_interface_msg_HandCommand_valid(value))
        return BOOSTER_BOUNDED_INVALID;
    n = roswasmc_bounded_2_booster_interface_msg_HandCommand_wire_size(value);
    if(capacity < n)
        return BOOSTER_BOUNDED_TOO_LARGE;
    if((n && !output) || booster_bounded_overlap(value, sizeof *value, output, n) || booster_bounded_overlap(length, sizeof *length, output, n) ||
       booster_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return BOOSTER_BOUNDED_INVALID;
    roswasmc_bounded_2_booster_interface_msg_HandCommand_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_booster_interface_msg_HandCommand_decode(void const* input, size_t length, roswasmc_bounded_2_booster_interface_msg_HandCommand* value)
{
    roswasmc_bounded_2_booster_interface_msg_HandCommand next = UWVM_ROS_C_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 16u || length > 528u || booster_bounded_overlap(value, sizeof *value, input, length))
        return BOOSTER_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_booster_interface_msg_HandCommand_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return BOOSTER_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_HANDDDSMSG)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_HANDDDSMSG_0 != 0x9846e924UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_HANDDDSMSG_1 != 0x7e7d56d9UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_HANDDDSMSG_2 != 0x2cd01f9fUL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_HANDDDSMSG_3 != 0xe00835a3UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_HANDDDSMSG_4 != 0x17197f9fUL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_HANDDDSMSG_5 != 0xbfc45009UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_HANDDDSMSG_6 != 0x43fbe415UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_HANDDDSMSG_7 != 0x40dbccc7UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_HANDDDSMSG 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_HANDDDSMSG_0 0x9846e924UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_HANDDDSMSG_1 0x7e7d56d9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_HANDDDSMSG_2 0x2cd01f9fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_HANDDDSMSG_3 0xe00835a3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_HANDDDSMSG_4 0x17197f9fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_HANDDDSMSG_5 0xbfc45009UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_HANDDDSMSG_6 0x43fbe415UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_HANDDDSMSG_7 0x40dbccc7UL

/** @brief At most2 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_2_booster_interface_msg_HandCommand data[2];
} roswasmc_bounded_2_booster_interface_msg_HandDdsMsg_hands_vec_sequence;

/** @brief Complete ROS2 booster_interface/msg/HandDdsMsg value; no field projects away native data. */
typedef struct roswasmc_bounded_2_booster_interface_msg_HandDdsMsg
{
    /** @brief Declared field hands_vec; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_booster_interface_msg_HandDdsMsg_hands_vec_sequence hands_vec;
} roswasmc_bounded_2_booster_interface_msg_HandDdsMsg;

# define ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_HANDDDSMSG_MAX_WIRE_BYTES 1060u
# define ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_HANDDDSMSG_MIN_WIRE_BYTES 4u
# define ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_HANDDDSMSG_CODEC_IDENTITY "UWVMROS1_55af9d6f272a72e75e86e1a6164d235aca5f2ce99c2529749c0d5e33d6091397"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_booster_interface_msg_HandDdsMsg_valid(roswasmc_bounded_2_booster_interface_msg_HandDdsMsg const* value)
{
    if(!value)
        return 0;
    if(value->hands_vec.size > 2u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->hands_vec.size; ++i)
        {
            if(!roswasmc_bounded_2_booster_interface_msg_HandCommand_valid(&value->hands_vec.data[i]))
                return 0;
        }
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_booster_interface_msg_HandDdsMsg_wire_size(roswasmc_bounded_2_booster_interface_msg_HandDdsMsg const* value)
{
    size_t n = 0;
    n += 4;
    if(value->hands_vec.size > 2u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->hands_vec.size; ++i)
        {
            n += roswasmc_bounded_2_booster_interface_msg_HandCommand_wire_size(&value->hands_vec.data[i]);
        }
    }
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_booster_interface_msg_HandDdsMsg_write_fields(roswasmc_bounded_2_booster_interface_msg_HandDdsMsg const* value,
                                                                                    unsigned char* p,
                                                                                    size_t* offset)
{
    booster_bounded_put(p + *offset, value->hands_vec.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->hands_vec.size; ++i)
        {
            roswasmc_bounded_2_booster_interface_msg_HandCommand_write_fields(&value->hands_vec.data[i], p, offset);
        }
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_booster_interface_msg_HandDdsMsg_read_fields(unsigned char const* p,
                                                                                  size_t n,
                                                                                  size_t* offset,
                                                                                  roswasmc_bounded_2_booster_interface_msg_HandDdsMsg* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    value->hands_vec.size = (uint32_t)booster_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->hands_vec.size > 2u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->hands_vec.size; ++i)
        {
            if(!roswasmc_bounded_2_booster_interface_msg_HandCommand_read_fields(p, n, offset, &value->hands_vec.data[i]))
                return 0;
        }
    }
    return roswasmc_bounded_2_booster_interface_msg_HandDdsMsg_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_booster_interface_msg_HandDdsMsg_encode(roswasmc_bounded_2_booster_interface_msg_HandDdsMsg const* value,
                                                                                  void* output,
                                                                                  size_t capacity,
                                                                                  size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_booster_interface_msg_HandDdsMsg_valid(value))
        return BOOSTER_BOUNDED_INVALID;
    n = roswasmc_bounded_2_booster_interface_msg_HandDdsMsg_wire_size(value);
    if(capacity < n)
        return BOOSTER_BOUNDED_TOO_LARGE;
    if((n && !output) || booster_bounded_overlap(value, sizeof *value, output, n) || booster_bounded_overlap(length, sizeof *length, output, n) ||
       booster_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return BOOSTER_BOUNDED_INVALID;
    roswasmc_bounded_2_booster_interface_msg_HandDdsMsg_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_booster_interface_msg_HandDdsMsg_decode(void const* input, size_t length, roswasmc_bounded_2_booster_interface_msg_HandDdsMsg* value)
{
    roswasmc_bounded_2_booster_interface_msg_HandDdsMsg next = UWVM_ROS_C_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 4u || length > 1060u || booster_bounded_overlap(value, sizeof *value, input, length))
        return BOOSTER_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_booster_interface_msg_HandDdsMsg_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return BOOSTER_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_IMUSTATE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_IMUSTATE_0 != 0xf1288345UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_IMUSTATE_1 != 0xbdafe0c6UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_IMUSTATE_2 != 0xb2eaa8d7UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_IMUSTATE_3 != 0xb5b35036UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_IMUSTATE_4 != 0xf734f5baUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_IMUSTATE_5 != 0x1d9093c7UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_IMUSTATE_6 != 0xb5abac9dUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_IMUSTATE_7 != 0x49a860ccUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_IMUSTATE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_IMUSTATE_0 0xf1288345UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_IMUSTATE_1 0xbdafe0c6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_IMUSTATE_2 0xb2eaa8d7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_IMUSTATE_3 0xb5b35036UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_IMUSTATE_4 0xf734f5baUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_IMUSTATE_5 0x1d9093c7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_IMUSTATE_6 0xb5abac9dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_IMUSTATE_7 0x49a860ccUL

/** @brief Complete ROS2 booster_interface/msg/ImuState value; no field projects away native data. */
typedef struct roswasmc_bounded_2_booster_interface_msg_ImuState
{
    /** @brief Declared field rpy; canonical capacity is part of CODEC_IDENTITY. */
    float rpy[3];
    /** @brief Declared field gyro; canonical capacity is part of CODEC_IDENTITY. */
    float gyro[3];
    /** @brief Declared field acc; canonical capacity is part of CODEC_IDENTITY. */
    float acc[3];
} roswasmc_bounded_2_booster_interface_msg_ImuState;

# define ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_IMUSTATE_MAX_WIRE_BYTES 36u
# define ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_IMUSTATE_MIN_WIRE_BYTES 36u
# define ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_IMUSTATE_CODEC_IDENTITY "UWVMROS1_838ee8d4b93b0c3673e0b535fd3905913e94be24d6d21a01504dedaaaaa81092"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_booster_interface_msg_ImuState_valid(roswasmc_bounded_2_booster_interface_msg_ImuState const* value)
{
    if(!value)
        return 0;
    {
        size_t i;
        for(i = 0; i < 3u; ++i)
        {
            {
                uint32_t bits;
                booster_bounded_copy(&bits, &value->rpy[i], 4);
                if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
                    return 0;
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 3u; ++i)
        {
            {
                uint32_t bits;
                booster_bounded_copy(&bits, &value->gyro[i], 4);
                if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
                    return 0;
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 3u; ++i)
        {
            {
                uint32_t bits;
                booster_bounded_copy(&bits, &value->acc[i], 4);
                if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
                    return 0;
            }
        }
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_booster_interface_msg_ImuState_wire_size(roswasmc_bounded_2_booster_interface_msg_ImuState const* value)
{
    (void)value;
    size_t n = 0;
    {
        size_t i;
        for(i = 0; i < 3u; ++i)
        {
            n += 4;
        }
    }
    {
        size_t i;
        for(i = 0; i < 3u; ++i)
        {
            n += 4;
        }
    }
    {
        size_t i;
        for(i = 0; i < 3u; ++i)
        {
            n += 4;
        }
    }
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_booster_interface_msg_ImuState_write_fields(roswasmc_bounded_2_booster_interface_msg_ImuState const* value,
                                                                                  unsigned char* p,
                                                                                  size_t* offset)
{
    {
        size_t i;
        for(i = 0; i < 3u; ++i)
        {
            {
                uint32_t bits;
                booster_bounded_copy(&bits, &value->rpy[i], 4);
                booster_bounded_put(p + *offset, bits, 4);
                *offset += 4;
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 3u; ++i)
        {
            {
                uint32_t bits;
                booster_bounded_copy(&bits, &value->gyro[i], 4);
                booster_bounded_put(p + *offset, bits, 4);
                *offset += 4;
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 3u; ++i)
        {
            {
                uint32_t bits;
                booster_bounded_copy(&bits, &value->acc[i], 4);
                booster_bounded_put(p + *offset, bits, 4);
                *offset += 4;
            }
        }
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_booster_interface_msg_ImuState_read_fields(unsigned char const* p,
                                                                                size_t n,
                                                                                size_t* offset,
                                                                                roswasmc_bounded_2_booster_interface_msg_ImuState* value)
{
    {
        size_t i;
        for(i = 0; i < 3u; ++i)
        {
            if(*offset > n || n - *offset < 4)
                return 0;
            {
                uint32_t bits = (uint32_t)booster_bounded_get(p + *offset, 4);
                booster_bounded_copy(&value->rpy[i], &bits, 4);
            }
            *offset += 4;
        }
    }
    {
        size_t i;
        for(i = 0; i < 3u; ++i)
        {
            if(*offset > n || n - *offset < 4)
                return 0;
            {
                uint32_t bits = (uint32_t)booster_bounded_get(p + *offset, 4);
                booster_bounded_copy(&value->gyro[i], &bits, 4);
            }
            *offset += 4;
        }
    }
    {
        size_t i;
        for(i = 0; i < 3u; ++i)
        {
            if(*offset > n || n - *offset < 4)
                return 0;
            {
                uint32_t bits = (uint32_t)booster_bounded_get(p + *offset, 4);
                booster_bounded_copy(&value->acc[i], &bits, 4);
            }
            *offset += 4;
        }
    }
    return roswasmc_bounded_2_booster_interface_msg_ImuState_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_booster_interface_msg_ImuState_encode(roswasmc_bounded_2_booster_interface_msg_ImuState const* value,
                                                                                void* output,
                                                                                size_t capacity,
                                                                                size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_booster_interface_msg_ImuState_valid(value))
        return BOOSTER_BOUNDED_INVALID;
    n = roswasmc_bounded_2_booster_interface_msg_ImuState_wire_size(value);
    if(capacity < n)
        return BOOSTER_BOUNDED_TOO_LARGE;
    if((n && !output) || booster_bounded_overlap(value, sizeof *value, output, n) || booster_bounded_overlap(length, sizeof *length, output, n) ||
       booster_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return BOOSTER_BOUNDED_INVALID;
    roswasmc_bounded_2_booster_interface_msg_ImuState_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_booster_interface_msg_ImuState_decode(void const* input, size_t length, roswasmc_bounded_2_booster_interface_msg_ImuState* value)
{
    roswasmc_bounded_2_booster_interface_msg_ImuState next = UWVM_ROS_C_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 36u || length > 36u || booster_bounded_overlap(value, sizeof *value, input, length))
        return BOOSTER_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_booster_interface_msg_ImuState_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return BOOSTER_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_MOTORCMD)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_MOTORCMD_0 != 0x6c395845UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_MOTORCMD_1 != 0x9d21ecdcUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_MOTORCMD_2 != 0xc897839aUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_MOTORCMD_3 != 0x9740a34eUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_MOTORCMD_4 != 0xab3be10bUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_MOTORCMD_5 != 0x7de77074UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_MOTORCMD_6 != 0x72755363UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_MOTORCMD_7 != 0x3d05bcabUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_MOTORCMD 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_MOTORCMD_0 0x6c395845UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_MOTORCMD_1 0x9d21ecdcUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_MOTORCMD_2 0xc897839aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_MOTORCMD_3 0x9740a34eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_MOTORCMD_4 0xab3be10bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_MOTORCMD_5 0x7de77074UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_MOTORCMD_6 0x72755363UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_MOTORCMD_7 0x3d05bcabUL

/** @brief Complete ROS2 booster_interface/msg/MotorCmd value; no field projects away native data. */
typedef struct roswasmc_bounded_2_booster_interface_msg_MotorCmd
{
    /** @brief Declared field mode; canonical capacity is part of CODEC_IDENTITY. */
    int8_t mode;
    /** @brief Declared field q; canonical capacity is part of CODEC_IDENTITY. */
    float q;
    /** @brief Declared field dq; canonical capacity is part of CODEC_IDENTITY. */
    float dq;
    /** @brief Declared field tau; canonical capacity is part of CODEC_IDENTITY. */
    float tau;
    /** @brief Declared field kp; canonical capacity is part of CODEC_IDENTITY. */
    float kp;
    /** @brief Declared field kd; canonical capacity is part of CODEC_IDENTITY. */
    float kd;
    /** @brief Declared field weight; canonical capacity is part of CODEC_IDENTITY. */
    float weight;
} roswasmc_bounded_2_booster_interface_msg_MotorCmd;

# define ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_MOTORCMD_MAX_WIRE_BYTES 25u
# define ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_MOTORCMD_MIN_WIRE_BYTES 25u
# define ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_MOTORCMD_CODEC_IDENTITY "UWVMROS1_69d814e13595d53dcf44f2a5ccb19df0f8f2be0908c310c3b60cec33bcf27392"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_booster_interface_msg_MotorCmd_valid(roswasmc_bounded_2_booster_interface_msg_MotorCmd const* value)
{
    if(!value)
        return 0;
    {
        uint32_t bits;
        booster_bounded_copy(&bits, &value->q, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        booster_bounded_copy(&bits, &value->dq, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        booster_bounded_copy(&bits, &value->tau, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        booster_bounded_copy(&bits, &value->kp, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        booster_bounded_copy(&bits, &value->kd, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        booster_bounded_copy(&bits, &value->weight, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_booster_interface_msg_MotorCmd_wire_size(roswasmc_bounded_2_booster_interface_msg_MotorCmd const* value)
{
    (void)value;
    size_t n = 0;
    n += 1;
    n += 4;
    n += 4;
    n += 4;
    n += 4;
    n += 4;
    n += 4;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_booster_interface_msg_MotorCmd_write_fields(roswasmc_bounded_2_booster_interface_msg_MotorCmd const* value,
                                                                                  unsigned char* p,
                                                                                  size_t* offset)
{
    booster_bounded_put(p + *offset, (uint64_t)value->mode, 1);
    *offset += 1;
    {
        uint32_t bits;
        booster_bounded_copy(&bits, &value->q, 4);
        booster_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        booster_bounded_copy(&bits, &value->dq, 4);
        booster_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        booster_bounded_copy(&bits, &value->tau, 4);
        booster_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        booster_bounded_copy(&bits, &value->kp, 4);
        booster_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        booster_bounded_copy(&bits, &value->kd, 4);
        booster_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        booster_bounded_copy(&bits, &value->weight, 4);
        booster_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_booster_interface_msg_MotorCmd_read_fields(unsigned char const* p,
                                                                                size_t n,
                                                                                size_t* offset,
                                                                                roswasmc_bounded_2_booster_interface_msg_MotorCmd* value)
{
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)booster_bounded_get(p + *offset, 1);
        booster_bounded_copy(&value->mode, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)booster_bounded_get(p + *offset, 4);
        booster_bounded_copy(&value->q, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)booster_bounded_get(p + *offset, 4);
        booster_bounded_copy(&value->dq, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)booster_bounded_get(p + *offset, 4);
        booster_bounded_copy(&value->tau, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)booster_bounded_get(p + *offset, 4);
        booster_bounded_copy(&value->kp, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)booster_bounded_get(p + *offset, 4);
        booster_bounded_copy(&value->kd, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)booster_bounded_get(p + *offset, 4);
        booster_bounded_copy(&value->weight, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_2_booster_interface_msg_MotorCmd_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_booster_interface_msg_MotorCmd_encode(roswasmc_bounded_2_booster_interface_msg_MotorCmd const* value,
                                                                                void* output,
                                                                                size_t capacity,
                                                                                size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_booster_interface_msg_MotorCmd_valid(value))
        return BOOSTER_BOUNDED_INVALID;
    n = roswasmc_bounded_2_booster_interface_msg_MotorCmd_wire_size(value);
    if(capacity < n)
        return BOOSTER_BOUNDED_TOO_LARGE;
    if((n && !output) || booster_bounded_overlap(value, sizeof *value, output, n) || booster_bounded_overlap(length, sizeof *length, output, n) ||
       booster_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return BOOSTER_BOUNDED_INVALID;
    roswasmc_bounded_2_booster_interface_msg_MotorCmd_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_booster_interface_msg_MotorCmd_decode(void const* input, size_t length, roswasmc_bounded_2_booster_interface_msg_MotorCmd* value)
{
    roswasmc_bounded_2_booster_interface_msg_MotorCmd next = UWVM_ROS_C_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 25u || length > 25u || booster_bounded_overlap(value, sizeof *value, input, length))
        return BOOSTER_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_booster_interface_msg_MotorCmd_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return BOOSTER_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_LOWCMD)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_LOWCMD_0 != 0xf75534a0UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_LOWCMD_1 != 0xe0908ac5UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_LOWCMD_2 != 0x4ed5b9b0UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_LOWCMD_3 != 0xdbc87b00UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_LOWCMD_4 != 0x73a53256UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_LOWCMD_5 != 0xfdb7bf07UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_LOWCMD_6 != 0xeae42171UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_LOWCMD_7 != 0x44001841UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_LOWCMD 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_LOWCMD_0 0xf75534a0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_LOWCMD_1 0xe0908ac5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_LOWCMD_2 0x4ed5b9b0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_LOWCMD_3 0xdbc87b00UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_LOWCMD_4 0x73a53256UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_LOWCMD_5 0xfdb7bf07UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_LOWCMD_6 0xeae42171UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_LOWCMD_7 0x44001841UL

/** @brief At most29 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_2_booster_interface_msg_MotorCmd data[29];
} roswasmc_bounded_2_booster_interface_msg_LowCmd_motor_cmd_sequence;

/** @brief Complete ROS2 booster_interface/msg/LowCmd value; no field projects away native data. */
typedef struct roswasmc_bounded_2_booster_interface_msg_LowCmd
{
    /** @brief Declared field cmd_type; canonical capacity is part of CODEC_IDENTITY. */
    int8_t cmd_type;
    /** @brief Declared field motor_cmd; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_booster_interface_msg_LowCmd_motor_cmd_sequence motor_cmd;
} roswasmc_bounded_2_booster_interface_msg_LowCmd;

# define ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_LOWCMD_MAX_WIRE_BYTES 730u
# define ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_LOWCMD_MIN_WIRE_BYTES 5u
# define ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_LOWCMD_CODEC_IDENTITY "UWVMROS1_845726a14e61d211b493041f4dda56e1556b76b9d30337a2ee5f6319a3d1e870"
/** @brief Original scalar constant CMD_TYPE_PARALLEL=0; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_LOWCMD_CMD_TYPE_PARALLEL INT32_C(0)
/** @brief Original scalar constant CMD_TYPE_SERIAL=1; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_LOWCMD_CMD_TYPE_SERIAL INT32_C(1)

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_booster_interface_msg_LowCmd_valid(roswasmc_bounded_2_booster_interface_msg_LowCmd const* value)
{
    if(!value)
        return 0;
    if(value->motor_cmd.size > 29u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->motor_cmd.size; ++i)
        {
            if(!roswasmc_bounded_2_booster_interface_msg_MotorCmd_valid(&value->motor_cmd.data[i]))
                return 0;
        }
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_booster_interface_msg_LowCmd_wire_size(roswasmc_bounded_2_booster_interface_msg_LowCmd const* value)
{
    size_t n = 0;
    n += 1;
    n += 4;
    if(value->motor_cmd.size > 29u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->motor_cmd.size; ++i)
        {
            n += roswasmc_bounded_2_booster_interface_msg_MotorCmd_wire_size(&value->motor_cmd.data[i]);
        }
    }
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_booster_interface_msg_LowCmd_write_fields(roswasmc_bounded_2_booster_interface_msg_LowCmd const* value, unsigned char* p, size_t* offset)
{
    booster_bounded_put(p + *offset, (uint64_t)value->cmd_type, 1);
    *offset += 1;
    booster_bounded_put(p + *offset, value->motor_cmd.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->motor_cmd.size; ++i)
        {
            roswasmc_bounded_2_booster_interface_msg_MotorCmd_write_fields(&value->motor_cmd.data[i], p, offset);
        }
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_booster_interface_msg_LowCmd_read_fields(unsigned char const* p,
                                                                              size_t n,
                                                                              size_t* offset,
                                                                              roswasmc_bounded_2_booster_interface_msg_LowCmd* value)
{
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)booster_bounded_get(p + *offset, 1);
        booster_bounded_copy(&value->cmd_type, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->motor_cmd.size = (uint32_t)booster_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->motor_cmd.size > 29u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->motor_cmd.size; ++i)
        {
            if(!roswasmc_bounded_2_booster_interface_msg_MotorCmd_read_fields(p, n, offset, &value->motor_cmd.data[i]))
                return 0;
        }
    }
    return roswasmc_bounded_2_booster_interface_msg_LowCmd_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_booster_interface_msg_LowCmd_encode(roswasmc_bounded_2_booster_interface_msg_LowCmd const* value,
                                                                              void* output,
                                                                              size_t capacity,
                                                                              size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_booster_interface_msg_LowCmd_valid(value))
        return BOOSTER_BOUNDED_INVALID;
    n = roswasmc_bounded_2_booster_interface_msg_LowCmd_wire_size(value);
    if(capacity < n)
        return BOOSTER_BOUNDED_TOO_LARGE;
    if((n && !output) || booster_bounded_overlap(value, sizeof *value, output, n) || booster_bounded_overlap(length, sizeof *length, output, n) ||
       booster_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return BOOSTER_BOUNDED_INVALID;
    roswasmc_bounded_2_booster_interface_msg_LowCmd_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_booster_interface_msg_LowCmd_decode(void const* input, size_t length, roswasmc_bounded_2_booster_interface_msg_LowCmd* value)
{
    roswasmc_bounded_2_booster_interface_msg_LowCmd next = UWVM_ROS_C_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 5u || length > 730u || booster_bounded_overlap(value, sizeof *value, input, length))
        return BOOSTER_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_booster_interface_msg_LowCmd_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return BOOSTER_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_MOTORSTATE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_MOTORSTATE_0 != 0x84fce8b4UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_MOTORSTATE_1 != 0x29f68efeUL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_MOTORSTATE_2 != 0x9f4dde92UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_MOTORSTATE_3 != 0x71811957UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_MOTORSTATE_4 != 0xade9c858UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_MOTORSTATE_5 != 0x02c2b9bdUL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_MOTORSTATE_6 != 0x0e0588c6UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_MOTORSTATE_7 != 0xa7afcc85UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_MOTORSTATE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_MOTORSTATE_0 0x84fce8b4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_MOTORSTATE_1 0x29f68efeUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_MOTORSTATE_2 0x9f4dde92UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_MOTORSTATE_3 0x71811957UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_MOTORSTATE_4 0xade9c858UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_MOTORSTATE_5 0x02c2b9bdUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_MOTORSTATE_6 0x0e0588c6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_MOTORSTATE_7 0xa7afcc85UL

/** @brief Complete ROS2 booster_interface/msg/MotorState value; no field projects away native data. */
typedef struct roswasmc_bounded_2_booster_interface_msg_MotorState
{
    /** @brief Declared field mode; canonical capacity is part of CODEC_IDENTITY. */
    int8_t mode;
    /** @brief Declared field q; canonical capacity is part of CODEC_IDENTITY. */
    float q;
    /** @brief Declared field dq; canonical capacity is part of CODEC_IDENTITY. */
    float dq;
    /** @brief Declared field ddq; canonical capacity is part of CODEC_IDENTITY. */
    float ddq;
    /** @brief Declared field tau_est; canonical capacity is part of CODEC_IDENTITY. */
    float tau_est;
    /** @brief Declared field temperature; canonical capacity is part of CODEC_IDENTITY. */
    int8_t temperature;
    /** @brief Declared field lost; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t lost;
    /** @brief Declared field reserve; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t reserve[2];
} roswasmc_bounded_2_booster_interface_msg_MotorState;

# define ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_MOTORSTATE_MAX_WIRE_BYTES 30u
# define ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_MOTORSTATE_MIN_WIRE_BYTES 30u
# define ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_MOTORSTATE_CODEC_IDENTITY "UWVMROS1_6b19c0e8865e796fff5a498cff731ba268fa92ea2944e6c2c5869009b3aa066b"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_booster_interface_msg_MotorState_valid(roswasmc_bounded_2_booster_interface_msg_MotorState const* value)
{
    if(!value)
        return 0;
    {
        uint32_t bits;
        booster_bounded_copy(&bits, &value->q, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        booster_bounded_copy(&bits, &value->dq, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        booster_bounded_copy(&bits, &value->ddq, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        booster_bounded_copy(&bits, &value->tau_est, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
        }
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_booster_interface_msg_MotorState_wire_size(roswasmc_bounded_2_booster_interface_msg_MotorState const* value)
{
    (void)value;
    size_t n = 0;
    n += 1;
    n += 4;
    n += 4;
    n += 4;
    n += 4;
    n += 1;
    n += 4;
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            n += 4;
        }
    }
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_booster_interface_msg_MotorState_write_fields(roswasmc_bounded_2_booster_interface_msg_MotorState const* value,
                                                                                    unsigned char* p,
                                                                                    size_t* offset)
{
    booster_bounded_put(p + *offset, (uint64_t)value->mode, 1);
    *offset += 1;
    {
        uint32_t bits;
        booster_bounded_copy(&bits, &value->q, 4);
        booster_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        booster_bounded_copy(&bits, &value->dq, 4);
        booster_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        booster_bounded_copy(&bits, &value->ddq, 4);
        booster_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        booster_bounded_copy(&bits, &value->tau_est, 4);
        booster_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    booster_bounded_put(p + *offset, (uint64_t)value->temperature, 1);
    *offset += 1;
    booster_bounded_put(p + *offset, (uint64_t)value->lost, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            booster_bounded_put(p + *offset, (uint64_t)value->reserve[i], 4);
            *offset += 4;
        }
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_booster_interface_msg_MotorState_read_fields(unsigned char const* p,
                                                                                  size_t n,
                                                                                  size_t* offset,
                                                                                  roswasmc_bounded_2_booster_interface_msg_MotorState* value)
{
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)booster_bounded_get(p + *offset, 1);
        booster_bounded_copy(&value->mode, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)booster_bounded_get(p + *offset, 4);
        booster_bounded_copy(&value->q, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)booster_bounded_get(p + *offset, 4);
        booster_bounded_copy(&value->dq, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)booster_bounded_get(p + *offset, 4);
        booster_bounded_copy(&value->ddq, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)booster_bounded_get(p + *offset, 4);
        booster_bounded_copy(&value->tau_est, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)booster_bounded_get(p + *offset, 1);
        booster_bounded_copy(&value->temperature, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)booster_bounded_get(p + *offset, 4);
        booster_bounded_copy(&value->lost, &bits, 4);
    }
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            if(*offset > n || n - *offset < 4)
                return 0;
            {
                uint32_t bits = (uint32_t)booster_bounded_get(p + *offset, 4);
                booster_bounded_copy(&value->reserve[i], &bits, 4);
            }
            *offset += 4;
        }
    }
    return roswasmc_bounded_2_booster_interface_msg_MotorState_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_booster_interface_msg_MotorState_encode(roswasmc_bounded_2_booster_interface_msg_MotorState const* value,
                                                                                  void* output,
                                                                                  size_t capacity,
                                                                                  size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_booster_interface_msg_MotorState_valid(value))
        return BOOSTER_BOUNDED_INVALID;
    n = roswasmc_bounded_2_booster_interface_msg_MotorState_wire_size(value);
    if(capacity < n)
        return BOOSTER_BOUNDED_TOO_LARGE;
    if((n && !output) || booster_bounded_overlap(value, sizeof *value, output, n) || booster_bounded_overlap(length, sizeof *length, output, n) ||
       booster_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return BOOSTER_BOUNDED_INVALID;
    roswasmc_bounded_2_booster_interface_msg_MotorState_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_booster_interface_msg_MotorState_decode(void const* input, size_t length, roswasmc_bounded_2_booster_interface_msg_MotorState* value)
{
    roswasmc_bounded_2_booster_interface_msg_MotorState next = UWVM_ROS_C_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 30u || length > 30u || booster_bounded_overlap(value, sizeof *value, input, length))
        return BOOSTER_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_booster_interface_msg_MotorState_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return BOOSTER_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_LOWSTATE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_LOWSTATE_0 != 0xcc506176UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_LOWSTATE_1 != 0x0c863471UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_LOWSTATE_2 != 0x70f2280bUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_LOWSTATE_3 != 0xdd7f7e43UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_LOWSTATE_4 != 0x8894eefcUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_LOWSTATE_5 != 0xa124e0f8UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_LOWSTATE_6 != 0x0bc18992UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_LOWSTATE_7 != 0x87f44fc6UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_LOWSTATE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_LOWSTATE_0 0xcc506176UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_LOWSTATE_1 0x0c863471UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_LOWSTATE_2 0x70f2280bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_LOWSTATE_3 0xdd7f7e43UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_LOWSTATE_4 0x8894eefcUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_LOWSTATE_5 0xa124e0f8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_LOWSTATE_6 0x0bc18992UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_LOWSTATE_7 0x87f44fc6UL

/** @brief At most29 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_2_booster_interface_msg_MotorState data[29];
} roswasmc_bounded_2_booster_interface_msg_LowState_motor_state_parallel_sequence;

/** @brief At most29 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_2_booster_interface_msg_MotorState data[29];
} roswasmc_bounded_2_booster_interface_msg_LowState_motor_state_serial_sequence;

/** @brief Complete ROS2 booster_interface/msg/LowState value; no field projects away native data. */
typedef struct roswasmc_bounded_2_booster_interface_msg_LowState
{
    /** @brief Declared field imu_state; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_booster_interface_msg_ImuState imu_state;
    /** @brief Declared field motor_state_parallel; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_booster_interface_msg_LowState_motor_state_parallel_sequence motor_state_parallel;
    /** @brief Declared field motor_state_serial; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_booster_interface_msg_LowState_motor_state_serial_sequence motor_state_serial;
} roswasmc_bounded_2_booster_interface_msg_LowState;

# define ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_LOWSTATE_MAX_WIRE_BYTES 1784u
# define ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_LOWSTATE_MIN_WIRE_BYTES 44u
# define ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_LOWSTATE_CODEC_IDENTITY "UWVMROS1_811db19cab7b790ed48506bca3e3ef512c1a661dc3ac99cbce6234efb6de631f"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_booster_interface_msg_LowState_valid(roswasmc_bounded_2_booster_interface_msg_LowState const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_booster_interface_msg_ImuState_valid(&value->imu_state))
        return 0;
    if(value->motor_state_parallel.size > 29u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->motor_state_parallel.size; ++i)
        {
            if(!roswasmc_bounded_2_booster_interface_msg_MotorState_valid(&value->motor_state_parallel.data[i]))
                return 0;
        }
    }
    if(value->motor_state_serial.size > 29u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->motor_state_serial.size; ++i)
        {
            if(!roswasmc_bounded_2_booster_interface_msg_MotorState_valid(&value->motor_state_serial.data[i]))
                return 0;
        }
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_booster_interface_msg_LowState_wire_size(roswasmc_bounded_2_booster_interface_msg_LowState const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_booster_interface_msg_ImuState_wire_size(&value->imu_state);
    n += 4;
    if(value->motor_state_parallel.size > 29u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->motor_state_parallel.size; ++i)
        {
            n += roswasmc_bounded_2_booster_interface_msg_MotorState_wire_size(&value->motor_state_parallel.data[i]);
        }
    }
    n += 4;
    if(value->motor_state_serial.size > 29u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->motor_state_serial.size; ++i)
        {
            n += roswasmc_bounded_2_booster_interface_msg_MotorState_wire_size(&value->motor_state_serial.data[i]);
        }
    }
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_booster_interface_msg_LowState_write_fields(roswasmc_bounded_2_booster_interface_msg_LowState const* value,
                                                                                  unsigned char* p,
                                                                                  size_t* offset)
{
    roswasmc_bounded_2_booster_interface_msg_ImuState_write_fields(&value->imu_state, p, offset);
    booster_bounded_put(p + *offset, value->motor_state_parallel.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->motor_state_parallel.size; ++i)
        {
            roswasmc_bounded_2_booster_interface_msg_MotorState_write_fields(&value->motor_state_parallel.data[i], p, offset);
        }
    }
    booster_bounded_put(p + *offset, value->motor_state_serial.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->motor_state_serial.size; ++i)
        {
            roswasmc_bounded_2_booster_interface_msg_MotorState_write_fields(&value->motor_state_serial.data[i], p, offset);
        }
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_booster_interface_msg_LowState_read_fields(unsigned char const* p,
                                                                                size_t n,
                                                                                size_t* offset,
                                                                                roswasmc_bounded_2_booster_interface_msg_LowState* value)
{
    if(!roswasmc_bounded_2_booster_interface_msg_ImuState_read_fields(p, n, offset, &value->imu_state))
        return 0;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->motor_state_parallel.size = (uint32_t)booster_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->motor_state_parallel.size > 29u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->motor_state_parallel.size; ++i)
        {
            if(!roswasmc_bounded_2_booster_interface_msg_MotorState_read_fields(p, n, offset, &value->motor_state_parallel.data[i]))
                return 0;
        }
    }
    if(*offset > n || n - *offset < 4)
        return 0;
    value->motor_state_serial.size = (uint32_t)booster_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->motor_state_serial.size > 29u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->motor_state_serial.size; ++i)
        {
            if(!roswasmc_bounded_2_booster_interface_msg_MotorState_read_fields(p, n, offset, &value->motor_state_serial.data[i]))
                return 0;
        }
    }
    return roswasmc_bounded_2_booster_interface_msg_LowState_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_booster_interface_msg_LowState_encode(roswasmc_bounded_2_booster_interface_msg_LowState const* value,
                                                                                void* output,
                                                                                size_t capacity,
                                                                                size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_booster_interface_msg_LowState_valid(value))
        return BOOSTER_BOUNDED_INVALID;
    n = roswasmc_bounded_2_booster_interface_msg_LowState_wire_size(value);
    if(capacity < n)
        return BOOSTER_BOUNDED_TOO_LARGE;
    if((n && !output) || booster_bounded_overlap(value, sizeof *value, output, n) || booster_bounded_overlap(length, sizeof *length, output, n) ||
       booster_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return BOOSTER_BOUNDED_INVALID;
    roswasmc_bounded_2_booster_interface_msg_LowState_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_booster_interface_msg_LowState_decode(void const* input, size_t length, roswasmc_bounded_2_booster_interface_msg_LowState* value)
{
    roswasmc_bounded_2_booster_interface_msg_LowState next = UWVM_ROS_C_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 44u || length > 1784u || booster_bounded_overlap(value, sizeof *value, input, length))
        return BOOSTER_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_booster_interface_msg_LowState_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return BOOSTER_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_ODOMETER)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_ODOMETER_0 != 0xe4be45eaUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_ODOMETER_1 != 0xc0c70860UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_ODOMETER_2 != 0xd8911fd4UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_ODOMETER_3 != 0x882975bfUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_ODOMETER_4 != 0x7d6677aeUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_ODOMETER_5 != 0x9ea72f7eUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_ODOMETER_6 != 0x7cff26fbUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_ODOMETER_7 != 0xf044ab89UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_ODOMETER 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_ODOMETER_0 0xe4be45eaUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_ODOMETER_1 0xc0c70860UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_ODOMETER_2 0xd8911fd4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_ODOMETER_3 0x882975bfUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_ODOMETER_4 0x7d6677aeUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_ODOMETER_5 0x9ea72f7eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_ODOMETER_6 0x7cff26fbUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_ODOMETER_7 0xf044ab89UL

/** @brief Complete ROS2 booster_interface/msg/Odometer value; no field projects away native data. */
typedef struct roswasmc_bounded_2_booster_interface_msg_Odometer
{
    /** @brief Declared field x; canonical capacity is part of CODEC_IDENTITY. */
    float x;
    /** @brief Declared field y; canonical capacity is part of CODEC_IDENTITY. */
    float y;
    /** @brief Declared field theta; canonical capacity is part of CODEC_IDENTITY. */
    float theta;
} roswasmc_bounded_2_booster_interface_msg_Odometer;

# define ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_ODOMETER_MAX_WIRE_BYTES 12u
# define ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_ODOMETER_MIN_WIRE_BYTES 12u
# define ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_ODOMETER_CODEC_IDENTITY "UWVMROS1_4fea33e3e2ae186dbeaf49c6068019b702e742266541087a5d280b9ce42c671a"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_booster_interface_msg_Odometer_valid(roswasmc_bounded_2_booster_interface_msg_Odometer const* value)
{
    if(!value)
        return 0;
    {
        uint32_t bits;
        booster_bounded_copy(&bits, &value->x, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        booster_bounded_copy(&bits, &value->y, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        booster_bounded_copy(&bits, &value->theta, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_booster_interface_msg_Odometer_wire_size(roswasmc_bounded_2_booster_interface_msg_Odometer const* value)
{
    (void)value;
    size_t n = 0;
    n += 4;
    n += 4;
    n += 4;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_booster_interface_msg_Odometer_write_fields(roswasmc_bounded_2_booster_interface_msg_Odometer const* value,
                                                                                  unsigned char* p,
                                                                                  size_t* offset)
{
    {
        uint32_t bits;
        booster_bounded_copy(&bits, &value->x, 4);
        booster_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        booster_bounded_copy(&bits, &value->y, 4);
        booster_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        booster_bounded_copy(&bits, &value->theta, 4);
        booster_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_booster_interface_msg_Odometer_read_fields(unsigned char const* p,
                                                                                size_t n,
                                                                                size_t* offset,
                                                                                roswasmc_bounded_2_booster_interface_msg_Odometer* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)booster_bounded_get(p + *offset, 4);
        booster_bounded_copy(&value->x, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)booster_bounded_get(p + *offset, 4);
        booster_bounded_copy(&value->y, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)booster_bounded_get(p + *offset, 4);
        booster_bounded_copy(&value->theta, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_2_booster_interface_msg_Odometer_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_booster_interface_msg_Odometer_encode(roswasmc_bounded_2_booster_interface_msg_Odometer const* value,
                                                                                void* output,
                                                                                size_t capacity,
                                                                                size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_booster_interface_msg_Odometer_valid(value))
        return BOOSTER_BOUNDED_INVALID;
    n = roswasmc_bounded_2_booster_interface_msg_Odometer_wire_size(value);
    if(capacity < n)
        return BOOSTER_BOUNDED_TOO_LARGE;
    if((n && !output) || booster_bounded_overlap(value, sizeof *value, output, n) || booster_bounded_overlap(length, sizeof *length, output, n) ||
       booster_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return BOOSTER_BOUNDED_INVALID;
    roswasmc_bounded_2_booster_interface_msg_Odometer_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_booster_interface_msg_Odometer_decode(void const* input, size_t length, roswasmc_bounded_2_booster_interface_msg_Odometer* value)
{
    roswasmc_bounded_2_booster_interface_msg_Odometer next = UWVM_ROS_C_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 12u || length > 12u || booster_bounded_overlap(value, sizeof *value, input, length))
        return BOOSTER_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_booster_interface_msg_Odometer_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return BOOSTER_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_RAWBYTESMSG)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_RAWBYTESMSG_0 != 0x549ab06eUL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_RAWBYTESMSG_1 != 0x7d00e469UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_RAWBYTESMSG_2 != 0xc382f22dUL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_RAWBYTESMSG_3 != 0x205d1203UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_RAWBYTESMSG_4 != 0x2361a49bUL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_RAWBYTESMSG_5 != 0x27b5e4eaUL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_RAWBYTESMSG_6 != 0x2a81c917UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_RAWBYTESMSG_7 != 0x1afb5aabUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_RAWBYTESMSG 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_RAWBYTESMSG_0 0x549ab06eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_RAWBYTESMSG_1 0x7d00e469UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_RAWBYTESMSG_2 0xc382f22dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_RAWBYTESMSG_3 0x205d1203UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_RAWBYTESMSG_4 0x2361a49bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_RAWBYTESMSG_5 0x27b5e4eaUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_RAWBYTESMSG_6 0x2a81c917UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_RAWBYTESMSG_7 0x1afb5aabUL

/** @brief At most2048 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    uint8_t data[2048];
} roswasmc_bounded_2_booster_interface_msg_RawBytesMsg_msg_sequence;

/** @brief Complete ROS2 booster_interface/msg/RawBytesMsg value; no field projects away native data. */
typedef struct roswasmc_bounded_2_booster_interface_msg_RawBytesMsg
{
    /** @brief Declared field msg; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_booster_interface_msg_RawBytesMsg_msg_sequence msg;
} roswasmc_bounded_2_booster_interface_msg_RawBytesMsg;

# define ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_RAWBYTESMSG_MAX_WIRE_BYTES 2052u
# define ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_RAWBYTESMSG_MIN_WIRE_BYTES 4u
# define ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_RAWBYTESMSG_CODEC_IDENTITY "UWVMROS1_557e8e79f206c9cc8b820ed7c2ad8cc01e9b01327197b745709993d958b4578c"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_booster_interface_msg_RawBytesMsg_valid(roswasmc_bounded_2_booster_interface_msg_RawBytesMsg const* value)
{
    if(!value)
        return 0;
    if(value->msg.size > 2048u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->msg.size; ++i)
        {
        }
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_booster_interface_msg_RawBytesMsg_wire_size(roswasmc_bounded_2_booster_interface_msg_RawBytesMsg const* value)
{
    size_t n = 0;
    n += 4;
    if(value->msg.size > 2048u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->msg.size; ++i)
        {
            n += 1;
        }
    }
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_booster_interface_msg_RawBytesMsg_write_fields(roswasmc_bounded_2_booster_interface_msg_RawBytesMsg const* value,
                                                                                     unsigned char* p,
                                                                                     size_t* offset)
{
    booster_bounded_put(p + *offset, value->msg.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->msg.size; ++i)
        {
            booster_bounded_put(p + *offset, (uint64_t)value->msg.data[i], 1);
            *offset += 1;
        }
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_booster_interface_msg_RawBytesMsg_read_fields(unsigned char const* p,
                                                                                   size_t n,
                                                                                   size_t* offset,
                                                                                   roswasmc_bounded_2_booster_interface_msg_RawBytesMsg* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    value->msg.size = (uint32_t)booster_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->msg.size > 2048u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->msg.size; ++i)
        {
            if(*offset > n || n - *offset < 1)
                return 0;
            {
                uint8_t bits = (uint8_t)booster_bounded_get(p + *offset, 1);
                booster_bounded_copy(&value->msg.data[i], &bits, 1);
            }
            *offset += 1;
        }
    }
    return roswasmc_bounded_2_booster_interface_msg_RawBytesMsg_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_booster_interface_msg_RawBytesMsg_encode(roswasmc_bounded_2_booster_interface_msg_RawBytesMsg const* value,
                                                                                   void* output,
                                                                                   size_t capacity,
                                                                                   size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_booster_interface_msg_RawBytesMsg_valid(value))
        return BOOSTER_BOUNDED_INVALID;
    n = roswasmc_bounded_2_booster_interface_msg_RawBytesMsg_wire_size(value);
    if(capacity < n)
        return BOOSTER_BOUNDED_TOO_LARGE;
    if((n && !output) || booster_bounded_overlap(value, sizeof *value, output, n) || booster_bounded_overlap(length, sizeof *length, output, n) ||
       booster_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return BOOSTER_BOUNDED_INVALID;
    roswasmc_bounded_2_booster_interface_msg_RawBytesMsg_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_booster_interface_msg_RawBytesMsg_decode(void const* input, size_t length, roswasmc_bounded_2_booster_interface_msg_RawBytesMsg* value)
{
    roswasmc_bounded_2_booster_interface_msg_RawBytesMsg next = UWVM_ROS_C_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 4u || length > 2052u || booster_bounded_overlap(value, sizeof *value, input, length))
        return BOOSTER_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_booster_interface_msg_RawBytesMsg_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return BOOSTER_BOUNDED_INVALID;
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
    (void)value;
    size_t n = 0;
    n += 4;
    n += 4;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_builtin_interfaces_msg_Time_write_fields(roswasmc_bounded_2_builtin_interfaces_msg_Time const* value, unsigned char* p, size_t* offset)
{
    booster_bounded_put(p + *offset, (uint64_t)value->sec, 4);
    *offset += 4;
    booster_bounded_put(p + *offset, (uint64_t)value->nanosec, 4);
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
        uint32_t bits = (uint32_t)booster_bounded_get(p + *offset, 4);
        booster_bounded_copy(&value->sec, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)booster_bounded_get(p + *offset, 4);
        booster_bounded_copy(&value->nanosec, &bits, 4);
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
        return BOOSTER_BOUNDED_INVALID;
    n = roswasmc_bounded_2_builtin_interfaces_msg_Time_wire_size(value);
    if(capacity < n)
        return BOOSTER_BOUNDED_TOO_LARGE;
    if((n && !output) || booster_bounded_overlap(value, sizeof *value, output, n) || booster_bounded_overlap(length, sizeof *length, output, n) ||
       booster_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return BOOSTER_BOUNDED_INVALID;
    roswasmc_bounded_2_builtin_interfaces_msg_Time_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_builtin_interfaces_msg_Time_decode(void const* input, size_t length, roswasmc_bounded_2_builtin_interfaces_msg_Time* value)
{
    roswasmc_bounded_2_builtin_interfaces_msg_Time next = UWVM_ROS_C_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 8u || length > 8u || booster_bounded_overlap(value, sizeof *value, input, length))
        return BOOSTER_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_builtin_interfaces_msg_Time_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return BOOSTER_BOUNDED_INVALID;
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
    if(value->frame_id.size > 128u || !booster_bounded_utf8(value->frame_id.data, value->frame_id.size))
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
    booster_bounded_put(p + *offset, value->frame_id.size, 4);
    *offset += 4;
    booster_bounded_copy(p + *offset, value->frame_id.data, value->frame_id.size);
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
    value->frame_id.size = (uint32_t)booster_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->frame_id.size > 128u || value->frame_id.size > n - *offset)
        return 0;
    booster_bounded_copy(value->frame_id.data, p + *offset, value->frame_id.size);
    *offset += value->frame_id.size;
    return roswasmc_bounded_2_std_msgs_msg_Header_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_std_msgs_msg_Header_encode(roswasmc_bounded_2_std_msgs_msg_Header const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_std_msgs_msg_Header_valid(value))
        return BOOSTER_BOUNDED_INVALID;
    n = roswasmc_bounded_2_std_msgs_msg_Header_wire_size(value);
    if(capacity < n)
        return BOOSTER_BOUNDED_TOO_LARGE;
    if((n && !output) || booster_bounded_overlap(value, sizeof *value, output, n) || booster_bounded_overlap(length, sizeof *length, output, n) ||
       booster_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return BOOSTER_BOUNDED_INVALID;
    roswasmc_bounded_2_std_msgs_msg_Header_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_2_std_msgs_msg_Header_decode(void const* input, size_t length, roswasmc_bounded_2_std_msgs_msg_Header* value)
{
    roswasmc_bounded_2_std_msgs_msg_Header next = UWVM_ROS_C_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 12u || length > 140u || booster_bounded_overlap(value, sizeof *value, input, length))
        return BOOSTER_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_std_msgs_msg_Header_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return BOOSTER_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_RAWBYTESSTAMPED)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_RAWBYTESSTAMPED_0 != 0x46be297fUL ||                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_RAWBYTESSTAMPED_1 != 0xa590e373UL ||                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_RAWBYTESSTAMPED_2 != 0x991c5d97UL ||                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_RAWBYTESSTAMPED_3 != 0x69de0db9UL ||                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_RAWBYTESSTAMPED_4 != 0xf7f59df6UL ||                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_RAWBYTESSTAMPED_5 != 0x7ad95c42UL ||                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_RAWBYTESSTAMPED_6 != 0xd533d17cUL ||                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_RAWBYTESSTAMPED_7 != 0x9f482c48UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_RAWBYTESSTAMPED 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_RAWBYTESSTAMPED_0 0x46be297fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_RAWBYTESSTAMPED_1 0xa590e373UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_RAWBYTESSTAMPED_2 0x991c5d97UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_RAWBYTESSTAMPED_3 0x69de0db9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_RAWBYTESSTAMPED_4 0xf7f59df6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_RAWBYTESSTAMPED_5 0x7ad95c42UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_RAWBYTESSTAMPED_6 0xd533d17cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_RAWBYTESSTAMPED_7 0x9f482c48UL

/** @brief At most2048 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    uint8_t data[2048];
} roswasmc_bounded_2_booster_interface_msg_RawBytesStamped_msg_sequence;

/** @brief Complete ROS2 booster_interface/msg/RawBytesStamped value; no field projects away native data. */
typedef struct roswasmc_bounded_2_booster_interface_msg_RawBytesStamped
{
    /** @brief Declared field header; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_std_msgs_msg_Header header;
    /** @brief Declared field msg; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_booster_interface_msg_RawBytesStamped_msg_sequence msg;
} roswasmc_bounded_2_booster_interface_msg_RawBytesStamped;

# define ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_RAWBYTESSTAMPED_MAX_WIRE_BYTES 2192u
# define ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_RAWBYTESSTAMPED_MIN_WIRE_BYTES 16u
# define ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_RAWBYTESSTAMPED_CODEC_IDENTITY "UWVMROS1_27cddd472b2d8c41c39effb87a8a53261aff309500dbb68df6ebd69a19c7720e"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_booster_interface_msg_RawBytesStamped_valid(roswasmc_bounded_2_booster_interface_msg_RawBytesStamped const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_std_msgs_msg_Header_valid(&value->header))
        return 0;
    if(value->msg.size > 2048u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->msg.size; ++i)
        {
        }
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_booster_interface_msg_RawBytesStamped_wire_size(roswasmc_bounded_2_booster_interface_msg_RawBytesStamped const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_std_msgs_msg_Header_wire_size(&value->header);
    n += 4;
    if(value->msg.size > 2048u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->msg.size; ++i)
        {
            n += 1;
        }
    }
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_booster_interface_msg_RawBytesStamped_write_fields(roswasmc_bounded_2_booster_interface_msg_RawBytesStamped const* value,
                                                                                         unsigned char* p,
                                                                                         size_t* offset)
{
    roswasmc_bounded_2_std_msgs_msg_Header_write_fields(&value->header, p, offset);
    booster_bounded_put(p + *offset, value->msg.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->msg.size; ++i)
        {
            booster_bounded_put(p + *offset, (uint64_t)value->msg.data[i], 1);
            *offset += 1;
        }
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_booster_interface_msg_RawBytesStamped_read_fields(unsigned char const* p,
                                                                                       size_t n,
                                                                                       size_t* offset,
                                                                                       roswasmc_bounded_2_booster_interface_msg_RawBytesStamped* value)
{
    if(!roswasmc_bounded_2_std_msgs_msg_Header_read_fields(p, n, offset, &value->header))
        return 0;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->msg.size = (uint32_t)booster_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->msg.size > 2048u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->msg.size; ++i)
        {
            if(*offset > n || n - *offset < 1)
                return 0;
            {
                uint8_t bits = (uint8_t)booster_bounded_get(p + *offset, 1);
                booster_bounded_copy(&value->msg.data[i], &bits, 1);
            }
            *offset += 1;
        }
    }
    return roswasmc_bounded_2_booster_interface_msg_RawBytesStamped_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_booster_interface_msg_RawBytesStamped_encode(roswasmc_bounded_2_booster_interface_msg_RawBytesStamped const* value,
                                                                                       void* output,
                                                                                       size_t capacity,
                                                                                       size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_booster_interface_msg_RawBytesStamped_valid(value))
        return BOOSTER_BOUNDED_INVALID;
    n = roswasmc_bounded_2_booster_interface_msg_RawBytesStamped_wire_size(value);
    if(capacity < n)
        return BOOSTER_BOUNDED_TOO_LARGE;
    if((n && !output) || booster_bounded_overlap(value, sizeof *value, output, n) || booster_bounded_overlap(length, sizeof *length, output, n) ||
       booster_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return BOOSTER_BOUNDED_INVALID;
    roswasmc_bounded_2_booster_interface_msg_RawBytesStamped_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_2_booster_interface_msg_RawBytesStamped_decode(void const* input,
                                                                                       size_t length,
                                                                                       roswasmc_bounded_2_booster_interface_msg_RawBytesStamped* value)
{
    roswasmc_bounded_2_booster_interface_msg_RawBytesStamped next = UWVM_ROS_C_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 16u || length > 2192u || booster_bounded_overlap(value, sizeof *value, input, length))
        return BOOSTER_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_booster_interface_msg_RawBytesStamped_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return BOOSTER_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_REMOTECONTROLLERSTATE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_REMOTECONTROLLERSTATE_0 != 0x4d94c8b7UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_REMOTECONTROLLERSTATE_1 != 0x1bca5d8bUL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_REMOTECONTROLLERSTATE_2 != 0x07a31fd1UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_REMOTECONTROLLERSTATE_3 != 0xa4274560UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_REMOTECONTROLLERSTATE_4 != 0x81c77961UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_REMOTECONTROLLERSTATE_5 != 0x18107759UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_REMOTECONTROLLERSTATE_6 != 0xd8cf5c86UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_REMOTECONTROLLERSTATE_7 != 0x7c238782UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_REMOTECONTROLLERSTATE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_REMOTECONTROLLERSTATE_0 0x4d94c8b7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_REMOTECONTROLLERSTATE_1 0x1bca5d8bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_REMOTECONTROLLERSTATE_2 0x07a31fd1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_REMOTECONTROLLERSTATE_3 0xa4274560UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_REMOTECONTROLLERSTATE_4 0x81c77961UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_REMOTECONTROLLERSTATE_5 0x18107759UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_REMOTECONTROLLERSTATE_6 0xd8cf5c86UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_REMOTECONTROLLERSTATE_7 0x7c238782UL

/** @brief Complete ROS2 booster_interface/msg/RemoteControllerState value; no field projects away native data. */
typedef struct roswasmc_bounded_2_booster_interface_msg_RemoteControllerState
{
    /** @brief Declared field event; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t event;
    /** @brief Declared field lx; canonical capacity is part of CODEC_IDENTITY. */
    float lx;
    /** @brief Declared field ly; canonical capacity is part of CODEC_IDENTITY. */
    float ly;
    /** @brief Declared field rx; canonical capacity is part of CODEC_IDENTITY. */
    float rx;
    /** @brief Declared field ry; canonical capacity is part of CODEC_IDENTITY. */
    float ry;
    /** @brief Declared field a; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t a;
    /** @brief Declared field b; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t b;
    /** @brief Declared field x; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t x;
    /** @brief Declared field y; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t y;
    /** @brief Declared field lb; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t lb;
    /** @brief Declared field rb; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t rb;
    /** @brief Declared field lt; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t lt;
    /** @brief Declared field rt; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t rt;
    /** @brief Declared field ls; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t ls;
    /** @brief Declared field rs; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t rs;
    /** @brief Declared field back; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t back;
    /** @brief Declared field start; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t start;
    /** @brief Declared field hat_c; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t hat_c;
    /** @brief Declared field hat_u; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t hat_u;
    /** @brief Declared field hat_d; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t hat_d;
    /** @brief Declared field hat_l; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t hat_l;
    /** @brief Declared field hat_r; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t hat_r;
    /** @brief Declared field hat_lu; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t hat_lu;
    /** @brief Declared field hat_ld; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t hat_ld;
    /** @brief Declared field hat_ru; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t hat_ru;
    /** @brief Declared field hat_rd; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t hat_rd;
    /** @brief Declared field hat_pos; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t hat_pos;
} roswasmc_bounded_2_booster_interface_msg_RemoteControllerState;

# define ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_REMOTECONTROLLERSTATE_MAX_WIRE_BYTES 42u
# define ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_REMOTECONTROLLERSTATE_MIN_WIRE_BYTES 42u
# define ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_MSG_REMOTECONTROLLERSTATE_CODEC_IDENTITY                                                                         \
     "UWVMROS1_f8a21705728862632c27b71d98c044a12bf1f9f9e0c1729fec27afe2c60c48a7"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int
    roswasmc_bounded_2_booster_interface_msg_RemoteControllerState_valid(roswasmc_bounded_2_booster_interface_msg_RemoteControllerState const* value)
{
    if(!value)
        return 0;
    {
        uint32_t bits;
        booster_bounded_copy(&bits, &value->lx, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        booster_bounded_copy(&bits, &value->ly, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        booster_bounded_copy(&bits, &value->rx, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        booster_bounded_copy(&bits, &value->ry, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    if(value->a > 1)
        return 0;
    if(value->b > 1)
        return 0;
    if(value->x > 1)
        return 0;
    if(value->y > 1)
        return 0;
    if(value->lb > 1)
        return 0;
    if(value->rb > 1)
        return 0;
    if(value->lt > 1)
        return 0;
    if(value->rt > 1)
        return 0;
    if(value->ls > 1)
        return 0;
    if(value->rs > 1)
        return 0;
    if(value->back > 1)
        return 0;
    if(value->start > 1)
        return 0;
    if(value->hat_c > 1)
        return 0;
    if(value->hat_u > 1)
        return 0;
    if(value->hat_d > 1)
        return 0;
    if(value->hat_l > 1)
        return 0;
    if(value->hat_r > 1)
        return 0;
    if(value->hat_lu > 1)
        return 0;
    if(value->hat_ld > 1)
        return 0;
    if(value->hat_ru > 1)
        return 0;
    if(value->hat_rd > 1)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_2_booster_interface_msg_RemoteControllerState_wire_size(roswasmc_bounded_2_booster_interface_msg_RemoteControllerState const* value)
{
    (void)value;
    size_t n = 0;
    n += 4;
    n += 4;
    n += 4;
    n += 4;
    n += 4;
    n += 1;
    n += 1;
    n += 1;
    n += 1;
    n += 1;
    n += 1;
    n += 1;
    n += 1;
    n += 1;
    n += 1;
    n += 1;
    n += 1;
    n += 1;
    n += 1;
    n += 1;
    n += 1;
    n += 1;
    n += 1;
    n += 1;
    n += 1;
    n += 1;
    n += 1;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_booster_interface_msg_RemoteControllerState_write_fields(roswasmc_bounded_2_booster_interface_msg_RemoteControllerState const* value,
                                                                                unsigned char* p,
                                                                                size_t* offset)
{
    booster_bounded_put(p + *offset, (uint64_t)value->event, 4);
    *offset += 4;
    {
        uint32_t bits;
        booster_bounded_copy(&bits, &value->lx, 4);
        booster_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        booster_bounded_copy(&bits, &value->ly, 4);
        booster_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        booster_bounded_copy(&bits, &value->rx, 4);
        booster_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        booster_bounded_copy(&bits, &value->ry, 4);
        booster_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    booster_bounded_put(p + *offset, (uint64_t)value->a, 1);
    *offset += 1;
    booster_bounded_put(p + *offset, (uint64_t)value->b, 1);
    *offset += 1;
    booster_bounded_put(p + *offset, (uint64_t)value->x, 1);
    *offset += 1;
    booster_bounded_put(p + *offset, (uint64_t)value->y, 1);
    *offset += 1;
    booster_bounded_put(p + *offset, (uint64_t)value->lb, 1);
    *offset += 1;
    booster_bounded_put(p + *offset, (uint64_t)value->rb, 1);
    *offset += 1;
    booster_bounded_put(p + *offset, (uint64_t)value->lt, 1);
    *offset += 1;
    booster_bounded_put(p + *offset, (uint64_t)value->rt, 1);
    *offset += 1;
    booster_bounded_put(p + *offset, (uint64_t)value->ls, 1);
    *offset += 1;
    booster_bounded_put(p + *offset, (uint64_t)value->rs, 1);
    *offset += 1;
    booster_bounded_put(p + *offset, (uint64_t)value->back, 1);
    *offset += 1;
    booster_bounded_put(p + *offset, (uint64_t)value->start, 1);
    *offset += 1;
    booster_bounded_put(p + *offset, (uint64_t)value->hat_c, 1);
    *offset += 1;
    booster_bounded_put(p + *offset, (uint64_t)value->hat_u, 1);
    *offset += 1;
    booster_bounded_put(p + *offset, (uint64_t)value->hat_d, 1);
    *offset += 1;
    booster_bounded_put(p + *offset, (uint64_t)value->hat_l, 1);
    *offset += 1;
    booster_bounded_put(p + *offset, (uint64_t)value->hat_r, 1);
    *offset += 1;
    booster_bounded_put(p + *offset, (uint64_t)value->hat_lu, 1);
    *offset += 1;
    booster_bounded_put(p + *offset, (uint64_t)value->hat_ld, 1);
    *offset += 1;
    booster_bounded_put(p + *offset, (uint64_t)value->hat_ru, 1);
    *offset += 1;
    booster_bounded_put(p + *offset, (uint64_t)value->hat_rd, 1);
    *offset += 1;
    booster_bounded_put(p + *offset, (uint64_t)value->hat_pos, 1);
    *offset += 1;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int
    roswasmc_bounded_2_booster_interface_msg_RemoteControllerState_read_fields(unsigned char const* p,
                                                                               size_t n,
                                                                               size_t* offset,
                                                                               roswasmc_bounded_2_booster_interface_msg_RemoteControllerState* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)booster_bounded_get(p + *offset, 4);
        booster_bounded_copy(&value->event, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)booster_bounded_get(p + *offset, 4);
        booster_bounded_copy(&value->lx, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)booster_bounded_get(p + *offset, 4);
        booster_bounded_copy(&value->ly, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)booster_bounded_get(p + *offset, 4);
        booster_bounded_copy(&value->rx, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)booster_bounded_get(p + *offset, 4);
        booster_bounded_copy(&value->ry, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)booster_bounded_get(p + *offset, 1);
        booster_bounded_copy(&value->a, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)booster_bounded_get(p + *offset, 1);
        booster_bounded_copy(&value->b, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)booster_bounded_get(p + *offset, 1);
        booster_bounded_copy(&value->x, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)booster_bounded_get(p + *offset, 1);
        booster_bounded_copy(&value->y, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)booster_bounded_get(p + *offset, 1);
        booster_bounded_copy(&value->lb, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)booster_bounded_get(p + *offset, 1);
        booster_bounded_copy(&value->rb, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)booster_bounded_get(p + *offset, 1);
        booster_bounded_copy(&value->lt, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)booster_bounded_get(p + *offset, 1);
        booster_bounded_copy(&value->rt, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)booster_bounded_get(p + *offset, 1);
        booster_bounded_copy(&value->ls, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)booster_bounded_get(p + *offset, 1);
        booster_bounded_copy(&value->rs, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)booster_bounded_get(p + *offset, 1);
        booster_bounded_copy(&value->back, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)booster_bounded_get(p + *offset, 1);
        booster_bounded_copy(&value->start, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)booster_bounded_get(p + *offset, 1);
        booster_bounded_copy(&value->hat_c, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)booster_bounded_get(p + *offset, 1);
        booster_bounded_copy(&value->hat_u, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)booster_bounded_get(p + *offset, 1);
        booster_bounded_copy(&value->hat_d, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)booster_bounded_get(p + *offset, 1);
        booster_bounded_copy(&value->hat_l, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)booster_bounded_get(p + *offset, 1);
        booster_bounded_copy(&value->hat_r, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)booster_bounded_get(p + *offset, 1);
        booster_bounded_copy(&value->hat_lu, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)booster_bounded_get(p + *offset, 1);
        booster_bounded_copy(&value->hat_ld, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)booster_bounded_get(p + *offset, 1);
        booster_bounded_copy(&value->hat_ru, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)booster_bounded_get(p + *offset, 1);
        booster_bounded_copy(&value->hat_rd, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)booster_bounded_get(p + *offset, 1);
        booster_bounded_copy(&value->hat_pos, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_2_booster_interface_msg_RemoteControllerState_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_booster_interface_msg_RemoteControllerState_encode(roswasmc_bounded_2_booster_interface_msg_RemoteControllerState const* value,
                                                                          void* output,
                                                                          size_t capacity,
                                                                          size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_booster_interface_msg_RemoteControllerState_valid(value))
        return BOOSTER_BOUNDED_INVALID;
    n = roswasmc_bounded_2_booster_interface_msg_RemoteControllerState_wire_size(value);
    if(capacity < n)
        return BOOSTER_BOUNDED_TOO_LARGE;
    if((n && !output) || booster_bounded_overlap(value, sizeof *value, output, n) || booster_bounded_overlap(length, sizeof *length, output, n) ||
       booster_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return BOOSTER_BOUNDED_INVALID;
    roswasmc_bounded_2_booster_interface_msg_RemoteControllerState_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_booster_interface_msg_RemoteControllerState_decode(void const* input,
                                                                          size_t length,
                                                                          roswasmc_bounded_2_booster_interface_msg_RemoteControllerState* value)
{
    roswasmc_bounded_2_booster_interface_msg_RemoteControllerState next = UWVM_ROS_C_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 42u || length > 42u || booster_bounded_overlap(value, sizeof *value, input, length))
        return BOOSTER_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_booster_interface_msg_RemoteControllerState_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return BOOSTER_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_SRV_AGENTSERVICE_REQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_SRV_AGENTSERVICE_REQUEST_0 != 0xcbf0a33cUL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_SRV_AGENTSERVICE_REQUEST_1 != 0xb59a7ca8UL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_SRV_AGENTSERVICE_REQUEST_2 != 0xfc737ee8UL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_SRV_AGENTSERVICE_REQUEST_3 != 0x878ad621UL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_SRV_AGENTSERVICE_REQUEST_4 != 0xab0c8347UL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_SRV_AGENTSERVICE_REQUEST_5 != 0x80ffb161UL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_SRV_AGENTSERVICE_REQUEST_6 != 0x01f5f2e7UL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_SRV_AGENTSERVICE_REQUEST_7 != 0x7b21daa8UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_SRV_AGENTSERVICE_REQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_SRV_AGENTSERVICE_REQUEST_0 0xcbf0a33cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_SRV_AGENTSERVICE_REQUEST_1 0xb59a7ca8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_SRV_AGENTSERVICE_REQUEST_2 0xfc737ee8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_SRV_AGENTSERVICE_REQUEST_3 0x878ad621UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_SRV_AGENTSERVICE_REQUEST_4 0xab0c8347UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_SRV_AGENTSERVICE_REQUEST_5 0x80ffb161UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_SRV_AGENTSERVICE_REQUEST_6 0x01f5f2e7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_SRV_AGENTSERVICE_REQUEST_7 0x7b21daa8UL

/** @brief UTF-8 byte storage for booster_interface/srv/AgentService_Request.body; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[4096];
} roswasmc_bounded_2_booster_interface_srv_AgentService_Request_body_text;

/** @brief Complete ROS2 booster_interface/srv/AgentService_Request value; no field projects away native data. */
typedef struct roswasmc_bounded_2_booster_interface_srv_AgentService_Request
{
    /** @brief Declared field body; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_booster_interface_srv_AgentService_Request_body_text body;
} roswasmc_bounded_2_booster_interface_srv_AgentService_Request;

# define ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_SRV_AGENTSERVICE_REQUEST_MAX_WIRE_BYTES 4100u
# define ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_SRV_AGENTSERVICE_REQUEST_MIN_WIRE_BYTES 4u
# define ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_SRV_AGENTSERVICE_REQUEST_CODEC_IDENTITY                                                                          \
     "UWVMROS1_d8b972ee6c7f82ee948c03b22354d1073f120ad2616a9e833b578348775404e8"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int
    roswasmc_bounded_2_booster_interface_srv_AgentService_Request_valid(roswasmc_bounded_2_booster_interface_srv_AgentService_Request const* value)
{
    if(!value)
        return 0;
    if(value->body.size > 4096u || !booster_bounded_utf8(value->body.data, value->body.size))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_2_booster_interface_srv_AgentService_Request_wire_size(roswasmc_bounded_2_booster_interface_srv_AgentService_Request const* value)
{
    size_t n = 0;
    n += 4 + value->body.size;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_booster_interface_srv_AgentService_Request_write_fields(roswasmc_bounded_2_booster_interface_srv_AgentService_Request const* value,
                                                                               unsigned char* p,
                                                                               size_t* offset)
{
    booster_bounded_put(p + *offset, value->body.size, 4);
    *offset += 4;
    booster_bounded_copy(p + *offset, value->body.data, value->body.size);
    *offset += value->body.size;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int
    roswasmc_bounded_2_booster_interface_srv_AgentService_Request_read_fields(unsigned char const* p,
                                                                              size_t n,
                                                                              size_t* offset,
                                                                              roswasmc_bounded_2_booster_interface_srv_AgentService_Request* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    value->body.size = (uint32_t)booster_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->body.size > 4096u || value->body.size > n - *offset)
        return 0;
    booster_bounded_copy(value->body.data, p + *offset, value->body.size);
    *offset += value->body.size;
    return roswasmc_bounded_2_booster_interface_srv_AgentService_Request_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_booster_interface_srv_AgentService_Request_encode(roswasmc_bounded_2_booster_interface_srv_AgentService_Request const* value,
                                                                         void* output,
                                                                         size_t capacity,
                                                                         size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_booster_interface_srv_AgentService_Request_valid(value))
        return BOOSTER_BOUNDED_INVALID;
    n = roswasmc_bounded_2_booster_interface_srv_AgentService_Request_wire_size(value);
    if(capacity < n)
        return BOOSTER_BOUNDED_TOO_LARGE;
    if((n && !output) || booster_bounded_overlap(value, sizeof *value, output, n) || booster_bounded_overlap(length, sizeof *length, output, n) ||
       booster_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return BOOSTER_BOUNDED_INVALID;
    roswasmc_bounded_2_booster_interface_srv_AgentService_Request_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_booster_interface_srv_AgentService_Request_decode(void const* input,
                                                                         size_t length,
                                                                         roswasmc_bounded_2_booster_interface_srv_AgentService_Request* value)
{
    roswasmc_bounded_2_booster_interface_srv_AgentService_Request next = UWVM_ROS_C_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 4u || length > 4100u || booster_bounded_overlap(value, sizeof *value, input, length))
        return BOOSTER_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_booster_interface_srv_AgentService_Request_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return BOOSTER_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_SRV_AGENTSERVICE_RESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_SRV_AGENTSERVICE_RESPONSE_0 != 0xb75968f5UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_SRV_AGENTSERVICE_RESPONSE_1 != 0xbc9edd39UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_SRV_AGENTSERVICE_RESPONSE_2 != 0xdd9ad066UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_SRV_AGENTSERVICE_RESPONSE_3 != 0x99fbe0adUL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_SRV_AGENTSERVICE_RESPONSE_4 != 0x27706126UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_SRV_AGENTSERVICE_RESPONSE_5 != 0xd01025d6UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_SRV_AGENTSERVICE_RESPONSE_6 != 0x8d289a61UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_SRV_AGENTSERVICE_RESPONSE_7 != 0x49f509d6UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_SRV_AGENTSERVICE_RESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_SRV_AGENTSERVICE_RESPONSE_0 0xb75968f5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_SRV_AGENTSERVICE_RESPONSE_1 0xbc9edd39UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_SRV_AGENTSERVICE_RESPONSE_2 0xdd9ad066UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_SRV_AGENTSERVICE_RESPONSE_3 0x99fbe0adUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_SRV_AGENTSERVICE_RESPONSE_4 0x27706126UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_SRV_AGENTSERVICE_RESPONSE_5 0xd01025d6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_SRV_AGENTSERVICE_RESPONSE_6 0x8d289a61UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_SRV_AGENTSERVICE_RESPONSE_7 0x49f509d6UL

/** @brief UTF-8 byte storage for booster_interface/srv/AgentService_Response.body; size excludes padding/terminators.
 */
typedef struct
{
    uint32_t size;
    unsigned char data[4096];
} roswasmc_bounded_2_booster_interface_srv_AgentService_Response_body_text;

/** @brief Complete ROS2 booster_interface/srv/AgentService_Response value; no field projects away native data. */
typedef struct roswasmc_bounded_2_booster_interface_srv_AgentService_Response
{
    /** @brief Declared field body; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_booster_interface_srv_AgentService_Response_body_text body;
} roswasmc_bounded_2_booster_interface_srv_AgentService_Response;

# define ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_SRV_AGENTSERVICE_RESPONSE_MAX_WIRE_BYTES 4100u
# define ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_SRV_AGENTSERVICE_RESPONSE_MIN_WIRE_BYTES 4u
# define ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_SRV_AGENTSERVICE_RESPONSE_CODEC_IDENTITY                                                                         \
     "UWVMROS1_86aecf9ee8652016b5c74e30d2dd4100e8b547542a81a98e7795942b47b87520"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int
    roswasmc_bounded_2_booster_interface_srv_AgentService_Response_valid(roswasmc_bounded_2_booster_interface_srv_AgentService_Response const* value)
{
    if(!value)
        return 0;
    if(value->body.size > 4096u || !booster_bounded_utf8(value->body.data, value->body.size))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_2_booster_interface_srv_AgentService_Response_wire_size(roswasmc_bounded_2_booster_interface_srv_AgentService_Response const* value)
{
    size_t n = 0;
    n += 4 + value->body.size;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_booster_interface_srv_AgentService_Response_write_fields(roswasmc_bounded_2_booster_interface_srv_AgentService_Response const* value,
                                                                                unsigned char* p,
                                                                                size_t* offset)
{
    booster_bounded_put(p + *offset, value->body.size, 4);
    *offset += 4;
    booster_bounded_copy(p + *offset, value->body.data, value->body.size);
    *offset += value->body.size;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int
    roswasmc_bounded_2_booster_interface_srv_AgentService_Response_read_fields(unsigned char const* p,
                                                                               size_t n,
                                                                               size_t* offset,
                                                                               roswasmc_bounded_2_booster_interface_srv_AgentService_Response* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    value->body.size = (uint32_t)booster_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->body.size > 4096u || value->body.size > n - *offset)
        return 0;
    booster_bounded_copy(value->body.data, p + *offset, value->body.size);
    *offset += value->body.size;
    return roswasmc_bounded_2_booster_interface_srv_AgentService_Response_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_booster_interface_srv_AgentService_Response_encode(roswasmc_bounded_2_booster_interface_srv_AgentService_Response const* value,
                                                                          void* output,
                                                                          size_t capacity,
                                                                          size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_booster_interface_srv_AgentService_Response_valid(value))
        return BOOSTER_BOUNDED_INVALID;
    n = roswasmc_bounded_2_booster_interface_srv_AgentService_Response_wire_size(value);
    if(capacity < n)
        return BOOSTER_BOUNDED_TOO_LARGE;
    if((n && !output) || booster_bounded_overlap(value, sizeof *value, output, n) || booster_bounded_overlap(length, sizeof *length, output, n) ||
       booster_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return BOOSTER_BOUNDED_INVALID;
    roswasmc_bounded_2_booster_interface_srv_AgentService_Response_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_booster_interface_srv_AgentService_Response_decode(void const* input,
                                                                          size_t length,
                                                                          roswasmc_bounded_2_booster_interface_srv_AgentService_Response* value)
{
    roswasmc_bounded_2_booster_interface_srv_AgentService_Response next = UWVM_ROS_C_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 4u || length > 4100u || booster_bounded_overlap(value, sizeof *value, input, length))
        return BOOSTER_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_booster_interface_srv_AgentService_Response_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return BOOSTER_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_SRV_RPCSERVICE_REQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_SRV_RPCSERVICE_REQUEST_0 != 0x355d6f5fUL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_SRV_RPCSERVICE_REQUEST_1 != 0xdec468fcUL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_SRV_RPCSERVICE_REQUEST_2 != 0x6bcfc34aUL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_SRV_RPCSERVICE_REQUEST_3 != 0x48ef064bUL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_SRV_RPCSERVICE_REQUEST_4 != 0xbc6bf1afUL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_SRV_RPCSERVICE_REQUEST_5 != 0xe558581eUL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_SRV_RPCSERVICE_REQUEST_6 != 0xf40eeaeeUL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_SRV_RPCSERVICE_REQUEST_7 != 0x6d0e03acUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_SRV_RPCSERVICE_REQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_SRV_RPCSERVICE_REQUEST_0 0x355d6f5fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_SRV_RPCSERVICE_REQUEST_1 0xdec468fcUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_SRV_RPCSERVICE_REQUEST_2 0x6bcfc34aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_SRV_RPCSERVICE_REQUEST_3 0x48ef064bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_SRV_RPCSERVICE_REQUEST_4 0xbc6bf1afUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_SRV_RPCSERVICE_REQUEST_5 0xe558581eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_SRV_RPCSERVICE_REQUEST_6 0xf40eeaeeUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_SRV_RPCSERVICE_REQUEST_7 0x6d0e03acUL

/** @brief Complete ROS2 booster_interface/srv/RpcService_Request value; no field projects away native data. */
typedef struct roswasmc_bounded_2_booster_interface_srv_RpcService_Request
{
    /** @brief Declared field msg; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_booster_interface_msg_BoosterApiReqMsg msg;
} roswasmc_bounded_2_booster_interface_srv_RpcService_Request;

# define ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_SRV_RPCSERVICE_REQUEST_MAX_WIRE_BYTES 4108u
# define ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_SRV_RPCSERVICE_REQUEST_MIN_WIRE_BYTES 12u
# define ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_SRV_RPCSERVICE_REQUEST_CODEC_IDENTITY "UWVMROS1_cc8eb67d80bdf131f1878a1be998d68560e235ffef6a539876410dfcd6c00150"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_booster_interface_srv_RpcService_Request_valid(roswasmc_bounded_2_booster_interface_srv_RpcService_Request const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_booster_interface_msg_BoosterApiReqMsg_valid(&value->msg))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_2_booster_interface_srv_RpcService_Request_wire_size(roswasmc_bounded_2_booster_interface_srv_RpcService_Request const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_booster_interface_msg_BoosterApiReqMsg_wire_size(&value->msg);
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_booster_interface_srv_RpcService_Request_write_fields(roswasmc_bounded_2_booster_interface_srv_RpcService_Request const* value,
                                                                             unsigned char* p,
                                                                             size_t* offset)
{
    roswasmc_bounded_2_booster_interface_msg_BoosterApiReqMsg_write_fields(&value->msg, p, offset);
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_booster_interface_srv_RpcService_Request_read_fields(unsigned char const* p,
                                                                                          size_t n,
                                                                                          size_t* offset,
                                                                                          roswasmc_bounded_2_booster_interface_srv_RpcService_Request* value)
{
    if(!roswasmc_bounded_2_booster_interface_msg_BoosterApiReqMsg_read_fields(p, n, offset, &value->msg))
        return 0;
    return roswasmc_bounded_2_booster_interface_srv_RpcService_Request_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_booster_interface_srv_RpcService_Request_encode(roswasmc_bounded_2_booster_interface_srv_RpcService_Request const* value,
                                                                       void* output,
                                                                       size_t capacity,
                                                                       size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_booster_interface_srv_RpcService_Request_valid(value))
        return BOOSTER_BOUNDED_INVALID;
    n = roswasmc_bounded_2_booster_interface_srv_RpcService_Request_wire_size(value);
    if(capacity < n)
        return BOOSTER_BOUNDED_TOO_LARGE;
    if((n && !output) || booster_bounded_overlap(value, sizeof *value, output, n) || booster_bounded_overlap(length, sizeof *length, output, n) ||
       booster_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return BOOSTER_BOUNDED_INVALID;
    roswasmc_bounded_2_booster_interface_srv_RpcService_Request_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_2_booster_interface_srv_RpcService_Request_decode(void const* input,
                                                                                          size_t length,
                                                                                          roswasmc_bounded_2_booster_interface_srv_RpcService_Request* value)
{
    roswasmc_bounded_2_booster_interface_srv_RpcService_Request next = UWVM_ROS_C_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 12u || length > 4108u || booster_bounded_overlap(value, sizeof *value, input, length))
        return BOOSTER_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_booster_interface_srv_RpcService_Request_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return BOOSTER_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_SRV_RPCSERVICE_RESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_SRV_RPCSERVICE_RESPONSE_0 != 0x7eb3e7f1UL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_SRV_RPCSERVICE_RESPONSE_1 != 0x49c4f6e4UL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_SRV_RPCSERVICE_RESPONSE_2 != 0x3d030930UL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_SRV_RPCSERVICE_RESPONSE_3 != 0xd6ff0e32UL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_SRV_RPCSERVICE_RESPONSE_4 != 0x3aaca26eUL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_SRV_RPCSERVICE_RESPONSE_5 != 0xc3c47978UL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_SRV_RPCSERVICE_RESPONSE_6 != 0x9ef2ac1aUL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_SRV_RPCSERVICE_RESPONSE_7 != 0x7fc9c2b8UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_SRV_RPCSERVICE_RESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_SRV_RPCSERVICE_RESPONSE_0 0x7eb3e7f1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_SRV_RPCSERVICE_RESPONSE_1 0x49c4f6e4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_SRV_RPCSERVICE_RESPONSE_2 0x3d030930UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_SRV_RPCSERVICE_RESPONSE_3 0xd6ff0e32UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_SRV_RPCSERVICE_RESPONSE_4 0x3aaca26eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_SRV_RPCSERVICE_RESPONSE_5 0xc3c47978UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_SRV_RPCSERVICE_RESPONSE_6 0x9ef2ac1aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_SRV_RPCSERVICE_RESPONSE_7 0x7fc9c2b8UL

/** @brief Complete ROS2 booster_interface/srv/RpcService_Response value; no field projects away native data. */
typedef struct roswasmc_bounded_2_booster_interface_srv_RpcService_Response
{
    /** @brief Declared field msg; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_booster_interface_msg_BoosterApiRespMsg msg;
} roswasmc_bounded_2_booster_interface_srv_RpcService_Response;

# define ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_SRV_RPCSERVICE_RESPONSE_MAX_WIRE_BYTES 4108u
# define ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_SRV_RPCSERVICE_RESPONSE_MIN_WIRE_BYTES 12u
# define ROSWASMC_BOUNDED_2_BOOSTER_INTERFACE_SRV_RPCSERVICE_RESPONSE_CODEC_IDENTITY "UWVMROS1_7aeb7b45542f9f594e1f61be2f715abcde54b1e55efdde15100b0c553ae96322"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_booster_interface_srv_RpcService_Response_valid(roswasmc_bounded_2_booster_interface_srv_RpcService_Response const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_booster_interface_msg_BoosterApiRespMsg_valid(&value->msg))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t
    roswasmc_bounded_2_booster_interface_srv_RpcService_Response_wire_size(roswasmc_bounded_2_booster_interface_srv_RpcService_Response const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_booster_interface_msg_BoosterApiRespMsg_wire_size(&value->msg);
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_booster_interface_srv_RpcService_Response_write_fields(roswasmc_bounded_2_booster_interface_srv_RpcService_Response const* value,
                                                                              unsigned char* p,
                                                                              size_t* offset)
{
    roswasmc_bounded_2_booster_interface_msg_BoosterApiRespMsg_write_fields(&value->msg, p, offset);
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_booster_interface_srv_RpcService_Response_read_fields(unsigned char const* p,
                                                                                           size_t n,
                                                                                           size_t* offset,
                                                                                           roswasmc_bounded_2_booster_interface_srv_RpcService_Response* value)
{
    if(!roswasmc_bounded_2_booster_interface_msg_BoosterApiRespMsg_read_fields(p, n, offset, &value->msg))
        return 0;
    return roswasmc_bounded_2_booster_interface_srv_RpcService_Response_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t
    roswasmc_bounded_2_booster_interface_srv_RpcService_Response_encode(roswasmc_bounded_2_booster_interface_srv_RpcService_Response const* value,
                                                                        void* output,
                                                                        size_t capacity,
                                                                        size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_booster_interface_srv_RpcService_Response_valid(value))
        return BOOSTER_BOUNDED_INVALID;
    n = roswasmc_bounded_2_booster_interface_srv_RpcService_Response_wire_size(value);
    if(capacity < n)
        return BOOSTER_BOUNDED_TOO_LARGE;
    if((n && !output) || booster_bounded_overlap(value, sizeof *value, output, n) || booster_bounded_overlap(length, sizeof *length, output, n) ||
       booster_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return BOOSTER_BOUNDED_INVALID;
    roswasmc_bounded_2_booster_interface_srv_RpcService_Response_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_2_booster_interface_srv_RpcService_Response_decode(void const* input,
                                                                                           size_t length,
                                                                                           roswasmc_bounded_2_booster_interface_srv_RpcService_Response* value)
{
    roswasmc_bounded_2_booster_interface_srv_RpcService_Response next = UWVM_ROS_C_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 12u || length > 4108u || booster_bounded_overlap(value, sizeof *value, input, length))
        return BOOSTER_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_booster_interface_srv_RpcService_Response_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return BOOSTER_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_IMUSTATE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_IMUSTATE_0 != 0x76e41b04UL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_IMUSTATE_1 != 0x5dd07337UL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_IMUSTATE_2 != 0x317b2a30UL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_IMUSTATE_3 != 0x29637393UL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_IMUSTATE_4 != 0x84ffb85dUL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_IMUSTATE_5 != 0x77b95ae2UL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_IMUSTATE_6 != 0xecfba101UL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_IMUSTATE_7 != 0x9dae37a5UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_IMUSTATE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_IMUSTATE_0 0x76e41b04UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_IMUSTATE_1 0x5dd07337UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_IMUSTATE_2 0x317b2a30UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_IMUSTATE_3 0x29637393UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_IMUSTATE_4 0x84ffb85dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_IMUSTATE_5 0x77b95ae2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_IMUSTATE_6 0xecfba101UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_IMUSTATE_7 0x9dae37a5UL

/** @brief Complete ROS2 uwvm_booster_sdk_bridge/msg/ImuState value; no field projects away native data. */
typedef struct roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_ImuState
{
    /** @brief Declared field rpy; canonical capacity is part of CODEC_IDENTITY. */
    float rpy[3];
    /** @brief Declared field gyro; canonical capacity is part of CODEC_IDENTITY. */
    float gyro[3];
    /** @brief Declared field acc; canonical capacity is part of CODEC_IDENTITY. */
    float acc[3];
} roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_ImuState;

# define ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_IMUSTATE_MAX_WIRE_BYTES 36u
# define ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_IMUSTATE_MIN_WIRE_BYTES 36u
# define ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_IMUSTATE_CODEC_IDENTITY "UWVMROS1_858ad4a47d2409da6b4e2513178d7d3b0d4568d6ce488729de0b9a220a100f04"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_ImuState_valid(roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_ImuState const* value)
{
    if(!value)
        return 0;
    {
        size_t i;
        for(i = 0; i < 3u; ++i)
        {
            {
                uint32_t bits;
                booster_bounded_copy(&bits, &value->rpy[i], 4);
                if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
                    return 0;
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 3u; ++i)
        {
            {
                uint32_t bits;
                booster_bounded_copy(&bits, &value->gyro[i], 4);
                if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
                    return 0;
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 3u; ++i)
        {
            {
                uint32_t bits;
                booster_bounded_copy(&bits, &value->acc[i], 4);
                if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
                    return 0;
            }
        }
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_ImuState_wire_size(roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_ImuState const* value)
{
    (void)value;
    size_t n = 0;
    {
        size_t i;
        for(i = 0; i < 3u; ++i)
        {
            n += 4;
        }
    }
    {
        size_t i;
        for(i = 0; i < 3u; ++i)
        {
            n += 4;
        }
    }
    {
        size_t i;
        for(i = 0; i < 3u; ++i)
        {
            n += 4;
        }
    }
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_ImuState_write_fields(roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_ImuState const* value,
                                                                                        unsigned char* p,
                                                                                        size_t* offset)
{
    {
        size_t i;
        for(i = 0; i < 3u; ++i)
        {
            {
                uint32_t bits;
                booster_bounded_copy(&bits, &value->rpy[i], 4);
                booster_bounded_put(p + *offset, bits, 4);
                *offset += 4;
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 3u; ++i)
        {
            {
                uint32_t bits;
                booster_bounded_copy(&bits, &value->gyro[i], 4);
                booster_bounded_put(p + *offset, bits, 4);
                *offset += 4;
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 3u; ++i)
        {
            {
                uint32_t bits;
                booster_bounded_copy(&bits, &value->acc[i], 4);
                booster_bounded_put(p + *offset, bits, 4);
                *offset += 4;
            }
        }
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_ImuState_read_fields(unsigned char const* p,
                                                                                      size_t n,
                                                                                      size_t* offset,
                                                                                      roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_ImuState* value)
{
    {
        size_t i;
        for(i = 0; i < 3u; ++i)
        {
            if(*offset > n || n - *offset < 4)
                return 0;
            {
                uint32_t bits = (uint32_t)booster_bounded_get(p + *offset, 4);
                booster_bounded_copy(&value->rpy[i], &bits, 4);
            }
            *offset += 4;
        }
    }
    {
        size_t i;
        for(i = 0; i < 3u; ++i)
        {
            if(*offset > n || n - *offset < 4)
                return 0;
            {
                uint32_t bits = (uint32_t)booster_bounded_get(p + *offset, 4);
                booster_bounded_copy(&value->gyro[i], &bits, 4);
            }
            *offset += 4;
        }
    }
    {
        size_t i;
        for(i = 0; i < 3u; ++i)
        {
            if(*offset > n || n - *offset < 4)
                return 0;
            {
                uint32_t bits = (uint32_t)booster_bounded_get(p + *offset, 4);
                booster_bounded_copy(&value->acc[i], &bits, 4);
            }
            *offset += 4;
        }
    }
    return roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_ImuState_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_ImuState_encode(roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_ImuState const* value,
                                                                                      void* output,
                                                                                      size_t capacity,
                                                                                      size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_ImuState_valid(value))
        return BOOSTER_BOUNDED_INVALID;
    n = roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_ImuState_wire_size(value);
    if(capacity < n)
        return BOOSTER_BOUNDED_TOO_LARGE;
    if((n && !output) || booster_bounded_overlap(value, sizeof *value, output, n) || booster_bounded_overlap(length, sizeof *length, output, n) ||
       booster_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return BOOSTER_BOUNDED_INVALID;
    roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_ImuState_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_ImuState_decode(void const* input,
                                                                                      size_t length,
                                                                                      roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_ImuState* value)
{
    roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_ImuState next = UWVM_ROS_C_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 36u || length > 36u || booster_bounded_overlap(value, sizeof *value, input, length))
        return BOOSTER_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_ImuState_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return BOOSTER_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_MOTORCMD)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_MOTORCMD_0 != 0x5e0bbe87UL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_MOTORCMD_1 != 0xdd670c74UL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_MOTORCMD_2 != 0x5cc09f5eUL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_MOTORCMD_3 != 0x6e4a7b6bUL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_MOTORCMD_4 != 0x86df0818UL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_MOTORCMD_5 != 0x9a29bf9fUL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_MOTORCMD_6 != 0x73bd6ad8UL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_MOTORCMD_7 != 0xe8f34415UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_MOTORCMD 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_MOTORCMD_0 0x5e0bbe87UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_MOTORCMD_1 0xdd670c74UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_MOTORCMD_2 0x5cc09f5eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_MOTORCMD_3 0x6e4a7b6bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_MOTORCMD_4 0x86df0818UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_MOTORCMD_5 0x9a29bf9fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_MOTORCMD_6 0x73bd6ad8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_MOTORCMD_7 0xe8f34415UL

/** @brief Complete ROS2 uwvm_booster_sdk_bridge/msg/MotorCmd value; no field projects away native data. */
typedef struct roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_MotorCmd
{
    /** @brief Declared field mode; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t mode;
    /** @brief Declared field q; canonical capacity is part of CODEC_IDENTITY. */
    float q;
    /** @brief Declared field dq; canonical capacity is part of CODEC_IDENTITY. */
    float dq;
    /** @brief Declared field tau; canonical capacity is part of CODEC_IDENTITY. */
    float tau;
    /** @brief Declared field kp; canonical capacity is part of CODEC_IDENTITY. */
    float kp;
    /** @brief Declared field kd; canonical capacity is part of CODEC_IDENTITY. */
    float kd;
    /** @brief Declared field weight; canonical capacity is part of CODEC_IDENTITY. */
    float weight;
} roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_MotorCmd;

# define ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_MOTORCMD_MAX_WIRE_BYTES 25u
# define ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_MOTORCMD_MIN_WIRE_BYTES 25u
# define ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_MOTORCMD_CODEC_IDENTITY "UWVMROS1_66fec912031dfbd29b8e4e747dcdc2dc465506bd003323bc929929bf6a9d31a4"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_MotorCmd_valid(roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_MotorCmd const* value)
{
    if(!value)
        return 0;
    {
        uint32_t bits;
        booster_bounded_copy(&bits, &value->q, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        booster_bounded_copy(&bits, &value->dq, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        booster_bounded_copy(&bits, &value->tau, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        booster_bounded_copy(&bits, &value->kp, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        booster_bounded_copy(&bits, &value->kd, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        booster_bounded_copy(&bits, &value->weight, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_MotorCmd_wire_size(roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_MotorCmd const* value)
{
    (void)value;
    size_t n = 0;
    n += 1;
    n += 4;
    n += 4;
    n += 4;
    n += 4;
    n += 4;
    n += 4;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_MotorCmd_write_fields(roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_MotorCmd const* value,
                                                                                        unsigned char* p,
                                                                                        size_t* offset)
{
    booster_bounded_put(p + *offset, (uint64_t)value->mode, 1);
    *offset += 1;
    {
        uint32_t bits;
        booster_bounded_copy(&bits, &value->q, 4);
        booster_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        booster_bounded_copy(&bits, &value->dq, 4);
        booster_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        booster_bounded_copy(&bits, &value->tau, 4);
        booster_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        booster_bounded_copy(&bits, &value->kp, 4);
        booster_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        booster_bounded_copy(&bits, &value->kd, 4);
        booster_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        booster_bounded_copy(&bits, &value->weight, 4);
        booster_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_MotorCmd_read_fields(unsigned char const* p,
                                                                                      size_t n,
                                                                                      size_t* offset,
                                                                                      roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_MotorCmd* value)
{
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)booster_bounded_get(p + *offset, 1);
        booster_bounded_copy(&value->mode, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)booster_bounded_get(p + *offset, 4);
        booster_bounded_copy(&value->q, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)booster_bounded_get(p + *offset, 4);
        booster_bounded_copy(&value->dq, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)booster_bounded_get(p + *offset, 4);
        booster_bounded_copy(&value->tau, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)booster_bounded_get(p + *offset, 4);
        booster_bounded_copy(&value->kp, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)booster_bounded_get(p + *offset, 4);
        booster_bounded_copy(&value->kd, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)booster_bounded_get(p + *offset, 4);
        booster_bounded_copy(&value->weight, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_MotorCmd_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_MotorCmd_encode(roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_MotorCmd const* value,
                                                                                      void* output,
                                                                                      size_t capacity,
                                                                                      size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_MotorCmd_valid(value))
        return BOOSTER_BOUNDED_INVALID;
    n = roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_MotorCmd_wire_size(value);
    if(capacity < n)
        return BOOSTER_BOUNDED_TOO_LARGE;
    if((n && !output) || booster_bounded_overlap(value, sizeof *value, output, n) || booster_bounded_overlap(length, sizeof *length, output, n) ||
       booster_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return BOOSTER_BOUNDED_INVALID;
    roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_MotorCmd_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_MotorCmd_decode(void const* input,
                                                                                      size_t length,
                                                                                      roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_MotorCmd* value)
{
    roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_MotorCmd next = UWVM_ROS_C_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 25u || length > 25u || booster_bounded_overlap(value, sizeof *value, input, length))
        return BOOSTER_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_MotorCmd_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return BOOSTER_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_MOTORSTATE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_MOTORSTATE_0 != 0xd836dc66UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_MOTORSTATE_1 != 0xea586d93UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_MOTORSTATE_2 != 0x48e0e676UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_MOTORSTATE_3 != 0x7d6fc042UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_MOTORSTATE_4 != 0x088d7c09UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_MOTORSTATE_5 != 0xde2a86c1UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_MOTORSTATE_6 != 0x200fe674UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_MOTORSTATE_7 != 0x7ce836ccUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_MOTORSTATE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_MOTORSTATE_0 0xd836dc66UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_MOTORSTATE_1 0xea586d93UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_MOTORSTATE_2 0x48e0e676UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_MOTORSTATE_3 0x7d6fc042UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_MOTORSTATE_4 0x088d7c09UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_MOTORSTATE_5 0xde2a86c1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_MOTORSTATE_6 0x200fe674UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_MOTORSTATE_7 0x7ce836ccUL

/** @brief Complete ROS2 uwvm_booster_sdk_bridge/msg/MotorState value; no field projects away native data. */
typedef struct roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_MotorState
{
    /** @brief Declared field mode; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t mode;
    /** @brief Declared field q; canonical capacity is part of CODEC_IDENTITY. */
    float q;
    /** @brief Declared field dq; canonical capacity is part of CODEC_IDENTITY. */
    float dq;
    /** @brief Declared field ddq; canonical capacity is part of CODEC_IDENTITY. */
    float ddq;
    /** @brief Declared field tau_est; canonical capacity is part of CODEC_IDENTITY. */
    float tau_est;
    /** @brief Declared field temperature; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t temperature;
    /** @brief Declared field lost; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t lost;
    /** @brief Declared field reserve; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t reserve[2];
} roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_MotorState;

# define ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_MOTORSTATE_MAX_WIRE_BYTES 30u
# define ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_MOTORSTATE_MIN_WIRE_BYTES 30u
# define ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_MOTORSTATE_CODEC_IDENTITY "UWVMROS1_958168dc1e32d50827f255080117a82421d7fb6ae4ad6a05763ce2d3173a30af"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_MotorState_valid(roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_MotorState const* value)
{
    if(!value)
        return 0;
    {
        uint32_t bits;
        booster_bounded_copy(&bits, &value->q, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        booster_bounded_copy(&bits, &value->dq, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        booster_bounded_copy(&bits, &value->ddq, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        booster_bounded_copy(&bits, &value->tau_est, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
        }
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_MotorState_wire_size(roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_MotorState const* value)
{
    (void)value;
    size_t n = 0;
    n += 1;
    n += 4;
    n += 4;
    n += 4;
    n += 4;
    n += 1;
    n += 4;
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            n += 4;
        }
    }
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_MotorState_write_fields(roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_MotorState const* value,
                                                                           unsigned char* p,
                                                                           size_t* offset)
{
    booster_bounded_put(p + *offset, (uint64_t)value->mode, 1);
    *offset += 1;
    {
        uint32_t bits;
        booster_bounded_copy(&bits, &value->q, 4);
        booster_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        booster_bounded_copy(&bits, &value->dq, 4);
        booster_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        booster_bounded_copy(&bits, &value->ddq, 4);
        booster_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        booster_bounded_copy(&bits, &value->tau_est, 4);
        booster_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    booster_bounded_put(p + *offset, (uint64_t)value->temperature, 1);
    *offset += 1;
    booster_bounded_put(p + *offset, (uint64_t)value->lost, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            booster_bounded_put(p + *offset, (uint64_t)value->reserve[i], 4);
            *offset += 4;
        }
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_MotorState_read_fields(unsigned char const* p,
                                                                                        size_t n,
                                                                                        size_t* offset,
                                                                                        roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_MotorState* value)
{
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)booster_bounded_get(p + *offset, 1);
        booster_bounded_copy(&value->mode, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)booster_bounded_get(p + *offset, 4);
        booster_bounded_copy(&value->q, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)booster_bounded_get(p + *offset, 4);
        booster_bounded_copy(&value->dq, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)booster_bounded_get(p + *offset, 4);
        booster_bounded_copy(&value->ddq, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)booster_bounded_get(p + *offset, 4);
        booster_bounded_copy(&value->tau_est, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)booster_bounded_get(p + *offset, 1);
        booster_bounded_copy(&value->temperature, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)booster_bounded_get(p + *offset, 4);
        booster_bounded_copy(&value->lost, &bits, 4);
    }
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            if(*offset > n || n - *offset < 4)
                return 0;
            {
                uint32_t bits = (uint32_t)booster_bounded_get(p + *offset, 4);
                booster_bounded_copy(&value->reserve[i], &bits, 4);
            }
            *offset += 4;
        }
    }
    return roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_MotorState_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_MotorState_encode(roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_MotorState const* value,
                                                                                        void* output,
                                                                                        size_t capacity,
                                                                                        size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_MotorState_valid(value))
        return BOOSTER_BOUNDED_INVALID;
    n = roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_MotorState_wire_size(value);
    if(capacity < n)
        return BOOSTER_BOUNDED_TOO_LARGE;
    if((n && !output) || booster_bounded_overlap(value, sizeof *value, output, n) || booster_bounded_overlap(length, sizeof *length, output, n) ||
       booster_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return BOOSTER_BOUNDED_INVALID;
    roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_MotorState_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_MotorState_decode(void const* input,
                                                                                        size_t length,
                                                                                        roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_MotorState* value)
{
    roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_MotorState next = UWVM_ROS_C_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 30u || length > 30u || booster_bounded_overlap(value, sizeof *value, input, length))
        return BOOSTER_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_MotorState_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return BOOSTER_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_LOWCMD)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_LOWCMD_0 != 0x14a07148UL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_LOWCMD_1 != 0xf47ec6aaUL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_LOWCMD_2 != 0xbce20d6cUL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_LOWCMD_3 != 0x1cf621b8UL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_LOWCMD_4 != 0xeafab690UL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_LOWCMD_5 != 0x3f430999UL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_LOWCMD_6 != 0xbeaba3e5UL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_LOWCMD_7 != 0xaa0611eeUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_LOWCMD 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_LOWCMD_0 0x14a07148UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_LOWCMD_1 0xf47ec6aaUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_LOWCMD_2 0xbce20d6cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_LOWCMD_3 0x1cf621b8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_LOWCMD_4 0xeafab690UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_LOWCMD_5 0x3f430999UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_LOWCMD_6 0xbeaba3e5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_LOWCMD_7 0xaa0611eeUL

/** @brief At most29 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_MotorCmd data[29];
} roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_LowCmd_motor_cmd_sequence;

/** @brief Complete ROS2 uwvm_booster_sdk_bridge/msg/LowCmd value; no field projects away native data. */
typedef struct roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_LowCmd
{
    /** @brief Declared field cmd_type; canonical capacity is part of CODEC_IDENTITY. */
    int32_t cmd_type;
    /** @brief Declared field motor_cmd; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_LowCmd_motor_cmd_sequence motor_cmd;
} roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_LowCmd;

# define ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_LOWCMD_MAX_WIRE_BYTES 733u
# define ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_LOWCMD_MIN_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_LOWCMD_CODEC_IDENTITY "UWVMROS1_3324a161b056f9282ffa8dce3254a1456b75f6eae5f4a067e844e125e94cba3a"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_LowCmd_valid(roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_LowCmd const* value)
{
    if(!value)
        return 0;
    if(value->motor_cmd.size > 29u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->motor_cmd.size; ++i)
        {
            if(!roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_MotorCmd_valid(&value->motor_cmd.data[i]))
                return 0;
        }
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_LowCmd_wire_size(roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_LowCmd const* value)
{
    size_t n = 0;
    n += 4;
    n += 4;
    if(value->motor_cmd.size > 29u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->motor_cmd.size; ++i)
        {
            n += roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_MotorCmd_wire_size(&value->motor_cmd.data[i]);
        }
    }
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_LowCmd_write_fields(roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_LowCmd const* value,
                                                                                      unsigned char* p,
                                                                                      size_t* offset)
{
    booster_bounded_put(p + *offset, (uint64_t)value->cmd_type, 4);
    *offset += 4;
    booster_bounded_put(p + *offset, value->motor_cmd.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->motor_cmd.size; ++i)
        {
            roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_MotorCmd_write_fields(&value->motor_cmd.data[i], p, offset);
        }
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_LowCmd_read_fields(unsigned char const* p,
                                                                                    size_t n,
                                                                                    size_t* offset,
                                                                                    roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_LowCmd* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)booster_bounded_get(p + *offset, 4);
        booster_bounded_copy(&value->cmd_type, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->motor_cmd.size = (uint32_t)booster_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->motor_cmd.size > 29u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->motor_cmd.size; ++i)
        {
            if(!roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_MotorCmd_read_fields(p, n, offset, &value->motor_cmd.data[i]))
                return 0;
        }
    }
    return roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_LowCmd_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_LowCmd_encode(roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_LowCmd const* value,
                                                                                    void* output,
                                                                                    size_t capacity,
                                                                                    size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_LowCmd_valid(value))
        return BOOSTER_BOUNDED_INVALID;
    n = roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_LowCmd_wire_size(value);
    if(capacity < n)
        return BOOSTER_BOUNDED_TOO_LARGE;
    if((n && !output) || booster_bounded_overlap(value, sizeof *value, output, n) || booster_bounded_overlap(length, sizeof *length, output, n) ||
       booster_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return BOOSTER_BOUNDED_INVALID;
    roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_LowCmd_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_LowCmd_decode(void const* input, size_t length, roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_LowCmd* value)
{
    roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_LowCmd next = UWVM_ROS_C_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 8u || length > 733u || booster_bounded_overlap(value, sizeof *value, input, length))
        return BOOSTER_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_LowCmd_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return BOOSTER_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_LOWSTATE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_LOWSTATE_0 != 0x00121e99UL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_LOWSTATE_1 != 0x55bf0d99UL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_LOWSTATE_2 != 0xbe26b034UL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_LOWSTATE_3 != 0x033a4575UL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_LOWSTATE_4 != 0xf966fdc4UL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_LOWSTATE_5 != 0xa0902896UL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_LOWSTATE_6 != 0x90accb60UL ||                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_LOWSTATE_7 != 0x1eafe76cUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_LOWSTATE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_LOWSTATE_0 0x00121e99UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_LOWSTATE_1 0x55bf0d99UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_LOWSTATE_2 0xbe26b034UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_LOWSTATE_3 0x033a4575UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_LOWSTATE_4 0xf966fdc4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_LOWSTATE_5 0xa0902896UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_LOWSTATE_6 0x90accb60UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_LOWSTATE_7 0x1eafe76cUL

/** @brief At most29 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_MotorState data[29];
} roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_LowState_motor_state_parallel_sequence;

/** @brief At most29 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_MotorState data[29];
} roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_LowState_motor_state_serial_sequence;

/** @brief Complete ROS2 uwvm_booster_sdk_bridge/msg/LowState value; no field projects away native data. */
typedef struct roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_LowState
{
    /** @brief Declared field imu_state; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_ImuState imu_state;
    /** @brief Declared field motor_state_parallel; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_LowState_motor_state_parallel_sequence motor_state_parallel;
    /** @brief Declared field motor_state_serial; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_LowState_motor_state_serial_sequence motor_state_serial;
} roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_LowState;

# define ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_LOWSTATE_MAX_WIRE_BYTES 1784u
# define ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_LOWSTATE_MIN_WIRE_BYTES 44u
# define ROSWASMC_BOUNDED_2_UWVM_BOOSTER_SDK_BRIDGE_MSG_LOWSTATE_CODEC_IDENTITY "UWVMROS1_ca4bcb79077b0e026cf45a389981622ff9c80570ee813ff5633c605fe5021a58"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_LowState_valid(roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_LowState const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_ImuState_valid(&value->imu_state))
        return 0;
    if(value->motor_state_parallel.size > 29u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->motor_state_parallel.size; ++i)
        {
            if(!roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_MotorState_valid(&value->motor_state_parallel.data[i]))
                return 0;
        }
    }
    if(value->motor_state_serial.size > 29u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->motor_state_serial.size; ++i)
        {
            if(!roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_MotorState_valid(&value->motor_state_serial.data[i]))
                return 0;
        }
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_LowState_wire_size(roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_LowState const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_ImuState_wire_size(&value->imu_state);
    n += 4;
    if(value->motor_state_parallel.size > 29u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->motor_state_parallel.size; ++i)
        {
            n += roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_MotorState_wire_size(&value->motor_state_parallel.data[i]);
        }
    }
    n += 4;
    if(value->motor_state_serial.size > 29u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->motor_state_serial.size; ++i)
        {
            n += roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_MotorState_wire_size(&value->motor_state_serial.data[i]);
        }
    }
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_LowState_write_fields(roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_LowState const* value,
                                                                                        unsigned char* p,
                                                                                        size_t* offset)
{
    roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_ImuState_write_fields(&value->imu_state, p, offset);
    booster_bounded_put(p + *offset, value->motor_state_parallel.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->motor_state_parallel.size; ++i)
        {
            roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_MotorState_write_fields(&value->motor_state_parallel.data[i], p, offset);
        }
    }
    booster_bounded_put(p + *offset, value->motor_state_serial.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->motor_state_serial.size; ++i)
        {
            roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_MotorState_write_fields(&value->motor_state_serial.data[i], p, offset);
        }
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_LowState_read_fields(unsigned char const* p,
                                                                                      size_t n,
                                                                                      size_t* offset,
                                                                                      roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_LowState* value)
{
    if(!roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_ImuState_read_fields(p, n, offset, &value->imu_state))
        return 0;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->motor_state_parallel.size = (uint32_t)booster_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->motor_state_parallel.size > 29u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->motor_state_parallel.size; ++i)
        {
            if(!roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_MotorState_read_fields(p, n, offset, &value->motor_state_parallel.data[i]))
                return 0;
        }
    }
    if(*offset > n || n - *offset < 4)
        return 0;
    value->motor_state_serial.size = (uint32_t)booster_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->motor_state_serial.size > 29u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->motor_state_serial.size; ++i)
        {
            if(!roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_MotorState_read_fields(p, n, offset, &value->motor_state_serial.data[i]))
                return 0;
        }
    }
    return roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_LowState_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_LowState_encode(roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_LowState const* value,
                                                                                      void* output,
                                                                                      size_t capacity,
                                                                                      size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_LowState_valid(value))
        return BOOSTER_BOUNDED_INVALID;
    n = roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_LowState_wire_size(value);
    if(capacity < n)
        return BOOSTER_BOUNDED_TOO_LARGE;
    if((n && !output) || booster_bounded_overlap(value, sizeof *value, output, n) || booster_bounded_overlap(length, sizeof *length, output, n) ||
       booster_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return BOOSTER_BOUNDED_INVALID;
    roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_LowState_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_LowState_decode(void const* input,
                                                                                      size_t length,
                                                                                      roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_LowState* value)
{
    roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_LowState next = UWVM_ROS_C_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 44u || length > 1784u || booster_bounded_overlap(value, sizeof *value, input, length))
        return BOOSTER_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_uwvm_booster_sdk_bridge_msg_LowState_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return BOOSTER_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#undef BOOSTER_BOUNDED_ASSERT
#endif
