/** @file Generated bounded-v2 canonical values; no native ROS serialization or authority.
 * Every dynamic field has inline caller-owned capacity. Encode validates and measures
 * the full value before writes; decode commits one temporary only after full validation.
 * Supply distinct record, byte and size-output storage; overlap is explicitly refused.
 * Empty Service/Action components use a C layout dummy that is never a wire field. */
#ifndef UWVM_NVIDIA_GROOT_COMPLETE_RECORDS_D47DCCBAC52C848A0AA0631DC5AC0D2A17F8A522E4C22E0215D195C866D90490
#define UWVM_NVIDIA_GROOT_COMPLETE_RECORDS_D47DCCBAC52C848A0AA0631DC5AC0D2A17F8A522E4C22E0215D195C866D90490
#include <float.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>
#ifndef UWVM_ROS_BOUNDED_CODEC_HELPERS
# define UWVM_ROS_BOUNDED_CODEC_HELPERS
# define UWVM_BOUNDED_INVALID 22u
# define UWVM_BOUNDED_TOO_LARGE 90u
/** @brief Initialize every aggregate field without language-specific partial-initializer warnings. */
# ifdef __cplusplus
#  define UWVM_BOUNDED_ZERO_VALUE(Type) Type()
# else
#  define UWVM_BOUNDED_ZERO_VALUE(Type) {0}
# endif
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
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_MSG_RGBFRAME)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_MSG_RGBFRAME_0 != 0x376d1432UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_MSG_RGBFRAME_1 != 0xc9c650efUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_MSG_RGBFRAME_2 != 0x718dddc4UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_MSG_RGBFRAME_3 != 0x775fff30UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_MSG_RGBFRAME_4 != 0x6eeeb87bUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_MSG_RGBFRAME_5 != 0x8ef0b074UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_MSG_RGBFRAME_6 != 0x09a38457UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_MSG_RGBFRAME_7 != 0xde62094fUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_MSG_RGBFRAME 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_MSG_RGBFRAME_0 0x376d1432UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_MSG_RGBFRAME_1 0xc9c650efUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_MSG_RGBFRAME_2 0x718dddc4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_MSG_RGBFRAME_3 0x775fff30UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_MSG_RGBFRAME_4 0x6eeeb87bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_MSG_RGBFRAME_5 0x8ef0b074UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_MSG_RGBFRAME_6 0x09a38457UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_MSG_RGBFRAME_7 0xde62094fUL

/** @brief UTF-8 byte storage for uwvm_groot_bridge/msg/RGBFrame.key; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[64];
} roswasmc_bounded_2_uwvm_groot_bridge_msg_RGBFrame_key_text;

/** @brief At most768 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    uint8_t data[768];
} roswasmc_bounded_2_uwvm_groot_bridge_msg_RGBFrame_pixels_sequence;

/** @brief Complete ROS2 uwvm_groot_bridge/msg/RGBFrame value; no field projects away native data. */
typedef struct roswasmc_bounded_2_uwvm_groot_bridge_msg_RGBFrame
{
    /** @brief Declared field key; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_uwvm_groot_bridge_msg_RGBFrame_key_text key;
    /** @brief Declared field shape; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t shape[5];
    /** @brief Declared field pixels; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_uwvm_groot_bridge_msg_RGBFrame_pixels_sequence pixels;
} roswasmc_bounded_2_uwvm_groot_bridge_msg_RGBFrame;

# define ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_MSG_RGBFRAME_MAX_WIRE_BYTES 860u
# define ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_MSG_RGBFRAME_MIN_WIRE_BYTES 28u
# define ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_MSG_RGBFRAME_CODEC_IDENTITY "UWVMROS1_db7172fe7a7f0672c907f31ca0b1cb6286b804246d62e0414ac4313ae1096364"

/**
 * @brief Validate every initialized field without allocation or ROS effects.
 * @param value Caller-owned complete record; a null pointer is refused.
 * @return One when every field satisfies its canonical bounds, otherwise zero.
 */
static inline int roswasmc_bounded_2_uwvm_groot_bridge_msg_RGBFrame_valid(roswasmc_bounded_2_uwvm_groot_bridge_msg_RGBFrame const* value)
{
    if(!value)
        return 0;
    if(value->key.size > 64u || !uwvm_bounded_utf8(value->key.data, value->key.size))
        return 0;
    {
        size_t i;
        for(i = 0; i < 5u; ++i)
        {
        }
    }
    if(value->pixels.size > 768u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->pixels.size; ++i)
        {
        }
    }
    return 1;
}

/**
 * @brief Measure the exact complete canonical body in bytes.
 * @param value Caller-owned record already accepted by the matching validator.
 * @return Exact active-field size; inline capacity is never emitted as payload.
 * @pre The complete record has passed its matching valid function.
 */
static inline size_t roswasmc_bounded_2_uwvm_groot_bridge_msg_RGBFrame_wire_size(roswasmc_bounded_2_uwvm_groot_bridge_msg_RGBFrame const* value)
{
    size_t n = 0;
    (void)value;
    n += 4 + value->key.size;
    {
        size_t i;
        for(i = 0; i < 5u; ++i)
        {
            n += 4;
        }
    }
    n += 4;
    if(value->pixels.size > 768u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->pixels.size; ++i)
        {
            n += 1;
        }
    }
    return n;
}

/**
 * @brief Write validated fields into the encoder-owned checked cursor.
 * @param value Complete initialized record already validated by the encoder.
 * @param p Writable buffer covering the premeasured complete body.
 * @param offset Encoder-owned cursor in bytes; advanced by the exact body extent.
 * @pre Capacity and every source/output overlap have already been checked.
 */
static inline void roswasmc_bounded_2_uwvm_groot_bridge_msg_RGBFrame_write_fields(roswasmc_bounded_2_uwvm_groot_bridge_msg_RGBFrame const* value,
                                                                                  unsigned char* p,
                                                                                  size_t* offset)
{
    uwvm_bounded_put(p + *offset, value->key.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->key.data, value->key.size);
    *offset += value->key.size;
    {
        size_t i;
        for(i = 0; i < 5u; ++i)
        {
            uwvm_bounded_put(p + *offset, (uint64_t)value->shape[i], 4);
            *offset += 4;
        }
    }
    uwvm_bounded_put(p + *offset, value->pixels.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->pixels.size; ++i)
        {
            uwvm_bounded_put(p + *offset, (uint64_t)value->pixels.data[i], 1);
            *offset += 1;
        }
    }
}

/**
 * @brief Read every field into a private decoder temporary with checked bounds.
 * @param p Read-only n-byte canonical buffer retained by the caller.
 * @param n Exact input extent in bytes.
 * @param offset Decoder-owned checked byte cursor; advanced only within n.
 * @param value Private temporary; a failed read must never publish this value.
 * @return One for a complete valid component or zero on malformed input.
 */
static inline int roswasmc_bounded_2_uwvm_groot_bridge_msg_RGBFrame_read_fields(unsigned char const* p,
                                                                                size_t n,
                                                                                size_t* offset,
                                                                                roswasmc_bounded_2_uwvm_groot_bridge_msg_RGBFrame* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    value->key.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->key.size > 64u || value->key.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->key.data, p + *offset, value->key.size);
    *offset += value->key.size;
    {
        size_t i;
        for(i = 0; i < 5u; ++i)
        {
            if(*offset > n || n - *offset < 4)
                return 0;
            {
                uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
                uwvm_bounded_copy(&value->shape[i], &bits, 4);
            }
            *offset += 4;
        }
    }
    if(*offset > n || n - *offset < 4)
        return 0;
    value->pixels.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->pixels.size > 768u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->pixels.size; ++i)
        {
            if(*offset > n || n - *offset < 1)
                return 0;
            {
                uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
                uwvm_bounded_copy(&value->pixels.data[i], &bits, 1);
            }
            *offset += 1;
        }
    }
    return roswasmc_bounded_2_uwvm_groot_bridge_msg_RGBFrame_valid(value);
}

/**
 * @brief Encode a complete value transactionally into caller-owned bytes.
 * @details Validation and exact size checks precede every write. The record,
 * output buffer and length result must occupy disjoint live storage.
 * @param value Complete initialized source record, retained by the caller.
 * @param output Writable capacity-byte buffer; null is valid only for an empty body.
 * @param capacity Number of writable bytes, never a message element count.
 * @param length Writable exact-length result; unchanged when encoding is refused.
 * @return Zero on success, 22 for invalid values/storage or 90 for insufficient capacity.
 */
static inline uint32_t roswasmc_bounded_2_uwvm_groot_bridge_msg_RGBFrame_encode(roswasmc_bounded_2_uwvm_groot_bridge_msg_RGBFrame const* value,
                                                                                void* output,
                                                                                size_t capacity,
                                                                                size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_uwvm_groot_bridge_msg_RGBFrame_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_uwvm_groot_bridge_msg_RGBFrame_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_uwvm_groot_bridge_msg_RGBFrame_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/**
 * @brief Decode an exact complete body before committing the destination.
 * @details Truncation, trailing bytes, nonfinite numbers, malformed UTF-8 and
 * quota violations are refused. No output prefix commits on failure.
 * @param input Read-only length-byte canonical body, disjoint from the result.
 * @param length Exact available byte extent; no native struct layout is accepted.
 * @param value Initialized caller-owned destination, unchanged on refusal.
 * @return Zero on success or 22 for malformed bytes, invalid storage or bounds.
 */
static inline uint32_t
    roswasmc_bounded_2_uwvm_groot_bridge_msg_RGBFrame_decode(void const* input, size_t length, roswasmc_bounded_2_uwvm_groot_bridge_msg_RGBFrame* value)
{
    roswasmc_bounded_2_uwvm_groot_bridge_msg_RGBFrame next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_uwvm_groot_bridge_msg_RGBFrame);
    size_t offset = 0;
    if(!value || (length && !input) || length < 28u || length > 860u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_uwvm_groot_bridge_msg_RGBFrame_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_MSG_FLOATTENSOR)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_MSG_FLOATTENSOR_0 != 0x65a2d3eaUL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_MSG_FLOATTENSOR_1 != 0x4b380c61UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_MSG_FLOATTENSOR_2 != 0x434f4efdUL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_MSG_FLOATTENSOR_3 != 0xbfabfcdaUL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_MSG_FLOATTENSOR_4 != 0x5cdf28f0UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_MSG_FLOATTENSOR_5 != 0xeee3fa7aUL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_MSG_FLOATTENSOR_6 != 0x958b9349UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_MSG_FLOATTENSOR_7 != 0xec0a979aUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_MSG_FLOATTENSOR 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_MSG_FLOATTENSOR_0 0x65a2d3eaUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_MSG_FLOATTENSOR_1 0x4b380c61UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_MSG_FLOATTENSOR_2 0x434f4efdUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_MSG_FLOATTENSOR_3 0xbfabfcdaUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_MSG_FLOATTENSOR_4 0x5cdf28f0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_MSG_FLOATTENSOR_5 0xeee3fa7aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_MSG_FLOATTENSOR_6 0x958b9349UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_MSG_FLOATTENSOR_7 0xec0a979aUL

/** @brief UTF-8 byte storage for uwvm_groot_bridge/msg/FloatTensor.key; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[64];
} roswasmc_bounded_2_uwvm_groot_bridge_msg_FloatTensor_key_text;

/** @brief At most320 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    float data[320];
} roswasmc_bounded_2_uwvm_groot_bridge_msg_FloatTensor_values_sequence;

/** @brief Complete ROS2 uwvm_groot_bridge/msg/FloatTensor value; no field projects away native data. */
typedef struct roswasmc_bounded_2_uwvm_groot_bridge_msg_FloatTensor
{
    /** @brief Declared field key; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_uwvm_groot_bridge_msg_FloatTensor_key_text key;
    /** @brief Declared field shape; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t shape[3];
    /** @brief Declared field values; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_uwvm_groot_bridge_msg_FloatTensor_values_sequence values;
} roswasmc_bounded_2_uwvm_groot_bridge_msg_FloatTensor;

# define ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_MSG_FLOATTENSOR_MAX_WIRE_BYTES 1364u
# define ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_MSG_FLOATTENSOR_MIN_WIRE_BYTES 20u
# define ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_MSG_FLOATTENSOR_CODEC_IDENTITY "UWVMROS1_a091d322ab737d2a9415f889fb78a18df7aec6ce74cfab0dcd5bb2a61ae3abae"

/**
 * @brief Validate every initialized field without allocation or ROS effects.
 * @param value Caller-owned complete record; a null pointer is refused.
 * @return One when every field satisfies its canonical bounds, otherwise zero.
 */
static inline int roswasmc_bounded_2_uwvm_groot_bridge_msg_FloatTensor_valid(roswasmc_bounded_2_uwvm_groot_bridge_msg_FloatTensor const* value)
{
    if(!value)
        return 0;
    if(value->key.size > 64u || !uwvm_bounded_utf8(value->key.data, value->key.size))
        return 0;
    {
        size_t i;
        for(i = 0; i < 3u; ++i)
        {
        }
    }
    if(value->values.size > 320u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->values.size; ++i)
        {
            {
                uint32_t bits;
                uwvm_bounded_copy(&bits, &value->values.data[i], 4);
                if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
                    return 0;
            }
        }
    }
    return 1;
}

/**
 * @brief Measure the exact complete canonical body in bytes.
 * @param value Caller-owned record already accepted by the matching validator.
 * @return Exact active-field size; inline capacity is never emitted as payload.
 * @pre The complete record has passed its matching valid function.
 */
static inline size_t roswasmc_bounded_2_uwvm_groot_bridge_msg_FloatTensor_wire_size(roswasmc_bounded_2_uwvm_groot_bridge_msg_FloatTensor const* value)
{
    size_t n = 0;
    (void)value;
    n += 4 + value->key.size;
    {
        size_t i;
        for(i = 0; i < 3u; ++i)
        {
            n += 4;
        }
    }
    n += 4;
    if(value->values.size > 320u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->values.size; ++i)
        {
            n += 4;
        }
    }
    return n;
}

/**
 * @brief Write validated fields into the encoder-owned checked cursor.
 * @param value Complete initialized record already validated by the encoder.
 * @param p Writable buffer covering the premeasured complete body.
 * @param offset Encoder-owned cursor in bytes; advanced by the exact body extent.
 * @pre Capacity and every source/output overlap have already been checked.
 */
static inline void roswasmc_bounded_2_uwvm_groot_bridge_msg_FloatTensor_write_fields(roswasmc_bounded_2_uwvm_groot_bridge_msg_FloatTensor const* value,
                                                                                     unsigned char* p,
                                                                                     size_t* offset)
{
    uwvm_bounded_put(p + *offset, value->key.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->key.data, value->key.size);
    *offset += value->key.size;
    {
        size_t i;
        for(i = 0; i < 3u; ++i)
        {
            uwvm_bounded_put(p + *offset, (uint64_t)value->shape[i], 4);
            *offset += 4;
        }
    }
    uwvm_bounded_put(p + *offset, value->values.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->values.size; ++i)
        {
            {
                uint32_t bits;
                uwvm_bounded_copy(&bits, &value->values.data[i], 4);
                uwvm_bounded_put(p + *offset, bits, 4);
                *offset += 4;
            }
        }
    }
}

/**
 * @brief Read every field into a private decoder temporary with checked bounds.
 * @param p Read-only n-byte canonical buffer retained by the caller.
 * @param n Exact input extent in bytes.
 * @param offset Decoder-owned checked byte cursor; advanced only within n.
 * @param value Private temporary; a failed read must never publish this value.
 * @return One for a complete valid component or zero on malformed input.
 */
static inline int roswasmc_bounded_2_uwvm_groot_bridge_msg_FloatTensor_read_fields(unsigned char const* p,
                                                                                   size_t n,
                                                                                   size_t* offset,
                                                                                   roswasmc_bounded_2_uwvm_groot_bridge_msg_FloatTensor* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    value->key.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->key.size > 64u || value->key.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->key.data, p + *offset, value->key.size);
    *offset += value->key.size;
    {
        size_t i;
        for(i = 0; i < 3u; ++i)
        {
            if(*offset > n || n - *offset < 4)
                return 0;
            {
                uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
                uwvm_bounded_copy(&value->shape[i], &bits, 4);
            }
            *offset += 4;
        }
    }
    if(*offset > n || n - *offset < 4)
        return 0;
    value->values.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->values.size > 320u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->values.size; ++i)
        {
            if(*offset > n || n - *offset < 4)
                return 0;
            {
                uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
                uwvm_bounded_copy(&value->values.data[i], &bits, 4);
            }
            *offset += 4;
        }
    }
    return roswasmc_bounded_2_uwvm_groot_bridge_msg_FloatTensor_valid(value);
}

/**
 * @brief Encode a complete value transactionally into caller-owned bytes.
 * @details Validation and exact size checks precede every write. The record,
 * output buffer and length result must occupy disjoint live storage.
 * @param value Complete initialized source record, retained by the caller.
 * @param output Writable capacity-byte buffer; null is valid only for an empty body.
 * @param capacity Number of writable bytes, never a message element count.
 * @param length Writable exact-length result; unchanged when encoding is refused.
 * @return Zero on success, 22 for invalid values/storage or 90 for insufficient capacity.
 */
static inline uint32_t roswasmc_bounded_2_uwvm_groot_bridge_msg_FloatTensor_encode(roswasmc_bounded_2_uwvm_groot_bridge_msg_FloatTensor const* value,
                                                                                   void* output,
                                                                                   size_t capacity,
                                                                                   size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_uwvm_groot_bridge_msg_FloatTensor_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_uwvm_groot_bridge_msg_FloatTensor_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_uwvm_groot_bridge_msg_FloatTensor_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/**
 * @brief Decode an exact complete body before committing the destination.
 * @details Truncation, trailing bytes, nonfinite numbers, malformed UTF-8 and
 * quota violations are refused. No output prefix commits on failure.
 * @param input Read-only length-byte canonical body, disjoint from the result.
 * @param length Exact available byte extent; no native struct layout is accepted.
 * @param value Initialized caller-owned destination, unchanged on refusal.
 * @return Zero on success or 22 for malformed bytes, invalid storage or bounds.
 */
static inline uint32_t
    roswasmc_bounded_2_uwvm_groot_bridge_msg_FloatTensor_decode(void const* input, size_t length, roswasmc_bounded_2_uwvm_groot_bridge_msg_FloatTensor* value)
{
    roswasmc_bounded_2_uwvm_groot_bridge_msg_FloatTensor next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_uwvm_groot_bridge_msg_FloatTensor);
    size_t offset = 0;
    if(!value || (length && !input) || length < 20u || length > 1364u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_uwvm_groot_bridge_msg_FloatTensor_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_MSG_TEXTSEQUENCE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_MSG_TEXTSEQUENCE_0 != 0xdb82d745UL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_MSG_TEXTSEQUENCE_1 != 0x3b4f2b70UL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_MSG_TEXTSEQUENCE_2 != 0xfb07472eUL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_MSG_TEXTSEQUENCE_3 != 0xf79cfc52UL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_MSG_TEXTSEQUENCE_4 != 0xd096e79cUL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_MSG_TEXTSEQUENCE_5 != 0x75f97aebUL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_MSG_TEXTSEQUENCE_6 != 0x7d9dcc03UL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_MSG_TEXTSEQUENCE_7 != 0xa739f616UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_MSG_TEXTSEQUENCE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_MSG_TEXTSEQUENCE_0 0xdb82d745UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_MSG_TEXTSEQUENCE_1 0x3b4f2b70UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_MSG_TEXTSEQUENCE_2 0xfb07472eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_MSG_TEXTSEQUENCE_3 0xf79cfc52UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_MSG_TEXTSEQUENCE_4 0xd096e79cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_MSG_TEXTSEQUENCE_5 0x75f97aebUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_MSG_TEXTSEQUENCE_6 0x7d9dcc03UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_MSG_TEXTSEQUENCE_7 0xa739f616UL

/** @brief UTF-8 byte storage for uwvm_groot_bridge/msg/TextSequence.key; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[64];
} roswasmc_bounded_2_uwvm_groot_bridge_msg_TextSequence_key_text;

/** @brief UTF-8 byte storage for uwvm_groot_bridge/msg/TextSequence.texts; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[256];
} roswasmc_bounded_2_uwvm_groot_bridge_msg_TextSequence_texts_text;

/** @brief At most4 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_2_uwvm_groot_bridge_msg_TextSequence_texts_text data[4];
} roswasmc_bounded_2_uwvm_groot_bridge_msg_TextSequence_texts_sequence;

/** @brief Complete ROS2 uwvm_groot_bridge/msg/TextSequence value; no field projects away native data. */
typedef struct roswasmc_bounded_2_uwvm_groot_bridge_msg_TextSequence
{
    /** @brief Declared field key; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_uwvm_groot_bridge_msg_TextSequence_key_text key;
    /** @brief Declared field shape; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t shape[2];
    /** @brief Declared field texts; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_uwvm_groot_bridge_msg_TextSequence_texts_sequence texts;
} roswasmc_bounded_2_uwvm_groot_bridge_msg_TextSequence;

# define ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_MSG_TEXTSEQUENCE_MAX_WIRE_BYTES 1120u
# define ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_MSG_TEXTSEQUENCE_MIN_WIRE_BYTES 16u
# define ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_MSG_TEXTSEQUENCE_CODEC_IDENTITY "UWVMROS1_895be974f2560f0afff7614f5400ff7205e013cda269825a8443628621c8e80d"

/**
 * @brief Validate every initialized field without allocation or ROS effects.
 * @param value Caller-owned complete record; a null pointer is refused.
 * @return One when every field satisfies its canonical bounds, otherwise zero.
 */
static inline int roswasmc_bounded_2_uwvm_groot_bridge_msg_TextSequence_valid(roswasmc_bounded_2_uwvm_groot_bridge_msg_TextSequence const* value)
{
    if(!value)
        return 0;
    if(value->key.size > 64u || !uwvm_bounded_utf8(value->key.data, value->key.size))
        return 0;
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
        }
    }
    if(value->texts.size > 4u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->texts.size; ++i)
        {
            if(value->texts.data[i].size > 256u || !uwvm_bounded_utf8(value->texts.data[i].data, value->texts.data[i].size))
                return 0;
        }
    }
    return 1;
}

/**
 * @brief Measure the exact complete canonical body in bytes.
 * @param value Caller-owned record already accepted by the matching validator.
 * @return Exact active-field size; inline capacity is never emitted as payload.
 * @pre The complete record has passed its matching valid function.
 */
static inline size_t roswasmc_bounded_2_uwvm_groot_bridge_msg_TextSequence_wire_size(roswasmc_bounded_2_uwvm_groot_bridge_msg_TextSequence const* value)
{
    size_t n = 0;
    (void)value;
    n += 4 + value->key.size;
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            n += 4;
        }
    }
    n += 4;
    if(value->texts.size > 4u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->texts.size; ++i)
        {
            n += 4 + value->texts.data[i].size;
        }
    }
    return n;
}

/**
 * @brief Write validated fields into the encoder-owned checked cursor.
 * @param value Complete initialized record already validated by the encoder.
 * @param p Writable buffer covering the premeasured complete body.
 * @param offset Encoder-owned cursor in bytes; advanced by the exact body extent.
 * @pre Capacity and every source/output overlap have already been checked.
 */
static inline void roswasmc_bounded_2_uwvm_groot_bridge_msg_TextSequence_write_fields(roswasmc_bounded_2_uwvm_groot_bridge_msg_TextSequence const* value,
                                                                                      unsigned char* p,
                                                                                      size_t* offset)
{
    uwvm_bounded_put(p + *offset, value->key.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->key.data, value->key.size);
    *offset += value->key.size;
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            uwvm_bounded_put(p + *offset, (uint64_t)value->shape[i], 4);
            *offset += 4;
        }
    }
    uwvm_bounded_put(p + *offset, value->texts.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->texts.size; ++i)
        {
            uwvm_bounded_put(p + *offset, value->texts.data[i].size, 4);
            *offset += 4;
            uwvm_bounded_copy(p + *offset, value->texts.data[i].data, value->texts.data[i].size);
            *offset += value->texts.data[i].size;
        }
    }
}

/**
 * @brief Read every field into a private decoder temporary with checked bounds.
 * @param p Read-only n-byte canonical buffer retained by the caller.
 * @param n Exact input extent in bytes.
 * @param offset Decoder-owned checked byte cursor; advanced only within n.
 * @param value Private temporary; a failed read must never publish this value.
 * @return One for a complete valid component or zero on malformed input.
 */
static inline int roswasmc_bounded_2_uwvm_groot_bridge_msg_TextSequence_read_fields(unsigned char const* p,
                                                                                    size_t n,
                                                                                    size_t* offset,
                                                                                    roswasmc_bounded_2_uwvm_groot_bridge_msg_TextSequence* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    value->key.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->key.size > 64u || value->key.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->key.data, p + *offset, value->key.size);
    *offset += value->key.size;
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            if(*offset > n || n - *offset < 4)
                return 0;
            {
                uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
                uwvm_bounded_copy(&value->shape[i], &bits, 4);
            }
            *offset += 4;
        }
    }
    if(*offset > n || n - *offset < 4)
        return 0;
    value->texts.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->texts.size > 4u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->texts.size; ++i)
        {
            if(*offset > n || n - *offset < 4)
                return 0;
            value->texts.data[i].size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
            *offset += 4;
            if(value->texts.data[i].size > 256u || value->texts.data[i].size > n - *offset)
                return 0;
            uwvm_bounded_copy(value->texts.data[i].data, p + *offset, value->texts.data[i].size);
            *offset += value->texts.data[i].size;
        }
    }
    return roswasmc_bounded_2_uwvm_groot_bridge_msg_TextSequence_valid(value);
}

/**
 * @brief Encode a complete value transactionally into caller-owned bytes.
 * @details Validation and exact size checks precede every write. The record,
 * output buffer and length result must occupy disjoint live storage.
 * @param value Complete initialized source record, retained by the caller.
 * @param output Writable capacity-byte buffer; null is valid only for an empty body.
 * @param capacity Number of writable bytes, never a message element count.
 * @param length Writable exact-length result; unchanged when encoding is refused.
 * @return Zero on success, 22 for invalid values/storage or 90 for insufficient capacity.
 */
static inline uint32_t roswasmc_bounded_2_uwvm_groot_bridge_msg_TextSequence_encode(roswasmc_bounded_2_uwvm_groot_bridge_msg_TextSequence const* value,
                                                                                    void* output,
                                                                                    size_t capacity,
                                                                                    size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_uwvm_groot_bridge_msg_TextSequence_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_uwvm_groot_bridge_msg_TextSequence_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_uwvm_groot_bridge_msg_TextSequence_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/**
 * @brief Decode an exact complete body before committing the destination.
 * @details Truncation, trailing bytes, nonfinite numbers, malformed UTF-8 and
 * quota violations are refused. No output prefix commits on failure.
 * @param input Read-only length-byte canonical body, disjoint from the result.
 * @param length Exact available byte extent; no native struct layout is accepted.
 * @param value Initialized caller-owned destination, unchanged on refusal.
 * @return Zero on success or 22 for malformed bytes, invalid storage or bounds.
 */
static inline uint32_t
    roswasmc_bounded_2_uwvm_groot_bridge_msg_TextSequence_decode(void const* input, size_t length, roswasmc_bounded_2_uwvm_groot_bridge_msg_TextSequence* value)
{
    roswasmc_bounded_2_uwvm_groot_bridge_msg_TextSequence next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_uwvm_groot_bridge_msg_TextSequence);
    size_t offset = 0;
    if(!value || (length && !input) || length < 16u || length > 1120u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_uwvm_groot_bridge_msg_TextSequence_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERACTION_REQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERACTION_REQUEST_0 != 0x32b4e953UL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERACTION_REQUEST_1 != 0x06332dceUL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERACTION_REQUEST_2 != 0xb5c2df73UL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERACTION_REQUEST_3 != 0x25e48d38UL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERACTION_REQUEST_4 != 0x14ab05b8UL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERACTION_REQUEST_5 != 0x146e7a5aUL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERACTION_REQUEST_6 != 0xf611c546UL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERACTION_REQUEST_7 != 0x2b0dcae2UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERACTION_REQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERACTION_REQUEST_0 0x32b4e953UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERACTION_REQUEST_1 0x06332dceUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERACTION_REQUEST_2 0xb5c2df73UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERACTION_REQUEST_3 0x25e48d38UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERACTION_REQUEST_4 0x14ab05b8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERACTION_REQUEST_5 0x146e7a5aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERACTION_REQUEST_6 0xf611c546UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERACTION_REQUEST_7 0x2b0dcae2UL

/** @brief At most3 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_2_uwvm_groot_bridge_msg_RGBFrame data[3];
} roswasmc_bounded_2_uwvm_groot_bridge_srv_InferAction_Request_video_sequence;

/** @brief At most4 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_2_uwvm_groot_bridge_msg_FloatTensor data[4];
} roswasmc_bounded_2_uwvm_groot_bridge_srv_InferAction_Request_state_sequence;

/** @brief At most2 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_2_uwvm_groot_bridge_msg_TextSequence data[2];
} roswasmc_bounded_2_uwvm_groot_bridge_srv_InferAction_Request_language_sequence;

/** @brief Complete ROS2 uwvm_groot_bridge/srv/InferAction_Request value; no field projects away native data. */
typedef struct roswasmc_bounded_2_uwvm_groot_bridge_srv_InferAction_Request
{
    /** @brief Declared field application_nonce; canonical capacity is part of CODEC_IDENTITY. */
    uint64_t application_nonce;
    /** @brief Declared field video; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_uwvm_groot_bridge_srv_InferAction_Request_video_sequence video;
    /** @brief Declared field state; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_uwvm_groot_bridge_srv_InferAction_Request_state_sequence state;
    /** @brief Declared field language; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_uwvm_groot_bridge_srv_InferAction_Request_language_sequence language;
} roswasmc_bounded_2_uwvm_groot_bridge_srv_InferAction_Request;

# define ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERACTION_REQUEST_MAX_WIRE_BYTES 10296u
# define ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERACTION_REQUEST_MIN_WIRE_BYTES 20u
# define ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERACTION_REQUEST_CODEC_IDENTITY "UWVMROS1_78f85929fb8646e9a92f17cafa3e8296fde42aaf49a56b271531ebad869a0fa6"

/**
 * @brief Validate every initialized field without allocation or ROS effects.
 * @param value Caller-owned complete record; a null pointer is refused.
 * @return One when every field satisfies its canonical bounds, otherwise zero.
 */
static inline int roswasmc_bounded_2_uwvm_groot_bridge_srv_InferAction_Request_valid(roswasmc_bounded_2_uwvm_groot_bridge_srv_InferAction_Request const* value)
{
    if(!value)
        return 0;
    if(value->video.size > 3u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->video.size; ++i)
        {
            if(!roswasmc_bounded_2_uwvm_groot_bridge_msg_RGBFrame_valid(&value->video.data[i]))
                return 0;
        }
    }
    if(value->state.size > 4u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->state.size; ++i)
        {
            if(!roswasmc_bounded_2_uwvm_groot_bridge_msg_FloatTensor_valid(&value->state.data[i]))
                return 0;
        }
    }
    if(value->language.size > 2u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->language.size; ++i)
        {
            if(!roswasmc_bounded_2_uwvm_groot_bridge_msg_TextSequence_valid(&value->language.data[i]))
                return 0;
        }
    }
    return 1;
}

/**
 * @brief Measure the exact complete canonical body in bytes.
 * @param value Caller-owned record already accepted by the matching validator.
 * @return Exact active-field size; inline capacity is never emitted as payload.
 * @pre The complete record has passed its matching valid function.
 */
static inline size_t
    roswasmc_bounded_2_uwvm_groot_bridge_srv_InferAction_Request_wire_size(roswasmc_bounded_2_uwvm_groot_bridge_srv_InferAction_Request const* value)
{
    size_t n = 0;
    (void)value;
    n += 8;
    n += 4;
    if(value->video.size > 3u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->video.size; ++i)
        {
            n += roswasmc_bounded_2_uwvm_groot_bridge_msg_RGBFrame_wire_size(&value->video.data[i]);
        }
    }
    n += 4;
    if(value->state.size > 4u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->state.size; ++i)
        {
            n += roswasmc_bounded_2_uwvm_groot_bridge_msg_FloatTensor_wire_size(&value->state.data[i]);
        }
    }
    n += 4;
    if(value->language.size > 2u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->language.size; ++i)
        {
            n += roswasmc_bounded_2_uwvm_groot_bridge_msg_TextSequence_wire_size(&value->language.data[i]);
        }
    }
    return n;
}

/**
 * @brief Write validated fields into the encoder-owned checked cursor.
 * @param value Complete initialized record already validated by the encoder.
 * @param p Writable buffer covering the premeasured complete body.
 * @param offset Encoder-owned cursor in bytes; advanced by the exact body extent.
 * @pre Capacity and every source/output overlap have already been checked.
 */
static inline void
    roswasmc_bounded_2_uwvm_groot_bridge_srv_InferAction_Request_write_fields(roswasmc_bounded_2_uwvm_groot_bridge_srv_InferAction_Request const* value,
                                                                              unsigned char* p,
                                                                              size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->application_nonce, 8);
    *offset += 8;
    uwvm_bounded_put(p + *offset, value->video.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->video.size; ++i)
        {
            roswasmc_bounded_2_uwvm_groot_bridge_msg_RGBFrame_write_fields(&value->video.data[i], p, offset);
        }
    }
    uwvm_bounded_put(p + *offset, value->state.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->state.size; ++i)
        {
            roswasmc_bounded_2_uwvm_groot_bridge_msg_FloatTensor_write_fields(&value->state.data[i], p, offset);
        }
    }
    uwvm_bounded_put(p + *offset, value->language.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->language.size; ++i)
        {
            roswasmc_bounded_2_uwvm_groot_bridge_msg_TextSequence_write_fields(&value->language.data[i], p, offset);
        }
    }
}

/**
 * @brief Read every field into a private decoder temporary with checked bounds.
 * @param p Read-only n-byte canonical buffer retained by the caller.
 * @param n Exact input extent in bytes.
 * @param offset Decoder-owned checked byte cursor; advanced only within n.
 * @param value Private temporary; a failed read must never publish this value.
 * @return One for a complete valid component or zero on malformed input.
 */
static inline int roswasmc_bounded_2_uwvm_groot_bridge_srv_InferAction_Request_read_fields(unsigned char const* p,
                                                                                           size_t n,
                                                                                           size_t* offset,
                                                                                           roswasmc_bounded_2_uwvm_groot_bridge_srv_InferAction_Request* value)
{
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->application_nonce, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->video.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->video.size > 3u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->video.size; ++i)
        {
            if(!roswasmc_bounded_2_uwvm_groot_bridge_msg_RGBFrame_read_fields(p, n, offset, &value->video.data[i]))
                return 0;
        }
    }
    if(*offset > n || n - *offset < 4)
        return 0;
    value->state.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->state.size > 4u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->state.size; ++i)
        {
            if(!roswasmc_bounded_2_uwvm_groot_bridge_msg_FloatTensor_read_fields(p, n, offset, &value->state.data[i]))
                return 0;
        }
    }
    if(*offset > n || n - *offset < 4)
        return 0;
    value->language.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->language.size > 2u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->language.size; ++i)
        {
            if(!roswasmc_bounded_2_uwvm_groot_bridge_msg_TextSequence_read_fields(p, n, offset, &value->language.data[i]))
                return 0;
        }
    }
    return roswasmc_bounded_2_uwvm_groot_bridge_srv_InferAction_Request_valid(value);
}

/**
 * @brief Encode a complete value transactionally into caller-owned bytes.
 * @details Validation and exact size checks precede every write. The record,
 * output buffer and length result must occupy disjoint live storage.
 * @param value Complete initialized source record, retained by the caller.
 * @param output Writable capacity-byte buffer; null is valid only for an empty body.
 * @param capacity Number of writable bytes, never a message element count.
 * @param length Writable exact-length result; unchanged when encoding is refused.
 * @return Zero on success, 22 for invalid values/storage or 90 for insufficient capacity.
 */
static inline uint32_t
    roswasmc_bounded_2_uwvm_groot_bridge_srv_InferAction_Request_encode(roswasmc_bounded_2_uwvm_groot_bridge_srv_InferAction_Request const* value,
                                                                        void* output,
                                                                        size_t capacity,
                                                                        size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_uwvm_groot_bridge_srv_InferAction_Request_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_uwvm_groot_bridge_srv_InferAction_Request_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_uwvm_groot_bridge_srv_InferAction_Request_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/**
 * @brief Decode an exact complete body before committing the destination.
 * @details Truncation, trailing bytes, nonfinite numbers, malformed UTF-8 and
 * quota violations are refused. No output prefix commits on failure.
 * @param input Read-only length-byte canonical body, disjoint from the result.
 * @param length Exact available byte extent; no native struct layout is accepted.
 * @param value Initialized caller-owned destination, unchanged on refusal.
 * @return Zero on success or 22 for malformed bytes, invalid storage or bounds.
 */
static inline uint32_t roswasmc_bounded_2_uwvm_groot_bridge_srv_InferAction_Request_decode(void const* input,
                                                                                           size_t length,
                                                                                           roswasmc_bounded_2_uwvm_groot_bridge_srv_InferAction_Request* value)
{
    roswasmc_bounded_2_uwvm_groot_bridge_srv_InferAction_Request next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_uwvm_groot_bridge_srv_InferAction_Request);
    size_t offset = 0;
    if(!value || (length && !input) || length < 20u || length > 10296u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_uwvm_groot_bridge_srv_InferAction_Request_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERACTION_RESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERACTION_RESPONSE_0 != 0xeefa2111UL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERACTION_RESPONSE_1 != 0x9bfceb7aUL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERACTION_RESPONSE_2 != 0xe82cff82UL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERACTION_RESPONSE_3 != 0x7bda9878UL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERACTION_RESPONSE_4 != 0x0155e836UL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERACTION_RESPONSE_5 != 0x0e915db0UL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERACTION_RESPONSE_6 != 0x898af386UL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERACTION_RESPONSE_7 != 0x87a7916eUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERACTION_RESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERACTION_RESPONSE_0 0xeefa2111UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERACTION_RESPONSE_1 0x9bfceb7aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERACTION_RESPONSE_2 0xe82cff82UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERACTION_RESPONSE_3 0x7bda9878UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERACTION_RESPONSE_4 0x0155e836UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERACTION_RESPONSE_5 0x0e915db0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERACTION_RESPONSE_6 0x898af386UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERACTION_RESPONSE_7 0x87a7916eUL

/** @brief At most8 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_2_uwvm_groot_bridge_msg_FloatTensor data[8];
} roswasmc_bounded_2_uwvm_groot_bridge_srv_InferAction_Response_action_sequence;

/** @brief Complete ROS2 uwvm_groot_bridge/srv/InferAction_Response value; no field projects away native data. */
typedef struct roswasmc_bounded_2_uwvm_groot_bridge_srv_InferAction_Response
{
    /** @brief Declared field status; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t status;
    /** @brief Declared field application_nonce; canonical capacity is part of CODEC_IDENTITY. */
    uint64_t application_nonce;
    /** @brief Declared field action; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_uwvm_groot_bridge_srv_InferAction_Response_action_sequence action;
    /** @brief Declared field info_is_empty; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t info_is_empty;
} roswasmc_bounded_2_uwvm_groot_bridge_srv_InferAction_Response;

# define ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERACTION_RESPONSE_MAX_WIRE_BYTES 10929u
# define ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERACTION_RESPONSE_MIN_WIRE_BYTES 17u
# define ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERACTION_RESPONSE_CODEC_IDENTITY                                                                          \
     "UWVMROS1_787281a2adea187ae43ff951a414dd7563b3e08318414e5199e1950b8143a3ce"

/**
 * @brief Validate every initialized field without allocation or ROS effects.
 * @param value Caller-owned complete record; a null pointer is refused.
 * @return One when every field satisfies its canonical bounds, otherwise zero.
 */
static inline int
    roswasmc_bounded_2_uwvm_groot_bridge_srv_InferAction_Response_valid(roswasmc_bounded_2_uwvm_groot_bridge_srv_InferAction_Response const* value)
{
    if(!value)
        return 0;
    if(value->action.size > 8u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->action.size; ++i)
        {
            if(!roswasmc_bounded_2_uwvm_groot_bridge_msg_FloatTensor_valid(&value->action.data[i]))
                return 0;
        }
    }
    if(value->info_is_empty > 1)
        return 0;
    return 1;
}

/**
 * @brief Measure the exact complete canonical body in bytes.
 * @param value Caller-owned record already accepted by the matching validator.
 * @return Exact active-field size; inline capacity is never emitted as payload.
 * @pre The complete record has passed its matching valid function.
 */
static inline size_t
    roswasmc_bounded_2_uwvm_groot_bridge_srv_InferAction_Response_wire_size(roswasmc_bounded_2_uwvm_groot_bridge_srv_InferAction_Response const* value)
{
    size_t n = 0;
    (void)value;
    n += 4;
    n += 8;
    n += 4;
    if(value->action.size > 8u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->action.size; ++i)
        {
            n += roswasmc_bounded_2_uwvm_groot_bridge_msg_FloatTensor_wire_size(&value->action.data[i]);
        }
    }
    n += 1;
    return n;
}

/**
 * @brief Write validated fields into the encoder-owned checked cursor.
 * @param value Complete initialized record already validated by the encoder.
 * @param p Writable buffer covering the premeasured complete body.
 * @param offset Encoder-owned cursor in bytes; advanced by the exact body extent.
 * @pre Capacity and every source/output overlap have already been checked.
 */
static inline void
    roswasmc_bounded_2_uwvm_groot_bridge_srv_InferAction_Response_write_fields(roswasmc_bounded_2_uwvm_groot_bridge_srv_InferAction_Response const* value,
                                                                               unsigned char* p,
                                                                               size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->status, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, (uint64_t)value->application_nonce, 8);
    *offset += 8;
    uwvm_bounded_put(p + *offset, value->action.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->action.size; ++i)
        {
            roswasmc_bounded_2_uwvm_groot_bridge_msg_FloatTensor_write_fields(&value->action.data[i], p, offset);
        }
    }
    uwvm_bounded_put(p + *offset, (uint64_t)value->info_is_empty, 1);
    *offset += 1;
}

/**
 * @brief Read every field into a private decoder temporary with checked bounds.
 * @param p Read-only n-byte canonical buffer retained by the caller.
 * @param n Exact input extent in bytes.
 * @param offset Decoder-owned checked byte cursor; advanced only within n.
 * @param value Private temporary; a failed read must never publish this value.
 * @return One for a complete valid component or zero on malformed input.
 */
static inline int
    roswasmc_bounded_2_uwvm_groot_bridge_srv_InferAction_Response_read_fields(unsigned char const* p,
                                                                              size_t n,
                                                                              size_t* offset,
                                                                              roswasmc_bounded_2_uwvm_groot_bridge_srv_InferAction_Response* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->status, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->application_nonce, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->action.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->action.size > 8u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->action.size; ++i)
        {
            if(!roswasmc_bounded_2_uwvm_groot_bridge_msg_FloatTensor_read_fields(p, n, offset, &value->action.data[i]))
                return 0;
        }
    }
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->info_is_empty, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_2_uwvm_groot_bridge_srv_InferAction_Response_valid(value);
}

/**
 * @brief Encode a complete value transactionally into caller-owned bytes.
 * @details Validation and exact size checks precede every write. The record,
 * output buffer and length result must occupy disjoint live storage.
 * @param value Complete initialized source record, retained by the caller.
 * @param output Writable capacity-byte buffer; null is valid only for an empty body.
 * @param capacity Number of writable bytes, never a message element count.
 * @param length Writable exact-length result; unchanged when encoding is refused.
 * @return Zero on success, 22 for invalid values/storage or 90 for insufficient capacity.
 */
static inline uint32_t
    roswasmc_bounded_2_uwvm_groot_bridge_srv_InferAction_Response_encode(roswasmc_bounded_2_uwvm_groot_bridge_srv_InferAction_Response const* value,
                                                                         void* output,
                                                                         size_t capacity,
                                                                         size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_uwvm_groot_bridge_srv_InferAction_Response_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_uwvm_groot_bridge_srv_InferAction_Response_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_uwvm_groot_bridge_srv_InferAction_Response_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/**
 * @brief Decode an exact complete body before committing the destination.
 * @details Truncation, trailing bytes, nonfinite numbers, malformed UTF-8 and
 * quota violations are refused. No output prefix commits on failure.
 * @param input Read-only length-byte canonical body, disjoint from the result.
 * @param length Exact available byte extent; no native struct layout is accepted.
 * @param value Initialized caller-owned destination, unchanged on refusal.
 * @return Zero on success or 22 for malformed bytes, invalid storage or bounds.
 */
static inline uint32_t
    roswasmc_bounded_2_uwvm_groot_bridge_srv_InferAction_Response_decode(void const* input,
                                                                         size_t length,
                                                                         roswasmc_bounded_2_uwvm_groot_bridge_srv_InferAction_Response* value)
{
    roswasmc_bounded_2_uwvm_groot_bridge_srv_InferAction_Response next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_uwvm_groot_bridge_srv_InferAction_Response);
    size_t offset = 0;
    if(!value || (length && !input) || length < 17u || length > 10929u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_uwvm_groot_bridge_srv_InferAction_Response_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_MSG_RGBDESCRIPTOR)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_MSG_RGBDESCRIPTOR_0 != 0xf1acdc72UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_MSG_RGBDESCRIPTOR_1 != 0x68a24495UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_MSG_RGBDESCRIPTOR_2 != 0x3126e240UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_MSG_RGBDESCRIPTOR_3 != 0x3eb76748UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_MSG_RGBDESCRIPTOR_4 != 0x80ed55afUL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_MSG_RGBDESCRIPTOR_5 != 0x9d8c1f62UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_MSG_RGBDESCRIPTOR_6 != 0x5204c499UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_MSG_RGBDESCRIPTOR_7 != 0x2b70d1adUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_MSG_RGBDESCRIPTOR 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_MSG_RGBDESCRIPTOR_0 0xf1acdc72UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_MSG_RGBDESCRIPTOR_1 0x68a24495UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_MSG_RGBDESCRIPTOR_2 0x3126e240UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_MSG_RGBDESCRIPTOR_3 0x3eb76748UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_MSG_RGBDESCRIPTOR_4 0x80ed55afUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_MSG_RGBDESCRIPTOR_5 0x9d8c1f62UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_MSG_RGBDESCRIPTOR_6 0x5204c499UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_MSG_RGBDESCRIPTOR_7 0x2b70d1adUL

/** @brief UTF-8 byte storage for uwvm_groot_bridge/msg/RGBDescriptor.key; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[64];
} roswasmc_bounded_2_uwvm_groot_bridge_msg_RGBDescriptor_key_text;

/** @brief Complete ROS2 uwvm_groot_bridge/msg/RGBDescriptor value; no field projects away native data. */
typedef struct roswasmc_bounded_2_uwvm_groot_bridge_msg_RGBDescriptor
{
    /** @brief Declared field key; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_uwvm_groot_bridge_msg_RGBDescriptor_key_text key;
    /** @brief Declared field shape; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t shape[5];
} roswasmc_bounded_2_uwvm_groot_bridge_msg_RGBDescriptor;

# define ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_MSG_RGBDESCRIPTOR_MAX_WIRE_BYTES 88u
# define ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_MSG_RGBDESCRIPTOR_MIN_WIRE_BYTES 24u
# define ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_MSG_RGBDESCRIPTOR_CODEC_IDENTITY "UWVMROS1_6daaa392f15643aa3afe5c101c6b649dc2e63f38b61d0332309a280fa9b48e40"

/**
 * @brief Validate every initialized field without allocation or ROS effects.
 * @param value Caller-owned complete record; a null pointer is refused.
 * @return One when every field satisfies its canonical bounds, otherwise zero.
 */
static inline int roswasmc_bounded_2_uwvm_groot_bridge_msg_RGBDescriptor_valid(roswasmc_bounded_2_uwvm_groot_bridge_msg_RGBDescriptor const* value)
{
    if(!value)
        return 0;
    if(value->key.size > 64u || !uwvm_bounded_utf8(value->key.data, value->key.size))
        return 0;
    {
        size_t i;
        for(i = 0; i < 5u; ++i)
        {
        }
    }
    return 1;
}

/**
 * @brief Measure the exact complete canonical body in bytes.
 * @param value Caller-owned record already accepted by the matching validator.
 * @return Exact active-field size; inline capacity is never emitted as payload.
 * @pre The complete record has passed its matching valid function.
 */
static inline size_t roswasmc_bounded_2_uwvm_groot_bridge_msg_RGBDescriptor_wire_size(roswasmc_bounded_2_uwvm_groot_bridge_msg_RGBDescriptor const* value)
{
    size_t n = 0;
    (void)value;
    n += 4 + value->key.size;
    {
        size_t i;
        for(i = 0; i < 5u; ++i)
        {
            n += 4;
        }
    }
    return n;
}

/**
 * @brief Write validated fields into the encoder-owned checked cursor.
 * @param value Complete initialized record already validated by the encoder.
 * @param p Writable buffer covering the premeasured complete body.
 * @param offset Encoder-owned cursor in bytes; advanced by the exact body extent.
 * @pre Capacity and every source/output overlap have already been checked.
 */
static inline void roswasmc_bounded_2_uwvm_groot_bridge_msg_RGBDescriptor_write_fields(roswasmc_bounded_2_uwvm_groot_bridge_msg_RGBDescriptor const* value,
                                                                                       unsigned char* p,
                                                                                       size_t* offset)
{
    uwvm_bounded_put(p + *offset, value->key.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->key.data, value->key.size);
    *offset += value->key.size;
    {
        size_t i;
        for(i = 0; i < 5u; ++i)
        {
            uwvm_bounded_put(p + *offset, (uint64_t)value->shape[i], 4);
            *offset += 4;
        }
    }
}

/**
 * @brief Read every field into a private decoder temporary with checked bounds.
 * @param p Read-only n-byte canonical buffer retained by the caller.
 * @param n Exact input extent in bytes.
 * @param offset Decoder-owned checked byte cursor; advanced only within n.
 * @param value Private temporary; a failed read must never publish this value.
 * @return One for a complete valid component or zero on malformed input.
 */
static inline int roswasmc_bounded_2_uwvm_groot_bridge_msg_RGBDescriptor_read_fields(unsigned char const* p,
                                                                                     size_t n,
                                                                                     size_t* offset,
                                                                                     roswasmc_bounded_2_uwvm_groot_bridge_msg_RGBDescriptor* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    value->key.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->key.size > 64u || value->key.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->key.data, p + *offset, value->key.size);
    *offset += value->key.size;
    {
        size_t i;
        for(i = 0; i < 5u; ++i)
        {
            if(*offset > n || n - *offset < 4)
                return 0;
            {
                uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
                uwvm_bounded_copy(&value->shape[i], &bits, 4);
            }
            *offset += 4;
        }
    }
    return roswasmc_bounded_2_uwvm_groot_bridge_msg_RGBDescriptor_valid(value);
}

/**
 * @brief Encode a complete value transactionally into caller-owned bytes.
 * @details Validation and exact size checks precede every write. The record,
 * output buffer and length result must occupy disjoint live storage.
 * @param value Complete initialized source record, retained by the caller.
 * @param output Writable capacity-byte buffer; null is valid only for an empty body.
 * @param capacity Number of writable bytes, never a message element count.
 * @param length Writable exact-length result; unchanged when encoding is refused.
 * @return Zero on success, 22 for invalid values/storage or 90 for insufficient capacity.
 */
static inline uint32_t roswasmc_bounded_2_uwvm_groot_bridge_msg_RGBDescriptor_encode(roswasmc_bounded_2_uwvm_groot_bridge_msg_RGBDescriptor const* value,
                                                                                     void* output,
                                                                                     size_t capacity,
                                                                                     size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_uwvm_groot_bridge_msg_RGBDescriptor_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_uwvm_groot_bridge_msg_RGBDescriptor_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_uwvm_groot_bridge_msg_RGBDescriptor_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/**
 * @brief Decode an exact complete body before committing the destination.
 * @details Truncation, trailing bytes, nonfinite numbers, malformed UTF-8 and
 * quota violations are refused. No output prefix commits on failure.
 * @param input Read-only length-byte canonical body, disjoint from the result.
 * @param length Exact available byte extent; no native struct layout is accepted.
 * @param value Initialized caller-owned destination, unchanged on refusal.
 * @return Zero on success or 22 for malformed bytes, invalid storage or bounds.
 */
static inline uint32_t roswasmc_bounded_2_uwvm_groot_bridge_msg_RGBDescriptor_decode(void const* input,
                                                                                     size_t length,
                                                                                     roswasmc_bounded_2_uwvm_groot_bridge_msg_RGBDescriptor* value)
{
    roswasmc_bounded_2_uwvm_groot_bridge_msg_RGBDescriptor next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_uwvm_groot_bridge_msg_RGBDescriptor);
    size_t offset = 0;
    if(!value || (length && !input) || length < 24u || length > 88u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_uwvm_groot_bridge_msg_RGBDescriptor_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_BEGINOBSERVATION_REQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_BEGINOBSERVATION_REQUEST_0 != 0x104cb740UL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_BEGINOBSERVATION_REQUEST_1 != 0x1085e5b6UL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_BEGINOBSERVATION_REQUEST_2 != 0xdca12e40UL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_BEGINOBSERVATION_REQUEST_3 != 0xf262ce85UL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_BEGINOBSERVATION_REQUEST_4 != 0xe71585ecUL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_BEGINOBSERVATION_REQUEST_5 != 0x172e3f26UL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_BEGINOBSERVATION_REQUEST_6 != 0xf32c4821UL ||                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_BEGINOBSERVATION_REQUEST_7 != 0x1d903fa7UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_BEGINOBSERVATION_REQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_BEGINOBSERVATION_REQUEST_0 0x104cb740UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_BEGINOBSERVATION_REQUEST_1 0x1085e5b6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_BEGINOBSERVATION_REQUEST_2 0xdca12e40UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_BEGINOBSERVATION_REQUEST_3 0xf262ce85UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_BEGINOBSERVATION_REQUEST_4 0xe71585ecUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_BEGINOBSERVATION_REQUEST_5 0x172e3f26UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_BEGINOBSERVATION_REQUEST_6 0xf32c4821UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_BEGINOBSERVATION_REQUEST_7 0x1d903fa7UL

/** @brief At most3 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_2_uwvm_groot_bridge_msg_RGBDescriptor data[3];
} roswasmc_bounded_2_uwvm_groot_bridge_srv_BeginObservation_Request_video_sequence;

/** @brief Complete ROS2 uwvm_groot_bridge/srv/BeginObservation_Request value; no field projects away native data. */
typedef struct roswasmc_bounded_2_uwvm_groot_bridge_srv_BeginObservation_Request
{
    /** @brief Declared field observation_nonce; canonical capacity is part of CODEC_IDENTITY. */
    uint64_t observation_nonce;
    /** @brief Declared field video; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_uwvm_groot_bridge_srv_BeginObservation_Request_video_sequence video;
} roswasmc_bounded_2_uwvm_groot_bridge_srv_BeginObservation_Request;

# define ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_BEGINOBSERVATION_REQUEST_MAX_WIRE_BYTES 276u
# define ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_BEGINOBSERVATION_REQUEST_MIN_WIRE_BYTES 12u
# define ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_BEGINOBSERVATION_REQUEST_CODEC_IDENTITY                                                                      \
     "UWVMROS1_76a3b103328e39f46ea2c1cf47dcc417c110771c2253c4defad577906d6d7ba2"

/**
 * @brief Validate every initialized field without allocation or ROS effects.
 * @param value Caller-owned complete record; a null pointer is refused.
 * @return One when every field satisfies its canonical bounds, otherwise zero.
 */
static inline int
    roswasmc_bounded_2_uwvm_groot_bridge_srv_BeginObservation_Request_valid(roswasmc_bounded_2_uwvm_groot_bridge_srv_BeginObservation_Request const* value)
{
    if(!value)
        return 0;
    if(value->video.size > 3u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->video.size; ++i)
        {
            if(!roswasmc_bounded_2_uwvm_groot_bridge_msg_RGBDescriptor_valid(&value->video.data[i]))
                return 0;
        }
    }
    return 1;
}

/**
 * @brief Measure the exact complete canonical body in bytes.
 * @param value Caller-owned record already accepted by the matching validator.
 * @return Exact active-field size; inline capacity is never emitted as payload.
 * @pre The complete record has passed its matching valid function.
 */
static inline size_t
    roswasmc_bounded_2_uwvm_groot_bridge_srv_BeginObservation_Request_wire_size(roswasmc_bounded_2_uwvm_groot_bridge_srv_BeginObservation_Request const* value)
{
    size_t n = 0;
    (void)value;
    n += 8;
    n += 4;
    if(value->video.size > 3u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->video.size; ++i)
        {
            n += roswasmc_bounded_2_uwvm_groot_bridge_msg_RGBDescriptor_wire_size(&value->video.data[i]);
        }
    }
    return n;
}

/**
 * @brief Write validated fields into the encoder-owned checked cursor.
 * @param value Complete initialized record already validated by the encoder.
 * @param p Writable buffer covering the premeasured complete body.
 * @param offset Encoder-owned cursor in bytes; advanced by the exact body extent.
 * @pre Capacity and every source/output overlap have already been checked.
 */
static inline void roswasmc_bounded_2_uwvm_groot_bridge_srv_BeginObservation_Request_write_fields(
    roswasmc_bounded_2_uwvm_groot_bridge_srv_BeginObservation_Request const* value,
    unsigned char* p,
    size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->observation_nonce, 8);
    *offset += 8;
    uwvm_bounded_put(p + *offset, value->video.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->video.size; ++i)
        {
            roswasmc_bounded_2_uwvm_groot_bridge_msg_RGBDescriptor_write_fields(&value->video.data[i], p, offset);
        }
    }
}

/**
 * @brief Read every field into a private decoder temporary with checked bounds.
 * @param p Read-only n-byte canonical buffer retained by the caller.
 * @param n Exact input extent in bytes.
 * @param offset Decoder-owned checked byte cursor; advanced only within n.
 * @param value Private temporary; a failed read must never publish this value.
 * @return One for a complete valid component or zero on malformed input.
 */
static inline int
    roswasmc_bounded_2_uwvm_groot_bridge_srv_BeginObservation_Request_read_fields(unsigned char const* p,
                                                                                  size_t n,
                                                                                  size_t* offset,
                                                                                  roswasmc_bounded_2_uwvm_groot_bridge_srv_BeginObservation_Request* value)
{
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->observation_nonce, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->video.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->video.size > 3u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->video.size; ++i)
        {
            if(!roswasmc_bounded_2_uwvm_groot_bridge_msg_RGBDescriptor_read_fields(p, n, offset, &value->video.data[i]))
                return 0;
        }
    }
    return roswasmc_bounded_2_uwvm_groot_bridge_srv_BeginObservation_Request_valid(value);
}

/**
 * @brief Encode a complete value transactionally into caller-owned bytes.
 * @details Validation and exact size checks precede every write. The record,
 * output buffer and length result must occupy disjoint live storage.
 * @param value Complete initialized source record, retained by the caller.
 * @param output Writable capacity-byte buffer; null is valid only for an empty body.
 * @param capacity Number of writable bytes, never a message element count.
 * @param length Writable exact-length result; unchanged when encoding is refused.
 * @return Zero on success, 22 for invalid values/storage or 90 for insufficient capacity.
 */
static inline uint32_t
    roswasmc_bounded_2_uwvm_groot_bridge_srv_BeginObservation_Request_encode(roswasmc_bounded_2_uwvm_groot_bridge_srv_BeginObservation_Request const* value,
                                                                             void* output,
                                                                             size_t capacity,
                                                                             size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_uwvm_groot_bridge_srv_BeginObservation_Request_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_uwvm_groot_bridge_srv_BeginObservation_Request_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_uwvm_groot_bridge_srv_BeginObservation_Request_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/**
 * @brief Decode an exact complete body before committing the destination.
 * @details Truncation, trailing bytes, nonfinite numbers, malformed UTF-8 and
 * quota violations are refused. No output prefix commits on failure.
 * @param input Read-only length-byte canonical body, disjoint from the result.
 * @param length Exact available byte extent; no native struct layout is accepted.
 * @param value Initialized caller-owned destination, unchanged on refusal.
 * @return Zero on success or 22 for malformed bytes, invalid storage or bounds.
 */
static inline uint32_t
    roswasmc_bounded_2_uwvm_groot_bridge_srv_BeginObservation_Request_decode(void const* input,
                                                                             size_t length,
                                                                             roswasmc_bounded_2_uwvm_groot_bridge_srv_BeginObservation_Request* value)
{
    roswasmc_bounded_2_uwvm_groot_bridge_srv_BeginObservation_Request next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_uwvm_groot_bridge_srv_BeginObservation_Request);
    size_t offset = 0;
    if(!value || (length && !input) || length < 12u || length > 276u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_uwvm_groot_bridge_srv_BeginObservation_Request_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_BEGINOBSERVATION_RESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_BEGINOBSERVATION_RESPONSE_0 != 0x9eb54349UL ||                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_BEGINOBSERVATION_RESPONSE_1 != 0xe8cbeeddUL ||                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_BEGINOBSERVATION_RESPONSE_2 != 0xe612d8adUL ||                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_BEGINOBSERVATION_RESPONSE_3 != 0x284d2abdUL ||                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_BEGINOBSERVATION_RESPONSE_4 != 0x9eb1350aUL ||                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_BEGINOBSERVATION_RESPONSE_5 != 0xafd3a5e9UL ||                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_BEGINOBSERVATION_RESPONSE_6 != 0x239305cbUL ||                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_BEGINOBSERVATION_RESPONSE_7 != 0x5ba441dfUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_BEGINOBSERVATION_RESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_BEGINOBSERVATION_RESPONSE_0 0x9eb54349UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_BEGINOBSERVATION_RESPONSE_1 0xe8cbeeddUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_BEGINOBSERVATION_RESPONSE_2 0xe612d8adUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_BEGINOBSERVATION_RESPONSE_3 0x284d2abdUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_BEGINOBSERVATION_RESPONSE_4 0x9eb1350aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_BEGINOBSERVATION_RESPONSE_5 0xafd3a5e9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_BEGINOBSERVATION_RESPONSE_6 0x239305cbUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_BEGINOBSERVATION_RESPONSE_7 0x5ba441dfUL

/** @brief Complete ROS2 uwvm_groot_bridge/srv/BeginObservation_Response value; no field projects away native data. */
typedef struct roswasmc_bounded_2_uwvm_groot_bridge_srv_BeginObservation_Response
{
    /** @brief Declared field status; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t status;
    /** @brief Declared field observation_nonce; canonical capacity is part of CODEC_IDENTITY. */
    uint64_t observation_nonce;
} roswasmc_bounded_2_uwvm_groot_bridge_srv_BeginObservation_Response;

# define ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_BEGINOBSERVATION_RESPONSE_MAX_WIRE_BYTES 12u
# define ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_BEGINOBSERVATION_RESPONSE_MIN_WIRE_BYTES 12u
# define ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_BEGINOBSERVATION_RESPONSE_CODEC_IDENTITY                                                                     \
     "UWVMROS1_53141471de18d5d46601139c6ef67c2381f4274030bb05559354f2aa07def049"

/**
 * @brief Validate every initialized field without allocation or ROS effects.
 * @param value Caller-owned complete record; a null pointer is refused.
 * @return One when every field satisfies its canonical bounds, otherwise zero.
 */
static inline int
    roswasmc_bounded_2_uwvm_groot_bridge_srv_BeginObservation_Response_valid(roswasmc_bounded_2_uwvm_groot_bridge_srv_BeginObservation_Response const* value)
{
    if(!value)
        return 0;
    return 1;
}

/**
 * @brief Measure the exact complete canonical body in bytes.
 * @param value Caller-owned record already accepted by the matching validator.
 * @return Exact active-field size; inline capacity is never emitted as payload.
 * @pre The complete record has passed its matching valid function.
 */
static inline size_t roswasmc_bounded_2_uwvm_groot_bridge_srv_BeginObservation_Response_wire_size(
    roswasmc_bounded_2_uwvm_groot_bridge_srv_BeginObservation_Response const* value)
{
    size_t n = 0;
    (void)value;
    n += 4;
    n += 8;
    return n;
}

/**
 * @brief Write validated fields into the encoder-owned checked cursor.
 * @param value Complete initialized record already validated by the encoder.
 * @param p Writable buffer covering the premeasured complete body.
 * @param offset Encoder-owned cursor in bytes; advanced by the exact body extent.
 * @pre Capacity and every source/output overlap have already been checked.
 */
static inline void roswasmc_bounded_2_uwvm_groot_bridge_srv_BeginObservation_Response_write_fields(
    roswasmc_bounded_2_uwvm_groot_bridge_srv_BeginObservation_Response const* value,
    unsigned char* p,
    size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->status, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, (uint64_t)value->observation_nonce, 8);
    *offset += 8;
}

/**
 * @brief Read every field into a private decoder temporary with checked bounds.
 * @param p Read-only n-byte canonical buffer retained by the caller.
 * @param n Exact input extent in bytes.
 * @param offset Decoder-owned checked byte cursor; advanced only within n.
 * @param value Private temporary; a failed read must never publish this value.
 * @return One for a complete valid component or zero on malformed input.
 */
static inline int
    roswasmc_bounded_2_uwvm_groot_bridge_srv_BeginObservation_Response_read_fields(unsigned char const* p,
                                                                                   size_t n,
                                                                                   size_t* offset,
                                                                                   roswasmc_bounded_2_uwvm_groot_bridge_srv_BeginObservation_Response* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->status, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->observation_nonce, &bits, 8);
    }
    *offset += 8;
    return roswasmc_bounded_2_uwvm_groot_bridge_srv_BeginObservation_Response_valid(value);
}

/**
 * @brief Encode a complete value transactionally into caller-owned bytes.
 * @details Validation and exact size checks precede every write. The record,
 * output buffer and length result must occupy disjoint live storage.
 * @param value Complete initialized source record, retained by the caller.
 * @param output Writable capacity-byte buffer; null is valid only for an empty body.
 * @param capacity Number of writable bytes, never a message element count.
 * @param length Writable exact-length result; unchanged when encoding is refused.
 * @return Zero on success, 22 for invalid values/storage or 90 for insufficient capacity.
 */
static inline uint32_t
    roswasmc_bounded_2_uwvm_groot_bridge_srv_BeginObservation_Response_encode(roswasmc_bounded_2_uwvm_groot_bridge_srv_BeginObservation_Response const* value,
                                                                              void* output,
                                                                              size_t capacity,
                                                                              size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_uwvm_groot_bridge_srv_BeginObservation_Response_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_uwvm_groot_bridge_srv_BeginObservation_Response_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_uwvm_groot_bridge_srv_BeginObservation_Response_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/**
 * @brief Decode an exact complete body before committing the destination.
 * @details Truncation, trailing bytes, nonfinite numbers, malformed UTF-8 and
 * quota violations are refused. No output prefix commits on failure.
 * @param input Read-only length-byte canonical body, disjoint from the result.
 * @param length Exact available byte extent; no native struct layout is accepted.
 * @param value Initialized caller-owned destination, unchanged on refusal.
 * @return Zero on success or 22 for malformed bytes, invalid storage or bounds.
 */
static inline uint32_t
    roswasmc_bounded_2_uwvm_groot_bridge_srv_BeginObservation_Response_decode(void const* input,
                                                                              size_t length,
                                                                              roswasmc_bounded_2_uwvm_groot_bridge_srv_BeginObservation_Response* value)
{
    roswasmc_bounded_2_uwvm_groot_bridge_srv_BeginObservation_Response next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_uwvm_groot_bridge_srv_BeginObservation_Response);
    size_t offset = 0;
    if(!value || (length && !input) || length < 12u || length > 12u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_uwvm_groot_bridge_srv_BeginObservation_Response_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_WRITERGBCHUNK_REQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_WRITERGBCHUNK_REQUEST_0 != 0x10092223UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_WRITERGBCHUNK_REQUEST_1 != 0xa1520a59UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_WRITERGBCHUNK_REQUEST_2 != 0x0eb71e24UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_WRITERGBCHUNK_REQUEST_3 != 0x0deb3ee0UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_WRITERGBCHUNK_REQUEST_4 != 0xe7effa68UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_WRITERGBCHUNK_REQUEST_5 != 0xd27df934UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_WRITERGBCHUNK_REQUEST_6 != 0x7389d43eUL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_WRITERGBCHUNK_REQUEST_7 != 0x513c15c9UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_WRITERGBCHUNK_REQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_WRITERGBCHUNK_REQUEST_0 0x10092223UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_WRITERGBCHUNK_REQUEST_1 0xa1520a59UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_WRITERGBCHUNK_REQUEST_2 0x0eb71e24UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_WRITERGBCHUNK_REQUEST_3 0x0deb3ee0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_WRITERGBCHUNK_REQUEST_4 0xe7effa68UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_WRITERGBCHUNK_REQUEST_5 0xd27df934UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_WRITERGBCHUNK_REQUEST_6 0x7389d43eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_WRITERGBCHUNK_REQUEST_7 0x513c15c9UL

/** @brief UTF-8 byte storage for uwvm_groot_bridge/srv/WriteRGBChunk_Request.key; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[64];
} roswasmc_bounded_2_uwvm_groot_bridge_srv_WriteRGBChunk_Request_key_text;

/** @brief At most768 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    uint8_t data[768];
} roswasmc_bounded_2_uwvm_groot_bridge_srv_WriteRGBChunk_Request_pixels_sequence;

/** @brief Complete ROS2 uwvm_groot_bridge/srv/WriteRGBChunk_Request value; no field projects away native data. */
typedef struct roswasmc_bounded_2_uwvm_groot_bridge_srv_WriteRGBChunk_Request
{
    /** @brief Declared field observation_nonce; canonical capacity is part of CODEC_IDENTITY. */
    uint64_t observation_nonce;
    /** @brief Declared field key; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_uwvm_groot_bridge_srv_WriteRGBChunk_Request_key_text key;
    /** @brief Declared field offset; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t offset;
    /** @brief Declared field pixels; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_uwvm_groot_bridge_srv_WriteRGBChunk_Request_pixels_sequence pixels;
} roswasmc_bounded_2_uwvm_groot_bridge_srv_WriteRGBChunk_Request;

# define ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_WRITERGBCHUNK_REQUEST_MAX_WIRE_BYTES 852u
# define ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_WRITERGBCHUNK_REQUEST_MIN_WIRE_BYTES 20u
# define ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_WRITERGBCHUNK_REQUEST_CODEC_IDENTITY                                                                         \
     "UWVMROS1_c7fe45f5da3c73a4d556ad72e0ce5c40d70c531714f0ac841a791404b1048f2c"

/**
 * @brief Validate every initialized field without allocation or ROS effects.
 * @param value Caller-owned complete record; a null pointer is refused.
 * @return One when every field satisfies its canonical bounds, otherwise zero.
 */
static inline int
    roswasmc_bounded_2_uwvm_groot_bridge_srv_WriteRGBChunk_Request_valid(roswasmc_bounded_2_uwvm_groot_bridge_srv_WriteRGBChunk_Request const* value)
{
    if(!value)
        return 0;
    if(value->key.size > 64u || !uwvm_bounded_utf8(value->key.data, value->key.size))
        return 0;
    if(value->pixels.size > 768u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->pixels.size; ++i)
        {
        }
    }
    return 1;
}

/**
 * @brief Measure the exact complete canonical body in bytes.
 * @param value Caller-owned record already accepted by the matching validator.
 * @return Exact active-field size; inline capacity is never emitted as payload.
 * @pre The complete record has passed its matching valid function.
 */
static inline size_t
    roswasmc_bounded_2_uwvm_groot_bridge_srv_WriteRGBChunk_Request_wire_size(roswasmc_bounded_2_uwvm_groot_bridge_srv_WriteRGBChunk_Request const* value)
{
    size_t n = 0;
    (void)value;
    n += 8;
    n += 4 + value->key.size;
    n += 4;
    n += 4;
    if(value->pixels.size > 768u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->pixels.size; ++i)
        {
            n += 1;
        }
    }
    return n;
}

/**
 * @brief Write validated fields into the encoder-owned checked cursor.
 * @param value Complete initialized record already validated by the encoder.
 * @param p Writable buffer covering the premeasured complete body.
 * @param offset Encoder-owned cursor in bytes; advanced by the exact body extent.
 * @pre Capacity and every source/output overlap have already been checked.
 */
static inline void
    roswasmc_bounded_2_uwvm_groot_bridge_srv_WriteRGBChunk_Request_write_fields(roswasmc_bounded_2_uwvm_groot_bridge_srv_WriteRGBChunk_Request const* value,
                                                                                unsigned char* p,
                                                                                size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->observation_nonce, 8);
    *offset += 8;
    uwvm_bounded_put(p + *offset, value->key.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->key.data, value->key.size);
    *offset += value->key.size;
    uwvm_bounded_put(p + *offset, (uint64_t)value->offset, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, value->pixels.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->pixels.size; ++i)
        {
            uwvm_bounded_put(p + *offset, (uint64_t)value->pixels.data[i], 1);
            *offset += 1;
        }
    }
}

/**
 * @brief Read every field into a private decoder temporary with checked bounds.
 * @param p Read-only n-byte canonical buffer retained by the caller.
 * @param n Exact input extent in bytes.
 * @param offset Decoder-owned checked byte cursor; advanced only within n.
 * @param value Private temporary; a failed read must never publish this value.
 * @return One for a complete valid component or zero on malformed input.
 */
static inline int
    roswasmc_bounded_2_uwvm_groot_bridge_srv_WriteRGBChunk_Request_read_fields(unsigned char const* p,
                                                                               size_t n,
                                                                               size_t* offset,
                                                                               roswasmc_bounded_2_uwvm_groot_bridge_srv_WriteRGBChunk_Request* value)
{
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->observation_nonce, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->key.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->key.size > 64u || value->key.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->key.data, p + *offset, value->key.size);
    *offset += value->key.size;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->offset, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->pixels.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->pixels.size > 768u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->pixels.size; ++i)
        {
            if(*offset > n || n - *offset < 1)
                return 0;
            {
                uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
                uwvm_bounded_copy(&value->pixels.data[i], &bits, 1);
            }
            *offset += 1;
        }
    }
    return roswasmc_bounded_2_uwvm_groot_bridge_srv_WriteRGBChunk_Request_valid(value);
}

/**
 * @brief Encode a complete value transactionally into caller-owned bytes.
 * @details Validation and exact size checks precede every write. The record,
 * output buffer and length result must occupy disjoint live storage.
 * @param value Complete initialized source record, retained by the caller.
 * @param output Writable capacity-byte buffer; null is valid only for an empty body.
 * @param capacity Number of writable bytes, never a message element count.
 * @param length Writable exact-length result; unchanged when encoding is refused.
 * @return Zero on success, 22 for invalid values/storage or 90 for insufficient capacity.
 */
static inline uint32_t
    roswasmc_bounded_2_uwvm_groot_bridge_srv_WriteRGBChunk_Request_encode(roswasmc_bounded_2_uwvm_groot_bridge_srv_WriteRGBChunk_Request const* value,
                                                                          void* output,
                                                                          size_t capacity,
                                                                          size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_uwvm_groot_bridge_srv_WriteRGBChunk_Request_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_uwvm_groot_bridge_srv_WriteRGBChunk_Request_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_uwvm_groot_bridge_srv_WriteRGBChunk_Request_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/**
 * @brief Decode an exact complete body before committing the destination.
 * @details Truncation, trailing bytes, nonfinite numbers, malformed UTF-8 and
 * quota violations are refused. No output prefix commits on failure.
 * @param input Read-only length-byte canonical body, disjoint from the result.
 * @param length Exact available byte extent; no native struct layout is accepted.
 * @param value Initialized caller-owned destination, unchanged on refusal.
 * @return Zero on success or 22 for malformed bytes, invalid storage or bounds.
 */
static inline uint32_t
    roswasmc_bounded_2_uwvm_groot_bridge_srv_WriteRGBChunk_Request_decode(void const* input,
                                                                          size_t length,
                                                                          roswasmc_bounded_2_uwvm_groot_bridge_srv_WriteRGBChunk_Request* value)
{
    roswasmc_bounded_2_uwvm_groot_bridge_srv_WriteRGBChunk_Request next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_uwvm_groot_bridge_srv_WriteRGBChunk_Request);
    size_t offset = 0;
    if(!value || (length && !input) || length < 20u || length > 852u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_uwvm_groot_bridge_srv_WriteRGBChunk_Request_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_WRITERGBCHUNK_RESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_WRITERGBCHUNK_RESPONSE_0 != 0x55a18d8bUL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_WRITERGBCHUNK_RESPONSE_1 != 0xf8b8d7f4UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_WRITERGBCHUNK_RESPONSE_2 != 0x0c54938fUL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_WRITERGBCHUNK_RESPONSE_3 != 0x2100baa4UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_WRITERGBCHUNK_RESPONSE_4 != 0x18b722d9UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_WRITERGBCHUNK_RESPONSE_5 != 0x568cd204UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_WRITERGBCHUNK_RESPONSE_6 != 0x9761f004UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_WRITERGBCHUNK_RESPONSE_7 != 0xba847b21UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_WRITERGBCHUNK_RESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_WRITERGBCHUNK_RESPONSE_0 0x55a18d8bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_WRITERGBCHUNK_RESPONSE_1 0xf8b8d7f4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_WRITERGBCHUNK_RESPONSE_2 0x0c54938fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_WRITERGBCHUNK_RESPONSE_3 0x2100baa4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_WRITERGBCHUNK_RESPONSE_4 0x18b722d9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_WRITERGBCHUNK_RESPONSE_5 0x568cd204UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_WRITERGBCHUNK_RESPONSE_6 0x9761f004UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_WRITERGBCHUNK_RESPONSE_7 0xba847b21UL

/** @brief Complete ROS2 uwvm_groot_bridge/srv/WriteRGBChunk_Response value; no field projects away native data. */
typedef struct roswasmc_bounded_2_uwvm_groot_bridge_srv_WriteRGBChunk_Response
{
    /** @brief Declared field status; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t status;
    /** @brief Declared field observation_nonce; canonical capacity is part of CODEC_IDENTITY. */
    uint64_t observation_nonce;
    /** @brief Declared field accepted_bytes; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t accepted_bytes;
} roswasmc_bounded_2_uwvm_groot_bridge_srv_WriteRGBChunk_Response;

# define ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_WRITERGBCHUNK_RESPONSE_MAX_WIRE_BYTES 16u
# define ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_WRITERGBCHUNK_RESPONSE_MIN_WIRE_BYTES 16u
# define ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_WRITERGBCHUNK_RESPONSE_CODEC_IDENTITY                                                                        \
     "UWVMROS1_4c279e0701b59c05f0eb185c1990b4e6a0bb1550ca638b04b60b31143e11efba"

/**
 * @brief Validate every initialized field without allocation or ROS effects.
 * @param value Caller-owned complete record; a null pointer is refused.
 * @return One when every field satisfies its canonical bounds, otherwise zero.
 */
static inline int
    roswasmc_bounded_2_uwvm_groot_bridge_srv_WriteRGBChunk_Response_valid(roswasmc_bounded_2_uwvm_groot_bridge_srv_WriteRGBChunk_Response const* value)
{
    if(!value)
        return 0;
    return 1;
}

/**
 * @brief Measure the exact complete canonical body in bytes.
 * @param value Caller-owned record already accepted by the matching validator.
 * @return Exact active-field size; inline capacity is never emitted as payload.
 * @pre The complete record has passed its matching valid function.
 */
static inline size_t
    roswasmc_bounded_2_uwvm_groot_bridge_srv_WriteRGBChunk_Response_wire_size(roswasmc_bounded_2_uwvm_groot_bridge_srv_WriteRGBChunk_Response const* value)
{
    size_t n = 0;
    (void)value;
    n += 4;
    n += 8;
    n += 4;
    return n;
}

/**
 * @brief Write validated fields into the encoder-owned checked cursor.
 * @param value Complete initialized record already validated by the encoder.
 * @param p Writable buffer covering the premeasured complete body.
 * @param offset Encoder-owned cursor in bytes; advanced by the exact body extent.
 * @pre Capacity and every source/output overlap have already been checked.
 */
static inline void
    roswasmc_bounded_2_uwvm_groot_bridge_srv_WriteRGBChunk_Response_write_fields(roswasmc_bounded_2_uwvm_groot_bridge_srv_WriteRGBChunk_Response const* value,
                                                                                 unsigned char* p,
                                                                                 size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->status, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, (uint64_t)value->observation_nonce, 8);
    *offset += 8;
    uwvm_bounded_put(p + *offset, (uint64_t)value->accepted_bytes, 4);
    *offset += 4;
}

/**
 * @brief Read every field into a private decoder temporary with checked bounds.
 * @param p Read-only n-byte canonical buffer retained by the caller.
 * @param n Exact input extent in bytes.
 * @param offset Decoder-owned checked byte cursor; advanced only within n.
 * @param value Private temporary; a failed read must never publish this value.
 * @return One for a complete valid component or zero on malformed input.
 */
static inline int
    roswasmc_bounded_2_uwvm_groot_bridge_srv_WriteRGBChunk_Response_read_fields(unsigned char const* p,
                                                                                size_t n,
                                                                                size_t* offset,
                                                                                roswasmc_bounded_2_uwvm_groot_bridge_srv_WriteRGBChunk_Response* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->status, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->observation_nonce, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->accepted_bytes, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_2_uwvm_groot_bridge_srv_WriteRGBChunk_Response_valid(value);
}

/**
 * @brief Encode a complete value transactionally into caller-owned bytes.
 * @details Validation and exact size checks precede every write. The record,
 * output buffer and length result must occupy disjoint live storage.
 * @param value Complete initialized source record, retained by the caller.
 * @param output Writable capacity-byte buffer; null is valid only for an empty body.
 * @param capacity Number of writable bytes, never a message element count.
 * @param length Writable exact-length result; unchanged when encoding is refused.
 * @return Zero on success, 22 for invalid values/storage or 90 for insufficient capacity.
 */
static inline uint32_t
    roswasmc_bounded_2_uwvm_groot_bridge_srv_WriteRGBChunk_Response_encode(roswasmc_bounded_2_uwvm_groot_bridge_srv_WriteRGBChunk_Response const* value,
                                                                           void* output,
                                                                           size_t capacity,
                                                                           size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_uwvm_groot_bridge_srv_WriteRGBChunk_Response_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_uwvm_groot_bridge_srv_WriteRGBChunk_Response_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_uwvm_groot_bridge_srv_WriteRGBChunk_Response_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/**
 * @brief Decode an exact complete body before committing the destination.
 * @details Truncation, trailing bytes, nonfinite numbers, malformed UTF-8 and
 * quota violations are refused. No output prefix commits on failure.
 * @param input Read-only length-byte canonical body, disjoint from the result.
 * @param length Exact available byte extent; no native struct layout is accepted.
 * @param value Initialized caller-owned destination, unchanged on refusal.
 * @return Zero on success or 22 for malformed bytes, invalid storage or bounds.
 */
static inline uint32_t
    roswasmc_bounded_2_uwvm_groot_bridge_srv_WriteRGBChunk_Response_decode(void const* input,
                                                                           size_t length,
                                                                           roswasmc_bounded_2_uwvm_groot_bridge_srv_WriteRGBChunk_Response* value)
{
    roswasmc_bounded_2_uwvm_groot_bridge_srv_WriteRGBChunk_Response next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_uwvm_groot_bridge_srv_WriteRGBChunk_Response);
    size_t offset = 0;
    if(!value || (length && !input) || length < 16u || length > 16u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_uwvm_groot_bridge_srv_WriteRGBChunk_Response_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_RELEASEOBSERVATION_REQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_RELEASEOBSERVATION_REQUEST_0 != 0xe2dc4efaUL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_RELEASEOBSERVATION_REQUEST_1 != 0x2ff32e6bUL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_RELEASEOBSERVATION_REQUEST_2 != 0xd0454fb5UL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_RELEASEOBSERVATION_REQUEST_3 != 0x04f3d189UL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_RELEASEOBSERVATION_REQUEST_4 != 0x870528b9UL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_RELEASEOBSERVATION_REQUEST_5 != 0x74d2c414UL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_RELEASEOBSERVATION_REQUEST_6 != 0xd3931ab8UL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_RELEASEOBSERVATION_REQUEST_7 != 0x9bb4fae6UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_RELEASEOBSERVATION_REQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_RELEASEOBSERVATION_REQUEST_0 0xe2dc4efaUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_RELEASEOBSERVATION_REQUEST_1 0x2ff32e6bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_RELEASEOBSERVATION_REQUEST_2 0xd0454fb5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_RELEASEOBSERVATION_REQUEST_3 0x04f3d189UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_RELEASEOBSERVATION_REQUEST_4 0x870528b9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_RELEASEOBSERVATION_REQUEST_5 0x74d2c414UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_RELEASEOBSERVATION_REQUEST_6 0xd3931ab8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_RELEASEOBSERVATION_REQUEST_7 0x9bb4fae6UL

/** @brief Complete ROS2 uwvm_groot_bridge/srv/ReleaseObservation_Request value; no field projects away native data. */
typedef struct roswasmc_bounded_2_uwvm_groot_bridge_srv_ReleaseObservation_Request
{
    /** @brief Declared field observation_nonce; canonical capacity is part of CODEC_IDENTITY. */
    uint64_t observation_nonce;
} roswasmc_bounded_2_uwvm_groot_bridge_srv_ReleaseObservation_Request;

# define ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_RELEASEOBSERVATION_REQUEST_MAX_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_RELEASEOBSERVATION_REQUEST_MIN_WIRE_BYTES 8u
# define ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_RELEASEOBSERVATION_REQUEST_CODEC_IDENTITY                                                                    \
     "UWVMROS1_dae7e73133b73414ed9d85bf3bf3bbc699f84976dbce9b12f68a5d710b3190c5"

/**
 * @brief Validate every initialized field without allocation or ROS effects.
 * @param value Caller-owned complete record; a null pointer is refused.
 * @return One when every field satisfies its canonical bounds, otherwise zero.
 */
static inline int
    roswasmc_bounded_2_uwvm_groot_bridge_srv_ReleaseObservation_Request_valid(roswasmc_bounded_2_uwvm_groot_bridge_srv_ReleaseObservation_Request const* value)
{
    if(!value)
        return 0;
    return 1;
}

/**
 * @brief Measure the exact complete canonical body in bytes.
 * @param value Caller-owned record already accepted by the matching validator.
 * @return Exact active-field size; inline capacity is never emitted as payload.
 * @pre The complete record has passed its matching valid function.
 */
static inline size_t roswasmc_bounded_2_uwvm_groot_bridge_srv_ReleaseObservation_Request_wire_size(
    roswasmc_bounded_2_uwvm_groot_bridge_srv_ReleaseObservation_Request const* value)
{
    size_t n = 0;
    (void)value;
    n += 8;
    return n;
}

/**
 * @brief Write validated fields into the encoder-owned checked cursor.
 * @param value Complete initialized record already validated by the encoder.
 * @param p Writable buffer covering the premeasured complete body.
 * @param offset Encoder-owned cursor in bytes; advanced by the exact body extent.
 * @pre Capacity and every source/output overlap have already been checked.
 */
static inline void roswasmc_bounded_2_uwvm_groot_bridge_srv_ReleaseObservation_Request_write_fields(
    roswasmc_bounded_2_uwvm_groot_bridge_srv_ReleaseObservation_Request const* value,
    unsigned char* p,
    size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->observation_nonce, 8);
    *offset += 8;
}

/**
 * @brief Read every field into a private decoder temporary with checked bounds.
 * @param p Read-only n-byte canonical buffer retained by the caller.
 * @param n Exact input extent in bytes.
 * @param offset Decoder-owned checked byte cursor; advanced only within n.
 * @param value Private temporary; a failed read must never publish this value.
 * @return One for a complete valid component or zero on malformed input.
 */
static inline int
    roswasmc_bounded_2_uwvm_groot_bridge_srv_ReleaseObservation_Request_read_fields(unsigned char const* p,
                                                                                    size_t n,
                                                                                    size_t* offset,
                                                                                    roswasmc_bounded_2_uwvm_groot_bridge_srv_ReleaseObservation_Request* value)
{
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->observation_nonce, &bits, 8);
    }
    *offset += 8;
    return roswasmc_bounded_2_uwvm_groot_bridge_srv_ReleaseObservation_Request_valid(value);
}

/**
 * @brief Encode a complete value transactionally into caller-owned bytes.
 * @details Validation and exact size checks precede every write. The record,
 * output buffer and length result must occupy disjoint live storage.
 * @param value Complete initialized source record, retained by the caller.
 * @param output Writable capacity-byte buffer; null is valid only for an empty body.
 * @param capacity Number of writable bytes, never a message element count.
 * @param length Writable exact-length result; unchanged when encoding is refused.
 * @return Zero on success, 22 for invalid values/storage or 90 for insufficient capacity.
 */
static inline uint32_t
    roswasmc_bounded_2_uwvm_groot_bridge_srv_ReleaseObservation_Request_encode(roswasmc_bounded_2_uwvm_groot_bridge_srv_ReleaseObservation_Request const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_uwvm_groot_bridge_srv_ReleaseObservation_Request_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_uwvm_groot_bridge_srv_ReleaseObservation_Request_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_uwvm_groot_bridge_srv_ReleaseObservation_Request_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/**
 * @brief Decode an exact complete body before committing the destination.
 * @details Truncation, trailing bytes, nonfinite numbers, malformed UTF-8 and
 * quota violations are refused. No output prefix commits on failure.
 * @param input Read-only length-byte canonical body, disjoint from the result.
 * @param length Exact available byte extent; no native struct layout is accepted.
 * @param value Initialized caller-owned destination, unchanged on refusal.
 * @return Zero on success or 22 for malformed bytes, invalid storage or bounds.
 */
static inline uint32_t
    roswasmc_bounded_2_uwvm_groot_bridge_srv_ReleaseObservation_Request_decode(void const* input,
                                                                               size_t length,
                                                                               roswasmc_bounded_2_uwvm_groot_bridge_srv_ReleaseObservation_Request* value)
{
    roswasmc_bounded_2_uwvm_groot_bridge_srv_ReleaseObservation_Request next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_uwvm_groot_bridge_srv_ReleaseObservation_Request);
    size_t offset = 0;
    if(!value || (length && !input) || length < 8u || length > 8u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_uwvm_groot_bridge_srv_ReleaseObservation_Request_read_fields((unsigned char const*)input, length, &offset, &next) ||
       offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_RELEASEOBSERVATION_RESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_RELEASEOBSERVATION_RESPONSE_0 != 0x138c4d28UL ||                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_RELEASEOBSERVATION_RESPONSE_1 != 0xbc6d967aUL ||                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_RELEASEOBSERVATION_RESPONSE_2 != 0xbc3fc6b1UL ||                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_RELEASEOBSERVATION_RESPONSE_3 != 0x57f95a9fUL ||                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_RELEASEOBSERVATION_RESPONSE_4 != 0x02773f55UL ||                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_RELEASEOBSERVATION_RESPONSE_5 != 0x63c79a02UL ||                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_RELEASEOBSERVATION_RESPONSE_6 != 0x96634d6bUL ||                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_RELEASEOBSERVATION_RESPONSE_7 != 0x7fe26576UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_RELEASEOBSERVATION_RESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_RELEASEOBSERVATION_RESPONSE_0 0x138c4d28UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_RELEASEOBSERVATION_RESPONSE_1 0xbc6d967aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_RELEASEOBSERVATION_RESPONSE_2 0xbc3fc6b1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_RELEASEOBSERVATION_RESPONSE_3 0x57f95a9fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_RELEASEOBSERVATION_RESPONSE_4 0x02773f55UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_RELEASEOBSERVATION_RESPONSE_5 0x63c79a02UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_RELEASEOBSERVATION_RESPONSE_6 0x96634d6bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_RELEASEOBSERVATION_RESPONSE_7 0x7fe26576UL

/** @brief Complete ROS2 uwvm_groot_bridge/srv/ReleaseObservation_Response value; no field projects away native data. */
typedef struct roswasmc_bounded_2_uwvm_groot_bridge_srv_ReleaseObservation_Response
{
    /** @brief Declared field status; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t status;
    /** @brief Declared field observation_nonce; canonical capacity is part of CODEC_IDENTITY. */
    uint64_t observation_nonce;
} roswasmc_bounded_2_uwvm_groot_bridge_srv_ReleaseObservation_Response;

# define ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_RELEASEOBSERVATION_RESPONSE_MAX_WIRE_BYTES 12u
# define ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_RELEASEOBSERVATION_RESPONSE_MIN_WIRE_BYTES 12u
# define ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_RELEASEOBSERVATION_RESPONSE_CODEC_IDENTITY                                                                   \
     "UWVMROS1_776da57c3952c647fc2c3f18855cb889747d84d6824222c3b8be267db1688d69"

/**
 * @brief Validate every initialized field without allocation or ROS effects.
 * @param value Caller-owned complete record; a null pointer is refused.
 * @return One when every field satisfies its canonical bounds, otherwise zero.
 */
static inline int roswasmc_bounded_2_uwvm_groot_bridge_srv_ReleaseObservation_Response_valid(
    roswasmc_bounded_2_uwvm_groot_bridge_srv_ReleaseObservation_Response const* value)
{
    if(!value)
        return 0;
    return 1;
}

/**
 * @brief Measure the exact complete canonical body in bytes.
 * @param value Caller-owned record already accepted by the matching validator.
 * @return Exact active-field size; inline capacity is never emitted as payload.
 * @pre The complete record has passed its matching valid function.
 */
static inline size_t roswasmc_bounded_2_uwvm_groot_bridge_srv_ReleaseObservation_Response_wire_size(
    roswasmc_bounded_2_uwvm_groot_bridge_srv_ReleaseObservation_Response const* value)
{
    size_t n = 0;
    (void)value;
    n += 4;
    n += 8;
    return n;
}

/**
 * @brief Write validated fields into the encoder-owned checked cursor.
 * @param value Complete initialized record already validated by the encoder.
 * @param p Writable buffer covering the premeasured complete body.
 * @param offset Encoder-owned cursor in bytes; advanced by the exact body extent.
 * @pre Capacity and every source/output overlap have already been checked.
 */
static inline void roswasmc_bounded_2_uwvm_groot_bridge_srv_ReleaseObservation_Response_write_fields(
    roswasmc_bounded_2_uwvm_groot_bridge_srv_ReleaseObservation_Response const* value,
    unsigned char* p,
    size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->status, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, (uint64_t)value->observation_nonce, 8);
    *offset += 8;
}

/**
 * @brief Read every field into a private decoder temporary with checked bounds.
 * @param p Read-only n-byte canonical buffer retained by the caller.
 * @param n Exact input extent in bytes.
 * @param offset Decoder-owned checked byte cursor; advanced only within n.
 * @param value Private temporary; a failed read must never publish this value.
 * @return One for a complete valid component or zero on malformed input.
 */
static inline int roswasmc_bounded_2_uwvm_groot_bridge_srv_ReleaseObservation_Response_read_fields(
    unsigned char const* p,
    size_t n,
    size_t* offset,
    roswasmc_bounded_2_uwvm_groot_bridge_srv_ReleaseObservation_Response* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->status, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->observation_nonce, &bits, 8);
    }
    *offset += 8;
    return roswasmc_bounded_2_uwvm_groot_bridge_srv_ReleaseObservation_Response_valid(value);
}

/**
 * @brief Encode a complete value transactionally into caller-owned bytes.
 * @details Validation and exact size checks precede every write. The record,
 * output buffer and length result must occupy disjoint live storage.
 * @param value Complete initialized source record, retained by the caller.
 * @param output Writable capacity-byte buffer; null is valid only for an empty body.
 * @param capacity Number of writable bytes, never a message element count.
 * @param length Writable exact-length result; unchanged when encoding is refused.
 * @return Zero on success, 22 for invalid values/storage or 90 for insufficient capacity.
 */
static inline uint32_t roswasmc_bounded_2_uwvm_groot_bridge_srv_ReleaseObservation_Response_encode(
    roswasmc_bounded_2_uwvm_groot_bridge_srv_ReleaseObservation_Response const* value,
    void* output,
    size_t capacity,
    size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_uwvm_groot_bridge_srv_ReleaseObservation_Response_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_uwvm_groot_bridge_srv_ReleaseObservation_Response_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_uwvm_groot_bridge_srv_ReleaseObservation_Response_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/**
 * @brief Decode an exact complete body before committing the destination.
 * @details Truncation, trailing bytes, nonfinite numbers, malformed UTF-8 and
 * quota violations are refused. No output prefix commits on failure.
 * @param input Read-only length-byte canonical body, disjoint from the result.
 * @param length Exact available byte extent; no native struct layout is accepted.
 * @param value Initialized caller-owned destination, unchanged on refusal.
 * @return Zero on success or 22 for malformed bytes, invalid storage or bounds.
 */
static inline uint32_t
    roswasmc_bounded_2_uwvm_groot_bridge_srv_ReleaseObservation_Response_decode(void const* input,
                                                                                size_t length,
                                                                                roswasmc_bounded_2_uwvm_groot_bridge_srv_ReleaseObservation_Response* value)
{
    roswasmc_bounded_2_uwvm_groot_bridge_srv_ReleaseObservation_Response next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_uwvm_groot_bridge_srv_ReleaseObservation_Response);
    size_t offset = 0;
    if(!value || (length && !input) || length < 12u || length > 12u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_uwvm_groot_bridge_srv_ReleaseObservation_Response_read_fields((unsigned char const*)input, length, &offset, &next) ||
       offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERUPLOADEDACTION_REQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERUPLOADEDACTION_REQUEST_0 != 0x680be7bdUL ||                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERUPLOADEDACTION_REQUEST_1 != 0x65cadfffUL ||                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERUPLOADEDACTION_REQUEST_2 != 0xee6314ecUL ||                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERUPLOADEDACTION_REQUEST_3 != 0x17279626UL ||                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERUPLOADEDACTION_REQUEST_4 != 0x3786e433UL ||                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERUPLOADEDACTION_REQUEST_5 != 0xd658db49UL ||                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERUPLOADEDACTION_REQUEST_6 != 0x52b1f9efUL ||                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERUPLOADEDACTION_REQUEST_7 != 0xbde1c7b9UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERUPLOADEDACTION_REQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERUPLOADEDACTION_REQUEST_0 0x680be7bdUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERUPLOADEDACTION_REQUEST_1 0x65cadfffUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERUPLOADEDACTION_REQUEST_2 0xee6314ecUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERUPLOADEDACTION_REQUEST_3 0x17279626UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERUPLOADEDACTION_REQUEST_4 0x3786e433UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERUPLOADEDACTION_REQUEST_5 0xd658db49UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERUPLOADEDACTION_REQUEST_6 0x52b1f9efUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERUPLOADEDACTION_REQUEST_7 0xbde1c7b9UL

/** @brief At most4 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_2_uwvm_groot_bridge_msg_FloatTensor data[4];
} roswasmc_bounded_2_uwvm_groot_bridge_srv_InferUploadedAction_Request_state_sequence;

/** @brief At most2 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_2_uwvm_groot_bridge_msg_TextSequence data[2];
} roswasmc_bounded_2_uwvm_groot_bridge_srv_InferUploadedAction_Request_language_sequence;

/** @brief Complete ROS2 uwvm_groot_bridge/srv/InferUploadedAction_Request value; no field projects away native data. */
typedef struct roswasmc_bounded_2_uwvm_groot_bridge_srv_InferUploadedAction_Request
{
    /** @brief Declared field application_nonce; canonical capacity is part of CODEC_IDENTITY. */
    uint64_t application_nonce;
    /** @brief Declared field observation_nonce; canonical capacity is part of CODEC_IDENTITY. */
    uint64_t observation_nonce;
    /** @brief Declared field state; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_uwvm_groot_bridge_srv_InferUploadedAction_Request_state_sequence state;
    /** @brief Declared field language; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_uwvm_groot_bridge_srv_InferUploadedAction_Request_language_sequence language;
} roswasmc_bounded_2_uwvm_groot_bridge_srv_InferUploadedAction_Request;

# define ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERUPLOADEDACTION_REQUEST_MAX_WIRE_BYTES 7720u
# define ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERUPLOADEDACTION_REQUEST_MIN_WIRE_BYTES 24u
# define ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERUPLOADEDACTION_REQUEST_CODEC_IDENTITY                                                                   \
     "UWVMROS1_fab202af4445441157f6ac5249ed0eeb3035f5c88c467fb363a2ef024a5c524d"

/**
 * @brief Validate every initialized field without allocation or ROS effects.
 * @param value Caller-owned complete record; a null pointer is refused.
 * @return One when every field satisfies its canonical bounds, otherwise zero.
 */
static inline int roswasmc_bounded_2_uwvm_groot_bridge_srv_InferUploadedAction_Request_valid(
    roswasmc_bounded_2_uwvm_groot_bridge_srv_InferUploadedAction_Request const* value)
{
    if(!value)
        return 0;
    if(value->state.size > 4u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->state.size; ++i)
        {
            if(!roswasmc_bounded_2_uwvm_groot_bridge_msg_FloatTensor_valid(&value->state.data[i]))
                return 0;
        }
    }
    if(value->language.size > 2u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->language.size; ++i)
        {
            if(!roswasmc_bounded_2_uwvm_groot_bridge_msg_TextSequence_valid(&value->language.data[i]))
                return 0;
        }
    }
    return 1;
}

/**
 * @brief Measure the exact complete canonical body in bytes.
 * @param value Caller-owned record already accepted by the matching validator.
 * @return Exact active-field size; inline capacity is never emitted as payload.
 * @pre The complete record has passed its matching valid function.
 */
static inline size_t roswasmc_bounded_2_uwvm_groot_bridge_srv_InferUploadedAction_Request_wire_size(
    roswasmc_bounded_2_uwvm_groot_bridge_srv_InferUploadedAction_Request const* value)
{
    size_t n = 0;
    (void)value;
    n += 8;
    n += 8;
    n += 4;
    if(value->state.size > 4u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->state.size; ++i)
        {
            n += roswasmc_bounded_2_uwvm_groot_bridge_msg_FloatTensor_wire_size(&value->state.data[i]);
        }
    }
    n += 4;
    if(value->language.size > 2u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->language.size; ++i)
        {
            n += roswasmc_bounded_2_uwvm_groot_bridge_msg_TextSequence_wire_size(&value->language.data[i]);
        }
    }
    return n;
}

/**
 * @brief Write validated fields into the encoder-owned checked cursor.
 * @param value Complete initialized record already validated by the encoder.
 * @param p Writable buffer covering the premeasured complete body.
 * @param offset Encoder-owned cursor in bytes; advanced by the exact body extent.
 * @pre Capacity and every source/output overlap have already been checked.
 */
static inline void roswasmc_bounded_2_uwvm_groot_bridge_srv_InferUploadedAction_Request_write_fields(
    roswasmc_bounded_2_uwvm_groot_bridge_srv_InferUploadedAction_Request const* value,
    unsigned char* p,
    size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->application_nonce, 8);
    *offset += 8;
    uwvm_bounded_put(p + *offset, (uint64_t)value->observation_nonce, 8);
    *offset += 8;
    uwvm_bounded_put(p + *offset, value->state.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->state.size; ++i)
        {
            roswasmc_bounded_2_uwvm_groot_bridge_msg_FloatTensor_write_fields(&value->state.data[i], p, offset);
        }
    }
    uwvm_bounded_put(p + *offset, value->language.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->language.size; ++i)
        {
            roswasmc_bounded_2_uwvm_groot_bridge_msg_TextSequence_write_fields(&value->language.data[i], p, offset);
        }
    }
}

/**
 * @brief Read every field into a private decoder temporary with checked bounds.
 * @param p Read-only n-byte canonical buffer retained by the caller.
 * @param n Exact input extent in bytes.
 * @param offset Decoder-owned checked byte cursor; advanced only within n.
 * @param value Private temporary; a failed read must never publish this value.
 * @return One for a complete valid component or zero on malformed input.
 */
static inline int roswasmc_bounded_2_uwvm_groot_bridge_srv_InferUploadedAction_Request_read_fields(
    unsigned char const* p,
    size_t n,
    size_t* offset,
    roswasmc_bounded_2_uwvm_groot_bridge_srv_InferUploadedAction_Request* value)
{
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->application_nonce, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->observation_nonce, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->state.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->state.size > 4u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->state.size; ++i)
        {
            if(!roswasmc_bounded_2_uwvm_groot_bridge_msg_FloatTensor_read_fields(p, n, offset, &value->state.data[i]))
                return 0;
        }
    }
    if(*offset > n || n - *offset < 4)
        return 0;
    value->language.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->language.size > 2u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->language.size; ++i)
        {
            if(!roswasmc_bounded_2_uwvm_groot_bridge_msg_TextSequence_read_fields(p, n, offset, &value->language.data[i]))
                return 0;
        }
    }
    return roswasmc_bounded_2_uwvm_groot_bridge_srv_InferUploadedAction_Request_valid(value);
}

/**
 * @brief Encode a complete value transactionally into caller-owned bytes.
 * @details Validation and exact size checks precede every write. The record,
 * output buffer and length result must occupy disjoint live storage.
 * @param value Complete initialized source record, retained by the caller.
 * @param output Writable capacity-byte buffer; null is valid only for an empty body.
 * @param capacity Number of writable bytes, never a message element count.
 * @param length Writable exact-length result; unchanged when encoding is refused.
 * @return Zero on success, 22 for invalid values/storage or 90 for insufficient capacity.
 */
static inline uint32_t roswasmc_bounded_2_uwvm_groot_bridge_srv_InferUploadedAction_Request_encode(
    roswasmc_bounded_2_uwvm_groot_bridge_srv_InferUploadedAction_Request const* value,
    void* output,
    size_t capacity,
    size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_uwvm_groot_bridge_srv_InferUploadedAction_Request_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_uwvm_groot_bridge_srv_InferUploadedAction_Request_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_uwvm_groot_bridge_srv_InferUploadedAction_Request_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/**
 * @brief Decode an exact complete body before committing the destination.
 * @details Truncation, trailing bytes, nonfinite numbers, malformed UTF-8 and
 * quota violations are refused. No output prefix commits on failure.
 * @param input Read-only length-byte canonical body, disjoint from the result.
 * @param length Exact available byte extent; no native struct layout is accepted.
 * @param value Initialized caller-owned destination, unchanged on refusal.
 * @return Zero on success or 22 for malformed bytes, invalid storage or bounds.
 */
static inline uint32_t
    roswasmc_bounded_2_uwvm_groot_bridge_srv_InferUploadedAction_Request_decode(void const* input,
                                                                                size_t length,
                                                                                roswasmc_bounded_2_uwvm_groot_bridge_srv_InferUploadedAction_Request* value)
{
    roswasmc_bounded_2_uwvm_groot_bridge_srv_InferUploadedAction_Request next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_uwvm_groot_bridge_srv_InferUploadedAction_Request);
    size_t offset = 0;
    if(!value || (length && !input) || length < 24u || length > 7720u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_uwvm_groot_bridge_srv_InferUploadedAction_Request_read_fields((unsigned char const*)input, length, &offset, &next) ||
       offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERUPLOADEDACTION_RESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERUPLOADEDACTION_RESPONSE_0 != 0x9e6ff885UL ||                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERUPLOADEDACTION_RESPONSE_1 != 0x226008b5UL ||                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERUPLOADEDACTION_RESPONSE_2 != 0xffeb430dUL ||                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERUPLOADEDACTION_RESPONSE_3 != 0xdf6a77eeUL ||                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERUPLOADEDACTION_RESPONSE_4 != 0x4cdfcc3dUL ||                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERUPLOADEDACTION_RESPONSE_5 != 0x4cb7793cUL ||                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERUPLOADEDACTION_RESPONSE_6 != 0x50bddf05UL ||                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERUPLOADEDACTION_RESPONSE_7 != 0xa015fb89UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERUPLOADEDACTION_RESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERUPLOADEDACTION_RESPONSE_0 0x9e6ff885UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERUPLOADEDACTION_RESPONSE_1 0x226008b5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERUPLOADEDACTION_RESPONSE_2 0xffeb430dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERUPLOADEDACTION_RESPONSE_3 0xdf6a77eeUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERUPLOADEDACTION_RESPONSE_4 0x4cdfcc3dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERUPLOADEDACTION_RESPONSE_5 0x4cb7793cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERUPLOADEDACTION_RESPONSE_6 0x50bddf05UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERUPLOADEDACTION_RESPONSE_7 0xa015fb89UL

/** @brief At most8 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_2_uwvm_groot_bridge_msg_FloatTensor data[8];
} roswasmc_bounded_2_uwvm_groot_bridge_srv_InferUploadedAction_Response_action_sequence;

/** @brief Complete ROS2 uwvm_groot_bridge/srv/InferUploadedAction_Response value; no field projects away native data.
 */
typedef struct roswasmc_bounded_2_uwvm_groot_bridge_srv_InferUploadedAction_Response
{
    /** @brief Declared field status; canonical capacity is part of CODEC_IDENTITY. */
    uint32_t status;
    /** @brief Declared field application_nonce; canonical capacity is part of CODEC_IDENTITY. */
    uint64_t application_nonce;
    /** @brief Declared field action; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_uwvm_groot_bridge_srv_InferUploadedAction_Response_action_sequence action;
    /** @brief Declared field info_is_empty; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t info_is_empty;
} roswasmc_bounded_2_uwvm_groot_bridge_srv_InferUploadedAction_Response;

# define ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERUPLOADEDACTION_RESPONSE_MAX_WIRE_BYTES 10929u
# define ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERUPLOADEDACTION_RESPONSE_MIN_WIRE_BYTES 17u
# define ROSWASMC_BOUNDED_2_UWVM_GROOT_BRIDGE_SRV_INFERUPLOADEDACTION_RESPONSE_CODEC_IDENTITY                                                                  \
     "UWVMROS1_b8ae8113a9cd0e2d51ffc78d81f45e047cc03282bb9e4b82dd3a2571be29d93e"

/**
 * @brief Validate every initialized field without allocation or ROS effects.
 * @param value Caller-owned complete record; a null pointer is refused.
 * @return One when every field satisfies its canonical bounds, otherwise zero.
 */
static inline int roswasmc_bounded_2_uwvm_groot_bridge_srv_InferUploadedAction_Response_valid(
    roswasmc_bounded_2_uwvm_groot_bridge_srv_InferUploadedAction_Response const* value)
{
    if(!value)
        return 0;
    if(value->action.size > 8u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->action.size; ++i)
        {
            if(!roswasmc_bounded_2_uwvm_groot_bridge_msg_FloatTensor_valid(&value->action.data[i]))
                return 0;
        }
    }
    if(value->info_is_empty > 1)
        return 0;
    return 1;
}

/**
 * @brief Measure the exact complete canonical body in bytes.
 * @param value Caller-owned record already accepted by the matching validator.
 * @return Exact active-field size; inline capacity is never emitted as payload.
 * @pre The complete record has passed its matching valid function.
 */
static inline size_t roswasmc_bounded_2_uwvm_groot_bridge_srv_InferUploadedAction_Response_wire_size(
    roswasmc_bounded_2_uwvm_groot_bridge_srv_InferUploadedAction_Response const* value)
{
    size_t n = 0;
    (void)value;
    n += 4;
    n += 8;
    n += 4;
    if(value->action.size > 8u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->action.size; ++i)
        {
            n += roswasmc_bounded_2_uwvm_groot_bridge_msg_FloatTensor_wire_size(&value->action.data[i]);
        }
    }
    n += 1;
    return n;
}

/**
 * @brief Write validated fields into the encoder-owned checked cursor.
 * @param value Complete initialized record already validated by the encoder.
 * @param p Writable buffer covering the premeasured complete body.
 * @param offset Encoder-owned cursor in bytes; advanced by the exact body extent.
 * @pre Capacity and every source/output overlap have already been checked.
 */
static inline void roswasmc_bounded_2_uwvm_groot_bridge_srv_InferUploadedAction_Response_write_fields(
    roswasmc_bounded_2_uwvm_groot_bridge_srv_InferUploadedAction_Response const* value,
    unsigned char* p,
    size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->status, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, (uint64_t)value->application_nonce, 8);
    *offset += 8;
    uwvm_bounded_put(p + *offset, value->action.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->action.size; ++i)
        {
            roswasmc_bounded_2_uwvm_groot_bridge_msg_FloatTensor_write_fields(&value->action.data[i], p, offset);
        }
    }
    uwvm_bounded_put(p + *offset, (uint64_t)value->info_is_empty, 1);
    *offset += 1;
}

/**
 * @brief Read every field into a private decoder temporary with checked bounds.
 * @param p Read-only n-byte canonical buffer retained by the caller.
 * @param n Exact input extent in bytes.
 * @param offset Decoder-owned checked byte cursor; advanced only within n.
 * @param value Private temporary; a failed read must never publish this value.
 * @return One for a complete valid component or zero on malformed input.
 */
static inline int roswasmc_bounded_2_uwvm_groot_bridge_srv_InferUploadedAction_Response_read_fields(
    unsigned char const* p,
    size_t n,
    size_t* offset,
    roswasmc_bounded_2_uwvm_groot_bridge_srv_InferUploadedAction_Response* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->status, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->application_nonce, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->action.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->action.size > 8u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->action.size; ++i)
        {
            if(!roswasmc_bounded_2_uwvm_groot_bridge_msg_FloatTensor_read_fields(p, n, offset, &value->action.data[i]))
                return 0;
        }
    }
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->info_is_empty, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_2_uwvm_groot_bridge_srv_InferUploadedAction_Response_valid(value);
}

/**
 * @brief Encode a complete value transactionally into caller-owned bytes.
 * @details Validation and exact size checks precede every write. The record,
 * output buffer and length result must occupy disjoint live storage.
 * @param value Complete initialized source record, retained by the caller.
 * @param output Writable capacity-byte buffer; null is valid only for an empty body.
 * @param capacity Number of writable bytes, never a message element count.
 * @param length Writable exact-length result; unchanged when encoding is refused.
 * @return Zero on success, 22 for invalid values/storage or 90 for insufficient capacity.
 */
static inline uint32_t roswasmc_bounded_2_uwvm_groot_bridge_srv_InferUploadedAction_Response_encode(
    roswasmc_bounded_2_uwvm_groot_bridge_srv_InferUploadedAction_Response const* value,
    void* output,
    size_t capacity,
    size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_uwvm_groot_bridge_srv_InferUploadedAction_Response_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_uwvm_groot_bridge_srv_InferUploadedAction_Response_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_uwvm_groot_bridge_srv_InferUploadedAction_Response_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/**
 * @brief Decode an exact complete body before committing the destination.
 * @details Truncation, trailing bytes, nonfinite numbers, malformed UTF-8 and
 * quota violations are refused. No output prefix commits on failure.
 * @param input Read-only length-byte canonical body, disjoint from the result.
 * @param length Exact available byte extent; no native struct layout is accepted.
 * @param value Initialized caller-owned destination, unchanged on refusal.
 * @return Zero on success or 22 for malformed bytes, invalid storage or bounds.
 */
static inline uint32_t
    roswasmc_bounded_2_uwvm_groot_bridge_srv_InferUploadedAction_Response_decode(void const* input,
                                                                                 size_t length,
                                                                                 roswasmc_bounded_2_uwvm_groot_bridge_srv_InferUploadedAction_Response* value)
{
    roswasmc_bounded_2_uwvm_groot_bridge_srv_InferUploadedAction_Response next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_2_uwvm_groot_bridge_srv_InferUploadedAction_Response);
    size_t offset = 0;
    if(!value || (length && !input) || length < 17u || length > 10929u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_uwvm_groot_bridge_srv_InferUploadedAction_Response_read_fields((unsigned char const*)input, length, &offset, &next) ||
       offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#undef UWVM_BOUNDED_ASSERT
#endif
