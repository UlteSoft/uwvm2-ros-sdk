/**
 * @file bounded_records.h
 * @brief Preserve every complete selected canonical Unitree record inline.
 * @details Every dynamic field has finite caller-owned capacity. Encoding validates and measures before output.
 * Decoding commits one complete temporary only after validation; partial records and overlapping buffers are
 * refused.
 */

#ifndef UWVM_ROS_BOUNDED_RECORDS_200EDB31C26CA03D4EDE4792F4BBCBB47C8FFA0AC302E8002F9DB20C5BC03767
#define UWVM_ROS_BOUNDED_RECORDS_200EDB31C26CA03D4EDE4792F4BBCBB47C8FFA0AC302E8002F9DB20C5BC03767
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

/**
 * @brief Copy exactly one initialized primitive or UTF-8 byte extent.
 * @details Internal synchronous helper. Caller establishes sufficient nonoverlapping storage before use; this
 * function performs no bounds check or ROS operation.
 * @param[out] out Exclusive writable caller storage of at least n bytes.
 * @param[in] in Immutable initialized input of at least n bytes.
 * @param[in] n Exact byte count; zero copies no bytes.
 * @ownership Both buffers remain caller-owned and stable through return.
 */
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

/**
 * @brief Read an unsigned little-endian primitive without native structure padding.
 * @details Internal caller establishes the complete initialized extent before entry. No allocation, pointer
 * retention, or transport operation occurs.
 * @param[in] p Immutable initialized input of at least n bytes.
 * @param[in] n Primitive byte width, from 1 through 8.
 * @return Exact zero-extended unsigned bit pattern.
 */
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

/**
 * @brief Write an unsigned little-endian primitive without native structure padding.
 * @details Internal caller establishes sufficient exclusive output before entry. No allocation, pointer
 * retention, or transport operation occurs.
 * @param[out] p Exclusive caller-owned writable storage of at least n bytes.
 * @param[in] v Unsigned primitive bit pattern.
 * @param[in] n Primitive byte width, from 1 through 8.
 */
inline static void uwvm_bounded_put(unsigned char* p, uint64_t v, unsigned n)
{
    unsigned i;
    for(i = 0; i < n; ++i)
    {
        p[i] = (unsigned char)(v >> (8 * i));
    }
}

/**
 * @brief Validate the complete strict Unicode scalar UTF-8 extent.
 * @details Reject embedded NUL, malformed continuations, overlong forms, surrogates, and out-of-range
 * codepoints. The immutable input is borrowed synchronously with no allocation.
 * @param[in] p Initialized immutable input of n bytes.
 * @param[in] n Exact active byte extent; zero is a valid empty string.
 * @return Nonzero only when every byte is admitted by the canonical string profile.
 */
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

/**
 * @brief Refuse intersecting caller storage extents before transactional codec writes.
 * @details Address-range arithmetic checks prevent overflow. This helper does not dereference either input and
 * retains no pointer.
 * @param[in] a First caller storage base.
 * @param[in] an First storage extent in bytes.
 * @param[in] b Second caller storage base.
 * @param[in] bn Second storage extent in bytes.
 * @return Nonzero for overlap or an unrepresentable address extent; zero for disjoint extents.
 */
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
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUESTIDENTITY)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUESTIDENTITY_0 != 0x7a7db2faUL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUESTIDENTITY_1 != 0x9083c265UL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUESTIDENTITY_2 != 0x15c17b1eUL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUESTIDENTITY_3 != 0xaf88cf19UL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUESTIDENTITY_4 != 0xaf1e09faUL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUESTIDENTITY_5 != 0xa2ee77c0UL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUESTIDENTITY_6 != 0x4c7171a0UL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUESTIDENTITY_7 != 0x9944b8baUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUESTIDENTITY 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUESTIDENTITY_0 0x7a7db2faUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUESTIDENTITY_1 0x9083c265UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUESTIDENTITY_2 0x15c17b1eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUESTIDENTITY_3 0xaf88cf19UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUESTIDENTITY_4 0xaf1e09faUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUESTIDENTITY_5 0xa2ee77c0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUESTIDENTITY_6 0x4c7171a0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUESTIDENTITY_7 0x9944b8baUL

/**
 * @brief Complete ROS 2 unitree_api/msg/RequestIdentity value.
 * @details All 2 declared fields are retained in source order. The canonical representation occupies 16..16
 * bytes and is identified by UWVMROS1_e3daab89abcdaf6526511a189cfcc0c78aaebe8aefc53814ba77f6eb80cdc4e2.
 * @native Original selected identity: RIHS01_912fcf308a7cd6e27ea3aeea02515f587fa666b76af1963660429995f0e381c6.
 * Compilation of matching native traits is a separate qualification.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_2_unitree_api_msg_RequestIdentity
{
    /** @brief Declared field id; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_api/msg/RequestIdentity.id: int64.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_apiMsgRequestIdentity; share/platform/ros/rs/API-CONTRACT.md
     */
    int64_t id;
    /** @brief Declared field api_id; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_api/msg/RequestIdentity.api_id: int64.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_apiMsgRequestIdentity; share/platform/ros/rs/API-CONTRACT.md
     */
    int64_t api_id;
} roswasmc_bounded_2_unitree_api_msg_RequestIdentity;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUESTIDENTITY_MAX_WIRE_BYTES 16u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUESTIDENTITY_MIN_WIRE_BYTES 16u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUESTIDENTITY_CODEC_IDENTITY "UWVMROS1_e3daab89abcdaf6526511a189cfcc0c78aaebe8aefc53814ba77f6eb80cdc4e2"

/**
 * @brief Validate every field of unitree_api/msg/RequestIdentity.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static int roswasmc_bounded_2_unitree_api_msg_RequestIdentity_valid(roswasmc_bounded_2_unitree_api_msg_RequestIdentity const* value)
{
    if(!value)
    {
        return 0;
    }
    return 1;
}

/**
 * @brief Measure the complete active canonical extent of unitree_api/msg/RequestIdentity.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static size_t roswasmc_bounded_2_unitree_api_msg_RequestIdentity_wire_size(roswasmc_bounded_2_unitree_api_msg_RequestIdentity const* value)
{
    size_t n = 0;
    n += 8;
    n += 8;
    return n;
}

/**
 * @brief Append all fields of unitree_api/msg/RequestIdentity to an internal canonical buffer.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete prevalidated immutable record.
 * @param[out] p Sufficient exclusive output storage established by the public encoder.
 * @param[in,out] offset Exclusive initialized writer cursor.
 * @return No value; internal caller guarantees the measured capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static void roswasmc_bounded_2_unitree_api_msg_RequestIdentity_write_fields(roswasmc_bounded_2_unitree_api_msg_RequestIdentity const* value,
                                                                                   unsigned char* p,
                                                                                   size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->id, 8);
    *offset += 8;
    uwvm_bounded_put(p + *offset, (uint64_t)value->api_id, 8);
    *offset += 8;
}

/**
 * @brief Decode the full ordered field prefix of unitree_api/msg/RequestIdentity.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] p Borrowed canonical bytes, stable through return.
 * @param[in] n Available input extent in bytes.
 * @param[in,out] offset Exclusive initialized reader cursor.
 * @param[out] value Private temporary record; discard it on failure.
 * @return Nonzero only after complete prefix validation; enclosing fields may remain unread.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static int roswasmc_bounded_2_unitree_api_msg_RequestIdentity_read_fields(unsigned char const* p,
                                                                                 size_t n,
                                                                                 size_t* offset,
                                                                                 roswasmc_bounded_2_unitree_api_msg_RequestIdentity* value)
{
    if(*offset > n || n - *offset < 8)
    {
        return 0;
    }
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->id, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 8)
    {
        return 0;
    }
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->api_id, &bits, 8);
    }
    *offset += 8;
    return roswasmc_bounded_2_unitree_api_msg_RequestIdentity_valid(value);
}

/**
 * @brief Encode the complete unitree_api/msg/RequestIdentity record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record.
 * @param[out] output Exclusive caller-owned byte storage, disjoint from value and length.
 * @param[in] capacity Available writable byte count.
 * @param[out] length Exact initialized byte count, written only on success.
 * @return Status 0 on success, 22 for invalid/overlapping values, or 90 for insufficient capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static uint32_t roswasmc_bounded_2_unitree_api_msg_RequestIdentity_encode(roswasmc_bounded_2_unitree_api_msg_RequestIdentity const* value,
                                                                                 void* output,
                                                                                 size_t capacity,
                                                                                 size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_unitree_api_msg_RequestIdentity_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_unitree_api_msg_RequestIdentity_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_unitree_api_msg_RequestIdentity_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/**
 * @brief Decode exactly one complete unitree_api/msg/RequestIdentity record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] input Immutable complete canonical body, disjoint from value.
 * @param[in] length Exact input byte count; trailing bytes are refused.
 * @param[out] value Caller-owned complete record; unchanged on every refusal.
 * @return Status 0 on complete success, otherwise 22; no partial record is exposed.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static uint32_t
    roswasmc_bounded_2_unitree_api_msg_RequestIdentity_decode(void const* input, size_t length, roswasmc_bounded_2_unitree_api_msg_RequestIdentity* value)
{
    roswasmc_bounded_2_unitree_api_msg_RequestIdentity next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 16u || length > 16u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_unitree_api_msg_RequestIdentity_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUESTLEASE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUESTLEASE_0 != 0x7d7aaaf1UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUESTLEASE_1 != 0xa8fe2cd3UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUESTLEASE_2 != 0x42f8a4d0UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUESTLEASE_3 != 0x2017c960UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUESTLEASE_4 != 0xc8665300UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUESTLEASE_5 != 0x5e81b80cUL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUESTLEASE_6 != 0xcdf8f254UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUESTLEASE_7 != 0x6dcab9c1UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUESTLEASE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUESTLEASE_0 0x7d7aaaf1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUESTLEASE_1 0xa8fe2cd3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUESTLEASE_2 0x42f8a4d0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUESTLEASE_3 0x2017c960UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUESTLEASE_4 0xc8665300UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUESTLEASE_5 0x5e81b80cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUESTLEASE_6 0xcdf8f254UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUESTLEASE_7 0x6dcab9c1UL

/**
 * @brief Complete ROS 2 unitree_api/msg/RequestLease value.
 * @details All 1 declared fields are retained in source order. The canonical representation occupies 8..8 bytes
 * and is identified by UWVMROS1_3dcb1fe2998c880e2d9196967da172ccd9060ebc7f6d2feb8682dc3d104c2e6e.
 * @native Original selected identity: RIHS01_16b5c2257d5280a095e3e4fe26a48e782e294fa3d68760ce38599260a344bf4e.
 * Compilation of matching native traits is a separate qualification.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_2_unitree_api_msg_RequestLease
{
    /** @brief Declared field id; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_api/msg/RequestLease.id: int64.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_apiMsgRequestLease; share/platform/ros/rs/API-CONTRACT.md
     */
    int64_t id;
} roswasmc_bounded_2_unitree_api_msg_RequestLease;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUESTLEASE_MAX_WIRE_BYTES 8u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUESTLEASE_MIN_WIRE_BYTES 8u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUESTLEASE_CODEC_IDENTITY "UWVMROS1_3dcb1fe2998c880e2d9196967da172ccd9060ebc7f6d2feb8682dc3d104c2e6e"

/**
 * @brief Validate every field of unitree_api/msg/RequestLease.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static int roswasmc_bounded_2_unitree_api_msg_RequestLease_valid(roswasmc_bounded_2_unitree_api_msg_RequestLease const* value)
{
    if(!value)
    {
        return 0;
    }
    return 1;
}

/**
 * @brief Measure the complete active canonical extent of unitree_api/msg/RequestLease.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static size_t roswasmc_bounded_2_unitree_api_msg_RequestLease_wire_size(roswasmc_bounded_2_unitree_api_msg_RequestLease const* value)
{
    size_t n = 0;
    n += 8;
    return n;
}

/**
 * @brief Append all fields of unitree_api/msg/RequestLease to an internal canonical buffer.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete prevalidated immutable record.
 * @param[out] p Sufficient exclusive output storage established by the public encoder.
 * @param[in,out] offset Exclusive initialized writer cursor.
 * @return No value; internal caller guarantees the measured capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static void
    roswasmc_bounded_2_unitree_api_msg_RequestLease_write_fields(roswasmc_bounded_2_unitree_api_msg_RequestLease const* value, unsigned char* p, size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->id, 8);
    *offset += 8;
}

/**
 * @brief Decode the full ordered field prefix of unitree_api/msg/RequestLease.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] p Borrowed canonical bytes, stable through return.
 * @param[in] n Available input extent in bytes.
 * @param[in,out] offset Exclusive initialized reader cursor.
 * @param[out] value Private temporary record; discard it on failure.
 * @return Nonzero only after complete prefix validation; enclosing fields may remain unread.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static int roswasmc_bounded_2_unitree_api_msg_RequestLease_read_fields(unsigned char const* p,
                                                                              size_t n,
                                                                              size_t* offset,
                                                                              roswasmc_bounded_2_unitree_api_msg_RequestLease* value)
{
    if(*offset > n || n - *offset < 8)
    {
        return 0;
    }
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->id, &bits, 8);
    }
    *offset += 8;
    return roswasmc_bounded_2_unitree_api_msg_RequestLease_valid(value);
}

/**
 * @brief Encode the complete unitree_api/msg/RequestLease record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record.
 * @param[out] output Exclusive caller-owned byte storage, disjoint from value and length.
 * @param[in] capacity Available writable byte count.
 * @param[out] length Exact initialized byte count, written only on success.
 * @return Status 0 on success, 22 for invalid/overlapping values, or 90 for insufficient capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static uint32_t roswasmc_bounded_2_unitree_api_msg_RequestLease_encode(roswasmc_bounded_2_unitree_api_msg_RequestLease const* value,
                                                                              void* output,
                                                                              size_t capacity,
                                                                              size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_unitree_api_msg_RequestLease_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_unitree_api_msg_RequestLease_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_unitree_api_msg_RequestLease_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/**
 * @brief Decode exactly one complete unitree_api/msg/RequestLease record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] input Immutable complete canonical body, disjoint from value.
 * @param[in] length Exact input byte count; trailing bytes are refused.
 * @param[out] value Caller-owned complete record; unchanged on every refusal.
 * @return Status 0 on complete success, otherwise 22; no partial record is exposed.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static uint32_t
    roswasmc_bounded_2_unitree_api_msg_RequestLease_decode(void const* input, size_t length, roswasmc_bounded_2_unitree_api_msg_RequestLease* value)
{
    roswasmc_bounded_2_unitree_api_msg_RequestLease next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 8u || length > 8u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_unitree_api_msg_RequestLease_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUESTPOLICY)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUESTPOLICY_0 != 0x66e41a99UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUESTPOLICY_1 != 0x1eaa11cfUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUESTPOLICY_2 != 0x9ef0f848UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUESTPOLICY_3 != 0x7cf2ef96UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUESTPOLICY_4 != 0xfaa45b9cUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUESTPOLICY_5 != 0xb2fa8eb5UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUESTPOLICY_6 != 0xb0430fe3UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUESTPOLICY_7 != 0xe2c98fc7UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUESTPOLICY 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUESTPOLICY_0 0x66e41a99UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUESTPOLICY_1 0x1eaa11cfUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUESTPOLICY_2 0x9ef0f848UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUESTPOLICY_3 0x7cf2ef96UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUESTPOLICY_4 0xfaa45b9cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUESTPOLICY_5 0xb2fa8eb5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUESTPOLICY_6 0xb0430fe3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUESTPOLICY_7 0xe2c98fc7UL

/**
 * @brief Complete ROS 2 unitree_api/msg/RequestPolicy value.
 * @details All 2 declared fields are retained in source order. The canonical representation occupies 5..5 bytes
 * and is identified by UWVMROS1_61f1a1eafec2f694d24cf798963dcb5a0c8f40e9791db5a502f0736cc8587bb8.
 * @native Original selected identity: RIHS01_742c3612b991be55430d1847af4afb2f119069f2e16e3a2143c6352a94ef35e4.
 * Compilation of matching native traits is a separate qualification.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_2_unitree_api_msg_RequestPolicy
{
    /** @brief Declared field priority; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_api/msg/RequestPolicy.priority: int32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_apiMsgRequestPolicy; share/platform/ros/rs/API-CONTRACT.md
     */
    int32_t priority;
    /** @brief Declared field noreply; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_api/msg/RequestPolicy.noreply: bool.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_apiMsgRequestPolicy; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t noreply;
} roswasmc_bounded_2_unitree_api_msg_RequestPolicy;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUESTPOLICY_MAX_WIRE_BYTES 5u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUESTPOLICY_MIN_WIRE_BYTES 5u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUESTPOLICY_CODEC_IDENTITY "UWVMROS1_61f1a1eafec2f694d24cf798963dcb5a0c8f40e9791db5a502f0736cc8587bb8"

/**
 * @brief Validate every field of unitree_api/msg/RequestPolicy.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static int roswasmc_bounded_2_unitree_api_msg_RequestPolicy_valid(roswasmc_bounded_2_unitree_api_msg_RequestPolicy const* value)
{
    if(!value)
    {
        return 0;
    }
    if(value->noreply > 1)
    {
        return 0;
    }
    return 1;
}

/**
 * @brief Measure the complete active canonical extent of unitree_api/msg/RequestPolicy.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static size_t roswasmc_bounded_2_unitree_api_msg_RequestPolicy_wire_size(roswasmc_bounded_2_unitree_api_msg_RequestPolicy const* value)
{
    size_t n = 0;
    n += 4;
    n += 1;
    return n;
}

/**
 * @brief Append all fields of unitree_api/msg/RequestPolicy to an internal canonical buffer.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete prevalidated immutable record.
 * @param[out] p Sufficient exclusive output storage established by the public encoder.
 * @param[in,out] offset Exclusive initialized writer cursor.
 * @return No value; internal caller guarantees the measured capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static void roswasmc_bounded_2_unitree_api_msg_RequestPolicy_write_fields(roswasmc_bounded_2_unitree_api_msg_RequestPolicy const* value,
                                                                                 unsigned char* p,
                                                                                 size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->priority, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, (uint64_t)value->noreply, 1);
    *offset += 1;
}

/**
 * @brief Decode the full ordered field prefix of unitree_api/msg/RequestPolicy.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] p Borrowed canonical bytes, stable through return.
 * @param[in] n Available input extent in bytes.
 * @param[in,out] offset Exclusive initialized reader cursor.
 * @param[out] value Private temporary record; discard it on failure.
 * @return Nonzero only after complete prefix validation; enclosing fields may remain unread.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static int roswasmc_bounded_2_unitree_api_msg_RequestPolicy_read_fields(unsigned char const* p,
                                                                               size_t n,
                                                                               size_t* offset,
                                                                               roswasmc_bounded_2_unitree_api_msg_RequestPolicy* value)
{
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->priority, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->noreply, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_2_unitree_api_msg_RequestPolicy_valid(value);
}

/**
 * @brief Encode the complete unitree_api/msg/RequestPolicy record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record.
 * @param[out] output Exclusive caller-owned byte storage, disjoint from value and length.
 * @param[in] capacity Available writable byte count.
 * @param[out] length Exact initialized byte count, written only on success.
 * @return Status 0 on success, 22 for invalid/overlapping values, or 90 for insufficient capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static uint32_t roswasmc_bounded_2_unitree_api_msg_RequestPolicy_encode(roswasmc_bounded_2_unitree_api_msg_RequestPolicy const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_unitree_api_msg_RequestPolicy_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_unitree_api_msg_RequestPolicy_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_unitree_api_msg_RequestPolicy_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/**
 * @brief Decode exactly one complete unitree_api/msg/RequestPolicy record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] input Immutable complete canonical body, disjoint from value.
 * @param[in] length Exact input byte count; trailing bytes are refused.
 * @param[out] value Caller-owned complete record; unchanged on every refusal.
 * @return Status 0 on complete success, otherwise 22; no partial record is exposed.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static uint32_t
    roswasmc_bounded_2_unitree_api_msg_RequestPolicy_decode(void const* input, size_t length, roswasmc_bounded_2_unitree_api_msg_RequestPolicy* value)
{
    roswasmc_bounded_2_unitree_api_msg_RequestPolicy next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 5u || length > 5u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_unitree_api_msg_RequestPolicy_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUESTHEADER)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUESTHEADER_0 != 0x864d8eafUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUESTHEADER_1 != 0x517c0cf2UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUESTHEADER_2 != 0x4655a8d7UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUESTHEADER_3 != 0x498c3d13UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUESTHEADER_4 != 0xeed65825UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUESTHEADER_5 != 0x62fe500aUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUESTHEADER_6 != 0xd76ffb47UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUESTHEADER_7 != 0x39cfb666UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUESTHEADER 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUESTHEADER_0 0x864d8eafUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUESTHEADER_1 0x517c0cf2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUESTHEADER_2 0x4655a8d7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUESTHEADER_3 0x498c3d13UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUESTHEADER_4 0xeed65825UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUESTHEADER_5 0x62fe500aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUESTHEADER_6 0xd76ffb47UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUESTHEADER_7 0x39cfb666UL

/**
 * @brief Complete ROS 2 unitree_api/msg/RequestHeader value.
 * @details All 3 declared fields are retained in source order. The canonical representation occupies 29..29
 * bytes and is identified by UWVMROS1_c8e8b83e2cdc978c5279483dbfac8d4185a3e05c87799b424643f0fcb02d0fd0.
 * @native Original selected identity: RIHS01_4273d5fbe6bee52502f55a6a73427e4ae2f12329f175d7c07b95341fd527acff.
 * Compilation of matching native traits is a separate qualification.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_2_unitree_api_msg_RequestHeader
{
    /** @brief Declared field identity; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_api/msg/RequestHeader.identity: unitree_api/msg/RequestIdentity.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_apiMsgRequestHeader; share/platform/ros/rs/API-CONTRACT.md
     */
    roswasmc_bounded_2_unitree_api_msg_RequestIdentity identity;
    /** @brief Declared field lease; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_api/msg/RequestHeader.lease: unitree_api/msg/RequestLease.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_apiMsgRequestHeader; share/platform/ros/rs/API-CONTRACT.md
     */
    roswasmc_bounded_2_unitree_api_msg_RequestLease lease;
    /** @brief Declared field policy; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_api/msg/RequestHeader.policy: unitree_api/msg/RequestPolicy.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_apiMsgRequestHeader; share/platform/ros/rs/API-CONTRACT.md
     */
    roswasmc_bounded_2_unitree_api_msg_RequestPolicy policy;
} roswasmc_bounded_2_unitree_api_msg_RequestHeader;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUESTHEADER_MAX_WIRE_BYTES 29u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUESTHEADER_MIN_WIRE_BYTES 29u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUESTHEADER_CODEC_IDENTITY "UWVMROS1_c8e8b83e2cdc978c5279483dbfac8d4185a3e05c87799b424643f0fcb02d0fd0"

/**
 * @brief Validate every field of unitree_api/msg/RequestHeader.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static int roswasmc_bounded_2_unitree_api_msg_RequestHeader_valid(roswasmc_bounded_2_unitree_api_msg_RequestHeader const* value)
{
    if(!value)
    {
        return 0;
    }
    if(!roswasmc_bounded_2_unitree_api_msg_RequestIdentity_valid(&value->identity))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_unitree_api_msg_RequestLease_valid(&value->lease))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_unitree_api_msg_RequestPolicy_valid(&value->policy))
    {
        return 0;
    }
    return 1;
}

/**
 * @brief Measure the complete active canonical extent of unitree_api/msg/RequestHeader.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static size_t roswasmc_bounded_2_unitree_api_msg_RequestHeader_wire_size(roswasmc_bounded_2_unitree_api_msg_RequestHeader const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_unitree_api_msg_RequestIdentity_wire_size(&value->identity);
    n += roswasmc_bounded_2_unitree_api_msg_RequestLease_wire_size(&value->lease);
    n += roswasmc_bounded_2_unitree_api_msg_RequestPolicy_wire_size(&value->policy);
    return n;
}

/**
 * @brief Append all fields of unitree_api/msg/RequestHeader to an internal canonical buffer.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete prevalidated immutable record.
 * @param[out] p Sufficient exclusive output storage established by the public encoder.
 * @param[in,out] offset Exclusive initialized writer cursor.
 * @return No value; internal caller guarantees the measured capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static void roswasmc_bounded_2_unitree_api_msg_RequestHeader_write_fields(roswasmc_bounded_2_unitree_api_msg_RequestHeader const* value,
                                                                                 unsigned char* p,
                                                                                 size_t* offset)
{
    roswasmc_bounded_2_unitree_api_msg_RequestIdentity_write_fields(&value->identity, p, offset);
    roswasmc_bounded_2_unitree_api_msg_RequestLease_write_fields(&value->lease, p, offset);
    roswasmc_bounded_2_unitree_api_msg_RequestPolicy_write_fields(&value->policy, p, offset);
}

/**
 * @brief Decode the full ordered field prefix of unitree_api/msg/RequestHeader.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] p Borrowed canonical bytes, stable through return.
 * @param[in] n Available input extent in bytes.
 * @param[in,out] offset Exclusive initialized reader cursor.
 * @param[out] value Private temporary record; discard it on failure.
 * @return Nonzero only after complete prefix validation; enclosing fields may remain unread.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static int roswasmc_bounded_2_unitree_api_msg_RequestHeader_read_fields(unsigned char const* p,
                                                                               size_t n,
                                                                               size_t* offset,
                                                                               roswasmc_bounded_2_unitree_api_msg_RequestHeader* value)
{
    if(!roswasmc_bounded_2_unitree_api_msg_RequestIdentity_read_fields(p, n, offset, &value->identity))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_unitree_api_msg_RequestLease_read_fields(p, n, offset, &value->lease))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_unitree_api_msg_RequestPolicy_read_fields(p, n, offset, &value->policy))
    {
        return 0;
    }
    return roswasmc_bounded_2_unitree_api_msg_RequestHeader_valid(value);
}

/**
 * @brief Encode the complete unitree_api/msg/RequestHeader record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record.
 * @param[out] output Exclusive caller-owned byte storage, disjoint from value and length.
 * @param[in] capacity Available writable byte count.
 * @param[out] length Exact initialized byte count, written only on success.
 * @return Status 0 on success, 22 for invalid/overlapping values, or 90 for insufficient capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static uint32_t roswasmc_bounded_2_unitree_api_msg_RequestHeader_encode(roswasmc_bounded_2_unitree_api_msg_RequestHeader const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_unitree_api_msg_RequestHeader_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_unitree_api_msg_RequestHeader_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_unitree_api_msg_RequestHeader_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/**
 * @brief Decode exactly one complete unitree_api/msg/RequestHeader record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] input Immutable complete canonical body, disjoint from value.
 * @param[in] length Exact input byte count; trailing bytes are refused.
 * @param[out] value Caller-owned complete record; unchanged on every refusal.
 * @return Status 0 on complete success, otherwise 22; no partial record is exposed.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static uint32_t
    roswasmc_bounded_2_unitree_api_msg_RequestHeader_decode(void const* input, size_t length, roswasmc_bounded_2_unitree_api_msg_RequestHeader* value)
{
    roswasmc_bounded_2_unitree_api_msg_RequestHeader next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 29u || length > 29u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_unitree_api_msg_RequestHeader_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUEST_0 != 0xabf91b99UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUEST_1 != 0xef1e061eUL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUEST_2 != 0xc7428464UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUEST_3 != 0x4557489bUL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUEST_4 != 0xc98dea52UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUEST_5 != 0x9affee9bUL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUEST_6 != 0x4eebe8b0UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUEST_7 != 0x055e4a5cUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUEST_0 0xabf91b99UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUEST_1 0xef1e061eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUEST_2 0xc7428464UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUEST_3 0x4557489bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUEST_4 0xc98dea52UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUEST_5 0x9affee9bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUEST_6 0x4eebe8b0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUEST_7 0x055e4a5cUL

/**
 * @brief Own a bounded canonical sequence or UTF-8 byte string inline.
 * @details The active size is 0 through 2048. Unused capacity is never serialized or read. This Guest storage is
 * neither a native ROS allocation nor an authority token.
 */
typedef struct
{
    /**
     * @brief Number of initialized active elements.
     * @details Must be no greater than 2048; decoders and encoders reject larger values without truncation.
     */
    uint32_t size;
    /**
     * @brief Caller-owned complete finite element capacity.
     * @details Only the initialized active size prefix is meaningful. Retain that prefix unchanged through
     * synchronous encoding; no native pointer or permission is stored.
     */
    unsigned char data[2048];
} roswasmc_bounded_2_unitree_api_msg_Request_parameter_text;

/**
 * @brief Own a bounded canonical sequence or UTF-8 byte string inline.
 * @details The active size is 0 through 2048. Unused capacity is never serialized or read. This Guest storage is
 * neither a native ROS allocation nor an authority token.
 */
typedef struct
{
    /**
     * @brief Number of initialized active elements.
     * @details Must be no greater than 2048; decoders and encoders reject larger values without truncation.
     */
    uint32_t size;
    /**
     * @brief Caller-owned complete finite element capacity.
     * @details Only the initialized active size prefix is meaningful. Retain that prefix unchanged through
     * synchronous encoding; no native pointer or permission is stored.
     */
    uint8_t data[2048];
} roswasmc_bounded_2_unitree_api_msg_Request_binary_sequence;

/**
 * @brief Complete ROS 2 unitree_api/msg/Request value.
 * @details All 3 declared fields are retained in source order. The canonical representation occupies 37..4133
 * bytes and is identified by UWVMROS1_97acf1a6d8ba00179ad054f92df1f9faa2dc1f6e16396ccc981b28a3cb580192.
 * @native Original selected identity: RIHS01_60dda80d19538b06c8f79b77222b1b7642dd753b8439a6bd535ff0cba08c5378.
 * Compilation of matching native traits is a separate qualification.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_2_unitree_api_msg_Request
{
    /** @brief Declared field header; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_api/msg/Request.header: unitree_api/msg/RequestHeader.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_apiMsgRequest; share/platform/ros/rs/API-CONTRACT.md
     */
    roswasmc_bounded_2_unitree_api_msg_RequestHeader header;
    /** @brief Declared field parameter; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_api/msg/Request.parameter: string; each string is 0..2048 bytes; strict UTF-8 with no embedded
     * NUL.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_apiMsgRequest; share/platform/ros/rs/API-CONTRACT.md
     */
    roswasmc_bounded_2_unitree_api_msg_Request_parameter_text parameter;
    /** @brief Declared field binary; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_api/msg/Request.binary: uint8; 0..2048 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_apiMsgRequest; share/platform/ros/rs/API-CONTRACT.md
     */
    roswasmc_bounded_2_unitree_api_msg_Request_binary_sequence binary;
} roswasmc_bounded_2_unitree_api_msg_Request;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUEST_MAX_WIRE_BYTES 4133u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUEST_MIN_WIRE_BYTES 37u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUEST_CODEC_IDENTITY "UWVMROS1_97acf1a6d8ba00179ad054f92df1f9faa2dc1f6e16396ccc981b28a3cb580192"

/**
 * @brief Validate every field of unitree_api/msg/Request.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static int roswasmc_bounded_2_unitree_api_msg_Request_valid(roswasmc_bounded_2_unitree_api_msg_Request const* value)
{
    if(!value)
    {
        return 0;
    }
    if(!roswasmc_bounded_2_unitree_api_msg_RequestHeader_valid(&value->header))
    {
        return 0;
    }
    if(value->parameter.size > 2048u || !uwvm_bounded_utf8(value->parameter.data, value->parameter.size))
    {
        return 0;
    }
    if(value->binary.size > 2048u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->binary.size; ++i)
        {
        }
    }
    return 1;
}

/**
 * @brief Measure the complete active canonical extent of unitree_api/msg/Request.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static size_t roswasmc_bounded_2_unitree_api_msg_Request_wire_size(roswasmc_bounded_2_unitree_api_msg_Request const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_unitree_api_msg_RequestHeader_wire_size(&value->header);
    n += 4 + value->parameter.size;
    n += 4;
    if(value->binary.size > 2048u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->binary.size; ++i)
        {
            n += 1;
        }
    }
    return n;
}

/**
 * @brief Append all fields of unitree_api/msg/Request to an internal canonical buffer.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete prevalidated immutable record.
 * @param[out] p Sufficient exclusive output storage established by the public encoder.
 * @param[in,out] offset Exclusive initialized writer cursor.
 * @return No value; internal caller guarantees the measured capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static void
    roswasmc_bounded_2_unitree_api_msg_Request_write_fields(roswasmc_bounded_2_unitree_api_msg_Request const* value, unsigned char* p, size_t* offset)
{
    roswasmc_bounded_2_unitree_api_msg_RequestHeader_write_fields(&value->header, p, offset);
    uwvm_bounded_put(p + *offset, value->parameter.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->parameter.data, value->parameter.size);
    *offset += value->parameter.size;
    uwvm_bounded_put(p + *offset, value->binary.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->binary.size; ++i)
        {
            uwvm_bounded_put(p + *offset, (uint64_t)value->binary.data[i], 1);
            *offset += 1;
        }
    }
}

/**
 * @brief Decode the full ordered field prefix of unitree_api/msg/Request.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] p Borrowed canonical bytes, stable through return.
 * @param[in] n Available input extent in bytes.
 * @param[in,out] offset Exclusive initialized reader cursor.
 * @param[out] value Private temporary record; discard it on failure.
 * @return Nonzero only after complete prefix validation; enclosing fields may remain unread.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static int
    roswasmc_bounded_2_unitree_api_msg_Request_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_2_unitree_api_msg_Request* value)
{
    if(!roswasmc_bounded_2_unitree_api_msg_RequestHeader_read_fields(p, n, offset, &value->header))
    {
        return 0;
    }
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->parameter.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->parameter.size > 2048u || value->parameter.size > n - *offset)
    {
        return 0;
    }
    uwvm_bounded_copy(value->parameter.data, p + *offset, value->parameter.size);
    *offset += value->parameter.size;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->binary.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->binary.size > 2048u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->binary.size; ++i)
        {
            if(*offset > n || n - *offset < 1)
            {
                return 0;
            }
            {
                uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
                uwvm_bounded_copy(&value->binary.data[i], &bits, 1);
            }
            *offset += 1;
        }
    }
    return roswasmc_bounded_2_unitree_api_msg_Request_valid(value);
}

/**
 * @brief Encode the complete unitree_api/msg/Request record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record.
 * @param[out] output Exclusive caller-owned byte storage, disjoint from value and length.
 * @param[in] capacity Available writable byte count.
 * @param[out] length Exact initialized byte count, written only on success.
 * @return Status 0 on success, 22 for invalid/overlapping values, or 90 for insufficient capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static uint32_t
    roswasmc_bounded_2_unitree_api_msg_Request_encode(roswasmc_bounded_2_unitree_api_msg_Request const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_unitree_api_msg_Request_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_unitree_api_msg_Request_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_unitree_api_msg_Request_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/**
 * @brief Decode exactly one complete unitree_api/msg/Request record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] input Immutable complete canonical body, disjoint from value.
 * @param[in] length Exact input byte count; trailing bytes are refused.
 * @param[out] value Caller-owned complete record; unchanged on every refusal.
 * @return Status 0 on complete success, otherwise 22; no partial record is exposed.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static uint32_t roswasmc_bounded_2_unitree_api_msg_Request_decode(void const* input, size_t length, roswasmc_bounded_2_unitree_api_msg_Request* value)
{
    roswasmc_bounded_2_unitree_api_msg_Request next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 37u || length > 4133u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_unitree_api_msg_Request_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_RESPONSESTATUS)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_RESPONSESTATUS_0 != 0xf4990b0bUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_RESPONSESTATUS_1 != 0xe7e70726UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_RESPONSESTATUS_2 != 0x56264fadUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_RESPONSESTATUS_3 != 0x4f62aa8eUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_RESPONSESTATUS_4 != 0xe2a119f3UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_RESPONSESTATUS_5 != 0x78291fb2UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_RESPONSESTATUS_6 != 0x8af91513UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_RESPONSESTATUS_7 != 0xad9d4141UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_RESPONSESTATUS 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_RESPONSESTATUS_0 0xf4990b0bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_RESPONSESTATUS_1 0xe7e70726UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_RESPONSESTATUS_2 0x56264fadUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_RESPONSESTATUS_3 0x4f62aa8eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_RESPONSESTATUS_4 0xe2a119f3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_RESPONSESTATUS_5 0x78291fb2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_RESPONSESTATUS_6 0x8af91513UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_RESPONSESTATUS_7 0xad9d4141UL

/**
 * @brief Complete ROS 2 unitree_api/msg/ResponseStatus value.
 * @details All 1 declared fields are retained in source order. The canonical representation occupies 4..4 bytes
 * and is identified by UWVMROS1_aaad17e09d5d6549455f69060d1bb03ec81cddfc0ede323a5f2365a6c1a7b7b1.
 * @native Original selected identity: RIHS01_282afd2a97771014abb1f5aead0fd244d648d475f55a82b0c3c41232a8c527f7.
 * Compilation of matching native traits is a separate qualification.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_2_unitree_api_msg_ResponseStatus
{
    /** @brief Declared field code; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_api/msg/ResponseStatus.code: int32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_apiMsgResponseStatus; share/platform/ros/rs/API-CONTRACT.md
     */
    int32_t code;
} roswasmc_bounded_2_unitree_api_msg_ResponseStatus;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_API_MSG_RESPONSESTATUS_MAX_WIRE_BYTES 4u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_API_MSG_RESPONSESTATUS_MIN_WIRE_BYTES 4u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_API_MSG_RESPONSESTATUS_CODEC_IDENTITY "UWVMROS1_aaad17e09d5d6549455f69060d1bb03ec81cddfc0ede323a5f2365a6c1a7b7b1"

/**
 * @brief Validate every field of unitree_api/msg/ResponseStatus.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static int roswasmc_bounded_2_unitree_api_msg_ResponseStatus_valid(roswasmc_bounded_2_unitree_api_msg_ResponseStatus const* value)
{
    if(!value)
    {
        return 0;
    }
    return 1;
}

/**
 * @brief Measure the complete active canonical extent of unitree_api/msg/ResponseStatus.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static size_t roswasmc_bounded_2_unitree_api_msg_ResponseStatus_wire_size(roswasmc_bounded_2_unitree_api_msg_ResponseStatus const* value)
{
    size_t n = 0;
    n += 4;
    return n;
}

/**
 * @brief Append all fields of unitree_api/msg/ResponseStatus to an internal canonical buffer.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete prevalidated immutable record.
 * @param[out] p Sufficient exclusive output storage established by the public encoder.
 * @param[in,out] offset Exclusive initialized writer cursor.
 * @return No value; internal caller guarantees the measured capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static void roswasmc_bounded_2_unitree_api_msg_ResponseStatus_write_fields(roswasmc_bounded_2_unitree_api_msg_ResponseStatus const* value,
                                                                                  unsigned char* p,
                                                                                  size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->code, 4);
    *offset += 4;
}

/**
 * @brief Decode the full ordered field prefix of unitree_api/msg/ResponseStatus.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] p Borrowed canonical bytes, stable through return.
 * @param[in] n Available input extent in bytes.
 * @param[in,out] offset Exclusive initialized reader cursor.
 * @param[out] value Private temporary record; discard it on failure.
 * @return Nonzero only after complete prefix validation; enclosing fields may remain unread.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static int roswasmc_bounded_2_unitree_api_msg_ResponseStatus_read_fields(unsigned char const* p,
                                                                                size_t n,
                                                                                size_t* offset,
                                                                                roswasmc_bounded_2_unitree_api_msg_ResponseStatus* value)
{
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->code, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_2_unitree_api_msg_ResponseStatus_valid(value);
}

/**
 * @brief Encode the complete unitree_api/msg/ResponseStatus record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record.
 * @param[out] output Exclusive caller-owned byte storage, disjoint from value and length.
 * @param[in] capacity Available writable byte count.
 * @param[out] length Exact initialized byte count, written only on success.
 * @return Status 0 on success, 22 for invalid/overlapping values, or 90 for insufficient capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static uint32_t roswasmc_bounded_2_unitree_api_msg_ResponseStatus_encode(roswasmc_bounded_2_unitree_api_msg_ResponseStatus const* value,
                                                                                void* output,
                                                                                size_t capacity,
                                                                                size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_unitree_api_msg_ResponseStatus_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_unitree_api_msg_ResponseStatus_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_unitree_api_msg_ResponseStatus_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/**
 * @brief Decode exactly one complete unitree_api/msg/ResponseStatus record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] input Immutable complete canonical body, disjoint from value.
 * @param[in] length Exact input byte count; trailing bytes are refused.
 * @param[out] value Caller-owned complete record; unchanged on every refusal.
 * @return Status 0 on complete success, otherwise 22; no partial record is exposed.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static uint32_t
    roswasmc_bounded_2_unitree_api_msg_ResponseStatus_decode(void const* input, size_t length, roswasmc_bounded_2_unitree_api_msg_ResponseStatus* value)
{
    roswasmc_bounded_2_unitree_api_msg_ResponseStatus next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 4u || length > 4u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_unitree_api_msg_ResponseStatus_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_RESPONSEHEADER)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_RESPONSEHEADER_0 != 0x86c1b48eUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_RESPONSEHEADER_1 != 0xca9d940fUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_RESPONSEHEADER_2 != 0xc9a2db53UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_RESPONSEHEADER_3 != 0x8e640671UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_RESPONSEHEADER_4 != 0x11ad3afdUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_RESPONSEHEADER_5 != 0x38820103UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_RESPONSEHEADER_6 != 0xea9459c6UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_RESPONSEHEADER_7 != 0x5e7865fdUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_RESPONSEHEADER 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_RESPONSEHEADER_0 0x86c1b48eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_RESPONSEHEADER_1 0xca9d940fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_RESPONSEHEADER_2 0xc9a2db53UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_RESPONSEHEADER_3 0x8e640671UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_RESPONSEHEADER_4 0x11ad3afdUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_RESPONSEHEADER_5 0x38820103UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_RESPONSEHEADER_6 0xea9459c6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_RESPONSEHEADER_7 0x5e7865fdUL

/**
 * @brief Complete ROS 2 unitree_api/msg/ResponseHeader value.
 * @details All 2 declared fields are retained in source order. The canonical representation occupies 20..20
 * bytes and is identified by UWVMROS1_20ddef706f0be7d7e2e356ab2222b6e198bd36fd6d8a81706553d5a883de85e0.
 * @native Original selected identity: RIHS01_eba136c930271eec2fc582cfccc5948f8af3fe4431492842a03a3dacb1b0d765.
 * Compilation of matching native traits is a separate qualification.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_2_unitree_api_msg_ResponseHeader
{
    /** @brief Declared field identity; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_api/msg/ResponseHeader.identity: unitree_api/msg/RequestIdentity.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_apiMsgResponseHeader; share/platform/ros/rs/API-CONTRACT.md
     */
    roswasmc_bounded_2_unitree_api_msg_RequestIdentity identity;
    /** @brief Declared field status; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_api/msg/ResponseHeader.status: unitree_api/msg/ResponseStatus.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_apiMsgResponseHeader; share/platform/ros/rs/API-CONTRACT.md
     */
    roswasmc_bounded_2_unitree_api_msg_ResponseStatus status;
} roswasmc_bounded_2_unitree_api_msg_ResponseHeader;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_API_MSG_RESPONSEHEADER_MAX_WIRE_BYTES 20u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_API_MSG_RESPONSEHEADER_MIN_WIRE_BYTES 20u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_API_MSG_RESPONSEHEADER_CODEC_IDENTITY "UWVMROS1_20ddef706f0be7d7e2e356ab2222b6e198bd36fd6d8a81706553d5a883de85e0"

/**
 * @brief Validate every field of unitree_api/msg/ResponseHeader.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static int roswasmc_bounded_2_unitree_api_msg_ResponseHeader_valid(roswasmc_bounded_2_unitree_api_msg_ResponseHeader const* value)
{
    if(!value)
    {
        return 0;
    }
    if(!roswasmc_bounded_2_unitree_api_msg_RequestIdentity_valid(&value->identity))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_unitree_api_msg_ResponseStatus_valid(&value->status))
    {
        return 0;
    }
    return 1;
}

/**
 * @brief Measure the complete active canonical extent of unitree_api/msg/ResponseHeader.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static size_t roswasmc_bounded_2_unitree_api_msg_ResponseHeader_wire_size(roswasmc_bounded_2_unitree_api_msg_ResponseHeader const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_unitree_api_msg_RequestIdentity_wire_size(&value->identity);
    n += roswasmc_bounded_2_unitree_api_msg_ResponseStatus_wire_size(&value->status);
    return n;
}

/**
 * @brief Append all fields of unitree_api/msg/ResponseHeader to an internal canonical buffer.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete prevalidated immutable record.
 * @param[out] p Sufficient exclusive output storage established by the public encoder.
 * @param[in,out] offset Exclusive initialized writer cursor.
 * @return No value; internal caller guarantees the measured capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static void roswasmc_bounded_2_unitree_api_msg_ResponseHeader_write_fields(roswasmc_bounded_2_unitree_api_msg_ResponseHeader const* value,
                                                                                  unsigned char* p,
                                                                                  size_t* offset)
{
    roswasmc_bounded_2_unitree_api_msg_RequestIdentity_write_fields(&value->identity, p, offset);
    roswasmc_bounded_2_unitree_api_msg_ResponseStatus_write_fields(&value->status, p, offset);
}

/**
 * @brief Decode the full ordered field prefix of unitree_api/msg/ResponseHeader.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] p Borrowed canonical bytes, stable through return.
 * @param[in] n Available input extent in bytes.
 * @param[in,out] offset Exclusive initialized reader cursor.
 * @param[out] value Private temporary record; discard it on failure.
 * @return Nonzero only after complete prefix validation; enclosing fields may remain unread.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static int roswasmc_bounded_2_unitree_api_msg_ResponseHeader_read_fields(unsigned char const* p,
                                                                                size_t n,
                                                                                size_t* offset,
                                                                                roswasmc_bounded_2_unitree_api_msg_ResponseHeader* value)
{
    if(!roswasmc_bounded_2_unitree_api_msg_RequestIdentity_read_fields(p, n, offset, &value->identity))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_unitree_api_msg_ResponseStatus_read_fields(p, n, offset, &value->status))
    {
        return 0;
    }
    return roswasmc_bounded_2_unitree_api_msg_ResponseHeader_valid(value);
}

/**
 * @brief Encode the complete unitree_api/msg/ResponseHeader record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record.
 * @param[out] output Exclusive caller-owned byte storage, disjoint from value and length.
 * @param[in] capacity Available writable byte count.
 * @param[out] length Exact initialized byte count, written only on success.
 * @return Status 0 on success, 22 for invalid/overlapping values, or 90 for insufficient capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static uint32_t roswasmc_bounded_2_unitree_api_msg_ResponseHeader_encode(roswasmc_bounded_2_unitree_api_msg_ResponseHeader const* value,
                                                                                void* output,
                                                                                size_t capacity,
                                                                                size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_unitree_api_msg_ResponseHeader_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_unitree_api_msg_ResponseHeader_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_unitree_api_msg_ResponseHeader_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/**
 * @brief Decode exactly one complete unitree_api/msg/ResponseHeader record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] input Immutable complete canonical body, disjoint from value.
 * @param[in] length Exact input byte count; trailing bytes are refused.
 * @param[out] value Caller-owned complete record; unchanged on every refusal.
 * @return Status 0 on complete success, otherwise 22; no partial record is exposed.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static uint32_t
    roswasmc_bounded_2_unitree_api_msg_ResponseHeader_decode(void const* input, size_t length, roswasmc_bounded_2_unitree_api_msg_ResponseHeader* value)
{
    roswasmc_bounded_2_unitree_api_msg_ResponseHeader next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 20u || length > 20u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_unitree_api_msg_ResponseHeader_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_RESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_RESPONSE_0 != 0xd12274feUL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_RESPONSE_1 != 0xdcd48dd5UL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_RESPONSE_2 != 0x3c2abf7aUL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_RESPONSE_3 != 0xe5f37360UL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_RESPONSE_4 != 0xa2fd3c06UL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_RESPONSE_5 != 0xb67bf184UL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_RESPONSE_6 != 0xbda69876UL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_RESPONSE_7 != 0x2ee2683cUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_RESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_RESPONSE_0 0xd12274feUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_RESPONSE_1 0xdcd48dd5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_RESPONSE_2 0x3c2abf7aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_RESPONSE_3 0xe5f37360UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_RESPONSE_4 0xa2fd3c06UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_RESPONSE_5 0xb67bf184UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_RESPONSE_6 0xbda69876UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_RESPONSE_7 0x2ee2683cUL

/**
 * @brief Own a bounded canonical sequence or UTF-8 byte string inline.
 * @details The active size is 0 through 2048. Unused capacity is never serialized or read. This Guest storage is
 * neither a native ROS allocation nor an authority token.
 */
typedef struct
{
    /**
     * @brief Number of initialized active elements.
     * @details Must be no greater than 2048; decoders and encoders reject larger values without truncation.
     */
    uint32_t size;
    /**
     * @brief Caller-owned complete finite element capacity.
     * @details Only the initialized active size prefix is meaningful. Retain that prefix unchanged through
     * synchronous encoding; no native pointer or permission is stored.
     */
    unsigned char data[2048];
} roswasmc_bounded_2_unitree_api_msg_Response_data_text;

/**
 * @brief Own a bounded canonical sequence or UTF-8 byte string inline.
 * @details The active size is 0 through 32. Unused capacity is never serialized or read. This Guest storage is
 * neither a native ROS allocation nor an authority token.
 */
typedef struct
{
    /**
     * @brief Number of initialized active elements.
     * @details Must be no greater than 32; decoders and encoders reject larger values without truncation.
     */
    uint32_t size;
    /**
     * @brief Caller-owned complete finite element capacity.
     * @details Only the initialized active size prefix is meaningful. Retain that prefix unchanged through
     * synchronous encoding; no native pointer or permission is stored.
     */
    int8_t data[32];
} roswasmc_bounded_2_unitree_api_msg_Response_binary_sequence;

/**
 * @brief Complete ROS 2 unitree_api/msg/Response value.
 * @details All 3 declared fields are retained in source order. The canonical representation occupies 28..2108
 * bytes and is identified by UWVMROS1_ccfc12626a209d739946c69e2f812bb41e940f20f17e48803e7ee5d34a97dd8f.
 * @native Original selected identity: RIHS01_5300d019bb652073e7248995c878765c68ab519bcbdbad2e2a17c81abd8888b9.
 * Compilation of matching native traits is a separate qualification.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_2_unitree_api_msg_Response
{
    /** @brief Declared field header; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_api/msg/Response.header: unitree_api/msg/ResponseHeader.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_apiMsgResponse; share/platform/ros/rs/API-CONTRACT.md
     */
    roswasmc_bounded_2_unitree_api_msg_ResponseHeader header;
    /** @brief Declared field data; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_api/msg/Response.data: string; each string is 0..2048 bytes; strict UTF-8 with no embedded NUL.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_apiMsgResponse; share/platform/ros/rs/API-CONTRACT.md
     */
    roswasmc_bounded_2_unitree_api_msg_Response_data_text data;
    /** @brief Declared field binary; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_api/msg/Response.binary: int8; 0..32 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_apiMsgResponse; share/platform/ros/rs/API-CONTRACT.md
     */
    roswasmc_bounded_2_unitree_api_msg_Response_binary_sequence binary;
} roswasmc_bounded_2_unitree_api_msg_Response;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_API_MSG_RESPONSE_MAX_WIRE_BYTES 2108u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_API_MSG_RESPONSE_MIN_WIRE_BYTES 28u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_API_MSG_RESPONSE_CODEC_IDENTITY "UWVMROS1_ccfc12626a209d739946c69e2f812bb41e940f20f17e48803e7ee5d34a97dd8f"

/**
 * @brief Validate every field of unitree_api/msg/Response.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static int roswasmc_bounded_2_unitree_api_msg_Response_valid(roswasmc_bounded_2_unitree_api_msg_Response const* value)
{
    if(!value)
    {
        return 0;
    }
    if(!roswasmc_bounded_2_unitree_api_msg_ResponseHeader_valid(&value->header))
    {
        return 0;
    }
    if(value->data.size > 2048u || !uwvm_bounded_utf8(value->data.data, value->data.size))
    {
        return 0;
    }
    if(value->binary.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->binary.size; ++i)
        {
        }
    }
    return 1;
}

/**
 * @brief Measure the complete active canonical extent of unitree_api/msg/Response.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static size_t roswasmc_bounded_2_unitree_api_msg_Response_wire_size(roswasmc_bounded_2_unitree_api_msg_Response const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_unitree_api_msg_ResponseHeader_wire_size(&value->header);
    n += 4 + value->data.size;
    n += 4;
    if(value->binary.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->binary.size; ++i)
        {
            n += 1;
        }
    }
    return n;
}

/**
 * @brief Append all fields of unitree_api/msg/Response to an internal canonical buffer.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete prevalidated immutable record.
 * @param[out] p Sufficient exclusive output storage established by the public encoder.
 * @param[in,out] offset Exclusive initialized writer cursor.
 * @return No value; internal caller guarantees the measured capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static void
    roswasmc_bounded_2_unitree_api_msg_Response_write_fields(roswasmc_bounded_2_unitree_api_msg_Response const* value, unsigned char* p, size_t* offset)
{
    roswasmc_bounded_2_unitree_api_msg_ResponseHeader_write_fields(&value->header, p, offset);
    uwvm_bounded_put(p + *offset, value->data.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->data.data, value->data.size);
    *offset += value->data.size;
    uwvm_bounded_put(p + *offset, value->binary.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->binary.size; ++i)
        {
            uwvm_bounded_put(p + *offset, (uint64_t)value->binary.data[i], 1);
            *offset += 1;
        }
    }
}

/**
 * @brief Decode the full ordered field prefix of unitree_api/msg/Response.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] p Borrowed canonical bytes, stable through return.
 * @param[in] n Available input extent in bytes.
 * @param[in,out] offset Exclusive initialized reader cursor.
 * @param[out] value Private temporary record; discard it on failure.
 * @return Nonzero only after complete prefix validation; enclosing fields may remain unread.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static int roswasmc_bounded_2_unitree_api_msg_Response_read_fields(unsigned char const* p,
                                                                          size_t n,
                                                                          size_t* offset,
                                                                          roswasmc_bounded_2_unitree_api_msg_Response* value)
{
    if(!roswasmc_bounded_2_unitree_api_msg_ResponseHeader_read_fields(p, n, offset, &value->header))
    {
        return 0;
    }
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->data.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->data.size > 2048u || value->data.size > n - *offset)
    {
        return 0;
    }
    uwvm_bounded_copy(value->data.data, p + *offset, value->data.size);
    *offset += value->data.size;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->binary.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->binary.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->binary.size; ++i)
        {
            if(*offset > n || n - *offset < 1)
            {
                return 0;
            }
            {
                uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
                uwvm_bounded_copy(&value->binary.data[i], &bits, 1);
            }
            *offset += 1;
        }
    }
    return roswasmc_bounded_2_unitree_api_msg_Response_valid(value);
}

/**
 * @brief Encode the complete unitree_api/msg/Response record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record.
 * @param[out] output Exclusive caller-owned byte storage, disjoint from value and length.
 * @param[in] capacity Available writable byte count.
 * @param[out] length Exact initialized byte count, written only on success.
 * @return Status 0 on success, 22 for invalid/overlapping values, or 90 for insufficient capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static uint32_t
    roswasmc_bounded_2_unitree_api_msg_Response_encode(roswasmc_bounded_2_unitree_api_msg_Response const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_unitree_api_msg_Response_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_unitree_api_msg_Response_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_unitree_api_msg_Response_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/**
 * @brief Decode exactly one complete unitree_api/msg/Response record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] input Immutable complete canonical body, disjoint from value.
 * @param[in] length Exact input byte count; trailing bytes are refused.
 * @param[out] value Caller-owned complete record; unchanged on every refusal.
 * @return Status 0 on complete success, otherwise 22; no partial record is exposed.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static uint32_t roswasmc_bounded_2_unitree_api_msg_Response_decode(void const* input, size_t length, roswasmc_bounded_2_unitree_api_msg_Response* value)
{
    roswasmc_bounded_2_unitree_api_msg_Response next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 28u || length > 2108u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_unitree_api_msg_Response_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_AUDIODATA)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_AUDIODATA_0 != 0xd0634fcbUL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_AUDIODATA_1 != 0x366013a9UL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_AUDIODATA_2 != 0x58c554b2UL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_AUDIODATA_3 != 0x22928c9fUL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_AUDIODATA_4 != 0x09608e12UL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_AUDIODATA_5 != 0x0d60b78aUL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_AUDIODATA_6 != 0x9625aeeaUL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_AUDIODATA_7 != 0x24d037a2UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_AUDIODATA 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_AUDIODATA_0 0xd0634fcbUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_AUDIODATA_1 0x366013a9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_AUDIODATA_2 0x58c554b2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_AUDIODATA_3 0x22928c9fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_AUDIODATA_4 0x09608e12UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_AUDIODATA_5 0x0d60b78aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_AUDIODATA_6 0x9625aeeaUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_AUDIODATA_7 0x24d037a2UL

/**
 * @brief Own a bounded canonical sequence or UTF-8 byte string inline.
 * @details The active size is 0 through 2048. Unused capacity is never serialized or read. This Guest storage is
 * neither a native ROS allocation nor an authority token.
 */
typedef struct
{
    /**
     * @brief Number of initialized active elements.
     * @details Must be no greater than 2048; decoders and encoders reject larger values without truncation.
     */
    uint32_t size;
    /**
     * @brief Caller-owned complete finite element capacity.
     * @details Only the initialized active size prefix is meaningful. Retain that prefix unchanged through
     * synchronous encoding; no native pointer or permission is stored.
     */
    /**
     * @brief unitree_api/msg/Response.data: string; each string is 0..2048 bytes; strict UTF-8 with no embedded NUL.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_apiMsgResponse; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t data[2048];
} roswasmc_bounded_2_unitree_go_msg_AudioData_data_sequence;

/**
 * @brief Complete ROS 2 unitree_go/msg/AudioData value.
 * @details All 2 declared fields are retained in source order. The canonical representation occupies 12..2060
 * bytes and is identified by UWVMROS1_aa14877a076c7fc6b662efa965cc8a75f42b3f84990a078c7c3c5def01d2c9fe.
 * @native Original selected identity: RIHS01_55973ff982f53f02855ff34a184f00ee63b68a3f65b19152448f9fd7558e7dc5.
 * Compilation of matching native traits is a separate qualification.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_2_unitree_go_msg_AudioData
{
    /** @brief Declared field time_frame; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/AudioData.time_frame: uint64.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgAudioData; share/platform/ros/rs/API-CONTRACT.md
     */
    uint64_t time_frame;
    /** @brief Declared field data; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/AudioData.data: uint8; 0..2048 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgAudioData; share/platform/ros/rs/API-CONTRACT.md
     */
    roswasmc_bounded_2_unitree_go_msg_AudioData_data_sequence data;
} roswasmc_bounded_2_unitree_go_msg_AudioData;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_AUDIODATA_MAX_WIRE_BYTES 2060u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_AUDIODATA_MIN_WIRE_BYTES 12u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_AUDIODATA_CODEC_IDENTITY "UWVMROS1_aa14877a076c7fc6b662efa965cc8a75f42b3f84990a078c7c3c5def01d2c9fe"

/**
 * @brief Validate every field of unitree_go/msg/AudioData.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static int roswasmc_bounded_2_unitree_go_msg_AudioData_valid(roswasmc_bounded_2_unitree_go_msg_AudioData const* value)
{
    if(!value)
    {
        return 0;
    }
    if(value->data.size > 2048u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->data.size; ++i)
        {
        }
    }
    return 1;
}

/**
 * @brief Measure the complete active canonical extent of unitree_go/msg/AudioData.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static size_t roswasmc_bounded_2_unitree_go_msg_AudioData_wire_size(roswasmc_bounded_2_unitree_go_msg_AudioData const* value)
{
    size_t n = 0;
    n += 8;
    n += 4;
    if(value->data.size > 2048u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->data.size; ++i)
        {
            n += 1;
        }
    }
    return n;
}

/**
 * @brief Append all fields of unitree_go/msg/AudioData to an internal canonical buffer.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete prevalidated immutable record.
 * @param[out] p Sufficient exclusive output storage established by the public encoder.
 * @param[in,out] offset Exclusive initialized writer cursor.
 * @return No value; internal caller guarantees the measured capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static void
    roswasmc_bounded_2_unitree_go_msg_AudioData_write_fields(roswasmc_bounded_2_unitree_go_msg_AudioData const* value, unsigned char* p, size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->time_frame, 8);
    *offset += 8;
    uwvm_bounded_put(p + *offset, value->data.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->data.size; ++i)
        {
            uwvm_bounded_put(p + *offset, (uint64_t)value->data.data[i], 1);
            *offset += 1;
        }
    }
}

/**
 * @brief Decode the full ordered field prefix of unitree_go/msg/AudioData.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] p Borrowed canonical bytes, stable through return.
 * @param[in] n Available input extent in bytes.
 * @param[in,out] offset Exclusive initialized reader cursor.
 * @param[out] value Private temporary record; discard it on failure.
 * @return Nonzero only after complete prefix validation; enclosing fields may remain unread.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static int roswasmc_bounded_2_unitree_go_msg_AudioData_read_fields(unsigned char const* p,
                                                                          size_t n,
                                                                          size_t* offset,
                                                                          roswasmc_bounded_2_unitree_go_msg_AudioData* value)
{
    if(*offset > n || n - *offset < 8)
    {
        return 0;
    }
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->time_frame, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->data.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->data.size > 2048u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->data.size; ++i)
        {
            if(*offset > n || n - *offset < 1)
            {
                return 0;
            }
            {
                uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
                uwvm_bounded_copy(&value->data.data[i], &bits, 1);
            }
            *offset += 1;
        }
    }
    return roswasmc_bounded_2_unitree_go_msg_AudioData_valid(value);
}

/**
 * @brief Encode the complete unitree_go/msg/AudioData record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record.
 * @param[out] output Exclusive caller-owned byte storage, disjoint from value and length.
 * @param[in] capacity Available writable byte count.
 * @param[out] length Exact initialized byte count, written only on success.
 * @return Status 0 on success, 22 for invalid/overlapping values, or 90 for insufficient capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static uint32_t
    roswasmc_bounded_2_unitree_go_msg_AudioData_encode(roswasmc_bounded_2_unitree_go_msg_AudioData const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_unitree_go_msg_AudioData_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_unitree_go_msg_AudioData_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_unitree_go_msg_AudioData_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/**
 * @brief Decode exactly one complete unitree_go/msg/AudioData record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] input Immutable complete canonical body, disjoint from value.
 * @param[in] length Exact input byte count; trailing bytes are refused.
 * @param[out] value Caller-owned complete record; unchanged on every refusal.
 * @return Status 0 on complete success, otherwise 22; no partial record is exposed.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static uint32_t roswasmc_bounded_2_unitree_go_msg_AudioData_decode(void const* input, size_t length, roswasmc_bounded_2_unitree_go_msg_AudioData* value)
{
    roswasmc_bounded_2_unitree_go_msg_AudioData next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 12u || length > 2060u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_unitree_go_msg_AudioData_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_BMSCMD)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_BMSCMD_0 != 0xb66d22e6UL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_BMSCMD_1 != 0x8e44d4adUL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_BMSCMD_2 != 0xbaaa1880UL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_BMSCMD_3 != 0xef4db0d5UL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_BMSCMD_4 != 0xd45e642bUL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_BMSCMD_5 != 0xfe9d879cUL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_BMSCMD_6 != 0xa2501df7UL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_BMSCMD_7 != 0x8d943ec7UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_BMSCMD 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_BMSCMD_0 0xb66d22e6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_BMSCMD_1 0x8e44d4adUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_BMSCMD_2 0xbaaa1880UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_BMSCMD_3 0xef4db0d5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_BMSCMD_4 0xd45e642bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_BMSCMD_5 0xfe9d879cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_BMSCMD_6 0xa2501df7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_BMSCMD_7 0x8d943ec7UL

/**
 * @brief Complete ROS 2 unitree_go/msg/BmsCmd value.
 * @details All 2 declared fields are retained in source order. The canonical representation occupies 4..4 bytes
 * and is identified by UWVMROS1_d212c1ab0c92d64801a3b10c3a4d79517ea24a830db3d85ca2bb18e1e0ea5339.
 * @native Original selected identity: RIHS01_815310dff4ebba1e0d37802dfdc56d4b5a849761f613954172bdb4476aed5aa2.
 * Compilation of matching native traits is a separate qualification.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_2_unitree_go_msg_BmsCmd
{
    /** @brief Declared field off; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/BmsCmd.off: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgBmsCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t off;
    /** @brief Declared field reserve; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/BmsCmd.reserve: uint8; exactly 3 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgBmsCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t reserve[3];
} roswasmc_bounded_2_unitree_go_msg_BmsCmd;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_BMSCMD_MAX_WIRE_BYTES 4u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_BMSCMD_MIN_WIRE_BYTES 4u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_BMSCMD_CODEC_IDENTITY "UWVMROS1_d212c1ab0c92d64801a3b10c3a4d79517ea24a830db3d85ca2bb18e1e0ea5339"

/**
 * @brief Validate every field of unitree_go/msg/BmsCmd.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static int roswasmc_bounded_2_unitree_go_msg_BmsCmd_valid(roswasmc_bounded_2_unitree_go_msg_BmsCmd const* value)
{
    if(!value)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < 3u; ++i)
        {
        }
    }
    return 1;
}

/**
 * @brief Measure the complete active canonical extent of unitree_go/msg/BmsCmd.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static size_t roswasmc_bounded_2_unitree_go_msg_BmsCmd_wire_size(roswasmc_bounded_2_unitree_go_msg_BmsCmd const* value)
{
    size_t n = 0;
    n += 1;
    {
        size_t i;
        for(i = 0; i < 3u; ++i)
        {
            n += 1;
        }
    }
    return n;
}

/**
 * @brief Append all fields of unitree_go/msg/BmsCmd to an internal canonical buffer.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete prevalidated immutable record.
 * @param[out] p Sufficient exclusive output storage established by the public encoder.
 * @param[in,out] offset Exclusive initialized writer cursor.
 * @return No value; internal caller guarantees the measured capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static void
    roswasmc_bounded_2_unitree_go_msg_BmsCmd_write_fields(roswasmc_bounded_2_unitree_go_msg_BmsCmd const* value, unsigned char* p, size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->off, 1);
    *offset += 1;
    {
        size_t i;
        for(i = 0; i < 3u; ++i)
        {
            uwvm_bounded_put(p + *offset, (uint64_t)value->reserve[i], 1);
            *offset += 1;
        }
    }
}

/**
 * @brief Decode the full ordered field prefix of unitree_go/msg/BmsCmd.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] p Borrowed canonical bytes, stable through return.
 * @param[in] n Available input extent in bytes.
 * @param[in,out] offset Exclusive initialized reader cursor.
 * @param[out] value Private temporary record; discard it on failure.
 * @return Nonzero only after complete prefix validation; enclosing fields may remain unread.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static int
    roswasmc_bounded_2_unitree_go_msg_BmsCmd_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_2_unitree_go_msg_BmsCmd* value)
{
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->off, &bits, 1);
    }
    *offset += 1;
    {
        size_t i;
        for(i = 0; i < 3u; ++i)
        {
            if(*offset > n || n - *offset < 1)
            {
                return 0;
            }
            {
                uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
                uwvm_bounded_copy(&value->reserve[i], &bits, 1);
            }
            *offset += 1;
        }
    }
    return roswasmc_bounded_2_unitree_go_msg_BmsCmd_valid(value);
}

/**
 * @brief Encode the complete unitree_go/msg/BmsCmd record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record.
 * @param[out] output Exclusive caller-owned byte storage, disjoint from value and length.
 * @param[in] capacity Available writable byte count.
 * @param[out] length Exact initialized byte count, written only on success.
 * @return Status 0 on success, 22 for invalid/overlapping values, or 90 for insufficient capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static uint32_t
    roswasmc_bounded_2_unitree_go_msg_BmsCmd_encode(roswasmc_bounded_2_unitree_go_msg_BmsCmd const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_unitree_go_msg_BmsCmd_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_unitree_go_msg_BmsCmd_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_unitree_go_msg_BmsCmd_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/**
 * @brief Decode exactly one complete unitree_go/msg/BmsCmd record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] input Immutable complete canonical body, disjoint from value.
 * @param[in] length Exact input byte count; trailing bytes are refused.
 * @param[out] value Caller-owned complete record; unchanged on every refusal.
 * @return Status 0 on complete success, otherwise 22; no partial record is exposed.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static uint32_t roswasmc_bounded_2_unitree_go_msg_BmsCmd_decode(void const* input, size_t length, roswasmc_bounded_2_unitree_go_msg_BmsCmd* value)
{
    roswasmc_bounded_2_unitree_go_msg_BmsCmd next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 4u || length > 4u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_unitree_go_msg_BmsCmd_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_BMSSTATE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_BMSSTATE_0 != 0x54e5b4cdUL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_BMSSTATE_1 != 0x953c5981UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_BMSSTATE_2 != 0xcd365ecdUL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_BMSSTATE_3 != 0x81ff6a4aUL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_BMSSTATE_4 != 0x40722bd2UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_BMSSTATE_5 != 0x289c1018UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_BMSSTATE_6 != 0x56fa9cc0UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_BMSSTATE_7 != 0x9262657bUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_BMSSTATE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_BMSSTATE_0 0x54e5b4cdUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_BMSSTATE_1 0x953c5981UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_BMSSTATE_2 0xcd365ecdUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_BMSSTATE_3 0x81ff6a4aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_BMSSTATE_4 0x40722bd2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_BMSSTATE_5 0x289c1018UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_BMSSTATE_6 0x56fa9cc0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_BMSSTATE_7 0x9262657bUL

/**
 * @brief Complete ROS 2 unitree_go/msg/BmsState value.
 * @details All 9 declared fields are retained in source order. The canonical representation occupies 44..44
 * bytes and is identified by UWVMROS1_7e4d5e3c0a2eddddf39c68b73bff5f7721e1623b0a9322dce23d3e551a07f5b0.
 * @native Original selected identity: RIHS01_a7fe45fbbb6a908bdee78baa3b93e962ed924c143481a696f95b6911ce30b871.
 * Compilation of matching native traits is a separate qualification.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_2_unitree_go_msg_BmsState
{
    /** @brief Declared field version_high; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/BmsState.version_high: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgBmsState; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t version_high;
    /** @brief Declared field version_low; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/BmsState.version_low: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgBmsState; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t version_low;
    /** @brief Declared field status; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/BmsState.status: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgBmsState; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t status;
    /** @brief Declared field soc; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/BmsState.soc: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgBmsState; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t soc;
    /** @brief Declared field current; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/BmsState.current: int32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgBmsState; share/platform/ros/rs/API-CONTRACT.md
     */
    int32_t current;
    /** @brief Declared field cycle; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/BmsState.cycle: uint16.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgBmsState; share/platform/ros/rs/API-CONTRACT.md
     */
    uint16_t cycle;
    /** @brief Declared field bq_ntc; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/BmsState.bq_ntc: int8; exactly 2 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgBmsState; share/platform/ros/rs/API-CONTRACT.md
     */
    int8_t bq_ntc[2];
    /** @brief Declared field mcu_ntc; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/BmsState.mcu_ntc: int8; exactly 2 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgBmsState; share/platform/ros/rs/API-CONTRACT.md
     */
    int8_t mcu_ntc[2];
    /** @brief Declared field cell_vol; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/BmsState.cell_vol: uint16; exactly 15 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgBmsState; share/platform/ros/rs/API-CONTRACT.md
     */
    uint16_t cell_vol[15];
} roswasmc_bounded_2_unitree_go_msg_BmsState;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_BMSSTATE_MAX_WIRE_BYTES 44u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_BMSSTATE_MIN_WIRE_BYTES 44u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_BMSSTATE_CODEC_IDENTITY "UWVMROS1_7e4d5e3c0a2eddddf39c68b73bff5f7721e1623b0a9322dce23d3e551a07f5b0"

/**
 * @brief Validate every field of unitree_go/msg/BmsState.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static int roswasmc_bounded_2_unitree_go_msg_BmsState_valid(roswasmc_bounded_2_unitree_go_msg_BmsState const* value)
{
    if(!value)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
        }
    }
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
        }
    }
    {
        size_t i;
        for(i = 0; i < 15u; ++i)
        {
        }
    }
    return 1;
}

/**
 * @brief Measure the complete active canonical extent of unitree_go/msg/BmsState.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static size_t roswasmc_bounded_2_unitree_go_msg_BmsState_wire_size(roswasmc_bounded_2_unitree_go_msg_BmsState const* value)
{
    size_t n = 0;
    n += 1;
    n += 1;
    n += 1;
    n += 1;
    n += 4;
    n += 2;
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            n += 1;
        }
    }
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            n += 1;
        }
    }
    {
        size_t i;
        for(i = 0; i < 15u; ++i)
        {
            n += 2;
        }
    }
    return n;
}

/**
 * @brief Append all fields of unitree_go/msg/BmsState to an internal canonical buffer.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete prevalidated immutable record.
 * @param[out] p Sufficient exclusive output storage established by the public encoder.
 * @param[in,out] offset Exclusive initialized writer cursor.
 * @return No value; internal caller guarantees the measured capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static void
    roswasmc_bounded_2_unitree_go_msg_BmsState_write_fields(roswasmc_bounded_2_unitree_go_msg_BmsState const* value, unsigned char* p, size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->version_high, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->version_low, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->status, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->soc, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->current, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, (uint64_t)value->cycle, 2);
    *offset += 2;
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            uwvm_bounded_put(p + *offset, (uint64_t)value->bq_ntc[i], 1);
            *offset += 1;
        }
    }
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            uwvm_bounded_put(p + *offset, (uint64_t)value->mcu_ntc[i], 1);
            *offset += 1;
        }
    }
    {
        size_t i;
        for(i = 0; i < 15u; ++i)
        {
            uwvm_bounded_put(p + *offset, (uint64_t)value->cell_vol[i], 2);
            *offset += 2;
        }
    }
}

/**
 * @brief Decode the full ordered field prefix of unitree_go/msg/BmsState.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] p Borrowed canonical bytes, stable through return.
 * @param[in] n Available input extent in bytes.
 * @param[in,out] offset Exclusive initialized reader cursor.
 * @param[out] value Private temporary record; discard it on failure.
 * @return Nonzero only after complete prefix validation; enclosing fields may remain unread.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static int
    roswasmc_bounded_2_unitree_go_msg_BmsState_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_2_unitree_go_msg_BmsState* value)
{
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->version_high, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->version_low, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->status, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->soc, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->current, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 2)
    {
        return 0;
    }
    {
        uint16_t bits = (uint16_t)uwvm_bounded_get(p + *offset, 2);
        uwvm_bounded_copy(&value->cycle, &bits, 2);
    }
    *offset += 2;
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            if(*offset > n || n - *offset < 1)
            {
                return 0;
            }
            {
                uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
                uwvm_bounded_copy(&value->bq_ntc[i], &bits, 1);
            }
            *offset += 1;
        }
    }
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            if(*offset > n || n - *offset < 1)
            {
                return 0;
            }
            {
                uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
                uwvm_bounded_copy(&value->mcu_ntc[i], &bits, 1);
            }
            *offset += 1;
        }
    }
    {
        size_t i;
        for(i = 0; i < 15u; ++i)
        {
            if(*offset > n || n - *offset < 2)
            {
                return 0;
            }
            {
                uint16_t bits = (uint16_t)uwvm_bounded_get(p + *offset, 2);
                uwvm_bounded_copy(&value->cell_vol[i], &bits, 2);
            }
            *offset += 2;
        }
    }
    return roswasmc_bounded_2_unitree_go_msg_BmsState_valid(value);
}

/**
 * @brief Encode the complete unitree_go/msg/BmsState record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record.
 * @param[out] output Exclusive caller-owned byte storage, disjoint from value and length.
 * @param[in] capacity Available writable byte count.
 * @param[out] length Exact initialized byte count, written only on success.
 * @return Status 0 on success, 22 for invalid/overlapping values, or 90 for insufficient capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static uint32_t
    roswasmc_bounded_2_unitree_go_msg_BmsState_encode(roswasmc_bounded_2_unitree_go_msg_BmsState const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_unitree_go_msg_BmsState_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_unitree_go_msg_BmsState_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_unitree_go_msg_BmsState_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/**
 * @brief Decode exactly one complete unitree_go/msg/BmsState record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] input Immutable complete canonical body, disjoint from value.
 * @param[in] length Exact input byte count; trailing bytes are refused.
 * @param[out] value Caller-owned complete record; unchanged on every refusal.
 * @return Status 0 on complete success, otherwise 22; no partial record is exposed.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static uint32_t roswasmc_bounded_2_unitree_go_msg_BmsState_decode(void const* input, size_t length, roswasmc_bounded_2_unitree_go_msg_BmsState* value)
{
    roswasmc_bounded_2_unitree_go_msg_BmsState next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 44u || length > 44u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_unitree_go_msg_BmsState_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_ERROR)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_ERROR_0 != 0x6863c0fbUL ||                                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_ERROR_1 != 0xfba98c76UL ||                                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_ERROR_2 != 0x6e217835UL ||                                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_ERROR_3 != 0xc56a584dUL ||                                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_ERROR_4 != 0xa58c819dUL ||                                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_ERROR_5 != 0x0b59ce67UL ||                                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_ERROR_6 != 0xc9bf4bf2UL ||                                                                      \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_ERROR_7 != 0xebf90508UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_ERROR 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_ERROR_0 0x6863c0fbUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_ERROR_1 0xfba98c76UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_ERROR_2 0x6e217835UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_ERROR_3 0xc56a584dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_ERROR_4 0xa58c819dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_ERROR_5 0x0b59ce67UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_ERROR_6 0xc9bf4bf2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_ERROR_7 0xebf90508UL

/**
 * @brief Complete ROS 2 unitree_go/msg/Error value.
 * @details All 2 declared fields are retained in source order. The canonical representation occupies 8..8 bytes
 * and is identified by UWVMROS1_c3e572e08288b6ed0b32575e645fe546f92b5091d62e57db01ec00d27f5e4afd.
 * @native Original selected identity: RIHS01_7b40e63303d9092153a3914bb136ecee44ba37d8b827b11b142444eda9bc9450.
 * Compilation of matching native traits is a separate qualification.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_2_unitree_go_msg_Error
{
    /** @brief Declared field source; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/Error.source: uint32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgError; share/platform/ros/rs/API-CONTRACT.md
     */
    uint32_t source;
    /** @brief Declared field state; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/Error.state: uint32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgError; share/platform/ros/rs/API-CONTRACT.md
     */
    uint32_t state;
} roswasmc_bounded_2_unitree_go_msg_Error;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_ERROR_MAX_WIRE_BYTES 8u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_ERROR_MIN_WIRE_BYTES 8u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_ERROR_CODEC_IDENTITY "UWVMROS1_c3e572e08288b6ed0b32575e645fe546f92b5091d62e57db01ec00d27f5e4afd"

/**
 * @brief Validate every field of unitree_go/msg/Error.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static int roswasmc_bounded_2_unitree_go_msg_Error_valid(roswasmc_bounded_2_unitree_go_msg_Error const* value)
{
    if(!value)
    {
        return 0;
    }
    return 1;
}

/**
 * @brief Measure the complete active canonical extent of unitree_go/msg/Error.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static size_t roswasmc_bounded_2_unitree_go_msg_Error_wire_size(roswasmc_bounded_2_unitree_go_msg_Error const* value)
{
    size_t n = 0;
    n += 4;
    n += 4;
    return n;
}

/**
 * @brief Append all fields of unitree_go/msg/Error to an internal canonical buffer.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete prevalidated immutable record.
 * @param[out] p Sufficient exclusive output storage established by the public encoder.
 * @param[in,out] offset Exclusive initialized writer cursor.
 * @return No value; internal caller guarantees the measured capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static void roswasmc_bounded_2_unitree_go_msg_Error_write_fields(roswasmc_bounded_2_unitree_go_msg_Error const* value, unsigned char* p, size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->source, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, (uint64_t)value->state, 4);
    *offset += 4;
}

/**
 * @brief Decode the full ordered field prefix of unitree_go/msg/Error.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] p Borrowed canonical bytes, stable through return.
 * @param[in] n Available input extent in bytes.
 * @param[in,out] offset Exclusive initialized reader cursor.
 * @param[out] value Private temporary record; discard it on failure.
 * @return Nonzero only after complete prefix validation; enclosing fields may remain unread.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static int
    roswasmc_bounded_2_unitree_go_msg_Error_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_2_unitree_go_msg_Error* value)
{
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->source, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->state, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_2_unitree_go_msg_Error_valid(value);
}

/**
 * @brief Encode the complete unitree_go/msg/Error record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record.
 * @param[out] output Exclusive caller-owned byte storage, disjoint from value and length.
 * @param[in] capacity Available writable byte count.
 * @param[out] length Exact initialized byte count, written only on success.
 * @return Status 0 on success, 22 for invalid/overlapping values, or 90 for insufficient capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static uint32_t
    roswasmc_bounded_2_unitree_go_msg_Error_encode(roswasmc_bounded_2_unitree_go_msg_Error const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_unitree_go_msg_Error_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_unitree_go_msg_Error_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_unitree_go_msg_Error_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/**
 * @brief Decode exactly one complete unitree_go/msg/Error record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] input Immutable complete canonical body, disjoint from value.
 * @param[in] length Exact input byte count; trailing bytes are refused.
 * @param[out] value Caller-owned complete record; unchanged on every refusal.
 * @return Status 0 on complete success, otherwise 22; no partial record is exposed.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static uint32_t roswasmc_bounded_2_unitree_go_msg_Error_decode(void const* input, size_t length, roswasmc_bounded_2_unitree_go_msg_Error* value)
{
    roswasmc_bounded_2_unitree_go_msg_Error next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 8u || length > 8u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_unitree_go_msg_Error_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_GO2FRONTVIDEODATA)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_GO2FRONTVIDEODATA_0 != 0x9978b46bUL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_GO2FRONTVIDEODATA_1 != 0xe963e02cUL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_GO2FRONTVIDEODATA_2 != 0xa1ae21aaUL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_GO2FRONTVIDEODATA_3 != 0x0612e9e2UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_GO2FRONTVIDEODATA_4 != 0xe5f8a6eeUL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_GO2FRONTVIDEODATA_5 != 0xf9a2b6beUL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_GO2FRONTVIDEODATA_6 != 0x0a3b5e13UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_GO2FRONTVIDEODATA_7 != 0x7d2b3e95UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_GO2FRONTVIDEODATA 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_GO2FRONTVIDEODATA_0 0x9978b46bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_GO2FRONTVIDEODATA_1 0xe963e02cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_GO2FRONTVIDEODATA_2 0xa1ae21aaUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_GO2FRONTVIDEODATA_3 0x0612e9e2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_GO2FRONTVIDEODATA_4 0xe5f8a6eeUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_GO2FRONTVIDEODATA_5 0xf9a2b6beUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_GO2FRONTVIDEODATA_6 0x0a3b5e13UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_GO2FRONTVIDEODATA_7 0x7d2b3e95UL

/**
 * @brief Own a bounded canonical sequence or UTF-8 byte string inline.
 * @details The active size is 0 through 2048. Unused capacity is never serialized or read. This Guest storage is
 * neither a native ROS allocation nor an authority token.
 */
typedef struct
{
    /**
     * @brief Number of initialized active elements.
     * @details Must be no greater than 2048; decoders and encoders reject larger values without truncation.
     */
    uint32_t size;
    /**
     * @brief Caller-owned complete finite element capacity.
     * @details Only the initialized active size prefix is meaningful. Retain that prefix unchanged through
     * synchronous encoding; no native pointer or permission is stored.
     */
    uint8_t data[2048];
} roswasmc_bounded_2_unitree_go_msg_Go2FrontVideoData_video720p_sequence;

/**
 * @brief Own a bounded canonical sequence or UTF-8 byte string inline.
 * @details The active size is 0 through 2048. Unused capacity is never serialized or read. This Guest storage is
 * neither a native ROS allocation nor an authority token.
 */
typedef struct
{
    /**
     * @brief Number of initialized active elements.
     * @details Must be no greater than 2048; decoders and encoders reject larger values without truncation.
     */
    uint32_t size;
    /**
     * @brief Caller-owned complete finite element capacity.
     * @details Only the initialized active size prefix is meaningful. Retain that prefix unchanged through
     * synchronous encoding; no native pointer or permission is stored.
     */
    uint8_t data[2048];
} roswasmc_bounded_2_unitree_go_msg_Go2FrontVideoData_video360p_sequence;

/**
 * @brief Own a bounded canonical sequence or UTF-8 byte string inline.
 * @details The active size is 0 through 2048. Unused capacity is never serialized or read. This Guest storage is
 * neither a native ROS allocation nor an authority token.
 */
typedef struct
{
    /**
     * @brief Number of initialized active elements.
     * @details Must be no greater than 2048; decoders and encoders reject larger values without truncation.
     */
    uint32_t size;
    /**
     * @brief Caller-owned complete finite element capacity.
     * @details Only the initialized active size prefix is meaningful. Retain that prefix unchanged through
     * synchronous encoding; no native pointer or permission is stored.
     */
    uint8_t data[2048];
} roswasmc_bounded_2_unitree_go_msg_Go2FrontVideoData_video180p_sequence;

/**
 * @brief Complete ROS 2 unitree_go/msg/Go2FrontVideoData value.
 * @details All 4 declared fields are retained in source order. The canonical representation occupies 20..6164
 * bytes and is identified by UWVMROS1_07754cf58566a40dcc5a806fa6a346c260931d588eacfdad46f2fc9a168f3cad.
 * @native Original selected identity: RIHS01_f548f7ccf101bb0255b0541484ab42aaac31305ccba06db976a8a19a3dbb1a33.
 * Compilation of matching native traits is a separate qualification.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_2_unitree_go_msg_Go2FrontVideoData
{
    /** @brief Declared field time_frame; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/Go2FrontVideoData.time_frame: uint64.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgGo2FrontVideoData; share/platform/ros/rs/API-CONTRACT.md
     */
    uint64_t time_frame;
    /** @brief Declared field video720p; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/Go2FrontVideoData.video720p: uint8; 0..2048 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgGo2FrontVideoData; share/platform/ros/rs/API-CONTRACT.md
     */
    roswasmc_bounded_2_unitree_go_msg_Go2FrontVideoData_video720p_sequence video720p;
    /** @brief Declared field video360p; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/Go2FrontVideoData.video360p: uint8; 0..2048 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgGo2FrontVideoData; share/platform/ros/rs/API-CONTRACT.md
     */
    roswasmc_bounded_2_unitree_go_msg_Go2FrontVideoData_video360p_sequence video360p;
    /** @brief Declared field video180p; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/Go2FrontVideoData.video180p: uint8; 0..2048 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgGo2FrontVideoData; share/platform/ros/rs/API-CONTRACT.md
     */
    roswasmc_bounded_2_unitree_go_msg_Go2FrontVideoData_video180p_sequence video180p;
} roswasmc_bounded_2_unitree_go_msg_Go2FrontVideoData;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_GO2FRONTVIDEODATA_MAX_WIRE_BYTES 6164u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_GO2FRONTVIDEODATA_MIN_WIRE_BYTES 20u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_GO2FRONTVIDEODATA_CODEC_IDENTITY "UWVMROS1_07754cf58566a40dcc5a806fa6a346c260931d588eacfdad46f2fc9a168f3cad"

/**
 * @brief Validate every field of unitree_go/msg/Go2FrontVideoData.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static int roswasmc_bounded_2_unitree_go_msg_Go2FrontVideoData_valid(roswasmc_bounded_2_unitree_go_msg_Go2FrontVideoData const* value)
{
    if(!value)
    {
        return 0;
    }
    if(value->video720p.size > 2048u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->video720p.size; ++i)
        {
        }
    }
    if(value->video360p.size > 2048u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->video360p.size; ++i)
        {
        }
    }
    if(value->video180p.size > 2048u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->video180p.size; ++i)
        {
        }
    }
    return 1;
}

/**
 * @brief Measure the complete active canonical extent of unitree_go/msg/Go2FrontVideoData.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static size_t roswasmc_bounded_2_unitree_go_msg_Go2FrontVideoData_wire_size(roswasmc_bounded_2_unitree_go_msg_Go2FrontVideoData const* value)
{
    size_t n = 0;
    n += 8;
    n += 4;
    if(value->video720p.size > 2048u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->video720p.size; ++i)
        {
            n += 1;
        }
    }
    n += 4;
    if(value->video360p.size > 2048u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->video360p.size; ++i)
        {
            n += 1;
        }
    }
    n += 4;
    if(value->video180p.size > 2048u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->video180p.size; ++i)
        {
            n += 1;
        }
    }
    return n;
}

/**
 * @brief Append all fields of unitree_go/msg/Go2FrontVideoData to an internal canonical buffer.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete prevalidated immutable record.
 * @param[out] p Sufficient exclusive output storage established by the public encoder.
 * @param[in,out] offset Exclusive initialized writer cursor.
 * @return No value; internal caller guarantees the measured capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static void roswasmc_bounded_2_unitree_go_msg_Go2FrontVideoData_write_fields(roswasmc_bounded_2_unitree_go_msg_Go2FrontVideoData const* value,
                                                                                    unsigned char* p,
                                                                                    size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->time_frame, 8);
    *offset += 8;
    uwvm_bounded_put(p + *offset, value->video720p.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->video720p.size; ++i)
        {
            uwvm_bounded_put(p + *offset, (uint64_t)value->video720p.data[i], 1);
            *offset += 1;
        }
    }
    uwvm_bounded_put(p + *offset, value->video360p.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->video360p.size; ++i)
        {
            uwvm_bounded_put(p + *offset, (uint64_t)value->video360p.data[i], 1);
            *offset += 1;
        }
    }
    uwvm_bounded_put(p + *offset, value->video180p.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->video180p.size; ++i)
        {
            uwvm_bounded_put(p + *offset, (uint64_t)value->video180p.data[i], 1);
            *offset += 1;
        }
    }
}

/**
 * @brief Decode the full ordered field prefix of unitree_go/msg/Go2FrontVideoData.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] p Borrowed canonical bytes, stable through return.
 * @param[in] n Available input extent in bytes.
 * @param[in,out] offset Exclusive initialized reader cursor.
 * @param[out] value Private temporary record; discard it on failure.
 * @return Nonzero only after complete prefix validation; enclosing fields may remain unread.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static int roswasmc_bounded_2_unitree_go_msg_Go2FrontVideoData_read_fields(unsigned char const* p,
                                                                                  size_t n,
                                                                                  size_t* offset,
                                                                                  roswasmc_bounded_2_unitree_go_msg_Go2FrontVideoData* value)
{
    if(*offset > n || n - *offset < 8)
    {
        return 0;
    }
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->time_frame, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->video720p.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->video720p.size > 2048u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->video720p.size; ++i)
        {
            if(*offset > n || n - *offset < 1)
            {
                return 0;
            }
            {
                uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
                uwvm_bounded_copy(&value->video720p.data[i], &bits, 1);
            }
            *offset += 1;
        }
    }
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->video360p.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->video360p.size > 2048u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->video360p.size; ++i)
        {
            if(*offset > n || n - *offset < 1)
            {
                return 0;
            }
            {
                uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
                uwvm_bounded_copy(&value->video360p.data[i], &bits, 1);
            }
            *offset += 1;
        }
    }
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->video180p.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->video180p.size > 2048u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->video180p.size; ++i)
        {
            if(*offset > n || n - *offset < 1)
            {
                return 0;
            }
            {
                uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
                uwvm_bounded_copy(&value->video180p.data[i], &bits, 1);
            }
            *offset += 1;
        }
    }
    return roswasmc_bounded_2_unitree_go_msg_Go2FrontVideoData_valid(value);
}

/**
 * @brief Encode the complete unitree_go/msg/Go2FrontVideoData record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record.
 * @param[out] output Exclusive caller-owned byte storage, disjoint from value and length.
 * @param[in] capacity Available writable byte count.
 * @param[out] length Exact initialized byte count, written only on success.
 * @return Status 0 on success, 22 for invalid/overlapping values, or 90 for insufficient capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static uint32_t roswasmc_bounded_2_unitree_go_msg_Go2FrontVideoData_encode(roswasmc_bounded_2_unitree_go_msg_Go2FrontVideoData const* value,
                                                                                  void* output,
                                                                                  size_t capacity,
                                                                                  size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_unitree_go_msg_Go2FrontVideoData_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_unitree_go_msg_Go2FrontVideoData_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_unitree_go_msg_Go2FrontVideoData_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/**
 * @brief Decode exactly one complete unitree_go/msg/Go2FrontVideoData record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] input Immutable complete canonical body, disjoint from value.
 * @param[in] length Exact input byte count; trailing bytes are refused.
 * @param[out] value Caller-owned complete record; unchanged on every refusal.
 * @return Status 0 on complete success, otherwise 22; no partial record is exposed.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static uint32_t
    roswasmc_bounded_2_unitree_go_msg_Go2FrontVideoData_decode(void const* input, size_t length, roswasmc_bounded_2_unitree_go_msg_Go2FrontVideoData* value)
{
    roswasmc_bounded_2_unitree_go_msg_Go2FrontVideoData next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 20u || length > 6164u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_unitree_go_msg_Go2FrontVideoData_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_HEIGHTMAP)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_HEIGHTMAP_0 != 0x601977f2UL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_HEIGHTMAP_1 != 0x7e8e09baUL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_HEIGHTMAP_2 != 0x056e5ff0UL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_HEIGHTMAP_3 != 0xbd609aa7UL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_HEIGHTMAP_4 != 0x4968d4d8UL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_HEIGHTMAP_5 != 0x0a167bb3UL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_HEIGHTMAP_6 != 0xbb2e631eUL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_HEIGHTMAP_7 != 0x77e017f0UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_HEIGHTMAP 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_HEIGHTMAP_0 0x601977f2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_HEIGHTMAP_1 0x7e8e09baUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_HEIGHTMAP_2 0x056e5ff0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_HEIGHTMAP_3 0xbd609aa7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_HEIGHTMAP_4 0x4968d4d8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_HEIGHTMAP_5 0x0a167bb3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_HEIGHTMAP_6 0xbb2e631eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_HEIGHTMAP_7 0x77e017f0UL

/**
 * @brief Own a bounded canonical sequence or UTF-8 byte string inline.
 * @details The active size is 0 through 2048. Unused capacity is never serialized or read. This Guest storage is
 * neither a native ROS allocation nor an authority token.
 */
typedef struct
{
    /**
     * @brief Number of initialized active elements.
     * @details Must be no greater than 2048; decoders and encoders reject larger values without truncation.
     */
    uint32_t size;
    /**
     * @brief Caller-owned complete finite element capacity.
     * @details Only the initialized active size prefix is meaningful. Retain that prefix unchanged through
     * synchronous encoding; no native pointer or permission is stored.
     */
    unsigned char data[2048];
} roswasmc_bounded_2_unitree_go_msg_HeightMap_frame_id_text;

/**
 * @brief Own a bounded canonical sequence or UTF-8 byte string inline.
 * @details The active size is 0 through 32. Unused capacity is never serialized or read. This Guest storage is
 * neither a native ROS allocation nor an authority token.
 */
typedef struct
{
    /**
     * @brief Number of initialized active elements.
     * @details Must be no greater than 32; decoders and encoders reject larger values without truncation.
     */
    uint32_t size;
    /**
     * @brief Caller-owned complete finite element capacity.
     * @details Only the initialized active size prefix is meaningful. Retain that prefix unchanged through
     * synchronous encoding; no native pointer or permission is stored.
     */
    float data[32];
} roswasmc_bounded_2_unitree_go_msg_HeightMap_data_sequence;

/**
 * @brief Complete ROS 2 unitree_go/msg/HeightMap value.
 * @details All 7 declared fields are retained in source order. The canonical representation occupies 36..2212
 * bytes and is identified by UWVMROS1_fb1787b6d02f3110a081629fee6b9968118ffd9b3e05ed1eb2873832c89da56d.
 * @native Original selected identity: RIHS01_68275718093f292da4fa0cb893b0e77660de92eb950691e1fe9f499d6cf5bff3.
 * Compilation of matching native traits is a separate qualification.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_2_unitree_go_msg_HeightMap
{
    /** @brief Declared field stamp; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/HeightMap.stamp: float64.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgHeightMap; share/platform/ros/rs/API-CONTRACT.md
     */
    double stamp;
    /** @brief Declared field frame_id; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/HeightMap.frame_id: string; each string is 0..2048 bytes; strict UTF-8 with no embedded
     * NUL.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgHeightMap; share/platform/ros/rs/API-CONTRACT.md
     */
    roswasmc_bounded_2_unitree_go_msg_HeightMap_frame_id_text frame_id;
    /** @brief Declared field resolution; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/HeightMap.resolution: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgHeightMap; share/platform/ros/rs/API-CONTRACT.md
     */
    float resolution;
    /** @brief Declared field width; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/HeightMap.width: uint32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgHeightMap; share/platform/ros/rs/API-CONTRACT.md
     */
    uint32_t width;
    /** @brief Declared field height; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/HeightMap.height: uint32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgHeightMap; share/platform/ros/rs/API-CONTRACT.md
     */
    uint32_t height;
    /** @brief Declared field origin; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/HeightMap.origin: float32; exactly 2 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgHeightMap; share/platform/ros/rs/API-CONTRACT.md
     */
    float origin[2];
    /** @brief Declared field data; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/HeightMap.data: float32; 0..32 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgHeightMap; share/platform/ros/rs/API-CONTRACT.md
     */
    roswasmc_bounded_2_unitree_go_msg_HeightMap_data_sequence data;
} roswasmc_bounded_2_unitree_go_msg_HeightMap;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_HEIGHTMAP_MAX_WIRE_BYTES 2212u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_HEIGHTMAP_MIN_WIRE_BYTES 36u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_HEIGHTMAP_CODEC_IDENTITY "UWVMROS1_fb1787b6d02f3110a081629fee6b9968118ffd9b3e05ed1eb2873832c89da56d"

/**
 * @brief Validate every field of unitree_go/msg/HeightMap.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static int roswasmc_bounded_2_unitree_go_msg_HeightMap_valid(roswasmc_bounded_2_unitree_go_msg_HeightMap const* value)
{
    if(!value)
    {
        return 0;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->stamp, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
        {
            return 0;
        }
    }
    if(value->frame_id.size > 2048u || !uwvm_bounded_utf8(value->frame_id.data, value->frame_id.size))
    {
        return 0;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->resolution, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
        {
            return 0;
        }
    }
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            {
                uint32_t bits;
                uwvm_bounded_copy(&bits, &value->origin[i], 4);
                if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
                {
                    return 0;
                }
            }
        }
    }
    if(value->data.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->data.size; ++i)
        {
            {
                uint32_t bits;
                uwvm_bounded_copy(&bits, &value->data.data[i], 4);
                if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
                {
                    return 0;
                }
            }
        }
    }
    return 1;
}

/**
 * @brief Measure the complete active canonical extent of unitree_go/msg/HeightMap.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static size_t roswasmc_bounded_2_unitree_go_msg_HeightMap_wire_size(roswasmc_bounded_2_unitree_go_msg_HeightMap const* value)
{
    size_t n = 0;
    n += 8;
    n += 4 + value->frame_id.size;
    n += 4;
    n += 4;
    n += 4;
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            n += 4;
        }
    }
    n += 4;
    if(value->data.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->data.size; ++i)
        {
            n += 4;
        }
    }
    return n;
}

/**
 * @brief Append all fields of unitree_go/msg/HeightMap to an internal canonical buffer.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete prevalidated immutable record.
 * @param[out] p Sufficient exclusive output storage established by the public encoder.
 * @param[in,out] offset Exclusive initialized writer cursor.
 * @return No value; internal caller guarantees the measured capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static void
    roswasmc_bounded_2_unitree_go_msg_HeightMap_write_fields(roswasmc_bounded_2_unitree_go_msg_HeightMap const* value, unsigned char* p, size_t* offset)
{
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->stamp, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    uwvm_bounded_put(p + *offset, value->frame_id.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->frame_id.data, value->frame_id.size);
    *offset += value->frame_id.size;
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->resolution, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    uwvm_bounded_put(p + *offset, (uint64_t)value->width, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, (uint64_t)value->height, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            {
                uint32_t bits;
                uwvm_bounded_copy(&bits, &value->origin[i], 4);
                uwvm_bounded_put(p + *offset, bits, 4);
                *offset += 4;
            }
        }
    }
    uwvm_bounded_put(p + *offset, value->data.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->data.size; ++i)
        {
            {
                uint32_t bits;
                uwvm_bounded_copy(&bits, &value->data.data[i], 4);
                uwvm_bounded_put(p + *offset, bits, 4);
                *offset += 4;
            }
        }
    }
}

/**
 * @brief Decode the full ordered field prefix of unitree_go/msg/HeightMap.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] p Borrowed canonical bytes, stable through return.
 * @param[in] n Available input extent in bytes.
 * @param[in,out] offset Exclusive initialized reader cursor.
 * @param[out] value Private temporary record; discard it on failure.
 * @return Nonzero only after complete prefix validation; enclosing fields may remain unread.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static int roswasmc_bounded_2_unitree_go_msg_HeightMap_read_fields(unsigned char const* p,
                                                                          size_t n,
                                                                          size_t* offset,
                                                                          roswasmc_bounded_2_unitree_go_msg_HeightMap* value)
{
    if(*offset > n || n - *offset < 8)
    {
        return 0;
    }
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->stamp, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->frame_id.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->frame_id.size > 2048u || value->frame_id.size > n - *offset)
    {
        return 0;
    }
    uwvm_bounded_copy(value->frame_id.data, p + *offset, value->frame_id.size);
    *offset += value->frame_id.size;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->resolution, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->width, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->height, &bits, 4);
    }
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            if(*offset > n || n - *offset < 4)
            {
                return 0;
            }
            {
                uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
                uwvm_bounded_copy(&value->origin[i], &bits, 4);
            }
            *offset += 4;
        }
    }
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->data.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->data.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->data.size; ++i)
        {
            if(*offset > n || n - *offset < 4)
            {
                return 0;
            }
            {
                uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
                uwvm_bounded_copy(&value->data.data[i], &bits, 4);
            }
            *offset += 4;
        }
    }
    return roswasmc_bounded_2_unitree_go_msg_HeightMap_valid(value);
}

/**
 * @brief Encode the complete unitree_go/msg/HeightMap record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record.
 * @param[out] output Exclusive caller-owned byte storage, disjoint from value and length.
 * @param[in] capacity Available writable byte count.
 * @param[out] length Exact initialized byte count, written only on success.
 * @return Status 0 on success, 22 for invalid/overlapping values, or 90 for insufficient capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static uint32_t
    roswasmc_bounded_2_unitree_go_msg_HeightMap_encode(roswasmc_bounded_2_unitree_go_msg_HeightMap const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_unitree_go_msg_HeightMap_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_unitree_go_msg_HeightMap_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_unitree_go_msg_HeightMap_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/**
 * @brief Decode exactly one complete unitree_go/msg/HeightMap record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] input Immutable complete canonical body, disjoint from value.
 * @param[in] length Exact input byte count; trailing bytes are refused.
 * @param[out] value Caller-owned complete record; unchanged on every refusal.
 * @return Status 0 on complete success, otherwise 22; no partial record is exposed.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static uint32_t roswasmc_bounded_2_unitree_go_msg_HeightMap_decode(void const* input, size_t length, roswasmc_bounded_2_unitree_go_msg_HeightMap* value)
{
    roswasmc_bounded_2_unitree_go_msg_HeightMap next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 36u || length > 2212u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_unitree_go_msg_HeightMap_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_IMUSTATE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_IMUSTATE_0 != 0xbb531a5aUL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_IMUSTATE_1 != 0x92dbc025UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_IMUSTATE_2 != 0x99f5aab4UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_IMUSTATE_3 != 0x8b3b7d3aUL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_IMUSTATE_4 != 0x7ee37d11UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_IMUSTATE_5 != 0x2ba60224UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_IMUSTATE_6 != 0x2538a8e9UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_IMUSTATE_7 != 0xb11f7a34UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_IMUSTATE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_IMUSTATE_0 0xbb531a5aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_IMUSTATE_1 0x92dbc025UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_IMUSTATE_2 0x99f5aab4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_IMUSTATE_3 0x8b3b7d3aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_IMUSTATE_4 0x7ee37d11UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_IMUSTATE_5 0x2ba60224UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_IMUSTATE_6 0x2538a8e9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_IMUSTATE_7 0xb11f7a34UL

/**
 * @brief Complete ROS 2 unitree_go/msg/IMUState value.
 * @details All 5 declared fields are retained in source order. The canonical representation occupies 53..53
 * bytes and is identified by UWVMROS1_e5326e97c3bfaa06962ad1989d1aa13fa0e60af15d39d9ef6da6ac0a37261bbc.
 * @native Original selected identity: RIHS01_226772531e06ca5768dad7ae264221622e92ba1dbc7fcd7f8074351a23fe1c11.
 * Compilation of matching native traits is a separate qualification.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_2_unitree_go_msg_IMUState
{
    /** @brief Declared field quaternion; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/IMUState.quaternion: float32; exactly 4 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgIMUState; share/platform/ros/rs/API-CONTRACT.md
     */
    float quaternion[4];
    /** @brief Declared field gyroscope; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/IMUState.gyroscope: float32; exactly 3 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgIMUState; share/platform/ros/rs/API-CONTRACT.md
     */
    float gyroscope[3];
    /** @brief Declared field accelerometer; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/IMUState.accelerometer: float32; exactly 3 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgIMUState; share/platform/ros/rs/API-CONTRACT.md
     */
    float accelerometer[3];
    /** @brief Declared field rpy; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/IMUState.rpy: float32; exactly 3 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgIMUState; share/platform/ros/rs/API-CONTRACT.md
     */
    float rpy[3];
    /** @brief Declared field temperature; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/IMUState.temperature: int8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgIMUState; share/platform/ros/rs/API-CONTRACT.md
     */
    int8_t temperature;
} roswasmc_bounded_2_unitree_go_msg_IMUState;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_IMUSTATE_MAX_WIRE_BYTES 53u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_IMUSTATE_MIN_WIRE_BYTES 53u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_IMUSTATE_CODEC_IDENTITY "UWVMROS1_e5326e97c3bfaa06962ad1989d1aa13fa0e60af15d39d9ef6da6ac0a37261bbc"

/**
 * @brief Validate every field of unitree_go/msg/IMUState.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static int roswasmc_bounded_2_unitree_go_msg_IMUState_valid(roswasmc_bounded_2_unitree_go_msg_IMUState const* value)
{
    if(!value)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < 4u; ++i)
        {
            {
                uint32_t bits;
                uwvm_bounded_copy(&bits, &value->quaternion[i], 4);
                if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
                {
                    return 0;
                }
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 3u; ++i)
        {
            {
                uint32_t bits;
                uwvm_bounded_copy(&bits, &value->gyroscope[i], 4);
                if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
                {
                    return 0;
                }
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 3u; ++i)
        {
            {
                uint32_t bits;
                uwvm_bounded_copy(&bits, &value->accelerometer[i], 4);
                if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
                {
                    return 0;
                }
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 3u; ++i)
        {
            {
                uint32_t bits;
                uwvm_bounded_copy(&bits, &value->rpy[i], 4);
                if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
                {
                    return 0;
                }
            }
        }
    }
    return 1;
}

/**
 * @brief Measure the complete active canonical extent of unitree_go/msg/IMUState.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static size_t roswasmc_bounded_2_unitree_go_msg_IMUState_wire_size(roswasmc_bounded_2_unitree_go_msg_IMUState const* value)
{
    size_t n = 0;
    {
        size_t i;
        for(i = 0; i < 4u; ++i)
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
    {
        size_t i;
        for(i = 0; i < 3u; ++i)
        {
            n += 4;
        }
    }
    n += 1;
    return n;
}

/**
 * @brief Append all fields of unitree_go/msg/IMUState to an internal canonical buffer.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete prevalidated immutable record.
 * @param[out] p Sufficient exclusive output storage established by the public encoder.
 * @param[in,out] offset Exclusive initialized writer cursor.
 * @return No value; internal caller guarantees the measured capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static void
    roswasmc_bounded_2_unitree_go_msg_IMUState_write_fields(roswasmc_bounded_2_unitree_go_msg_IMUState const* value, unsigned char* p, size_t* offset)
{
    {
        size_t i;
        for(i = 0; i < 4u; ++i)
        {
            {
                uint32_t bits;
                uwvm_bounded_copy(&bits, &value->quaternion[i], 4);
                uwvm_bounded_put(p + *offset, bits, 4);
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
                uwvm_bounded_copy(&bits, &value->gyroscope[i], 4);
                uwvm_bounded_put(p + *offset, bits, 4);
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
                uwvm_bounded_copy(&bits, &value->accelerometer[i], 4);
                uwvm_bounded_put(p + *offset, bits, 4);
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
                uwvm_bounded_copy(&bits, &value->rpy[i], 4);
                uwvm_bounded_put(p + *offset, bits, 4);
                *offset += 4;
            }
        }
    }
    uwvm_bounded_put(p + *offset, (uint64_t)value->temperature, 1);
    *offset += 1;
}

/**
 * @brief Decode the full ordered field prefix of unitree_go/msg/IMUState.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] p Borrowed canonical bytes, stable through return.
 * @param[in] n Available input extent in bytes.
 * @param[in,out] offset Exclusive initialized reader cursor.
 * @param[out] value Private temporary record; discard it on failure.
 * @return Nonzero only after complete prefix validation; enclosing fields may remain unread.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static int
    roswasmc_bounded_2_unitree_go_msg_IMUState_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_2_unitree_go_msg_IMUState* value)
{
    {
        size_t i;
        for(i = 0; i < 4u; ++i)
        {
            if(*offset > n || n - *offset < 4)
            {
                return 0;
            }
            {
                uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
                uwvm_bounded_copy(&value->quaternion[i], &bits, 4);
            }
            *offset += 4;
        }
    }
    {
        size_t i;
        for(i = 0; i < 3u; ++i)
        {
            if(*offset > n || n - *offset < 4)
            {
                return 0;
            }
            {
                uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
                uwvm_bounded_copy(&value->gyroscope[i], &bits, 4);
            }
            *offset += 4;
        }
    }
    {
        size_t i;
        for(i = 0; i < 3u; ++i)
        {
            if(*offset > n || n - *offset < 4)
            {
                return 0;
            }
            {
                uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
                uwvm_bounded_copy(&value->accelerometer[i], &bits, 4);
            }
            *offset += 4;
        }
    }
    {
        size_t i;
        for(i = 0; i < 3u; ++i)
        {
            if(*offset > n || n - *offset < 4)
            {
                return 0;
            }
            {
                uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
                uwvm_bounded_copy(&value->rpy[i], &bits, 4);
            }
            *offset += 4;
        }
    }
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->temperature, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_2_unitree_go_msg_IMUState_valid(value);
}

/**
 * @brief Encode the complete unitree_go/msg/IMUState record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record.
 * @param[out] output Exclusive caller-owned byte storage, disjoint from value and length.
 * @param[in] capacity Available writable byte count.
 * @param[out] length Exact initialized byte count, written only on success.
 * @return Status 0 on success, 22 for invalid/overlapping values, or 90 for insufficient capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static uint32_t
    roswasmc_bounded_2_unitree_go_msg_IMUState_encode(roswasmc_bounded_2_unitree_go_msg_IMUState const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_unitree_go_msg_IMUState_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_unitree_go_msg_IMUState_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_unitree_go_msg_IMUState_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/**
 * @brief Decode exactly one complete unitree_go/msg/IMUState record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] input Immutable complete canonical body, disjoint from value.
 * @param[in] length Exact input byte count; trailing bytes are refused.
 * @param[out] value Caller-owned complete record; unchanged on every refusal.
 * @return Status 0 on complete success, otherwise 22; no partial record is exposed.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static uint32_t roswasmc_bounded_2_unitree_go_msg_IMUState_decode(void const* input, size_t length, roswasmc_bounded_2_unitree_go_msg_IMUState* value)
{
    roswasmc_bounded_2_unitree_go_msg_IMUState next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 53u || length > 53u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_unitree_go_msg_IMUState_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_INTERFACECONFIG)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_INTERFACECONFIG_0 != 0xb0b198fbUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_INTERFACECONFIG_1 != 0xa168aa6eUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_INTERFACECONFIG_2 != 0xbd620191UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_INTERFACECONFIG_3 != 0xe285e14aUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_INTERFACECONFIG_4 != 0xbd7611b2UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_INTERFACECONFIG_5 != 0x7ecac52eUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_INTERFACECONFIG_6 != 0xe91ac232UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_INTERFACECONFIG_7 != 0xc39769f6UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_INTERFACECONFIG 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_INTERFACECONFIG_0 0xb0b198fbUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_INTERFACECONFIG_1 0xa168aa6eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_INTERFACECONFIG_2 0xbd620191UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_INTERFACECONFIG_3 0xe285e14aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_INTERFACECONFIG_4 0xbd7611b2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_INTERFACECONFIG_5 0x7ecac52eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_INTERFACECONFIG_6 0xe91ac232UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_INTERFACECONFIG_7 0xc39769f6UL

/**
 * @brief Complete ROS 2 unitree_go/msg/InterfaceConfig value.
 * @details All 3 declared fields are retained in source order. The canonical representation occupies 4..4 bytes
 * and is identified by UWVMROS1_9b96ed6672f6a3e039edb28dec8384cd195116dda929d5ba7be85ef7e7668110.
 * @native Original selected identity: RIHS01_78cdda3cfbbfeb9b32fca9a056727419ed88f908ed99c64e7b810f35281be61b.
 * Compilation of matching native traits is a separate qualification.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_2_unitree_go_msg_InterfaceConfig
{
    /** @brief Declared field mode; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/InterfaceConfig.mode: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgInterfaceConfig; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t mode;
    /** @brief Declared field value; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/InterfaceConfig.value: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgInterfaceConfig; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t value;
    /** @brief Declared field reserve; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/InterfaceConfig.reserve: uint8; exactly 2 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgInterfaceConfig; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t reserve[2];
} roswasmc_bounded_2_unitree_go_msg_InterfaceConfig;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_INTERFACECONFIG_MAX_WIRE_BYTES 4u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_INTERFACECONFIG_MIN_WIRE_BYTES 4u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_INTERFACECONFIG_CODEC_IDENTITY "UWVMROS1_9b96ed6672f6a3e039edb28dec8384cd195116dda929d5ba7be85ef7e7668110"

/**
 * @brief Validate every field of unitree_go/msg/InterfaceConfig.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static int roswasmc_bounded_2_unitree_go_msg_InterfaceConfig_valid(roswasmc_bounded_2_unitree_go_msg_InterfaceConfig const* value)
{
    if(!value)
    {
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

/**
 * @brief Measure the complete active canonical extent of unitree_go/msg/InterfaceConfig.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static size_t roswasmc_bounded_2_unitree_go_msg_InterfaceConfig_wire_size(roswasmc_bounded_2_unitree_go_msg_InterfaceConfig const* value)
{
    size_t n = 0;
    n += 1;
    n += 1;
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            n += 1;
        }
    }
    return n;
}

/**
 * @brief Append all fields of unitree_go/msg/InterfaceConfig to an internal canonical buffer.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete prevalidated immutable record.
 * @param[out] p Sufficient exclusive output storage established by the public encoder.
 * @param[in,out] offset Exclusive initialized writer cursor.
 * @return No value; internal caller guarantees the measured capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static void roswasmc_bounded_2_unitree_go_msg_InterfaceConfig_write_fields(roswasmc_bounded_2_unitree_go_msg_InterfaceConfig const* value,
                                                                                  unsigned char* p,
                                                                                  size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->mode, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->value, 1);
    *offset += 1;
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            uwvm_bounded_put(p + *offset, (uint64_t)value->reserve[i], 1);
            *offset += 1;
        }
    }
}

/**
 * @brief Decode the full ordered field prefix of unitree_go/msg/InterfaceConfig.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] p Borrowed canonical bytes, stable through return.
 * @param[in] n Available input extent in bytes.
 * @param[in,out] offset Exclusive initialized reader cursor.
 * @param[out] value Private temporary record; discard it on failure.
 * @return Nonzero only after complete prefix validation; enclosing fields may remain unread.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static int roswasmc_bounded_2_unitree_go_msg_InterfaceConfig_read_fields(unsigned char const* p,
                                                                                size_t n,
                                                                                size_t* offset,
                                                                                roswasmc_bounded_2_unitree_go_msg_InterfaceConfig* value)
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
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->value, &bits, 1);
    }
    *offset += 1;
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            if(*offset > n || n - *offset < 1)
            {
                return 0;
            }
            {
                uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
                uwvm_bounded_copy(&value->reserve[i], &bits, 1);
            }
            *offset += 1;
        }
    }
    return roswasmc_bounded_2_unitree_go_msg_InterfaceConfig_valid(value);
}

/**
 * @brief Encode the complete unitree_go/msg/InterfaceConfig record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record.
 * @param[out] output Exclusive caller-owned byte storage, disjoint from value and length.
 * @param[in] capacity Available writable byte count.
 * @param[out] length Exact initialized byte count, written only on success.
 * @return Status 0 on success, 22 for invalid/overlapping values, or 90 for insufficient capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static uint32_t roswasmc_bounded_2_unitree_go_msg_InterfaceConfig_encode(roswasmc_bounded_2_unitree_go_msg_InterfaceConfig const* value,
                                                                                void* output,
                                                                                size_t capacity,
                                                                                size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_unitree_go_msg_InterfaceConfig_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_unitree_go_msg_InterfaceConfig_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_unitree_go_msg_InterfaceConfig_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/**
 * @brief Decode exactly one complete unitree_go/msg/InterfaceConfig record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] input Immutable complete canonical body, disjoint from value.
 * @param[in] length Exact input byte count; trailing bytes are refused.
 * @param[out] value Caller-owned complete record; unchanged on every refusal.
 * @return Status 0 on complete success, otherwise 22; no partial record is exposed.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static uint32_t
    roswasmc_bounded_2_unitree_go_msg_InterfaceConfig_decode(void const* input, size_t length, roswasmc_bounded_2_unitree_go_msg_InterfaceConfig* value)
{
    roswasmc_bounded_2_unitree_go_msg_InterfaceConfig next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 4u || length > 4u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_unitree_go_msg_InterfaceConfig_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_LIDARSTATE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_LIDARSTATE_0 != 0x830dbcf7UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_LIDARSTATE_1 != 0xf91c0f40UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_LIDARSTATE_2 != 0x61af1c51UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_LIDARSTATE_3 != 0xb0ba4022UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_LIDARSTATE_4 != 0x19e696bbUL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_LIDARSTATE_5 != 0x8f00d506UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_LIDARSTATE_6 != 0xdd5c20adUL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_LIDARSTATE_7 != 0x32325282UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_LIDARSTATE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_LIDARSTATE_0 0x830dbcf7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_LIDARSTATE_1 0xf91c0f40UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_LIDARSTATE_2 0x61af1c51UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_LIDARSTATE_3 0xb0ba4022UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_LIDARSTATE_4 0x19e696bbUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_LIDARSTATE_5 0x8f00d506UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_LIDARSTATE_6 0xdd5c20adUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_LIDARSTATE_7 0x32325282UL

/**
 * @brief Own a bounded canonical sequence or UTF-8 byte string inline.
 * @details The active size is 0 through 2048. Unused capacity is never serialized or read. This Guest storage is
 * neither a native ROS allocation nor an authority token.
 */
typedef struct
{
    /**
     * @brief Number of initialized active elements.
     * @details Must be no greater than 2048; decoders and encoders reject larger values without truncation.
     */
    uint32_t size;
    /**
     * @brief Caller-owned complete finite element capacity.
     * @details Only the initialized active size prefix is meaningful. Retain that prefix unchanged through
     * synchronous encoding; no native pointer or permission is stored.
     */
    unsigned char data[2048];
} roswasmc_bounded_2_unitree_go_msg_LidarState_firmware_version_text;

/**
 * @brief Own a bounded canonical sequence or UTF-8 byte string inline.
 * @details The active size is 0 through 2048. Unused capacity is never serialized or read. This Guest storage is
 * neither a native ROS allocation nor an authority token.
 */
typedef struct
{
    /**
     * @brief Number of initialized active elements.
     * @details Must be no greater than 2048; decoders and encoders reject larger values without truncation.
     */
    uint32_t size;
    /**
     * @brief Caller-owned complete finite element capacity.
     * @details Only the initialized active size prefix is meaningful. Retain that prefix unchanged through
     * synchronous encoding; no native pointer or permission is stored.
     */
    unsigned char data[2048];
} roswasmc_bounded_2_unitree_go_msg_LidarState_software_version_text;

/**
 * @brief Own a bounded canonical sequence or UTF-8 byte string inline.
 * @details The active size is 0 through 2048. Unused capacity is never serialized or read. This Guest storage is
 * neither a native ROS allocation nor an authority token.
 */
typedef struct
{
    /**
     * @brief Number of initialized active elements.
     * @details Must be no greater than 2048; decoders and encoders reject larger values without truncation.
     */
    uint32_t size;
    /**
     * @brief Caller-owned complete finite element capacity.
     * @details Only the initialized active size prefix is meaningful. Retain that prefix unchanged through
     * synchronous encoding; no native pointer or permission is stored.
     */
    unsigned char data[2048];
} roswasmc_bounded_2_unitree_go_msg_LidarState_sdk_version_text;

/**
 * @brief Complete ROS 2 unitree_go/msg/LidarState value.
 * @details All 17 declared fields are retained in source order. The canonical representation occupies 81..6225
 * bytes and is identified by UWVMROS1_51fa49a14899ba99fa5c82385d0dbd4bcf69d4f4d819177d15e34f46ff6006eb.
 * @native Original selected identity: RIHS01_3a1405d747c51d6b5cf548ee67bc7b63d54b71673a54365fd67d6d09b7599d18.
 * Compilation of matching native traits is a separate qualification.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_2_unitree_go_msg_LidarState
{
    /** @brief Declared field stamp; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/LidarState.stamp: float64.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLidarState; share/platform/ros/rs/API-CONTRACT.md
     */
    double stamp;
    /** @brief Declared field firmware_version; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/LidarState.firmware_version: string; each string is 0..2048 bytes; strict UTF-8 with no
     * embedded NUL.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLidarState; share/platform/ros/rs/API-CONTRACT.md
     */
    roswasmc_bounded_2_unitree_go_msg_LidarState_firmware_version_text firmware_version;
    /** @brief Declared field software_version; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/LidarState.software_version: string; each string is 0..2048 bytes; strict UTF-8 with no
     * embedded NUL.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLidarState; share/platform/ros/rs/API-CONTRACT.md
     */
    roswasmc_bounded_2_unitree_go_msg_LidarState_software_version_text software_version;
    /** @brief Declared field sdk_version; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/LidarState.sdk_version: string; each string is 0..2048 bytes; strict UTF-8 with no
     * embedded NUL.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLidarState; share/platform/ros/rs/API-CONTRACT.md
     */
    roswasmc_bounded_2_unitree_go_msg_LidarState_sdk_version_text sdk_version;
    /** @brief Declared field sys_rotation_speed; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/LidarState.sys_rotation_speed: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLidarState; share/platform/ros/rs/API-CONTRACT.md
     */
    float sys_rotation_speed;
    /** @brief Declared field com_rotation_speed; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/LidarState.com_rotation_speed: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLidarState; share/platform/ros/rs/API-CONTRACT.md
     */
    float com_rotation_speed;
    /** @brief Declared field error_state; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/LidarState.error_state: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLidarState; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t error_state;
    /** @brief Declared field cloud_frequency; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/LidarState.cloud_frequency: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLidarState; share/platform/ros/rs/API-CONTRACT.md
     */
    float cloud_frequency;
    /** @brief Declared field cloud_packet_loss_rate; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/LidarState.cloud_packet_loss_rate: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLidarState; share/platform/ros/rs/API-CONTRACT.md
     */
    float cloud_packet_loss_rate;
    /** @brief Declared field cloud_size; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/LidarState.cloud_size: uint32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLidarState; share/platform/ros/rs/API-CONTRACT.md
     */
    uint32_t cloud_size;
    /** @brief Declared field cloud_scan_num; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/LidarState.cloud_scan_num: uint32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLidarState; share/platform/ros/rs/API-CONTRACT.md
     */
    uint32_t cloud_scan_num;
    /** @brief Declared field imu_frequency; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/LidarState.imu_frequency: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLidarState; share/platform/ros/rs/API-CONTRACT.md
     */
    float imu_frequency;
    /** @brief Declared field imu_packet_loss_rate; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/LidarState.imu_packet_loss_rate: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLidarState; share/platform/ros/rs/API-CONTRACT.md
     */
    float imu_packet_loss_rate;
    /** @brief Declared field imu_rpy; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/LidarState.imu_rpy: float32; exactly 3 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLidarState; share/platform/ros/rs/API-CONTRACT.md
     */
    float imu_rpy[3];
    /** @brief Declared field serial_recv_stamp; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/LidarState.serial_recv_stamp: float64.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLidarState; share/platform/ros/rs/API-CONTRACT.md
     */
    double serial_recv_stamp;
    /** @brief Declared field serial_buffer_size; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/LidarState.serial_buffer_size: uint32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLidarState; share/platform/ros/rs/API-CONTRACT.md
     */
    uint32_t serial_buffer_size;
    /** @brief Declared field serial_buffer_read; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/LidarState.serial_buffer_read: uint32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLidarState; share/platform/ros/rs/API-CONTRACT.md
     */
    uint32_t serial_buffer_read;
} roswasmc_bounded_2_unitree_go_msg_LidarState;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_LIDARSTATE_MAX_WIRE_BYTES 6225u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_LIDARSTATE_MIN_WIRE_BYTES 81u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_LIDARSTATE_CODEC_IDENTITY "UWVMROS1_51fa49a14899ba99fa5c82385d0dbd4bcf69d4f4d819177d15e34f46ff6006eb"

/**
 * @brief Validate every field of unitree_go/msg/LidarState.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static int roswasmc_bounded_2_unitree_go_msg_LidarState_valid(roswasmc_bounded_2_unitree_go_msg_LidarState const* value)
{
    if(!value)
    {
        return 0;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->stamp, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
        {
            return 0;
        }
    }
    if(value->firmware_version.size > 2048u || !uwvm_bounded_utf8(value->firmware_version.data, value->firmware_version.size))
    {
        return 0;
    }
    if(value->software_version.size > 2048u || !uwvm_bounded_utf8(value->software_version.data, value->software_version.size))
    {
        return 0;
    }
    if(value->sdk_version.size > 2048u || !uwvm_bounded_utf8(value->sdk_version.data, value->sdk_version.size))
    {
        return 0;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->sys_rotation_speed, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
        {
            return 0;
        }
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->com_rotation_speed, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
        {
            return 0;
        }
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->cloud_frequency, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
        {
            return 0;
        }
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->cloud_packet_loss_rate, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
        {
            return 0;
        }
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->imu_frequency, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
        {
            return 0;
        }
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->imu_packet_loss_rate, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
        {
            return 0;
        }
    }
    {
        size_t i;
        for(i = 0; i < 3u; ++i)
        {
            {
                uint32_t bits;
                uwvm_bounded_copy(&bits, &value->imu_rpy[i], 4);
                if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
                {
                    return 0;
                }
            }
        }
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->serial_recv_stamp, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
        {
            return 0;
        }
    }
    return 1;
}

/**
 * @brief Measure the complete active canonical extent of unitree_go/msg/LidarState.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static size_t roswasmc_bounded_2_unitree_go_msg_LidarState_wire_size(roswasmc_bounded_2_unitree_go_msg_LidarState const* value)
{
    size_t n = 0;
    n += 8;
    n += 4 + value->firmware_version.size;
    n += 4 + value->software_version.size;
    n += 4 + value->sdk_version.size;
    n += 4;
    n += 4;
    n += 1;
    n += 4;
    n += 4;
    n += 4;
    n += 4;
    n += 4;
    n += 4;
    {
        size_t i;
        for(i = 0; i < 3u; ++i)
        {
            n += 4;
        }
    }
    n += 8;
    n += 4;
    n += 4;
    return n;
}

/**
 * @brief Append all fields of unitree_go/msg/LidarState to an internal canonical buffer.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete prevalidated immutable record.
 * @param[out] p Sufficient exclusive output storage established by the public encoder.
 * @param[in,out] offset Exclusive initialized writer cursor.
 * @return No value; internal caller guarantees the measured capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static void
    roswasmc_bounded_2_unitree_go_msg_LidarState_write_fields(roswasmc_bounded_2_unitree_go_msg_LidarState const* value, unsigned char* p, size_t* offset)
{
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->stamp, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    uwvm_bounded_put(p + *offset, value->firmware_version.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->firmware_version.data, value->firmware_version.size);
    *offset += value->firmware_version.size;
    uwvm_bounded_put(p + *offset, value->software_version.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->software_version.data, value->software_version.size);
    *offset += value->software_version.size;
    uwvm_bounded_put(p + *offset, value->sdk_version.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->sdk_version.data, value->sdk_version.size);
    *offset += value->sdk_version.size;
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->sys_rotation_speed, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->com_rotation_speed, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    uwvm_bounded_put(p + *offset, (uint64_t)value->error_state, 1);
    *offset += 1;
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->cloud_frequency, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->cloud_packet_loss_rate, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    uwvm_bounded_put(p + *offset, (uint64_t)value->cloud_size, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, (uint64_t)value->cloud_scan_num, 4);
    *offset += 4;
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->imu_frequency, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->imu_packet_loss_rate, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        size_t i;
        for(i = 0; i < 3u; ++i)
        {
            {
                uint32_t bits;
                uwvm_bounded_copy(&bits, &value->imu_rpy[i], 4);
                uwvm_bounded_put(p + *offset, bits, 4);
                *offset += 4;
            }
        }
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->serial_recv_stamp, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    uwvm_bounded_put(p + *offset, (uint64_t)value->serial_buffer_size, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, (uint64_t)value->serial_buffer_read, 4);
    *offset += 4;
}

/**
 * @brief Decode the full ordered field prefix of unitree_go/msg/LidarState.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] p Borrowed canonical bytes, stable through return.
 * @param[in] n Available input extent in bytes.
 * @param[in,out] offset Exclusive initialized reader cursor.
 * @param[out] value Private temporary record; discard it on failure.
 * @return Nonzero only after complete prefix validation; enclosing fields may remain unread.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static int roswasmc_bounded_2_unitree_go_msg_LidarState_read_fields(unsigned char const* p,
                                                                           size_t n,
                                                                           size_t* offset,
                                                                           roswasmc_bounded_2_unitree_go_msg_LidarState* value)
{
    if(*offset > n || n - *offset < 8)
    {
        return 0;
    }
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->stamp, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->firmware_version.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->firmware_version.size > 2048u || value->firmware_version.size > n - *offset)
    {
        return 0;
    }
    uwvm_bounded_copy(value->firmware_version.data, p + *offset, value->firmware_version.size);
    *offset += value->firmware_version.size;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->software_version.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->software_version.size > 2048u || value->software_version.size > n - *offset)
    {
        return 0;
    }
    uwvm_bounded_copy(value->software_version.data, p + *offset, value->software_version.size);
    *offset += value->software_version.size;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->sdk_version.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->sdk_version.size > 2048u || value->sdk_version.size > n - *offset)
    {
        return 0;
    }
    uwvm_bounded_copy(value->sdk_version.data, p + *offset, value->sdk_version.size);
    *offset += value->sdk_version.size;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->sys_rotation_speed, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->com_rotation_speed, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->error_state, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->cloud_frequency, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->cloud_packet_loss_rate, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->cloud_size, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->cloud_scan_num, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->imu_frequency, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->imu_packet_loss_rate, &bits, 4);
    }
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < 3u; ++i)
        {
            if(*offset > n || n - *offset < 4)
            {
                return 0;
            }
            {
                uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
                uwvm_bounded_copy(&value->imu_rpy[i], &bits, 4);
            }
            *offset += 4;
        }
    }
    if(*offset > n || n - *offset < 8)
    {
        return 0;
    }
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->serial_recv_stamp, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->serial_buffer_size, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->serial_buffer_read, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_2_unitree_go_msg_LidarState_valid(value);
}

/**
 * @brief Encode the complete unitree_go/msg/LidarState record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record.
 * @param[out] output Exclusive caller-owned byte storage, disjoint from value and length.
 * @param[in] capacity Available writable byte count.
 * @param[out] length Exact initialized byte count, written only on success.
 * @return Status 0 on success, 22 for invalid/overlapping values, or 90 for insufficient capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static uint32_t roswasmc_bounded_2_unitree_go_msg_LidarState_encode(roswasmc_bounded_2_unitree_go_msg_LidarState const* value,
                                                                           void* output,
                                                                           size_t capacity,
                                                                           size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_unitree_go_msg_LidarState_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_unitree_go_msg_LidarState_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_unitree_go_msg_LidarState_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/**
 * @brief Decode exactly one complete unitree_go/msg/LidarState record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] input Immutable complete canonical body, disjoint from value.
 * @param[in] length Exact input byte count; trailing bytes are refused.
 * @param[out] value Caller-owned complete record; unchanged on every refusal.
 * @return Status 0 on complete success, otherwise 22; no partial record is exposed.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static uint32_t
    roswasmc_bounded_2_unitree_go_msg_LidarState_decode(void const* input, size_t length, roswasmc_bounded_2_unitree_go_msg_LidarState* value)
{
    roswasmc_bounded_2_unitree_go_msg_LidarState next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 81u || length > 6225u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_unitree_go_msg_LidarState_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_MOTORCMD)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_MOTORCMD_0 != 0xa26a5c92UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_MOTORCMD_1 != 0x9fd9e60dUL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_MOTORCMD_2 != 0xd8002b6aUL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_MOTORCMD_3 != 0x6d3c575eUL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_MOTORCMD_4 != 0xcb57b0baUL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_MOTORCMD_5 != 0x3a6719c8UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_MOTORCMD_6 != 0xcd5fcf18UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_MOTORCMD_7 != 0x44a27d87UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_MOTORCMD 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_MOTORCMD_0 0xa26a5c92UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_MOTORCMD_1 0x9fd9e60dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_MOTORCMD_2 0xd8002b6aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_MOTORCMD_3 0x6d3c575eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_MOTORCMD_4 0xcb57b0baUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_MOTORCMD_5 0x3a6719c8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_MOTORCMD_6 0xcd5fcf18UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_MOTORCMD_7 0x44a27d87UL

/**
 * @brief Complete ROS 2 unitree_go/msg/MotorCmd value.
 * @details All 7 declared fields are retained in source order. The canonical representation occupies 33..33
 * bytes and is identified by UWVMROS1_e5b88c02a6d339ae4ae2706678a3d82f89904f024b6068f4fd174e1e045b0989.
 * @native Original selected identity: RIHS01_4581f18a3bf58baad04f12f51747f2dd388f64aa2ac997d1d64777563c627fbf.
 * Compilation of matching native traits is a separate qualification.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_2_unitree_go_msg_MotorCmd
{
    /** @brief Declared field mode; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/MotorCmd.mode: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgMotorCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t mode;
    /** @brief Declared field q; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/MotorCmd.q: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgMotorCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    float q;
    /** @brief Declared field dq; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/MotorCmd.dq: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgMotorCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    float dq;
    /** @brief Declared field tau; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/MotorCmd.tau: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgMotorCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    float tau;
    /** @brief Declared field kp; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/MotorCmd.kp: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgMotorCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    float kp;
    /** @brief Declared field kd; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/MotorCmd.kd: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgMotorCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    float kd;
    /** @brief Declared field reserve; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/MotorCmd.reserve: uint32; exactly 3 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgMotorCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    uint32_t reserve[3];
} roswasmc_bounded_2_unitree_go_msg_MotorCmd;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_MOTORCMD_MAX_WIRE_BYTES 33u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_MOTORCMD_MIN_WIRE_BYTES 33u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_MOTORCMD_CODEC_IDENTITY "UWVMROS1_e5b88c02a6d339ae4ae2706678a3d82f89904f024b6068f4fd174e1e045b0989"

/**
 * @brief Validate every field of unitree_go/msg/MotorCmd.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static int roswasmc_bounded_2_unitree_go_msg_MotorCmd_valid(roswasmc_bounded_2_unitree_go_msg_MotorCmd const* value)
{
    if(!value)
    {
        return 0;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->q, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
        {
            return 0;
        }
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->dq, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
        {
            return 0;
        }
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->tau, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
        {
            return 0;
        }
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->kp, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
        {
            return 0;
        }
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->kd, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
        {
            return 0;
        }
    }
    {
        size_t i;
        for(i = 0; i < 3u; ++i)
        {
        }
    }
    return 1;
}

/**
 * @brief Measure the complete active canonical extent of unitree_go/msg/MotorCmd.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static size_t roswasmc_bounded_2_unitree_go_msg_MotorCmd_wire_size(roswasmc_bounded_2_unitree_go_msg_MotorCmd const* value)
{
    size_t n = 0;
    n += 1;
    n += 4;
    n += 4;
    n += 4;
    n += 4;
    n += 4;
    {
        size_t i;
        for(i = 0; i < 3u; ++i)
        {
            n += 4;
        }
    }
    return n;
}

/**
 * @brief Append all fields of unitree_go/msg/MotorCmd to an internal canonical buffer.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete prevalidated immutable record.
 * @param[out] p Sufficient exclusive output storage established by the public encoder.
 * @param[in,out] offset Exclusive initialized writer cursor.
 * @return No value; internal caller guarantees the measured capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static void
    roswasmc_bounded_2_unitree_go_msg_MotorCmd_write_fields(roswasmc_bounded_2_unitree_go_msg_MotorCmd const* value, unsigned char* p, size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->mode, 1);
    *offset += 1;
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->q, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->dq, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->tau, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->kp, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->kd, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        size_t i;
        for(i = 0; i < 3u; ++i)
        {
            uwvm_bounded_put(p + *offset, (uint64_t)value->reserve[i], 4);
            *offset += 4;
        }
    }
}

/**
 * @brief Decode the full ordered field prefix of unitree_go/msg/MotorCmd.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] p Borrowed canonical bytes, stable through return.
 * @param[in] n Available input extent in bytes.
 * @param[in,out] offset Exclusive initialized reader cursor.
 * @param[out] value Private temporary record; discard it on failure.
 * @return Nonzero only after complete prefix validation; enclosing fields may remain unread.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static int
    roswasmc_bounded_2_unitree_go_msg_MotorCmd_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_2_unitree_go_msg_MotorCmd* value)
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
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->q, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->dq, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->tau, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->kp, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->kd, &bits, 4);
    }
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < 3u; ++i)
        {
            if(*offset > n || n - *offset < 4)
            {
                return 0;
            }
            {
                uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
                uwvm_bounded_copy(&value->reserve[i], &bits, 4);
            }
            *offset += 4;
        }
    }
    return roswasmc_bounded_2_unitree_go_msg_MotorCmd_valid(value);
}

/**
 * @brief Encode the complete unitree_go/msg/MotorCmd record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record.
 * @param[out] output Exclusive caller-owned byte storage, disjoint from value and length.
 * @param[in] capacity Available writable byte count.
 * @param[out] length Exact initialized byte count, written only on success.
 * @return Status 0 on success, 22 for invalid/overlapping values, or 90 for insufficient capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static uint32_t
    roswasmc_bounded_2_unitree_go_msg_MotorCmd_encode(roswasmc_bounded_2_unitree_go_msg_MotorCmd const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_unitree_go_msg_MotorCmd_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_unitree_go_msg_MotorCmd_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_unitree_go_msg_MotorCmd_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/**
 * @brief Decode exactly one complete unitree_go/msg/MotorCmd record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] input Immutable complete canonical body, disjoint from value.
 * @param[in] length Exact input byte count; trailing bytes are refused.
 * @param[out] value Caller-owned complete record; unchanged on every refusal.
 * @return Status 0 on complete success, otherwise 22; no partial record is exposed.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static uint32_t roswasmc_bounded_2_unitree_go_msg_MotorCmd_decode(void const* input, size_t length, roswasmc_bounded_2_unitree_go_msg_MotorCmd* value)
{
    roswasmc_bounded_2_unitree_go_msg_MotorCmd next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 33u || length > 33u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_unitree_go_msg_MotorCmd_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_LOWCMD)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_LOWCMD_0 != 0xb1b5d191UL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_LOWCMD_1 != 0xf0f89c3fUL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_LOWCMD_2 != 0x150ec9e8UL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_LOWCMD_3 != 0x90af5118UL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_LOWCMD_4 != 0x0a70642aUL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_LOWCMD_5 != 0x14275ee0UL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_LOWCMD_6 != 0x1ff6a228UL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_LOWCMD_7 != 0x99ae7964UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_LOWCMD 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_LOWCMD_0 0xb1b5d191UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_LOWCMD_1 0xf0f89c3fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_LOWCMD_2 0x150ec9e8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_LOWCMD_3 0x90af5118UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_LOWCMD_4 0x0a70642aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_LOWCMD_5 0x14275ee0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_LOWCMD_6 0x1ff6a228UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_LOWCMD_7 0x99ae7964UL

/**
 * @brief Complete ROS 2 unitree_go/msg/LowCmd value.
 * @details All 14 declared fields are retained in source order. The canonical representation occupies 749..749
 * bytes and is identified by UWVMROS1_efd061d06d38ecc686edb95d1a891c26860b16da1e35747fc97eeaf4a5d93d63.
 * @native Original selected identity: RIHS01_0da1142c994d184f6102948c3acf52b9557836cfe5062b924a1f08ac8b72dc34.
 * Compilation of matching native traits is a separate qualification.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_2_unitree_go_msg_LowCmd
{
    /** @brief Declared field head; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/LowCmd.head: uint8; exactly 2 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLowCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t head[2];
    /** @brief Declared field level_flag; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/LowCmd.level_flag: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLowCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t level_flag;
    /** @brief Declared field frame_reserve; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/LowCmd.frame_reserve: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLowCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t frame_reserve;
    /** @brief Declared field sn; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/LowCmd.sn: uint32; exactly 2 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLowCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    uint32_t sn[2];
    /** @brief Declared field version; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/LowCmd.version: uint32; exactly 2 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLowCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    uint32_t version[2];
    /** @brief Declared field bandwidth; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/LowCmd.bandwidth: uint16.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLowCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    uint16_t bandwidth;
    /** @brief Declared field motor_cmd; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/LowCmd.motor_cmd: unitree_go/msg/MotorCmd; exactly 20 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLowCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    roswasmc_bounded_2_unitree_go_msg_MotorCmd motor_cmd[20];
    /** @brief Declared field bms_cmd; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/LowCmd.bms_cmd: unitree_go/msg/BmsCmd.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLowCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    roswasmc_bounded_2_unitree_go_msg_BmsCmd bms_cmd;
    /** @brief Declared field wireless_remote; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/LowCmd.wireless_remote: uint8; exactly 40 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLowCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t wireless_remote[40];
    /** @brief Declared field led; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/LowCmd.led: uint8; exactly 12 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLowCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t led[12];
    /** @brief Declared field fan; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/LowCmd.fan: uint8; exactly 2 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLowCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t fan[2];
    /** @brief Declared field gpio; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/LowCmd.gpio: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLowCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t gpio;
    /** @brief Declared field reserve; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/LowCmd.reserve: uint32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLowCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    uint32_t reserve;
    /** @brief Declared field crc; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/LowCmd.crc: uint32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLowCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    uint32_t crc;
} roswasmc_bounded_2_unitree_go_msg_LowCmd;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_LOWCMD_MAX_WIRE_BYTES 749u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_LOWCMD_MIN_WIRE_BYTES 749u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_LOWCMD_CODEC_IDENTITY "UWVMROS1_efd061d06d38ecc686edb95d1a891c26860b16da1e35747fc97eeaf4a5d93d63"

/**
 * @brief Validate every field of unitree_go/msg/LowCmd.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static int roswasmc_bounded_2_unitree_go_msg_LowCmd_valid(roswasmc_bounded_2_unitree_go_msg_LowCmd const* value)
{
    if(!value)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
        }
    }
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
        }
    }
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
        }
    }
    {
        size_t i;
        for(i = 0; i < 20u; ++i)
        {
            if(!roswasmc_bounded_2_unitree_go_msg_MotorCmd_valid(&value->motor_cmd[i]))
            {
                return 0;
            }
        }
    }
    if(!roswasmc_bounded_2_unitree_go_msg_BmsCmd_valid(&value->bms_cmd))
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < 40u; ++i)
        {
        }
    }
    {
        size_t i;
        for(i = 0; i < 12u; ++i)
        {
        }
    }
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
        }
    }
    return 1;
}

/**
 * @brief Measure the complete active canonical extent of unitree_go/msg/LowCmd.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static size_t roswasmc_bounded_2_unitree_go_msg_LowCmd_wire_size(roswasmc_bounded_2_unitree_go_msg_LowCmd const* value)
{
    size_t n = 0;
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            n += 1;
        }
    }
    n += 1;
    n += 1;
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            n += 4;
        }
    }
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            n += 4;
        }
    }
    n += 2;
    {
        size_t i;
        for(i = 0; i < 20u; ++i)
        {
            n += roswasmc_bounded_2_unitree_go_msg_MotorCmd_wire_size(&value->motor_cmd[i]);
        }
    }
    n += roswasmc_bounded_2_unitree_go_msg_BmsCmd_wire_size(&value->bms_cmd);
    {
        size_t i;
        for(i = 0; i < 40u; ++i)
        {
            n += 1;
        }
    }
    {
        size_t i;
        for(i = 0; i < 12u; ++i)
        {
            n += 1;
        }
    }
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            n += 1;
        }
    }
    n += 1;
    n += 4;
    n += 4;
    return n;
}

/**
 * @brief Append all fields of unitree_go/msg/LowCmd to an internal canonical buffer.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete prevalidated immutable record.
 * @param[out] p Sufficient exclusive output storage established by the public encoder.
 * @param[in,out] offset Exclusive initialized writer cursor.
 * @return No value; internal caller guarantees the measured capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static void
    roswasmc_bounded_2_unitree_go_msg_LowCmd_write_fields(roswasmc_bounded_2_unitree_go_msg_LowCmd const* value, unsigned char* p, size_t* offset)
{
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            uwvm_bounded_put(p + *offset, (uint64_t)value->head[i], 1);
            *offset += 1;
        }
    }
    uwvm_bounded_put(p + *offset, (uint64_t)value->level_flag, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->frame_reserve, 1);
    *offset += 1;
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            uwvm_bounded_put(p + *offset, (uint64_t)value->sn[i], 4);
            *offset += 4;
        }
    }
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            uwvm_bounded_put(p + *offset, (uint64_t)value->version[i], 4);
            *offset += 4;
        }
    }
    uwvm_bounded_put(p + *offset, (uint64_t)value->bandwidth, 2);
    *offset += 2;
    {
        size_t i;
        for(i = 0; i < 20u; ++i)
        {
            roswasmc_bounded_2_unitree_go_msg_MotorCmd_write_fields(&value->motor_cmd[i], p, offset);
        }
    }
    roswasmc_bounded_2_unitree_go_msg_BmsCmd_write_fields(&value->bms_cmd, p, offset);
    {
        size_t i;
        for(i = 0; i < 40u; ++i)
        {
            uwvm_bounded_put(p + *offset, (uint64_t)value->wireless_remote[i], 1);
            *offset += 1;
        }
    }
    {
        size_t i;
        for(i = 0; i < 12u; ++i)
        {
            uwvm_bounded_put(p + *offset, (uint64_t)value->led[i], 1);
            *offset += 1;
        }
    }
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            uwvm_bounded_put(p + *offset, (uint64_t)value->fan[i], 1);
            *offset += 1;
        }
    }
    uwvm_bounded_put(p + *offset, (uint64_t)value->gpio, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->reserve, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, (uint64_t)value->crc, 4);
    *offset += 4;
}

/**
 * @brief Decode the full ordered field prefix of unitree_go/msg/LowCmd.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] p Borrowed canonical bytes, stable through return.
 * @param[in] n Available input extent in bytes.
 * @param[in,out] offset Exclusive initialized reader cursor.
 * @param[out] value Private temporary record; discard it on failure.
 * @return Nonzero only after complete prefix validation; enclosing fields may remain unread.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static int
    roswasmc_bounded_2_unitree_go_msg_LowCmd_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_2_unitree_go_msg_LowCmd* value)
{
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            if(*offset > n || n - *offset < 1)
            {
                return 0;
            }
            {
                uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
                uwvm_bounded_copy(&value->head[i], &bits, 1);
            }
            *offset += 1;
        }
    }
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->level_flag, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->frame_reserve, &bits, 1);
    }
    *offset += 1;
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            if(*offset > n || n - *offset < 4)
            {
                return 0;
            }
            {
                uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
                uwvm_bounded_copy(&value->sn[i], &bits, 4);
            }
            *offset += 4;
        }
    }
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            if(*offset > n || n - *offset < 4)
            {
                return 0;
            }
            {
                uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
                uwvm_bounded_copy(&value->version[i], &bits, 4);
            }
            *offset += 4;
        }
    }
    if(*offset > n || n - *offset < 2)
    {
        return 0;
    }
    {
        uint16_t bits = (uint16_t)uwvm_bounded_get(p + *offset, 2);
        uwvm_bounded_copy(&value->bandwidth, &bits, 2);
    }
    *offset += 2;
    {
        size_t i;
        for(i = 0; i < 20u; ++i)
        {
            if(!roswasmc_bounded_2_unitree_go_msg_MotorCmd_read_fields(p, n, offset, &value->motor_cmd[i]))
            {
                return 0;
            }
        }
    }
    if(!roswasmc_bounded_2_unitree_go_msg_BmsCmd_read_fields(p, n, offset, &value->bms_cmd))
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < 40u; ++i)
        {
            if(*offset > n || n - *offset < 1)
            {
                return 0;
            }
            {
                uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
                uwvm_bounded_copy(&value->wireless_remote[i], &bits, 1);
            }
            *offset += 1;
        }
    }
    {
        size_t i;
        for(i = 0; i < 12u; ++i)
        {
            if(*offset > n || n - *offset < 1)
            {
                return 0;
            }
            {
                uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
                uwvm_bounded_copy(&value->led[i], &bits, 1);
            }
            *offset += 1;
        }
    }
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            if(*offset > n || n - *offset < 1)
            {
                return 0;
            }
            {
                uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
                uwvm_bounded_copy(&value->fan[i], &bits, 1);
            }
            *offset += 1;
        }
    }
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->gpio, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->reserve, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->crc, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_2_unitree_go_msg_LowCmd_valid(value);
}

/**
 * @brief Encode the complete unitree_go/msg/LowCmd record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record.
 * @param[out] output Exclusive caller-owned byte storage, disjoint from value and length.
 * @param[in] capacity Available writable byte count.
 * @param[out] length Exact initialized byte count, written only on success.
 * @return Status 0 on success, 22 for invalid/overlapping values, or 90 for insufficient capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static uint32_t
    roswasmc_bounded_2_unitree_go_msg_LowCmd_encode(roswasmc_bounded_2_unitree_go_msg_LowCmd const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_unitree_go_msg_LowCmd_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_unitree_go_msg_LowCmd_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_unitree_go_msg_LowCmd_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/**
 * @brief Decode exactly one complete unitree_go/msg/LowCmd record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] input Immutable complete canonical body, disjoint from value.
 * @param[in] length Exact input byte count; trailing bytes are refused.
 * @param[out] value Caller-owned complete record; unchanged on every refusal.
 * @return Status 0 on complete success, otherwise 22; no partial record is exposed.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static uint32_t roswasmc_bounded_2_unitree_go_msg_LowCmd_decode(void const* input, size_t length, roswasmc_bounded_2_unitree_go_msg_LowCmd* value)
{
    roswasmc_bounded_2_unitree_go_msg_LowCmd next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 749u || length > 749u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_unitree_go_msg_LowCmd_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_MOTORSTATE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_MOTORSTATE_0 != 0x25dc8b1fUL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_MOTORSTATE_1 != 0x21eb2e60UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_MOTORSTATE_2 != 0xa428e4cbUL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_MOTORSTATE_3 != 0xc92bc469UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_MOTORSTATE_4 != 0xe698be09UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_MOTORSTATE_5 != 0x1024b30cUL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_MOTORSTATE_6 != 0x1a9ad7bbUL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_MOTORSTATE_7 != 0xceb6a237UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_MOTORSTATE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_MOTORSTATE_0 0x25dc8b1fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_MOTORSTATE_1 0x21eb2e60UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_MOTORSTATE_2 0xa428e4cbUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_MOTORSTATE_3 0xc92bc469UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_MOTORSTATE_4 0xe698be09UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_MOTORSTATE_5 0x1024b30cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_MOTORSTATE_6 0x1a9ad7bbUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_MOTORSTATE_7 0xceb6a237UL

/**
 * @brief Complete ROS 2 unitree_go/msg/MotorState value.
 * @details All 11 declared fields are retained in source order. The canonical representation occupies 42..42
 * bytes and is identified by UWVMROS1_b0b5e638b9fd9eec6d0019422d417f80c60e61d47f4750fe9adac8c5084a2a62.
 * @native Original selected identity: RIHS01_86fb56a4f6bebcba854e9b510225e6666ef46cf4ea13355870c2dd3c3478a88c.
 * Compilation of matching native traits is a separate qualification.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_2_unitree_go_msg_MotorState
{
    /** @brief Declared field mode; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/MotorState.mode: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgMotorState; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t mode;
    /** @brief Declared field q; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/MotorState.q: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgMotorState; share/platform/ros/rs/API-CONTRACT.md
     */
    float q;
    /** @brief Declared field dq; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/MotorState.dq: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgMotorState; share/platform/ros/rs/API-CONTRACT.md
     */
    float dq;
    /** @brief Declared field ddq; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/MotorState.ddq: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgMotorState; share/platform/ros/rs/API-CONTRACT.md
     */
    float ddq;
    /** @brief Declared field tau_est; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/MotorState.tau_est: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgMotorState; share/platform/ros/rs/API-CONTRACT.md
     */
    float tau_est;
    /** @brief Declared field q_raw; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/MotorState.q_raw: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgMotorState; share/platform/ros/rs/API-CONTRACT.md
     */
    float q_raw;
    /** @brief Declared field dq_raw; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/MotorState.dq_raw: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgMotorState; share/platform/ros/rs/API-CONTRACT.md
     */
    float dq_raw;
    /** @brief Declared field ddq_raw; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/MotorState.ddq_raw: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgMotorState; share/platform/ros/rs/API-CONTRACT.md
     */
    float ddq_raw;
    /** @brief Declared field temperature; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/MotorState.temperature: int8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgMotorState; share/platform/ros/rs/API-CONTRACT.md
     */
    int8_t temperature;
    /** @brief Declared field lost; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/MotorState.lost: uint32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgMotorState; share/platform/ros/rs/API-CONTRACT.md
     */
    uint32_t lost;
    /** @brief Declared field reserve; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/MotorState.reserve: uint32; exactly 2 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgMotorState; share/platform/ros/rs/API-CONTRACT.md
     */
    uint32_t reserve[2];
} roswasmc_bounded_2_unitree_go_msg_MotorState;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_MOTORSTATE_MAX_WIRE_BYTES 42u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_MOTORSTATE_MIN_WIRE_BYTES 42u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_MOTORSTATE_CODEC_IDENTITY "UWVMROS1_b0b5e638b9fd9eec6d0019422d417f80c60e61d47f4750fe9adac8c5084a2a62"

/**
 * @brief Validate every field of unitree_go/msg/MotorState.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static int roswasmc_bounded_2_unitree_go_msg_MotorState_valid(roswasmc_bounded_2_unitree_go_msg_MotorState const* value)
{
    if(!value)
    {
        return 0;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->q, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
        {
            return 0;
        }
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->dq, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
        {
            return 0;
        }
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->ddq, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
        {
            return 0;
        }
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->tau_est, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
        {
            return 0;
        }
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->q_raw, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
        {
            return 0;
        }
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->dq_raw, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
        {
            return 0;
        }
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->ddq_raw, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
        {
            return 0;
        }
    }
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
        }
    }
    return 1;
}

/**
 * @brief Measure the complete active canonical extent of unitree_go/msg/MotorState.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static size_t roswasmc_bounded_2_unitree_go_msg_MotorState_wire_size(roswasmc_bounded_2_unitree_go_msg_MotorState const* value)
{
    size_t n = 0;
    n += 1;
    n += 4;
    n += 4;
    n += 4;
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

/**
 * @brief Append all fields of unitree_go/msg/MotorState to an internal canonical buffer.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete prevalidated immutable record.
 * @param[out] p Sufficient exclusive output storage established by the public encoder.
 * @param[in,out] offset Exclusive initialized writer cursor.
 * @return No value; internal caller guarantees the measured capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static void
    roswasmc_bounded_2_unitree_go_msg_MotorState_write_fields(roswasmc_bounded_2_unitree_go_msg_MotorState const* value, unsigned char* p, size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->mode, 1);
    *offset += 1;
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->q, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->dq, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->ddq, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->tau_est, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->q_raw, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->dq_raw, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->ddq_raw, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    uwvm_bounded_put(p + *offset, (uint64_t)value->temperature, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->lost, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            uwvm_bounded_put(p + *offset, (uint64_t)value->reserve[i], 4);
            *offset += 4;
        }
    }
}

/**
 * @brief Decode the full ordered field prefix of unitree_go/msg/MotorState.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] p Borrowed canonical bytes, stable through return.
 * @param[in] n Available input extent in bytes.
 * @param[in,out] offset Exclusive initialized reader cursor.
 * @param[out] value Private temporary record; discard it on failure.
 * @return Nonzero only after complete prefix validation; enclosing fields may remain unread.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static int roswasmc_bounded_2_unitree_go_msg_MotorState_read_fields(unsigned char const* p,
                                                                           size_t n,
                                                                           size_t* offset,
                                                                           roswasmc_bounded_2_unitree_go_msg_MotorState* value)
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
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->q, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->dq, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->ddq, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->tau_est, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->q_raw, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->dq_raw, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->ddq_raw, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->temperature, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->lost, &bits, 4);
    }
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            if(*offset > n || n - *offset < 4)
            {
                return 0;
            }
            {
                uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
                uwvm_bounded_copy(&value->reserve[i], &bits, 4);
            }
            *offset += 4;
        }
    }
    return roswasmc_bounded_2_unitree_go_msg_MotorState_valid(value);
}

/**
 * @brief Encode the complete unitree_go/msg/MotorState record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record.
 * @param[out] output Exclusive caller-owned byte storage, disjoint from value and length.
 * @param[in] capacity Available writable byte count.
 * @param[out] length Exact initialized byte count, written only on success.
 * @return Status 0 on success, 22 for invalid/overlapping values, or 90 for insufficient capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static uint32_t roswasmc_bounded_2_unitree_go_msg_MotorState_encode(roswasmc_bounded_2_unitree_go_msg_MotorState const* value,
                                                                           void* output,
                                                                           size_t capacity,
                                                                           size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_unitree_go_msg_MotorState_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_unitree_go_msg_MotorState_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_unitree_go_msg_MotorState_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/**
 * @brief Decode exactly one complete unitree_go/msg/MotorState record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] input Immutable complete canonical body, disjoint from value.
 * @param[in] length Exact input byte count; trailing bytes are refused.
 * @param[out] value Caller-owned complete record; unchanged on every refusal.
 * @return Status 0 on complete success, otherwise 22; no partial record is exposed.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static uint32_t
    roswasmc_bounded_2_unitree_go_msg_MotorState_decode(void const* input, size_t length, roswasmc_bounded_2_unitree_go_msg_MotorState* value)
{
    roswasmc_bounded_2_unitree_go_msg_MotorState next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 42u || length > 42u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_unitree_go_msg_MotorState_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_LOWSTATE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_LOWSTATE_0 != 0x8cd93638UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_LOWSTATE_1 != 0x4aafd83eUL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_LOWSTATE_2 != 0xb7eb4b18UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_LOWSTATE_3 != 0xb7a756cbUL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_LOWSTATE_4 != 0xac21dd8aUL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_LOWSTATE_5 != 0x46e5f2a6UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_LOWSTATE_6 != 0x32fdeb4eUL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_LOWSTATE_7 != 0x99739ebeUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_LOWSTATE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_LOWSTATE_0 0x8cd93638UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_LOWSTATE_1 0x4aafd83eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_LOWSTATE_2 0xb7eb4b18UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_LOWSTATE_3 0xb7a756cbUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_LOWSTATE_4 0xac21dd8aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_LOWSTATE_5 0x46e5f2a6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_LOWSTATE_6 0x32fdeb4eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_LOWSTATE_7 0x99739ebeUL

/**
 * @brief Complete ROS 2 unitree_go/msg/LowState value.
 * @details All 22 declared fields are retained in source order. The canonical representation occupies 1050..1050
 * bytes and is identified by UWVMROS1_56c01d52b26d7b2ef1fa7475fc8a353777ed6952a6f1ceee01da81f1edad3cab.
 * @native Original selected identity: RIHS01_db5172cac933e3cfc0e705903343eb4eea42e65e224e9d726d3e672aec0caf0f.
 * Compilation of matching native traits is a separate qualification.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_2_unitree_go_msg_LowState
{
    /** @brief Declared field head; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/LowState.head: uint8; exactly 2 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLowState; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t head[2];
    /** @brief Declared field level_flag; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/LowState.level_flag: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLowState; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t level_flag;
    /** @brief Declared field frame_reserve; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/LowState.frame_reserve: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLowState; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t frame_reserve;
    /** @brief Declared field sn; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/LowState.sn: uint32; exactly 2 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLowState; share/platform/ros/rs/API-CONTRACT.md
     */
    uint32_t sn[2];
    /** @brief Declared field version; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/LowState.version: uint32; exactly 2 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLowState; share/platform/ros/rs/API-CONTRACT.md
     */
    uint32_t version[2];
    /** @brief Declared field bandwidth; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/LowState.bandwidth: uint16.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLowState; share/platform/ros/rs/API-CONTRACT.md
     */
    uint16_t bandwidth;
    /** @brief Declared field imu_state; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/LowState.imu_state: unitree_go/msg/IMUState.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLowState; share/platform/ros/rs/API-CONTRACT.md
     */
    roswasmc_bounded_2_unitree_go_msg_IMUState imu_state;
    /** @brief Declared field motor_state; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/LowState.motor_state: unitree_go/msg/MotorState; exactly 20 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLowState; share/platform/ros/rs/API-CONTRACT.md
     */
    roswasmc_bounded_2_unitree_go_msg_MotorState motor_state[20];
    /** @brief Declared field bms_state; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/LowState.bms_state: unitree_go/msg/BmsState.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLowState; share/platform/ros/rs/API-CONTRACT.md
     */
    roswasmc_bounded_2_unitree_go_msg_BmsState bms_state;
    /** @brief Declared field foot_force; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/LowState.foot_force: int16; exactly 4 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLowState; share/platform/ros/rs/API-CONTRACT.md
     */
    int16_t foot_force[4];
    /** @brief Declared field foot_force_est; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/LowState.foot_force_est: int16; exactly 4 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLowState; share/platform/ros/rs/API-CONTRACT.md
     */
    int16_t foot_force_est[4];
    /** @brief Declared field tick; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/LowState.tick: uint32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLowState; share/platform/ros/rs/API-CONTRACT.md
     */
    uint32_t tick;
    /** @brief Declared field wireless_remote; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/LowState.wireless_remote: uint8; exactly 40 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLowState; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t wireless_remote[40];
    /** @brief Declared field bit_flag; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/LowState.bit_flag: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLowState; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t bit_flag;
    /** @brief Declared field adc_reel; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/LowState.adc_reel: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLowState; share/platform/ros/rs/API-CONTRACT.md
     */
    float adc_reel;
    /** @brief Declared field temperature_ntc1; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/LowState.temperature_ntc1: int8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLowState; share/platform/ros/rs/API-CONTRACT.md
     */
    int8_t temperature_ntc1;
    /** @brief Declared field temperature_ntc2; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/LowState.temperature_ntc2: int8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLowState; share/platform/ros/rs/API-CONTRACT.md
     */
    int8_t temperature_ntc2;
    /** @brief Declared field power_v; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/LowState.power_v: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLowState; share/platform/ros/rs/API-CONTRACT.md
     */
    float power_v;
    /** @brief Declared field power_a; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/LowState.power_a: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLowState; share/platform/ros/rs/API-CONTRACT.md
     */
    float power_a;
    /** @brief Declared field fan_frequency; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/LowState.fan_frequency: uint16; exactly 4 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLowState; share/platform/ros/rs/API-CONTRACT.md
     */
    uint16_t fan_frequency[4];
    /** @brief Declared field reserve; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/LowState.reserve: uint32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLowState; share/platform/ros/rs/API-CONTRACT.md
     */
    uint32_t reserve;
    /** @brief Declared field crc; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/LowState.crc: uint32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgLowState; share/platform/ros/rs/API-CONTRACT.md
     */
    uint32_t crc;
} roswasmc_bounded_2_unitree_go_msg_LowState;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_LOWSTATE_MAX_WIRE_BYTES 1050u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_LOWSTATE_MIN_WIRE_BYTES 1050u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_LOWSTATE_CODEC_IDENTITY "UWVMROS1_56c01d52b26d7b2ef1fa7475fc8a353777ed6952a6f1ceee01da81f1edad3cab"

/**
 * @brief Validate every field of unitree_go/msg/LowState.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static int roswasmc_bounded_2_unitree_go_msg_LowState_valid(roswasmc_bounded_2_unitree_go_msg_LowState const* value)
{
    if(!value)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
        }
    }
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
        }
    }
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
        }
    }
    if(!roswasmc_bounded_2_unitree_go_msg_IMUState_valid(&value->imu_state))
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < 20u; ++i)
        {
            if(!roswasmc_bounded_2_unitree_go_msg_MotorState_valid(&value->motor_state[i]))
            {
                return 0;
            }
        }
    }
    if(!roswasmc_bounded_2_unitree_go_msg_BmsState_valid(&value->bms_state))
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < 4u; ++i)
        {
        }
    }
    {
        size_t i;
        for(i = 0; i < 4u; ++i)
        {
        }
    }
    {
        size_t i;
        for(i = 0; i < 40u; ++i)
        {
        }
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->adc_reel, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
        {
            return 0;
        }
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->power_v, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
        {
            return 0;
        }
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->power_a, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
        {
            return 0;
        }
    }
    {
        size_t i;
        for(i = 0; i < 4u; ++i)
        {
        }
    }
    return 1;
}

/**
 * @brief Measure the complete active canonical extent of unitree_go/msg/LowState.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static size_t roswasmc_bounded_2_unitree_go_msg_LowState_wire_size(roswasmc_bounded_2_unitree_go_msg_LowState const* value)
{
    size_t n = 0;
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            n += 1;
        }
    }
    n += 1;
    n += 1;
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            n += 4;
        }
    }
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            n += 4;
        }
    }
    n += 2;
    n += roswasmc_bounded_2_unitree_go_msg_IMUState_wire_size(&value->imu_state);
    {
        size_t i;
        for(i = 0; i < 20u; ++i)
        {
            n += roswasmc_bounded_2_unitree_go_msg_MotorState_wire_size(&value->motor_state[i]);
        }
    }
    n += roswasmc_bounded_2_unitree_go_msg_BmsState_wire_size(&value->bms_state);
    {
        size_t i;
        for(i = 0; i < 4u; ++i)
        {
            n += 2;
        }
    }
    {
        size_t i;
        for(i = 0; i < 4u; ++i)
        {
            n += 2;
        }
    }
    n += 4;
    {
        size_t i;
        for(i = 0; i < 40u; ++i)
        {
            n += 1;
        }
    }
    n += 1;
    n += 4;
    n += 1;
    n += 1;
    n += 4;
    n += 4;
    {
        size_t i;
        for(i = 0; i < 4u; ++i)
        {
            n += 2;
        }
    }
    n += 4;
    n += 4;
    return n;
}

/**
 * @brief Append all fields of unitree_go/msg/LowState to an internal canonical buffer.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete prevalidated immutable record.
 * @param[out] p Sufficient exclusive output storage established by the public encoder.
 * @param[in,out] offset Exclusive initialized writer cursor.
 * @return No value; internal caller guarantees the measured capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static void
    roswasmc_bounded_2_unitree_go_msg_LowState_write_fields(roswasmc_bounded_2_unitree_go_msg_LowState const* value, unsigned char* p, size_t* offset)
{
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            uwvm_bounded_put(p + *offset, (uint64_t)value->head[i], 1);
            *offset += 1;
        }
    }
    uwvm_bounded_put(p + *offset, (uint64_t)value->level_flag, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->frame_reserve, 1);
    *offset += 1;
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            uwvm_bounded_put(p + *offset, (uint64_t)value->sn[i], 4);
            *offset += 4;
        }
    }
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            uwvm_bounded_put(p + *offset, (uint64_t)value->version[i], 4);
            *offset += 4;
        }
    }
    uwvm_bounded_put(p + *offset, (uint64_t)value->bandwidth, 2);
    *offset += 2;
    roswasmc_bounded_2_unitree_go_msg_IMUState_write_fields(&value->imu_state, p, offset);
    {
        size_t i;
        for(i = 0; i < 20u; ++i)
        {
            roswasmc_bounded_2_unitree_go_msg_MotorState_write_fields(&value->motor_state[i], p, offset);
        }
    }
    roswasmc_bounded_2_unitree_go_msg_BmsState_write_fields(&value->bms_state, p, offset);
    {
        size_t i;
        for(i = 0; i < 4u; ++i)
        {
            uwvm_bounded_put(p + *offset, (uint64_t)value->foot_force[i], 2);
            *offset += 2;
        }
    }
    {
        size_t i;
        for(i = 0; i < 4u; ++i)
        {
            uwvm_bounded_put(p + *offset, (uint64_t)value->foot_force_est[i], 2);
            *offset += 2;
        }
    }
    uwvm_bounded_put(p + *offset, (uint64_t)value->tick, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < 40u; ++i)
        {
            uwvm_bounded_put(p + *offset, (uint64_t)value->wireless_remote[i], 1);
            *offset += 1;
        }
    }
    uwvm_bounded_put(p + *offset, (uint64_t)value->bit_flag, 1);
    *offset += 1;
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->adc_reel, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    uwvm_bounded_put(p + *offset, (uint64_t)value->temperature_ntc1, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->temperature_ntc2, 1);
    *offset += 1;
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->power_v, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->power_a, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        size_t i;
        for(i = 0; i < 4u; ++i)
        {
            uwvm_bounded_put(p + *offset, (uint64_t)value->fan_frequency[i], 2);
            *offset += 2;
        }
    }
    uwvm_bounded_put(p + *offset, (uint64_t)value->reserve, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, (uint64_t)value->crc, 4);
    *offset += 4;
}

/**
 * @brief Decode the full ordered field prefix of unitree_go/msg/LowState.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] p Borrowed canonical bytes, stable through return.
 * @param[in] n Available input extent in bytes.
 * @param[in,out] offset Exclusive initialized reader cursor.
 * @param[out] value Private temporary record; discard it on failure.
 * @return Nonzero only after complete prefix validation; enclosing fields may remain unread.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static int
    roswasmc_bounded_2_unitree_go_msg_LowState_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_2_unitree_go_msg_LowState* value)
{
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            if(*offset > n || n - *offset < 1)
            {
                return 0;
            }
            {
                uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
                uwvm_bounded_copy(&value->head[i], &bits, 1);
            }
            *offset += 1;
        }
    }
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->level_flag, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->frame_reserve, &bits, 1);
    }
    *offset += 1;
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            if(*offset > n || n - *offset < 4)
            {
                return 0;
            }
            {
                uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
                uwvm_bounded_copy(&value->sn[i], &bits, 4);
            }
            *offset += 4;
        }
    }
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            if(*offset > n || n - *offset < 4)
            {
                return 0;
            }
            {
                uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
                uwvm_bounded_copy(&value->version[i], &bits, 4);
            }
            *offset += 4;
        }
    }
    if(*offset > n || n - *offset < 2)
    {
        return 0;
    }
    {
        uint16_t bits = (uint16_t)uwvm_bounded_get(p + *offset, 2);
        uwvm_bounded_copy(&value->bandwidth, &bits, 2);
    }
    *offset += 2;
    if(!roswasmc_bounded_2_unitree_go_msg_IMUState_read_fields(p, n, offset, &value->imu_state))
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < 20u; ++i)
        {
            if(!roswasmc_bounded_2_unitree_go_msg_MotorState_read_fields(p, n, offset, &value->motor_state[i]))
            {
                return 0;
            }
        }
    }
    if(!roswasmc_bounded_2_unitree_go_msg_BmsState_read_fields(p, n, offset, &value->bms_state))
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < 4u; ++i)
        {
            if(*offset > n || n - *offset < 2)
            {
                return 0;
            }
            {
                uint16_t bits = (uint16_t)uwvm_bounded_get(p + *offset, 2);
                uwvm_bounded_copy(&value->foot_force[i], &bits, 2);
            }
            *offset += 2;
        }
    }
    {
        size_t i;
        for(i = 0; i < 4u; ++i)
        {
            if(*offset > n || n - *offset < 2)
            {
                return 0;
            }
            {
                uint16_t bits = (uint16_t)uwvm_bounded_get(p + *offset, 2);
                uwvm_bounded_copy(&value->foot_force_est[i], &bits, 2);
            }
            *offset += 2;
        }
    }
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->tick, &bits, 4);
    }
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < 40u; ++i)
        {
            if(*offset > n || n - *offset < 1)
            {
                return 0;
            }
            {
                uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
                uwvm_bounded_copy(&value->wireless_remote[i], &bits, 1);
            }
            *offset += 1;
        }
    }
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->bit_flag, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->adc_reel, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->temperature_ntc1, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->temperature_ntc2, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->power_v, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->power_a, &bits, 4);
    }
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < 4u; ++i)
        {
            if(*offset > n || n - *offset < 2)
            {
                return 0;
            }
            {
                uint16_t bits = (uint16_t)uwvm_bounded_get(p + *offset, 2);
                uwvm_bounded_copy(&value->fan_frequency[i], &bits, 2);
            }
            *offset += 2;
        }
    }
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->reserve, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->crc, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_2_unitree_go_msg_LowState_valid(value);
}

/**
 * @brief Encode the complete unitree_go/msg/LowState record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record.
 * @param[out] output Exclusive caller-owned byte storage, disjoint from value and length.
 * @param[in] capacity Available writable byte count.
 * @param[out] length Exact initialized byte count, written only on success.
 * @return Status 0 on success, 22 for invalid/overlapping values, or 90 for insufficient capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static uint32_t
    roswasmc_bounded_2_unitree_go_msg_LowState_encode(roswasmc_bounded_2_unitree_go_msg_LowState const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_unitree_go_msg_LowState_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_unitree_go_msg_LowState_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_unitree_go_msg_LowState_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/**
 * @brief Decode exactly one complete unitree_go/msg/LowState record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] input Immutable complete canonical body, disjoint from value.
 * @param[in] length Exact input byte count; trailing bytes are refused.
 * @param[out] value Caller-owned complete record; unchanged on every refusal.
 * @return Status 0 on complete success, otherwise 22; no partial record is exposed.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static uint32_t roswasmc_bounded_2_unitree_go_msg_LowState_decode(void const* input, size_t length, roswasmc_bounded_2_unitree_go_msg_LowState* value)
{
    roswasmc_bounded_2_unitree_go_msg_LowState next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 1050u || length > 1050u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_unitree_go_msg_LowState_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_MOTORCMDS)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_MOTORCMDS_0 != 0x96dc3ce3UL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_MOTORCMDS_1 != 0x95499969UL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_MOTORCMDS_2 != 0xa18e73a9UL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_MOTORCMDS_3 != 0x53edb064UL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_MOTORCMDS_4 != 0x6eefb41dUL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_MOTORCMDS_5 != 0x93662394UL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_MOTORCMDS_6 != 0x44e5fbc5UL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_MOTORCMDS_7 != 0x881b18a6UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_MOTORCMDS 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_MOTORCMDS_0 0x96dc3ce3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_MOTORCMDS_1 0x95499969UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_MOTORCMDS_2 0xa18e73a9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_MOTORCMDS_3 0x53edb064UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_MOTORCMDS_4 0x6eefb41dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_MOTORCMDS_5 0x93662394UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_MOTORCMDS_6 0x44e5fbc5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_MOTORCMDS_7 0x881b18a6UL

/**
 * @brief Own a bounded canonical sequence or UTF-8 byte string inline.
 * @details The active size is 0 through 32. Unused capacity is never serialized or read. This Guest storage is
 * neither a native ROS allocation nor an authority token.
 */
typedef struct
{
    /**
     * @brief Number of initialized active elements.
     * @details Must be no greater than 32; decoders and encoders reject larger values without truncation.
     */
    uint32_t size;
    /**
     * @brief Caller-owned complete finite element capacity.
     * @details Only the initialized active size prefix is meaningful. Retain that prefix unchanged through
     * synchronous encoding; no native pointer or permission is stored.
     */
    roswasmc_bounded_2_unitree_go_msg_MotorCmd data[32];
} roswasmc_bounded_2_unitree_go_msg_MotorCmds_cmds_sequence;

/**
 * @brief Complete ROS 2 unitree_go/msg/MotorCmds value.
 * @details All 1 declared fields are retained in source order. The canonical representation occupies 4..1060
 * bytes and is identified by UWVMROS1_d197f3b4853bb06c2379f66e8223dc0807345e8a9c0ce12bb3c6d39e42a7bfb3.
 * @native Original selected identity: RIHS01_42477c00fd1a43909adb05ac604791f230536f7f4d558aabb9c1433acc0cb39b.
 * Compilation of matching native traits is a separate qualification.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_2_unitree_go_msg_MotorCmds
{
    /** @brief Declared field cmds; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/MotorCmds.cmds: unitree_go/msg/MotorCmd; 0..32 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgMotorCmds; share/platform/ros/rs/API-CONTRACT.md
     */
    roswasmc_bounded_2_unitree_go_msg_MotorCmds_cmds_sequence cmds;
} roswasmc_bounded_2_unitree_go_msg_MotorCmds;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_MOTORCMDS_MAX_WIRE_BYTES 1060u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_MOTORCMDS_MIN_WIRE_BYTES 4u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_MOTORCMDS_CODEC_IDENTITY "UWVMROS1_d197f3b4853bb06c2379f66e8223dc0807345e8a9c0ce12bb3c6d39e42a7bfb3"

/**
 * @brief Validate every field of unitree_go/msg/MotorCmds.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static int roswasmc_bounded_2_unitree_go_msg_MotorCmds_valid(roswasmc_bounded_2_unitree_go_msg_MotorCmds const* value)
{
    if(!value)
    {
        return 0;
    }
    if(value->cmds.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->cmds.size; ++i)
        {
            if(!roswasmc_bounded_2_unitree_go_msg_MotorCmd_valid(&value->cmds.data[i]))
            {
                return 0;
            }
        }
    }
    return 1;
}

/**
 * @brief Measure the complete active canonical extent of unitree_go/msg/MotorCmds.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static size_t roswasmc_bounded_2_unitree_go_msg_MotorCmds_wire_size(roswasmc_bounded_2_unitree_go_msg_MotorCmds const* value)
{
    size_t n = 0;
    n += 4;
    if(value->cmds.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->cmds.size; ++i)
        {
            n += roswasmc_bounded_2_unitree_go_msg_MotorCmd_wire_size(&value->cmds.data[i]);
        }
    }
    return n;
}

/**
 * @brief Append all fields of unitree_go/msg/MotorCmds to an internal canonical buffer.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete prevalidated immutable record.
 * @param[out] p Sufficient exclusive output storage established by the public encoder.
 * @param[in,out] offset Exclusive initialized writer cursor.
 * @return No value; internal caller guarantees the measured capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static void
    roswasmc_bounded_2_unitree_go_msg_MotorCmds_write_fields(roswasmc_bounded_2_unitree_go_msg_MotorCmds const* value, unsigned char* p, size_t* offset)
{
    uwvm_bounded_put(p + *offset, value->cmds.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->cmds.size; ++i)
        {
            roswasmc_bounded_2_unitree_go_msg_MotorCmd_write_fields(&value->cmds.data[i], p, offset);
        }
    }
}

/**
 * @brief Decode the full ordered field prefix of unitree_go/msg/MotorCmds.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] p Borrowed canonical bytes, stable through return.
 * @param[in] n Available input extent in bytes.
 * @param[in,out] offset Exclusive initialized reader cursor.
 * @param[out] value Private temporary record; discard it on failure.
 * @return Nonzero only after complete prefix validation; enclosing fields may remain unread.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static int roswasmc_bounded_2_unitree_go_msg_MotorCmds_read_fields(unsigned char const* p,
                                                                          size_t n,
                                                                          size_t* offset,
                                                                          roswasmc_bounded_2_unitree_go_msg_MotorCmds* value)
{
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->cmds.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->cmds.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->cmds.size; ++i)
        {
            if(!roswasmc_bounded_2_unitree_go_msg_MotorCmd_read_fields(p, n, offset, &value->cmds.data[i]))
            {
                return 0;
            }
        }
    }
    return roswasmc_bounded_2_unitree_go_msg_MotorCmds_valid(value);
}

/**
 * @brief Encode the complete unitree_go/msg/MotorCmds record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record.
 * @param[out] output Exclusive caller-owned byte storage, disjoint from value and length.
 * @param[in] capacity Available writable byte count.
 * @param[out] length Exact initialized byte count, written only on success.
 * @return Status 0 on success, 22 for invalid/overlapping values, or 90 for insufficient capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static uint32_t
    roswasmc_bounded_2_unitree_go_msg_MotorCmds_encode(roswasmc_bounded_2_unitree_go_msg_MotorCmds const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_unitree_go_msg_MotorCmds_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_unitree_go_msg_MotorCmds_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_unitree_go_msg_MotorCmds_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/**
 * @brief Decode exactly one complete unitree_go/msg/MotorCmds record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] input Immutable complete canonical body, disjoint from value.
 * @param[in] length Exact input byte count; trailing bytes are refused.
 * @param[out] value Caller-owned complete record; unchanged on every refusal.
 * @return Status 0 on complete success, otherwise 22; no partial record is exposed.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static uint32_t roswasmc_bounded_2_unitree_go_msg_MotorCmds_decode(void const* input, size_t length, roswasmc_bounded_2_unitree_go_msg_MotorCmds* value)
{
    roswasmc_bounded_2_unitree_go_msg_MotorCmds next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 4u || length > 1060u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_unitree_go_msg_MotorCmds_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_MOTORSTATES)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_MOTORSTATES_0 != 0xb66d0ef8UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_MOTORSTATES_1 != 0x0b55ab2fUL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_MOTORSTATES_2 != 0x59d3d3d3UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_MOTORSTATES_3 != 0x89107160UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_MOTORSTATES_4 != 0x761ecd2aUL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_MOTORSTATES_5 != 0xe49cba0fUL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_MOTORSTATES_6 != 0x8a09bc86UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_MOTORSTATES_7 != 0x0c0b3d9cUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_MOTORSTATES 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_MOTORSTATES_0 0xb66d0ef8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_MOTORSTATES_1 0x0b55ab2fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_MOTORSTATES_2 0x59d3d3d3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_MOTORSTATES_3 0x89107160UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_MOTORSTATES_4 0x761ecd2aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_MOTORSTATES_5 0xe49cba0fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_MOTORSTATES_6 0x8a09bc86UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_MOTORSTATES_7 0x0c0b3d9cUL

/**
 * @brief Own a bounded canonical sequence or UTF-8 byte string inline.
 * @details The active size is 0 through 32. Unused capacity is never serialized or read. This Guest storage is
 * neither a native ROS allocation nor an authority token.
 */
typedef struct
{
    /**
     * @brief Number of initialized active elements.
     * @details Must be no greater than 32; decoders and encoders reject larger values without truncation.
     */
    uint32_t size;
    /**
     * @brief Caller-owned complete finite element capacity.
     * @details Only the initialized active size prefix is meaningful. Retain that prefix unchanged through
     * synchronous encoding; no native pointer or permission is stored.
     */
    roswasmc_bounded_2_unitree_go_msg_MotorState data[32];
} roswasmc_bounded_2_unitree_go_msg_MotorStates_states_sequence;

/**
 * @brief Complete ROS 2 unitree_go/msg/MotorStates value.
 * @details All 1 declared fields are retained in source order. The canonical representation occupies 4..1348
 * bytes and is identified by UWVMROS1_0280c49a47d3e308c9026dd1d066ad6cf790b30630e075e31f16f26fa0529d3e.
 * @native Original selected identity: RIHS01_0451336d1b203b1fc0e378d8a8e2f04a95a8346dcf988f0bb84ac4ff7ee508d6.
 * Compilation of matching native traits is a separate qualification.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_2_unitree_go_msg_MotorStates
{
    /** @brief Declared field states; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/MotorStates.states: unitree_go/msg/MotorState; 0..32 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgMotorStates; share/platform/ros/rs/API-CONTRACT.md
     */
    roswasmc_bounded_2_unitree_go_msg_MotorStates_states_sequence states;
} roswasmc_bounded_2_unitree_go_msg_MotorStates;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_MOTORSTATES_MAX_WIRE_BYTES 1348u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_MOTORSTATES_MIN_WIRE_BYTES 4u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_MOTORSTATES_CODEC_IDENTITY "UWVMROS1_0280c49a47d3e308c9026dd1d066ad6cf790b30630e075e31f16f26fa0529d3e"

/**
 * @brief Validate every field of unitree_go/msg/MotorStates.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static int roswasmc_bounded_2_unitree_go_msg_MotorStates_valid(roswasmc_bounded_2_unitree_go_msg_MotorStates const* value)
{
    if(!value)
    {
        return 0;
    }
    if(value->states.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->states.size; ++i)
        {
            if(!roswasmc_bounded_2_unitree_go_msg_MotorState_valid(&value->states.data[i]))
            {
                return 0;
            }
        }
    }
    return 1;
}

/**
 * @brief Measure the complete active canonical extent of unitree_go/msg/MotorStates.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static size_t roswasmc_bounded_2_unitree_go_msg_MotorStates_wire_size(roswasmc_bounded_2_unitree_go_msg_MotorStates const* value)
{
    size_t n = 0;
    n += 4;
    if(value->states.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->states.size; ++i)
        {
            n += roswasmc_bounded_2_unitree_go_msg_MotorState_wire_size(&value->states.data[i]);
        }
    }
    return n;
}

/**
 * @brief Append all fields of unitree_go/msg/MotorStates to an internal canonical buffer.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete prevalidated immutable record.
 * @param[out] p Sufficient exclusive output storage established by the public encoder.
 * @param[in,out] offset Exclusive initialized writer cursor.
 * @return No value; internal caller guarantees the measured capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static void
    roswasmc_bounded_2_unitree_go_msg_MotorStates_write_fields(roswasmc_bounded_2_unitree_go_msg_MotorStates const* value, unsigned char* p, size_t* offset)
{
    uwvm_bounded_put(p + *offset, value->states.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->states.size; ++i)
        {
            roswasmc_bounded_2_unitree_go_msg_MotorState_write_fields(&value->states.data[i], p, offset);
        }
    }
}

/**
 * @brief Decode the full ordered field prefix of unitree_go/msg/MotorStates.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] p Borrowed canonical bytes, stable through return.
 * @param[in] n Available input extent in bytes.
 * @param[in,out] offset Exclusive initialized reader cursor.
 * @param[out] value Private temporary record; discard it on failure.
 * @return Nonzero only after complete prefix validation; enclosing fields may remain unread.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static int roswasmc_bounded_2_unitree_go_msg_MotorStates_read_fields(unsigned char const* p,
                                                                            size_t n,
                                                                            size_t* offset,
                                                                            roswasmc_bounded_2_unitree_go_msg_MotorStates* value)
{
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->states.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->states.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->states.size; ++i)
        {
            if(!roswasmc_bounded_2_unitree_go_msg_MotorState_read_fields(p, n, offset, &value->states.data[i]))
            {
                return 0;
            }
        }
    }
    return roswasmc_bounded_2_unitree_go_msg_MotorStates_valid(value);
}

/**
 * @brief Encode the complete unitree_go/msg/MotorStates record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record.
 * @param[out] output Exclusive caller-owned byte storage, disjoint from value and length.
 * @param[in] capacity Available writable byte count.
 * @param[out] length Exact initialized byte count, written only on success.
 * @return Status 0 on success, 22 for invalid/overlapping values, or 90 for insufficient capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static uint32_t roswasmc_bounded_2_unitree_go_msg_MotorStates_encode(roswasmc_bounded_2_unitree_go_msg_MotorStates const* value,
                                                                            void* output,
                                                                            size_t capacity,
                                                                            size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_unitree_go_msg_MotorStates_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_unitree_go_msg_MotorStates_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_unitree_go_msg_MotorStates_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/**
 * @brief Decode exactly one complete unitree_go/msg/MotorStates record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] input Immutable complete canonical body, disjoint from value.
 * @param[in] length Exact input byte count; trailing bytes are refused.
 * @param[out] value Caller-owned complete record; unchanged on every refusal.
 * @return Status 0 on complete success, otherwise 22; no partial record is exposed.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static uint32_t
    roswasmc_bounded_2_unitree_go_msg_MotorStates_decode(void const* input, size_t length, roswasmc_bounded_2_unitree_go_msg_MotorStates* value)
{
    roswasmc_bounded_2_unitree_go_msg_MotorStates next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 4u || length > 1348u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_unitree_go_msg_MotorStates_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_PATHPOINT)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_PATHPOINT_0 != 0xeca9a948UL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_PATHPOINT_1 != 0xec84d6bbUL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_PATHPOINT_2 != 0x71367a51UL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_PATHPOINT_3 != 0x5d793ddeUL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_PATHPOINT_4 != 0x8e5940f4UL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_PATHPOINT_5 != 0x04134cc9UL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_PATHPOINT_6 != 0xe1a58683UL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_PATHPOINT_7 != 0xe5f451d7UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_PATHPOINT 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_PATHPOINT_0 0xeca9a948UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_PATHPOINT_1 0xec84d6bbUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_PATHPOINT_2 0x71367a51UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_PATHPOINT_3 0x5d793ddeUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_PATHPOINT_4 0x8e5940f4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_PATHPOINT_5 0x04134cc9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_PATHPOINT_6 0xe1a58683UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_PATHPOINT_7 0xe5f451d7UL

/**
 * @brief Complete ROS 2 unitree_go/msg/PathPoint value.
 * @details All 7 declared fields are retained in source order. The canonical representation occupies 28..28
 * bytes and is identified by UWVMROS1_35eb1cc629dcecbace17b342029c287310c30d4e6d988740bf2c212a1251cee4.
 * @native Original selected identity: RIHS01_c8bcdd0b29c28f9e853ffa2f4d404718c058f4c084dc13737540d81edb1ccd17.
 * Compilation of matching native traits is a separate qualification.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_2_unitree_go_msg_PathPoint
{
    /** @brief Declared field t_from_start; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/PathPoint.t_from_start: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgPathPoint; share/platform/ros/rs/API-CONTRACT.md
     */
    float t_from_start;
    /** @brief Declared field x; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/PathPoint.x: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgPathPoint; share/platform/ros/rs/API-CONTRACT.md
     */
    float x;
    /** @brief Declared field y; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/PathPoint.y: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgPathPoint; share/platform/ros/rs/API-CONTRACT.md
     */
    float y;
    /** @brief Declared field yaw; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/PathPoint.yaw: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgPathPoint; share/platform/ros/rs/API-CONTRACT.md
     */
    float yaw;
    /** @brief Declared field vx; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/PathPoint.vx: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgPathPoint; share/platform/ros/rs/API-CONTRACT.md
     */
    float vx;
    /** @brief Declared field vy; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/PathPoint.vy: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgPathPoint; share/platform/ros/rs/API-CONTRACT.md
     */
    float vy;
    /** @brief Declared field vyaw; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/PathPoint.vyaw: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgPathPoint; share/platform/ros/rs/API-CONTRACT.md
     */
    float vyaw;
} roswasmc_bounded_2_unitree_go_msg_PathPoint;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_PATHPOINT_MAX_WIRE_BYTES 28u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_PATHPOINT_MIN_WIRE_BYTES 28u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_PATHPOINT_CODEC_IDENTITY "UWVMROS1_35eb1cc629dcecbace17b342029c287310c30d4e6d988740bf2c212a1251cee4"

/**
 * @brief Validate every field of unitree_go/msg/PathPoint.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static int roswasmc_bounded_2_unitree_go_msg_PathPoint_valid(roswasmc_bounded_2_unitree_go_msg_PathPoint const* value)
{
    if(!value)
    {
        return 0;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->t_from_start, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
        {
            return 0;
        }
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->x, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
        {
            return 0;
        }
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->y, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
        {
            return 0;
        }
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->yaw, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
        {
            return 0;
        }
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->vx, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
        {
            return 0;
        }
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->vy, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
        {
            return 0;
        }
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->vyaw, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
        {
            return 0;
        }
    }
    return 1;
}

/**
 * @brief Measure the complete active canonical extent of unitree_go/msg/PathPoint.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static size_t roswasmc_bounded_2_unitree_go_msg_PathPoint_wire_size(roswasmc_bounded_2_unitree_go_msg_PathPoint const* value)
{
    size_t n = 0;
    n += 4;
    n += 4;
    n += 4;
    n += 4;
    n += 4;
    n += 4;
    n += 4;
    return n;
}

/**
 * @brief Append all fields of unitree_go/msg/PathPoint to an internal canonical buffer.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete prevalidated immutable record.
 * @param[out] p Sufficient exclusive output storage established by the public encoder.
 * @param[in,out] offset Exclusive initialized writer cursor.
 * @return No value; internal caller guarantees the measured capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static void
    roswasmc_bounded_2_unitree_go_msg_PathPoint_write_fields(roswasmc_bounded_2_unitree_go_msg_PathPoint const* value, unsigned char* p, size_t* offset)
{
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->t_from_start, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->x, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->y, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->yaw, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->vx, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->vy, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->vyaw, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
}

/**
 * @brief Decode the full ordered field prefix of unitree_go/msg/PathPoint.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] p Borrowed canonical bytes, stable through return.
 * @param[in] n Available input extent in bytes.
 * @param[in,out] offset Exclusive initialized reader cursor.
 * @param[out] value Private temporary record; discard it on failure.
 * @return Nonzero only after complete prefix validation; enclosing fields may remain unread.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static int roswasmc_bounded_2_unitree_go_msg_PathPoint_read_fields(unsigned char const* p,
                                                                          size_t n,
                                                                          size_t* offset,
                                                                          roswasmc_bounded_2_unitree_go_msg_PathPoint* value)
{
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->t_from_start, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->x, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->y, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->yaw, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->vx, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->vy, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->vyaw, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_2_unitree_go_msg_PathPoint_valid(value);
}

/**
 * @brief Encode the complete unitree_go/msg/PathPoint record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record.
 * @param[out] output Exclusive caller-owned byte storage, disjoint from value and length.
 * @param[in] capacity Available writable byte count.
 * @param[out] length Exact initialized byte count, written only on success.
 * @return Status 0 on success, 22 for invalid/overlapping values, or 90 for insufficient capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static uint32_t
    roswasmc_bounded_2_unitree_go_msg_PathPoint_encode(roswasmc_bounded_2_unitree_go_msg_PathPoint const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_unitree_go_msg_PathPoint_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_unitree_go_msg_PathPoint_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_unitree_go_msg_PathPoint_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/**
 * @brief Decode exactly one complete unitree_go/msg/PathPoint record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] input Immutable complete canonical body, disjoint from value.
 * @param[in] length Exact input byte count; trailing bytes are refused.
 * @param[out] value Caller-owned complete record; unchanged on every refusal.
 * @return Status 0 on complete success, otherwise 22; no partial record is exposed.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static uint32_t roswasmc_bounded_2_unitree_go_msg_PathPoint_decode(void const* input, size_t length, roswasmc_bounded_2_unitree_go_msg_PathPoint* value)
{
    roswasmc_bounded_2_unitree_go_msg_PathPoint next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 28u || length > 28u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_unitree_go_msg_PathPoint_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_REQ)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_REQ_0 != 0x25922830UL ||                                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_REQ_1 != 0xa53748c2UL ||                                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_REQ_2 != 0xd16a462fUL ||                                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_REQ_3 != 0x1caa8412UL ||                                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_REQ_4 != 0x75828ac6UL ||                                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_REQ_5 != 0x76d89d4aUL ||                                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_REQ_6 != 0x91d34e5bUL ||                                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_REQ_7 != 0x3e3e6ae8UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_REQ 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_REQ_0 0x25922830UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_REQ_1 0xa53748c2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_REQ_2 0xd16a462fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_REQ_3 0x1caa8412UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_REQ_4 0x75828ac6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_REQ_5 0x76d89d4aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_REQ_6 0x91d34e5bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_REQ_7 0x3e3e6ae8UL

/**
 * @brief Own a bounded canonical sequence or UTF-8 byte string inline.
 * @details The active size is 0 through 2048. Unused capacity is never serialized or read. This Guest storage is
 * neither a native ROS allocation nor an authority token.
 */
typedef struct
{
    /**
     * @brief Number of initialized active elements.
     * @details Must be no greater than 2048; decoders and encoders reject larger values without truncation.
     */
    uint32_t size;
    /**
     * @brief Caller-owned complete finite element capacity.
     * @details Only the initialized active size prefix is meaningful. Retain that prefix unchanged through
     * synchronous encoding; no native pointer or permission is stored.
     */
    unsigned char data[2048];
} roswasmc_bounded_2_unitree_go_msg_Req_uuid_text;

/**
 * @brief Own a bounded canonical sequence or UTF-8 byte string inline.
 * @details The active size is 0 through 2048. Unused capacity is never serialized or read. This Guest storage is
 * neither a native ROS allocation nor an authority token.
 */
typedef struct
{
    /**
     * @brief Number of initialized active elements.
     * @details Must be no greater than 2048; decoders and encoders reject larger values without truncation.
     */
    uint32_t size;
    /**
     * @brief Caller-owned complete finite element capacity.
     * @details Only the initialized active size prefix is meaningful. Retain that prefix unchanged through
     * synchronous encoding; no native pointer or permission is stored.
     */
    unsigned char data[2048];
} roswasmc_bounded_2_unitree_go_msg_Req_body_text;

/**
 * @brief Complete ROS 2 unitree_go/msg/Req value.
 * @details All 2 declared fields are retained in source order. The canonical representation occupies 8..4104
 * bytes and is identified by UWVMROS1_eff40bce6ab17bd2781e77b07b2f43cfb4574654561aa96ebae4e19ecb4966d8.
 * @native Original selected identity: RIHS01_7fda909d42424777c947f9c33a7a243eb1a4a1e89af5124a3a2ca7d3fa043b6e.
 * Compilation of matching native traits is a separate qualification.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_2_unitree_go_msg_Req
{
    /** @brief Declared field uuid; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/Req.uuid: string; each string is 0..2048 bytes; strict UTF-8 with no embedded NUL.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgReq; share/platform/ros/rs/API-CONTRACT.md
     */
    roswasmc_bounded_2_unitree_go_msg_Req_uuid_text uuid;
    /** @brief Declared field body; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/Req.body: string; each string is 0..2048 bytes; strict UTF-8 with no embedded NUL.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgReq; share/platform/ros/rs/API-CONTRACT.md
     */
    roswasmc_bounded_2_unitree_go_msg_Req_body_text body;
} roswasmc_bounded_2_unitree_go_msg_Req;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_REQ_MAX_WIRE_BYTES 4104u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_REQ_MIN_WIRE_BYTES 8u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_REQ_CODEC_IDENTITY "UWVMROS1_eff40bce6ab17bd2781e77b07b2f43cfb4574654561aa96ebae4e19ecb4966d8"

/**
 * @brief Validate every field of unitree_go/msg/Req.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static int roswasmc_bounded_2_unitree_go_msg_Req_valid(roswasmc_bounded_2_unitree_go_msg_Req const* value)
{
    if(!value)
    {
        return 0;
    }
    if(value->uuid.size > 2048u || !uwvm_bounded_utf8(value->uuid.data, value->uuid.size))
    {
        return 0;
    }
    if(value->body.size > 2048u || !uwvm_bounded_utf8(value->body.data, value->body.size))
    {
        return 0;
    }
    return 1;
}

/**
 * @brief Measure the complete active canonical extent of unitree_go/msg/Req.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static size_t roswasmc_bounded_2_unitree_go_msg_Req_wire_size(roswasmc_bounded_2_unitree_go_msg_Req const* value)
{
    size_t n = 0;
    n += 4 + value->uuid.size;
    n += 4 + value->body.size;
    return n;
}

/**
 * @brief Append all fields of unitree_go/msg/Req to an internal canonical buffer.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete prevalidated immutable record.
 * @param[out] p Sufficient exclusive output storage established by the public encoder.
 * @param[in,out] offset Exclusive initialized writer cursor.
 * @return No value; internal caller guarantees the measured capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static void roswasmc_bounded_2_unitree_go_msg_Req_write_fields(roswasmc_bounded_2_unitree_go_msg_Req const* value, unsigned char* p, size_t* offset)
{
    uwvm_bounded_put(p + *offset, value->uuid.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->uuid.data, value->uuid.size);
    *offset += value->uuid.size;
    uwvm_bounded_put(p + *offset, value->body.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->body.data, value->body.size);
    *offset += value->body.size;
}

/**
 * @brief Decode the full ordered field prefix of unitree_go/msg/Req.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] p Borrowed canonical bytes, stable through return.
 * @param[in] n Available input extent in bytes.
 * @param[in,out] offset Exclusive initialized reader cursor.
 * @param[out] value Private temporary record; discard it on failure.
 * @return Nonzero only after complete prefix validation; enclosing fields may remain unread.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static int
    roswasmc_bounded_2_unitree_go_msg_Req_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_2_unitree_go_msg_Req* value)
{
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->uuid.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->uuid.size > 2048u || value->uuid.size > n - *offset)
    {
        return 0;
    }
    uwvm_bounded_copy(value->uuid.data, p + *offset, value->uuid.size);
    *offset += value->uuid.size;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->body.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->body.size > 2048u || value->body.size > n - *offset)
    {
        return 0;
    }
    uwvm_bounded_copy(value->body.data, p + *offset, value->body.size);
    *offset += value->body.size;
    return roswasmc_bounded_2_unitree_go_msg_Req_valid(value);
}

/**
 * @brief Encode the complete unitree_go/msg/Req record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record.
 * @param[out] output Exclusive caller-owned byte storage, disjoint from value and length.
 * @param[in] capacity Available writable byte count.
 * @param[out] length Exact initialized byte count, written only on success.
 * @return Status 0 on success, 22 for invalid/overlapping values, or 90 for insufficient capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static uint32_t
    roswasmc_bounded_2_unitree_go_msg_Req_encode(roswasmc_bounded_2_unitree_go_msg_Req const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_unitree_go_msg_Req_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_unitree_go_msg_Req_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_unitree_go_msg_Req_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/**
 * @brief Decode exactly one complete unitree_go/msg/Req record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] input Immutable complete canonical body, disjoint from value.
 * @param[in] length Exact input byte count; trailing bytes are refused.
 * @param[out] value Caller-owned complete record; unchanged on every refusal.
 * @return Status 0 on complete success, otherwise 22; no partial record is exposed.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static uint32_t roswasmc_bounded_2_unitree_go_msg_Req_decode(void const* input, size_t length, roswasmc_bounded_2_unitree_go_msg_Req* value)
{
    roswasmc_bounded_2_unitree_go_msg_Req next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 8u || length > 4104u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_unitree_go_msg_Req_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_RES)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_RES_0 != 0x58b4fb0aUL ||                                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_RES_1 != 0x8723d2e9UL ||                                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_RES_2 != 0xd27e80b6UL ||                                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_RES_3 != 0x37b9209fUL ||                                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_RES_4 != 0x6f959e1eUL ||                                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_RES_5 != 0x2e08cb98UL ||                                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_RES_6 != 0xccb9d790UL ||                                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_RES_7 != 0xf5c94befUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_RES 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_RES_0 0x58b4fb0aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_RES_1 0x8723d2e9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_RES_2 0xd27e80b6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_RES_3 0x37b9209fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_RES_4 0x6f959e1eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_RES_5 0x2e08cb98UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_RES_6 0xccb9d790UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_RES_7 0xf5c94befUL

/**
 * @brief Own a bounded canonical sequence or UTF-8 byte string inline.
 * @details The active size is 0 through 2048. Unused capacity is never serialized or read. This Guest storage is
 * neither a native ROS allocation nor an authority token.
 */
typedef struct
{
    /**
     * @brief Number of initialized active elements.
     * @details Must be no greater than 2048; decoders and encoders reject larger values without truncation.
     */
    uint32_t size;
    /**
     * @brief Caller-owned complete finite element capacity.
     * @details Only the initialized active size prefix is meaningful. Retain that prefix unchanged through
     * synchronous encoding; no native pointer or permission is stored.
     */
    unsigned char data[2048];
} roswasmc_bounded_2_unitree_go_msg_Res_uuid_text;

/**
 * @brief Own a bounded canonical sequence or UTF-8 byte string inline.
 * @details The active size is 0 through 2048. Unused capacity is never serialized or read. This Guest storage is
 * neither a native ROS allocation nor an authority token.
 */
typedef struct
{
    /**
     * @brief Number of initialized active elements.
     * @details Must be no greater than 2048; decoders and encoders reject larger values without truncation.
     */
    uint32_t size;
    /**
     * @brief Caller-owned complete finite element capacity.
     * @details Only the initialized active size prefix is meaningful. Retain that prefix unchanged through
     * synchronous encoding; no native pointer or permission is stored.
     */
    uint8_t data[2048];
} roswasmc_bounded_2_unitree_go_msg_Res_data_sequence;

/**
 * @brief Own a bounded canonical sequence or UTF-8 byte string inline.
 * @details The active size is 0 through 2048. Unused capacity is never serialized or read. This Guest storage is
 * neither a native ROS allocation nor an authority token.
 */
typedef struct
{
    /**
     * @brief Number of initialized active elements.
     * @details Must be no greater than 2048; decoders and encoders reject larger values without truncation.
     */
    uint32_t size;
    /**
     * @brief Caller-owned complete finite element capacity.
     * @details Only the initialized active size prefix is meaningful. Retain that prefix unchanged through
     * synchronous encoding; no native pointer or permission is stored.
     */
    unsigned char data[2048];
} roswasmc_bounded_2_unitree_go_msg_Res_body_text;

/**
 * @brief Complete ROS 2 unitree_go/msg/Res value.
 * @details All 3 declared fields are retained in source order. The canonical representation occupies 12..6156
 * bytes and is identified by UWVMROS1_b18c13e825767a66420c5a03464d38f0d18058e532654a8079f2f60a82cf4963.
 * @native Original selected identity: RIHS01_5e730fb54d81a32e7e28ef519c9b108c99ab6be7dd77c1ef4e66f7c1e69dde16.
 * Compilation of matching native traits is a separate qualification.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_2_unitree_go_msg_Res
{
    /** @brief Declared field uuid; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/Res.uuid: string; each string is 0..2048 bytes; strict UTF-8 with no embedded NUL.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgRes; share/platform/ros/rs/API-CONTRACT.md
     */
    roswasmc_bounded_2_unitree_go_msg_Res_uuid_text uuid;
    /** @brief Declared field data; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/Res.data: uint8; 0..2048 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgRes; share/platform/ros/rs/API-CONTRACT.md
     */
    roswasmc_bounded_2_unitree_go_msg_Res_data_sequence data;
    /** @brief Declared field body; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/Res.body: string; each string is 0..2048 bytes; strict UTF-8 with no embedded NUL.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgRes; share/platform/ros/rs/API-CONTRACT.md
     */
    roswasmc_bounded_2_unitree_go_msg_Res_body_text body;
} roswasmc_bounded_2_unitree_go_msg_Res;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_RES_MAX_WIRE_BYTES 6156u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_RES_MIN_WIRE_BYTES 12u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_RES_CODEC_IDENTITY "UWVMROS1_b18c13e825767a66420c5a03464d38f0d18058e532654a8079f2f60a82cf4963"

/**
 * @brief Validate every field of unitree_go/msg/Res.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static int roswasmc_bounded_2_unitree_go_msg_Res_valid(roswasmc_bounded_2_unitree_go_msg_Res const* value)
{
    if(!value)
    {
        return 0;
    }
    if(value->uuid.size > 2048u || !uwvm_bounded_utf8(value->uuid.data, value->uuid.size))
    {
        return 0;
    }
    if(value->data.size > 2048u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->data.size; ++i)
        {
        }
    }
    if(value->body.size > 2048u || !uwvm_bounded_utf8(value->body.data, value->body.size))
    {
        return 0;
    }
    return 1;
}

/**
 * @brief Measure the complete active canonical extent of unitree_go/msg/Res.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static size_t roswasmc_bounded_2_unitree_go_msg_Res_wire_size(roswasmc_bounded_2_unitree_go_msg_Res const* value)
{
    size_t n = 0;
    n += 4 + value->uuid.size;
    n += 4;
    if(value->data.size > 2048u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->data.size; ++i)
        {
            n += 1;
        }
    }
    n += 4 + value->body.size;
    return n;
}

/**
 * @brief Append all fields of unitree_go/msg/Res to an internal canonical buffer.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete prevalidated immutable record.
 * @param[out] p Sufficient exclusive output storage established by the public encoder.
 * @param[in,out] offset Exclusive initialized writer cursor.
 * @return No value; internal caller guarantees the measured capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static void roswasmc_bounded_2_unitree_go_msg_Res_write_fields(roswasmc_bounded_2_unitree_go_msg_Res const* value, unsigned char* p, size_t* offset)
{
    uwvm_bounded_put(p + *offset, value->uuid.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->uuid.data, value->uuid.size);
    *offset += value->uuid.size;
    uwvm_bounded_put(p + *offset, value->data.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->data.size; ++i)
        {
            uwvm_bounded_put(p + *offset, (uint64_t)value->data.data[i], 1);
            *offset += 1;
        }
    }
    uwvm_bounded_put(p + *offset, value->body.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->body.data, value->body.size);
    *offset += value->body.size;
}

/**
 * @brief Decode the full ordered field prefix of unitree_go/msg/Res.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] p Borrowed canonical bytes, stable through return.
 * @param[in] n Available input extent in bytes.
 * @param[in,out] offset Exclusive initialized reader cursor.
 * @param[out] value Private temporary record; discard it on failure.
 * @return Nonzero only after complete prefix validation; enclosing fields may remain unread.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static int
    roswasmc_bounded_2_unitree_go_msg_Res_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_2_unitree_go_msg_Res* value)
{
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->uuid.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->uuid.size > 2048u || value->uuid.size > n - *offset)
    {
        return 0;
    }
    uwvm_bounded_copy(value->uuid.data, p + *offset, value->uuid.size);
    *offset += value->uuid.size;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->data.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->data.size > 2048u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->data.size; ++i)
        {
            if(*offset > n || n - *offset < 1)
            {
                return 0;
            }
            {
                uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
                uwvm_bounded_copy(&value->data.data[i], &bits, 1);
            }
            *offset += 1;
        }
    }
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->body.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->body.size > 2048u || value->body.size > n - *offset)
    {
        return 0;
    }
    uwvm_bounded_copy(value->body.data, p + *offset, value->body.size);
    *offset += value->body.size;
    return roswasmc_bounded_2_unitree_go_msg_Res_valid(value);
}

/**
 * @brief Encode the complete unitree_go/msg/Res record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record.
 * @param[out] output Exclusive caller-owned byte storage, disjoint from value and length.
 * @param[in] capacity Available writable byte count.
 * @param[out] length Exact initialized byte count, written only on success.
 * @return Status 0 on success, 22 for invalid/overlapping values, or 90 for insufficient capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static uint32_t
    roswasmc_bounded_2_unitree_go_msg_Res_encode(roswasmc_bounded_2_unitree_go_msg_Res const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_unitree_go_msg_Res_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_unitree_go_msg_Res_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_unitree_go_msg_Res_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/**
 * @brief Decode exactly one complete unitree_go/msg/Res record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] input Immutable complete canonical body, disjoint from value.
 * @param[in] length Exact input byte count; trailing bytes are refused.
 * @param[out] value Caller-owned complete record; unchanged on every refusal.
 * @return Status 0 on complete success, otherwise 22; no partial record is exposed.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static uint32_t roswasmc_bounded_2_unitree_go_msg_Res_decode(void const* input, size_t length, roswasmc_bounded_2_unitree_go_msg_Res* value)
{
    roswasmc_bounded_2_unitree_go_msg_Res next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 12u || length > 6156u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_unitree_go_msg_Res_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_SPORTMODECMD)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_SPORTMODECMD_0 != 0xef2f8969UL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_SPORTMODECMD_1 != 0x161f5007UL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_SPORTMODECMD_2 != 0x2c33d483UL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_SPORTMODECMD_3 != 0xacbe680cUL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_SPORTMODECMD_4 != 0xf597f741UL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_SPORTMODECMD_5 != 0x25bf1a3eUL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_SPORTMODECMD_6 != 0x72a9440dUL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_SPORTMODECMD_7 != 0x487d0bdeUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_SPORTMODECMD 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_SPORTMODECMD_0 0xef2f8969UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_SPORTMODECMD_1 0x161f5007UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_SPORTMODECMD_2 0x2c33d483UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_SPORTMODECMD_3 0xacbe680cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_SPORTMODECMD_4 0xf597f741UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_SPORTMODECMD_5 0x25bf1a3eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_SPORTMODECMD_6 0x72a9440dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_SPORTMODECMD_7 0x487d0bdeUL

/**
 * @brief Complete ROS 2 unitree_go/msg/SportModeCmd value.
 * @details All 11 declared fields are retained in source order. The canonical representation occupies 887..887
 * bytes and is identified by UWVMROS1_cf90a065007b9b8cedde3f0b58aa79da3b39a1456dc1b5297f4fe799d92ff22c.
 * @native Original selected identity: RIHS01_22c42d22e75a8d419fa6473b1d3ae92b3fa7473ca9d7bc9e336785659e7ab928.
 * Compilation of matching native traits is a separate qualification.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_2_unitree_go_msg_SportModeCmd
{
    /** @brief Declared field mode; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/SportModeCmd.mode: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgSportModeCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t mode;
    /** @brief Declared field gait_type; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/SportModeCmd.gait_type: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgSportModeCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t gait_type;
    /** @brief Declared field speed_level; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/SportModeCmd.speed_level: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgSportModeCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t speed_level;
    /** @brief Declared field foot_raise_height; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/SportModeCmd.foot_raise_height: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgSportModeCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    float foot_raise_height;
    /** @brief Declared field body_height; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/SportModeCmd.body_height: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgSportModeCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    float body_height;
    /** @brief Declared field position; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/SportModeCmd.position: float32; exactly 2 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgSportModeCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    float position[2];
    /** @brief Declared field euler; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/SportModeCmd.euler: float32; exactly 3 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgSportModeCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    float euler[3];
    /** @brief Declared field velocity; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/SportModeCmd.velocity: float32; exactly 2 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgSportModeCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    float velocity[2];
    /** @brief Declared field yaw_speed; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/SportModeCmd.yaw_speed: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgSportModeCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    float yaw_speed;
    /** @brief Declared field bms_cmd; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/SportModeCmd.bms_cmd: unitree_go/msg/BmsCmd.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgSportModeCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    roswasmc_bounded_2_unitree_go_msg_BmsCmd bms_cmd;
    /** @brief Declared field path_point; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/SportModeCmd.path_point: unitree_go/msg/PathPoint; exactly 30 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgSportModeCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    roswasmc_bounded_2_unitree_go_msg_PathPoint path_point[30];
} roswasmc_bounded_2_unitree_go_msg_SportModeCmd;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_SPORTMODECMD_MAX_WIRE_BYTES 887u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_SPORTMODECMD_MIN_WIRE_BYTES 887u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_SPORTMODECMD_CODEC_IDENTITY "UWVMROS1_cf90a065007b9b8cedde3f0b58aa79da3b39a1456dc1b5297f4fe799d92ff22c"

/**
 * @brief Validate every field of unitree_go/msg/SportModeCmd.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static int roswasmc_bounded_2_unitree_go_msg_SportModeCmd_valid(roswasmc_bounded_2_unitree_go_msg_SportModeCmd const* value)
{
    if(!value)
    {
        return 0;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->foot_raise_height, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
        {
            return 0;
        }
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->body_height, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
        {
            return 0;
        }
    }
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            {
                uint32_t bits;
                uwvm_bounded_copy(&bits, &value->position[i], 4);
                if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
                {
                    return 0;
                }
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 3u; ++i)
        {
            {
                uint32_t bits;
                uwvm_bounded_copy(&bits, &value->euler[i], 4);
                if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
                {
                    return 0;
                }
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            {
                uint32_t bits;
                uwvm_bounded_copy(&bits, &value->velocity[i], 4);
                if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
                {
                    return 0;
                }
            }
        }
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->yaw_speed, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
        {
            return 0;
        }
    }
    if(!roswasmc_bounded_2_unitree_go_msg_BmsCmd_valid(&value->bms_cmd))
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < 30u; ++i)
        {
            if(!roswasmc_bounded_2_unitree_go_msg_PathPoint_valid(&value->path_point[i]))
            {
                return 0;
            }
        }
    }
    return 1;
}

/**
 * @brief Measure the complete active canonical extent of unitree_go/msg/SportModeCmd.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static size_t roswasmc_bounded_2_unitree_go_msg_SportModeCmd_wire_size(roswasmc_bounded_2_unitree_go_msg_SportModeCmd const* value)
{
    size_t n = 0;
    n += 1;
    n += 1;
    n += 1;
    n += 4;
    n += 4;
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
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
        for(i = 0; i < 2u; ++i)
        {
            n += 4;
        }
    }
    n += 4;
    n += roswasmc_bounded_2_unitree_go_msg_BmsCmd_wire_size(&value->bms_cmd);
    {
        size_t i;
        for(i = 0; i < 30u; ++i)
        {
            n += roswasmc_bounded_2_unitree_go_msg_PathPoint_wire_size(&value->path_point[i]);
        }
    }
    return n;
}

/**
 * @brief Append all fields of unitree_go/msg/SportModeCmd to an internal canonical buffer.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete prevalidated immutable record.
 * @param[out] p Sufficient exclusive output storage established by the public encoder.
 * @param[in,out] offset Exclusive initialized writer cursor.
 * @return No value; internal caller guarantees the measured capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static void
    roswasmc_bounded_2_unitree_go_msg_SportModeCmd_write_fields(roswasmc_bounded_2_unitree_go_msg_SportModeCmd const* value, unsigned char* p, size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->mode, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->gait_type, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->speed_level, 1);
    *offset += 1;
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->foot_raise_height, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->body_height, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            {
                uint32_t bits;
                uwvm_bounded_copy(&bits, &value->position[i], 4);
                uwvm_bounded_put(p + *offset, bits, 4);
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
                uwvm_bounded_copy(&bits, &value->euler[i], 4);
                uwvm_bounded_put(p + *offset, bits, 4);
                *offset += 4;
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            {
                uint32_t bits;
                uwvm_bounded_copy(&bits, &value->velocity[i], 4);
                uwvm_bounded_put(p + *offset, bits, 4);
                *offset += 4;
            }
        }
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->yaw_speed, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    roswasmc_bounded_2_unitree_go_msg_BmsCmd_write_fields(&value->bms_cmd, p, offset);
    {
        size_t i;
        for(i = 0; i < 30u; ++i)
        {
            roswasmc_bounded_2_unitree_go_msg_PathPoint_write_fields(&value->path_point[i], p, offset);
        }
    }
}

/**
 * @brief Decode the full ordered field prefix of unitree_go/msg/SportModeCmd.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] p Borrowed canonical bytes, stable through return.
 * @param[in] n Available input extent in bytes.
 * @param[in,out] offset Exclusive initialized reader cursor.
 * @param[out] value Private temporary record; discard it on failure.
 * @return Nonzero only after complete prefix validation; enclosing fields may remain unread.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static int roswasmc_bounded_2_unitree_go_msg_SportModeCmd_read_fields(unsigned char const* p,
                                                                             size_t n,
                                                                             size_t* offset,
                                                                             roswasmc_bounded_2_unitree_go_msg_SportModeCmd* value)
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
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->gait_type, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->speed_level, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->foot_raise_height, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->body_height, &bits, 4);
    }
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            if(*offset > n || n - *offset < 4)
            {
                return 0;
            }
            {
                uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
                uwvm_bounded_copy(&value->position[i], &bits, 4);
            }
            *offset += 4;
        }
    }
    {
        size_t i;
        for(i = 0; i < 3u; ++i)
        {
            if(*offset > n || n - *offset < 4)
            {
                return 0;
            }
            {
                uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
                uwvm_bounded_copy(&value->euler[i], &bits, 4);
            }
            *offset += 4;
        }
    }
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            if(*offset > n || n - *offset < 4)
            {
                return 0;
            }
            {
                uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
                uwvm_bounded_copy(&value->velocity[i], &bits, 4);
            }
            *offset += 4;
        }
    }
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->yaw_speed, &bits, 4);
    }
    *offset += 4;
    if(!roswasmc_bounded_2_unitree_go_msg_BmsCmd_read_fields(p, n, offset, &value->bms_cmd))
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < 30u; ++i)
        {
            if(!roswasmc_bounded_2_unitree_go_msg_PathPoint_read_fields(p, n, offset, &value->path_point[i]))
            {
                return 0;
            }
        }
    }
    return roswasmc_bounded_2_unitree_go_msg_SportModeCmd_valid(value);
}

/**
 * @brief Encode the complete unitree_go/msg/SportModeCmd record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record.
 * @param[out] output Exclusive caller-owned byte storage, disjoint from value and length.
 * @param[in] capacity Available writable byte count.
 * @param[out] length Exact initialized byte count, written only on success.
 * @return Status 0 on success, 22 for invalid/overlapping values, or 90 for insufficient capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static uint32_t roswasmc_bounded_2_unitree_go_msg_SportModeCmd_encode(roswasmc_bounded_2_unitree_go_msg_SportModeCmd const* value,
                                                                             void* output,
                                                                             size_t capacity,
                                                                             size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_unitree_go_msg_SportModeCmd_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_unitree_go_msg_SportModeCmd_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_unitree_go_msg_SportModeCmd_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/**
 * @brief Decode exactly one complete unitree_go/msg/SportModeCmd record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] input Immutable complete canonical body, disjoint from value.
 * @param[in] length Exact input byte count; trailing bytes are refused.
 * @param[out] value Caller-owned complete record; unchanged on every refusal.
 * @return Status 0 on complete success, otherwise 22; no partial record is exposed.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static uint32_t
    roswasmc_bounded_2_unitree_go_msg_SportModeCmd_decode(void const* input, size_t length, roswasmc_bounded_2_unitree_go_msg_SportModeCmd* value)
{
    roswasmc_bounded_2_unitree_go_msg_SportModeCmd next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 887u || length > 887u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_unitree_go_msg_SportModeCmd_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_TIMESPEC)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_TIMESPEC_0 != 0x3aa3f243UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_TIMESPEC_1 != 0xc977ceb0UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_TIMESPEC_2 != 0xf433d31eUL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_TIMESPEC_3 != 0xb9474a87UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_TIMESPEC_4 != 0x5fbe4790UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_TIMESPEC_5 != 0xe8391b6bUL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_TIMESPEC_6 != 0xc6ecd278UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_TIMESPEC_7 != 0x8bdf492bUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_TIMESPEC 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_TIMESPEC_0 0x3aa3f243UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_TIMESPEC_1 0xc977ceb0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_TIMESPEC_2 0xf433d31eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_TIMESPEC_3 0xb9474a87UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_TIMESPEC_4 0x5fbe4790UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_TIMESPEC_5 0xe8391b6bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_TIMESPEC_6 0xc6ecd278UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_TIMESPEC_7 0x8bdf492bUL

/**
 * @brief Complete ROS 2 unitree_go/msg/TimeSpec value.
 * @details All 2 declared fields are retained in source order. The canonical representation occupies 8..8 bytes
 * and is identified by UWVMROS1_9ad3c6ed5a9ff0bba22593b50e1d777ae2f63480a01a744d777ee6b7dad0ecc4.
 * @native Original selected identity: RIHS01_0cac3f0605af323add43e1ed3ae7fc01f7c7857f41380170b3ea3a899b28cb76.
 * Compilation of matching native traits is a separate qualification.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_2_unitree_go_msg_TimeSpec
{
    /** @brief Declared field sec; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/TimeSpec.sec: int32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgTimeSpec; share/platform/ros/rs/API-CONTRACT.md
     */
    int32_t sec;
    /** @brief Declared field nanosec; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/TimeSpec.nanosec: uint32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgTimeSpec; share/platform/ros/rs/API-CONTRACT.md
     */
    uint32_t nanosec;
} roswasmc_bounded_2_unitree_go_msg_TimeSpec;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_TIMESPEC_MAX_WIRE_BYTES 8u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_TIMESPEC_MIN_WIRE_BYTES 8u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_TIMESPEC_CODEC_IDENTITY "UWVMROS1_9ad3c6ed5a9ff0bba22593b50e1d777ae2f63480a01a744d777ee6b7dad0ecc4"

/**
 * @brief Validate every field of unitree_go/msg/TimeSpec.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static int roswasmc_bounded_2_unitree_go_msg_TimeSpec_valid(roswasmc_bounded_2_unitree_go_msg_TimeSpec const* value)
{
    if(!value)
    {
        return 0;
    }
    return 1;
}

/**
 * @brief Measure the complete active canonical extent of unitree_go/msg/TimeSpec.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static size_t roswasmc_bounded_2_unitree_go_msg_TimeSpec_wire_size(roswasmc_bounded_2_unitree_go_msg_TimeSpec const* value)
{
    size_t n = 0;
    n += 4;
    n += 4;
    return n;
}

/**
 * @brief Append all fields of unitree_go/msg/TimeSpec to an internal canonical buffer.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete prevalidated immutable record.
 * @param[out] p Sufficient exclusive output storage established by the public encoder.
 * @param[in,out] offset Exclusive initialized writer cursor.
 * @return No value; internal caller guarantees the measured capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static void
    roswasmc_bounded_2_unitree_go_msg_TimeSpec_write_fields(roswasmc_bounded_2_unitree_go_msg_TimeSpec const* value, unsigned char* p, size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->sec, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, (uint64_t)value->nanosec, 4);
    *offset += 4;
}

/**
 * @brief Decode the full ordered field prefix of unitree_go/msg/TimeSpec.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] p Borrowed canonical bytes, stable through return.
 * @param[in] n Available input extent in bytes.
 * @param[in,out] offset Exclusive initialized reader cursor.
 * @param[out] value Private temporary record; discard it on failure.
 * @return Nonzero only after complete prefix validation; enclosing fields may remain unread.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static int
    roswasmc_bounded_2_unitree_go_msg_TimeSpec_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_2_unitree_go_msg_TimeSpec* value)
{
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->sec, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->nanosec, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_2_unitree_go_msg_TimeSpec_valid(value);
}

/**
 * @brief Encode the complete unitree_go/msg/TimeSpec record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record.
 * @param[out] output Exclusive caller-owned byte storage, disjoint from value and length.
 * @param[in] capacity Available writable byte count.
 * @param[out] length Exact initialized byte count, written only on success.
 * @return Status 0 on success, 22 for invalid/overlapping values, or 90 for insufficient capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static uint32_t
    roswasmc_bounded_2_unitree_go_msg_TimeSpec_encode(roswasmc_bounded_2_unitree_go_msg_TimeSpec const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_unitree_go_msg_TimeSpec_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_unitree_go_msg_TimeSpec_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_unitree_go_msg_TimeSpec_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/**
 * @brief Decode exactly one complete unitree_go/msg/TimeSpec record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] input Immutable complete canonical body, disjoint from value.
 * @param[in] length Exact input byte count; trailing bytes are refused.
 * @param[out] value Caller-owned complete record; unchanged on every refusal.
 * @return Status 0 on complete success, otherwise 22; no partial record is exposed.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static uint32_t roswasmc_bounded_2_unitree_go_msg_TimeSpec_decode(void const* input, size_t length, roswasmc_bounded_2_unitree_go_msg_TimeSpec* value)
{
    roswasmc_bounded_2_unitree_go_msg_TimeSpec next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 8u || length > 8u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_unitree_go_msg_TimeSpec_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_SPORTMODESTATE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_SPORTMODESTATE_0 != 0x7fa0620eUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_SPORTMODESTATE_1 != 0x544f6e80UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_SPORTMODESTATE_2 != 0x4d5e2888UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_SPORTMODESTATE_3 != 0xc6592cf2UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_SPORTMODESTATE_4 != 0x6960f897UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_SPORTMODESTATE_5 != 0x00c9e243UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_SPORTMODESTATE_6 != 0xa5ec96d0UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_SPORTMODESTATE_7 != 0xa218c9a3UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_SPORTMODESTATE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_SPORTMODESTATE_0 0x7fa0620eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_SPORTMODESTATE_1 0x544f6e80UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_SPORTMODESTATE_2 0x4d5e2888UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_SPORTMODESTATE_3 0xc6592cf2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_SPORTMODESTATE_4 0x6960f897UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_SPORTMODESTATE_5 0x00c9e243UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_SPORTMODESTATE_6 0xa5ec96d0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_SPORTMODESTATE_7 0xa218c9a3UL

/**
 * @brief Complete ROS 2 unitree_go/msg/SportModeState value.
 * @details All 15 declared fields are retained in source order. The canonical representation occupies 227..227
 * bytes and is identified by UWVMROS1_2935b9d838087267840b379582862a15c2e1a72fe8ad2bcbf8f19af2f8054760.
 * @native Original selected identity: RIHS01_814b4692a904d586a0c6fe49ce344480434364d0fb410d06df2986a16e79fcd4.
 * Compilation of matching native traits is a separate qualification.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_2_unitree_go_msg_SportModeState
{
    /** @brief Declared field stamp; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/SportModeState.stamp: unitree_go/msg/TimeSpec.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgSportModeState; share/platform/ros/rs/API-CONTRACT.md
     */
    roswasmc_bounded_2_unitree_go_msg_TimeSpec stamp;
    /** @brief Declared field error_code; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/SportModeState.error_code: uint32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgSportModeState; share/platform/ros/rs/API-CONTRACT.md
     */
    uint32_t error_code;
    /** @brief Declared field imu_state; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/SportModeState.imu_state: unitree_go/msg/IMUState.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgSportModeState; share/platform/ros/rs/API-CONTRACT.md
     */
    roswasmc_bounded_2_unitree_go_msg_IMUState imu_state;
    /** @brief Declared field mode; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/SportModeState.mode: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgSportModeState; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t mode;
    /** @brief Declared field progress; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/SportModeState.progress: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgSportModeState; share/platform/ros/rs/API-CONTRACT.md
     */
    float progress;
    /** @brief Declared field gait_type; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/SportModeState.gait_type: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgSportModeState; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t gait_type;
    /** @brief Declared field foot_raise_height; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/SportModeState.foot_raise_height: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgSportModeState; share/platform/ros/rs/API-CONTRACT.md
     */
    float foot_raise_height;
    /** @brief Declared field position; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/SportModeState.position: float32; exactly 3 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgSportModeState; share/platform/ros/rs/API-CONTRACT.md
     */
    float position[3];
    /** @brief Declared field body_height; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/SportModeState.body_height: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgSportModeState; share/platform/ros/rs/API-CONTRACT.md
     */
    float body_height;
    /** @brief Declared field velocity; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/SportModeState.velocity: float32; exactly 3 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgSportModeState; share/platform/ros/rs/API-CONTRACT.md
     */
    float velocity[3];
    /** @brief Declared field yaw_speed; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/SportModeState.yaw_speed: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgSportModeState; share/platform/ros/rs/API-CONTRACT.md
     */
    float yaw_speed;
    /** @brief Declared field range_obstacle; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/SportModeState.range_obstacle: float32; exactly 4 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgSportModeState; share/platform/ros/rs/API-CONTRACT.md
     */
    float range_obstacle[4];
    /** @brief Declared field foot_force; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/SportModeState.foot_force: int16; exactly 4 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgSportModeState; share/platform/ros/rs/API-CONTRACT.md
     */
    int16_t foot_force[4];
    /** @brief Declared field foot_position_body; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/SportModeState.foot_position_body: float32; exactly 12 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgSportModeState; share/platform/ros/rs/API-CONTRACT.md
     */
    float foot_position_body[12];
    /** @brief Declared field foot_speed_body; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/SportModeState.foot_speed_body: float32; exactly 12 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgSportModeState; share/platform/ros/rs/API-CONTRACT.md
     */
    float foot_speed_body[12];
} roswasmc_bounded_2_unitree_go_msg_SportModeState;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_SPORTMODESTATE_MAX_WIRE_BYTES 227u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_SPORTMODESTATE_MIN_WIRE_BYTES 227u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_SPORTMODESTATE_CODEC_IDENTITY "UWVMROS1_2935b9d838087267840b379582862a15c2e1a72fe8ad2bcbf8f19af2f8054760"

/**
 * @brief Validate every field of unitree_go/msg/SportModeState.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static int roswasmc_bounded_2_unitree_go_msg_SportModeState_valid(roswasmc_bounded_2_unitree_go_msg_SportModeState const* value)
{
    if(!value)
    {
        return 0;
    }
    if(!roswasmc_bounded_2_unitree_go_msg_TimeSpec_valid(&value->stamp))
    {
        return 0;
    }
    if(!roswasmc_bounded_2_unitree_go_msg_IMUState_valid(&value->imu_state))
    {
        return 0;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->progress, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
        {
            return 0;
        }
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->foot_raise_height, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
        {
            return 0;
        }
    }
    {
        size_t i;
        for(i = 0; i < 3u; ++i)
        {
            {
                uint32_t bits;
                uwvm_bounded_copy(&bits, &value->position[i], 4);
                if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
                {
                    return 0;
                }
            }
        }
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->body_height, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
        {
            return 0;
        }
    }
    {
        size_t i;
        for(i = 0; i < 3u; ++i)
        {
            {
                uint32_t bits;
                uwvm_bounded_copy(&bits, &value->velocity[i], 4);
                if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
                {
                    return 0;
                }
            }
        }
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->yaw_speed, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
        {
            return 0;
        }
    }
    {
        size_t i;
        for(i = 0; i < 4u; ++i)
        {
            {
                uint32_t bits;
                uwvm_bounded_copy(&bits, &value->range_obstacle[i], 4);
                if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
                {
                    return 0;
                }
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 4u; ++i)
        {
        }
    }
    {
        size_t i;
        for(i = 0; i < 12u; ++i)
        {
            {
                uint32_t bits;
                uwvm_bounded_copy(&bits, &value->foot_position_body[i], 4);
                if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
                {
                    return 0;
                }
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 12u; ++i)
        {
            {
                uint32_t bits;
                uwvm_bounded_copy(&bits, &value->foot_speed_body[i], 4);
                if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
                {
                    return 0;
                }
            }
        }
    }
    return 1;
}

/**
 * @brief Measure the complete active canonical extent of unitree_go/msg/SportModeState.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static size_t roswasmc_bounded_2_unitree_go_msg_SportModeState_wire_size(roswasmc_bounded_2_unitree_go_msg_SportModeState const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_unitree_go_msg_TimeSpec_wire_size(&value->stamp);
    n += 4;
    n += roswasmc_bounded_2_unitree_go_msg_IMUState_wire_size(&value->imu_state);
    n += 1;
    n += 4;
    n += 1;
    n += 4;
    {
        size_t i;
        for(i = 0; i < 3u; ++i)
        {
            n += 4;
        }
    }
    n += 4;
    {
        size_t i;
        for(i = 0; i < 3u; ++i)
        {
            n += 4;
        }
    }
    n += 4;
    {
        size_t i;
        for(i = 0; i < 4u; ++i)
        {
            n += 4;
        }
    }
    {
        size_t i;
        for(i = 0; i < 4u; ++i)
        {
            n += 2;
        }
    }
    {
        size_t i;
        for(i = 0; i < 12u; ++i)
        {
            n += 4;
        }
    }
    {
        size_t i;
        for(i = 0; i < 12u; ++i)
        {
            n += 4;
        }
    }
    return n;
}

/**
 * @brief Append all fields of unitree_go/msg/SportModeState to an internal canonical buffer.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete prevalidated immutable record.
 * @param[out] p Sufficient exclusive output storage established by the public encoder.
 * @param[in,out] offset Exclusive initialized writer cursor.
 * @return No value; internal caller guarantees the measured capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static void roswasmc_bounded_2_unitree_go_msg_SportModeState_write_fields(roswasmc_bounded_2_unitree_go_msg_SportModeState const* value,
                                                                                 unsigned char* p,
                                                                                 size_t* offset)
{
    roswasmc_bounded_2_unitree_go_msg_TimeSpec_write_fields(&value->stamp, p, offset);
    uwvm_bounded_put(p + *offset, (uint64_t)value->error_code, 4);
    *offset += 4;
    roswasmc_bounded_2_unitree_go_msg_IMUState_write_fields(&value->imu_state, p, offset);
    uwvm_bounded_put(p + *offset, (uint64_t)value->mode, 1);
    *offset += 1;
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->progress, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    uwvm_bounded_put(p + *offset, (uint64_t)value->gait_type, 1);
    *offset += 1;
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->foot_raise_height, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        size_t i;
        for(i = 0; i < 3u; ++i)
        {
            {
                uint32_t bits;
                uwvm_bounded_copy(&bits, &value->position[i], 4);
                uwvm_bounded_put(p + *offset, bits, 4);
                *offset += 4;
            }
        }
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->body_height, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        size_t i;
        for(i = 0; i < 3u; ++i)
        {
            {
                uint32_t bits;
                uwvm_bounded_copy(&bits, &value->velocity[i], 4);
                uwvm_bounded_put(p + *offset, bits, 4);
                *offset += 4;
            }
        }
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->yaw_speed, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        size_t i;
        for(i = 0; i < 4u; ++i)
        {
            {
                uint32_t bits;
                uwvm_bounded_copy(&bits, &value->range_obstacle[i], 4);
                uwvm_bounded_put(p + *offset, bits, 4);
                *offset += 4;
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 4u; ++i)
        {
            uwvm_bounded_put(p + *offset, (uint64_t)value->foot_force[i], 2);
            *offset += 2;
        }
    }
    {
        size_t i;
        for(i = 0; i < 12u; ++i)
        {
            {
                uint32_t bits;
                uwvm_bounded_copy(&bits, &value->foot_position_body[i], 4);
                uwvm_bounded_put(p + *offset, bits, 4);
                *offset += 4;
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 12u; ++i)
        {
            {
                uint32_t bits;
                uwvm_bounded_copy(&bits, &value->foot_speed_body[i], 4);
                uwvm_bounded_put(p + *offset, bits, 4);
                *offset += 4;
            }
        }
    }
}

/**
 * @brief Decode the full ordered field prefix of unitree_go/msg/SportModeState.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] p Borrowed canonical bytes, stable through return.
 * @param[in] n Available input extent in bytes.
 * @param[in,out] offset Exclusive initialized reader cursor.
 * @param[out] value Private temporary record; discard it on failure.
 * @return Nonzero only after complete prefix validation; enclosing fields may remain unread.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static int roswasmc_bounded_2_unitree_go_msg_SportModeState_read_fields(unsigned char const* p,
                                                                               size_t n,
                                                                               size_t* offset,
                                                                               roswasmc_bounded_2_unitree_go_msg_SportModeState* value)
{
    if(!roswasmc_bounded_2_unitree_go_msg_TimeSpec_read_fields(p, n, offset, &value->stamp))
    {
        return 0;
    }
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->error_code, &bits, 4);
    }
    *offset += 4;
    if(!roswasmc_bounded_2_unitree_go_msg_IMUState_read_fields(p, n, offset, &value->imu_state))
    {
        return 0;
    }
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->mode, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->progress, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->gait_type, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->foot_raise_height, &bits, 4);
    }
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < 3u; ++i)
        {
            if(*offset > n || n - *offset < 4)
            {
                return 0;
            }
            {
                uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
                uwvm_bounded_copy(&value->position[i], &bits, 4);
            }
            *offset += 4;
        }
    }
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->body_height, &bits, 4);
    }
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < 3u; ++i)
        {
            if(*offset > n || n - *offset < 4)
            {
                return 0;
            }
            {
                uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
                uwvm_bounded_copy(&value->velocity[i], &bits, 4);
            }
            *offset += 4;
        }
    }
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->yaw_speed, &bits, 4);
    }
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < 4u; ++i)
        {
            if(*offset > n || n - *offset < 4)
            {
                return 0;
            }
            {
                uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
                uwvm_bounded_copy(&value->range_obstacle[i], &bits, 4);
            }
            *offset += 4;
        }
    }
    {
        size_t i;
        for(i = 0; i < 4u; ++i)
        {
            if(*offset > n || n - *offset < 2)
            {
                return 0;
            }
            {
                uint16_t bits = (uint16_t)uwvm_bounded_get(p + *offset, 2);
                uwvm_bounded_copy(&value->foot_force[i], &bits, 2);
            }
            *offset += 2;
        }
    }
    {
        size_t i;
        for(i = 0; i < 12u; ++i)
        {
            if(*offset > n || n - *offset < 4)
            {
                return 0;
            }
            {
                uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
                uwvm_bounded_copy(&value->foot_position_body[i], &bits, 4);
            }
            *offset += 4;
        }
    }
    {
        size_t i;
        for(i = 0; i < 12u; ++i)
        {
            if(*offset > n || n - *offset < 4)
            {
                return 0;
            }
            {
                uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
                uwvm_bounded_copy(&value->foot_speed_body[i], &bits, 4);
            }
            *offset += 4;
        }
    }
    return roswasmc_bounded_2_unitree_go_msg_SportModeState_valid(value);
}

/**
 * @brief Encode the complete unitree_go/msg/SportModeState record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record.
 * @param[out] output Exclusive caller-owned byte storage, disjoint from value and length.
 * @param[in] capacity Available writable byte count.
 * @param[out] length Exact initialized byte count, written only on success.
 * @return Status 0 on success, 22 for invalid/overlapping values, or 90 for insufficient capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static uint32_t roswasmc_bounded_2_unitree_go_msg_SportModeState_encode(roswasmc_bounded_2_unitree_go_msg_SportModeState const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_unitree_go_msg_SportModeState_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_unitree_go_msg_SportModeState_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_unitree_go_msg_SportModeState_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/**
 * @brief Decode exactly one complete unitree_go/msg/SportModeState record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] input Immutable complete canonical body, disjoint from value.
 * @param[in] length Exact input byte count; trailing bytes are refused.
 * @param[out] value Caller-owned complete record; unchanged on every refusal.
 * @return Status 0 on complete success, otherwise 22; no partial record is exposed.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static uint32_t
    roswasmc_bounded_2_unitree_go_msg_SportModeState_decode(void const* input, size_t length, roswasmc_bounded_2_unitree_go_msg_SportModeState* value)
{
    roswasmc_bounded_2_unitree_go_msg_SportModeState next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 227u || length > 227u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_unitree_go_msg_SportModeState_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_UWBSTATE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_UWBSTATE_0 != 0x3ab68a7fUL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_UWBSTATE_1 != 0xf31037d4UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_UWBSTATE_2 != 0x19cc8625UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_UWBSTATE_3 != 0xcd3b14bfUL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_UWBSTATE_4 != 0xa11b9616UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_UWBSTATE_5 != 0xafca42cfUL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_UWBSTATE_6 != 0xacd7486cUL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_UWBSTATE_7 != 0xe8f7f3c4UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_UWBSTATE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_UWBSTATE_0 0x3ab68a7fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_UWBSTATE_1 0xf31037d4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_UWBSTATE_2 0x19cc8625UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_UWBSTATE_3 0xcd3b14bfUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_UWBSTATE_4 0xa11b9616UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_UWBSTATE_5 0xafca42cfUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_UWBSTATE_6 0xacd7486cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_UWBSTATE_7 0xe8f7f3c4UL

/**
 * @brief Complete ROS 2 unitree_go/msg/UwbState value.
 * @details All 17 declared fields are retained in source order. The canonical representation occupies 55..55
 * bytes and is identified by UWVMROS1_017fbafd61a006aeaf6cb80456ac89f429d30a562da2e0d394c6cfb406e61a34.
 * @native Original selected identity: RIHS01_d02a3bf8330a002373281a2888a9ea92d6135d7eba55c918403dabc38edce7f5.
 * Compilation of matching native traits is a separate qualification.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_2_unitree_go_msg_UwbState
{
    /** @brief Declared field version; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/UwbState.version: uint8; exactly 2 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgUwbState; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t version[2];
    /** @brief Declared field channel; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/UwbState.channel: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgUwbState; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t channel;
    /** @brief Declared field joy_mode; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/UwbState.joy_mode: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgUwbState; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t joy_mode;
    /** @brief Declared field orientation_est; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/UwbState.orientation_est: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgUwbState; share/platform/ros/rs/API-CONTRACT.md
     */
    float orientation_est;
    /** @brief Declared field pitch_est; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/UwbState.pitch_est: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgUwbState; share/platform/ros/rs/API-CONTRACT.md
     */
    float pitch_est;
    /** @brief Declared field distance_est; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/UwbState.distance_est: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgUwbState; share/platform/ros/rs/API-CONTRACT.md
     */
    float distance_est;
    /** @brief Declared field yaw_est; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/UwbState.yaw_est: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgUwbState; share/platform/ros/rs/API-CONTRACT.md
     */
    float yaw_est;
    /** @brief Declared field tag_roll; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/UwbState.tag_roll: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgUwbState; share/platform/ros/rs/API-CONTRACT.md
     */
    float tag_roll;
    /** @brief Declared field tag_pitch; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/UwbState.tag_pitch: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgUwbState; share/platform/ros/rs/API-CONTRACT.md
     */
    float tag_pitch;
    /** @brief Declared field tag_yaw; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/UwbState.tag_yaw: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgUwbState; share/platform/ros/rs/API-CONTRACT.md
     */
    float tag_yaw;
    /** @brief Declared field base_roll; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/UwbState.base_roll: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgUwbState; share/platform/ros/rs/API-CONTRACT.md
     */
    float base_roll;
    /** @brief Declared field base_pitch; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/UwbState.base_pitch: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgUwbState; share/platform/ros/rs/API-CONTRACT.md
     */
    float base_pitch;
    /** @brief Declared field base_yaw; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/UwbState.base_yaw: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgUwbState; share/platform/ros/rs/API-CONTRACT.md
     */
    float base_yaw;
    /** @brief Declared field joystick; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/UwbState.joystick: float32; exactly 2 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgUwbState; share/platform/ros/rs/API-CONTRACT.md
     */
    float joystick[2];
    /** @brief Declared field error_state; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/UwbState.error_state: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgUwbState; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t error_state;
    /** @brief Declared field buttons; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/UwbState.buttons: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgUwbState; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t buttons;
    /** @brief Declared field enabled_from_app; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/UwbState.enabled_from_app: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgUwbState; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t enabled_from_app;
} roswasmc_bounded_2_unitree_go_msg_UwbState;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_UWBSTATE_MAX_WIRE_BYTES 55u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_UWBSTATE_MIN_WIRE_BYTES 55u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_UWBSTATE_CODEC_IDENTITY "UWVMROS1_017fbafd61a006aeaf6cb80456ac89f429d30a562da2e0d394c6cfb406e61a34"

/**
 * @brief Validate every field of unitree_go/msg/UwbState.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static int roswasmc_bounded_2_unitree_go_msg_UwbState_valid(roswasmc_bounded_2_unitree_go_msg_UwbState const* value)
{
    if(!value)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
        }
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->orientation_est, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
        {
            return 0;
        }
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->pitch_est, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
        {
            return 0;
        }
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->distance_est, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
        {
            return 0;
        }
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->yaw_est, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
        {
            return 0;
        }
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->tag_roll, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
        {
            return 0;
        }
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->tag_pitch, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
        {
            return 0;
        }
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->tag_yaw, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
        {
            return 0;
        }
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->base_roll, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
        {
            return 0;
        }
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->base_pitch, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
        {
            return 0;
        }
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->base_yaw, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
        {
            return 0;
        }
    }
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            {
                uint32_t bits;
                uwvm_bounded_copy(&bits, &value->joystick[i], 4);
                if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
                {
                    return 0;
                }
            }
        }
    }
    return 1;
}

/**
 * @brief Measure the complete active canonical extent of unitree_go/msg/UwbState.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static size_t roswasmc_bounded_2_unitree_go_msg_UwbState_wire_size(roswasmc_bounded_2_unitree_go_msg_UwbState const* value)
{
    size_t n = 0;
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            n += 1;
        }
    }
    n += 1;
    n += 1;
    n += 4;
    n += 4;
    n += 4;
    n += 4;
    n += 4;
    n += 4;
    n += 4;
    n += 4;
    n += 4;
    n += 4;
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            n += 4;
        }
    }
    n += 1;
    n += 1;
    n += 1;
    return n;
}

/**
 * @brief Append all fields of unitree_go/msg/UwbState to an internal canonical buffer.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete prevalidated immutable record.
 * @param[out] p Sufficient exclusive output storage established by the public encoder.
 * @param[in,out] offset Exclusive initialized writer cursor.
 * @return No value; internal caller guarantees the measured capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static void
    roswasmc_bounded_2_unitree_go_msg_UwbState_write_fields(roswasmc_bounded_2_unitree_go_msg_UwbState const* value, unsigned char* p, size_t* offset)
{
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            uwvm_bounded_put(p + *offset, (uint64_t)value->version[i], 1);
            *offset += 1;
        }
    }
    uwvm_bounded_put(p + *offset, (uint64_t)value->channel, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->joy_mode, 1);
    *offset += 1;
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->orientation_est, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->pitch_est, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->distance_est, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->yaw_est, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->tag_roll, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->tag_pitch, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->tag_yaw, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->base_roll, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->base_pitch, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->base_yaw, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            {
                uint32_t bits;
                uwvm_bounded_copy(&bits, &value->joystick[i], 4);
                uwvm_bounded_put(p + *offset, bits, 4);
                *offset += 4;
            }
        }
    }
    uwvm_bounded_put(p + *offset, (uint64_t)value->error_state, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->buttons, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->enabled_from_app, 1);
    *offset += 1;
}

/**
 * @brief Decode the full ordered field prefix of unitree_go/msg/UwbState.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] p Borrowed canonical bytes, stable through return.
 * @param[in] n Available input extent in bytes.
 * @param[in,out] offset Exclusive initialized reader cursor.
 * @param[out] value Private temporary record; discard it on failure.
 * @return Nonzero only after complete prefix validation; enclosing fields may remain unread.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static int
    roswasmc_bounded_2_unitree_go_msg_UwbState_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_2_unitree_go_msg_UwbState* value)
{
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            if(*offset > n || n - *offset < 1)
            {
                return 0;
            }
            {
                uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
                uwvm_bounded_copy(&value->version[i], &bits, 1);
            }
            *offset += 1;
        }
    }
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->channel, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->joy_mode, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->orientation_est, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->pitch_est, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->distance_est, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->yaw_est, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->tag_roll, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->tag_pitch, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->tag_yaw, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->base_roll, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->base_pitch, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->base_yaw, &bits, 4);
    }
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            if(*offset > n || n - *offset < 4)
            {
                return 0;
            }
            {
                uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
                uwvm_bounded_copy(&value->joystick[i], &bits, 4);
            }
            *offset += 4;
        }
    }
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->error_state, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->buttons, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->enabled_from_app, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_2_unitree_go_msg_UwbState_valid(value);
}

/**
 * @brief Encode the complete unitree_go/msg/UwbState record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record.
 * @param[out] output Exclusive caller-owned byte storage, disjoint from value and length.
 * @param[in] capacity Available writable byte count.
 * @param[out] length Exact initialized byte count, written only on success.
 * @return Status 0 on success, 22 for invalid/overlapping values, or 90 for insufficient capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static uint32_t
    roswasmc_bounded_2_unitree_go_msg_UwbState_encode(roswasmc_bounded_2_unitree_go_msg_UwbState const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_unitree_go_msg_UwbState_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_unitree_go_msg_UwbState_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_unitree_go_msg_UwbState_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/**
 * @brief Decode exactly one complete unitree_go/msg/UwbState record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] input Immutable complete canonical body, disjoint from value.
 * @param[in] length Exact input byte count; trailing bytes are refused.
 * @param[out] value Caller-owned complete record; unchanged on every refusal.
 * @return Status 0 on complete success, otherwise 22; no partial record is exposed.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static uint32_t roswasmc_bounded_2_unitree_go_msg_UwbState_decode(void const* input, size_t length, roswasmc_bounded_2_unitree_go_msg_UwbState* value)
{
    roswasmc_bounded_2_unitree_go_msg_UwbState next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 55u || length > 55u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_unitree_go_msg_UwbState_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_UWBSWITCH)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_UWBSWITCH_0 != 0x96cf03fbUL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_UWBSWITCH_1 != 0xf979238eUL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_UWBSWITCH_2 != 0x3e9ec012UL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_UWBSWITCH_3 != 0xe4bb4a7dUL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_UWBSWITCH_4 != 0x3abfeeaaUL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_UWBSWITCH_5 != 0xc29fde7eUL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_UWBSWITCH_6 != 0xf2c56f56UL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_UWBSWITCH_7 != 0xabad0d9bUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_UWBSWITCH 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_UWBSWITCH_0 0x96cf03fbUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_UWBSWITCH_1 0xf979238eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_UWBSWITCH_2 0x3e9ec012UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_UWBSWITCH_3 0xe4bb4a7dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_UWBSWITCH_4 0x3abfeeaaUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_UWBSWITCH_5 0xc29fde7eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_UWBSWITCH_6 0xf2c56f56UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_UWBSWITCH_7 0xabad0d9bUL

/**
 * @brief Complete ROS 2 unitree_go/msg/UwbSwitch value.
 * @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1 bytes
 * and is identified by UWVMROS1_4546618797829b3911d1533d8d6bacc9da969d40d7752424de34bbd3de4bede5.
 * @native Original selected identity: RIHS01_de3a330c27e9a44eb3a7dcf3547d97fdafb74230bf679e6f04e4563935a6a270.
 * Compilation of matching native traits is a separate qualification.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_2_unitree_go_msg_UwbSwitch
{
    /** @brief Declared field enabled; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/UwbSwitch.enabled: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgUwbSwitch; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t enabled;
} roswasmc_bounded_2_unitree_go_msg_UwbSwitch;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_UWBSWITCH_MAX_WIRE_BYTES 1u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_UWBSWITCH_MIN_WIRE_BYTES 1u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_UWBSWITCH_CODEC_IDENTITY "UWVMROS1_4546618797829b3911d1533d8d6bacc9da969d40d7752424de34bbd3de4bede5"

/**
 * @brief Validate every field of unitree_go/msg/UwbSwitch.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static int roswasmc_bounded_2_unitree_go_msg_UwbSwitch_valid(roswasmc_bounded_2_unitree_go_msg_UwbSwitch const* value)
{
    if(!value)
    {
        return 0;
    }
    return 1;
}

/**
 * @brief Measure the complete active canonical extent of unitree_go/msg/UwbSwitch.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static size_t roswasmc_bounded_2_unitree_go_msg_UwbSwitch_wire_size(roswasmc_bounded_2_unitree_go_msg_UwbSwitch const* value)
{
    size_t n = 0;
    n += 1;
    return n;
}

/**
 * @brief Append all fields of unitree_go/msg/UwbSwitch to an internal canonical buffer.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete prevalidated immutable record.
 * @param[out] p Sufficient exclusive output storage established by the public encoder.
 * @param[in,out] offset Exclusive initialized writer cursor.
 * @return No value; internal caller guarantees the measured capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static void
    roswasmc_bounded_2_unitree_go_msg_UwbSwitch_write_fields(roswasmc_bounded_2_unitree_go_msg_UwbSwitch const* value, unsigned char* p, size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->enabled, 1);
    *offset += 1;
}

/**
 * @brief Decode the full ordered field prefix of unitree_go/msg/UwbSwitch.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] p Borrowed canonical bytes, stable through return.
 * @param[in] n Available input extent in bytes.
 * @param[in,out] offset Exclusive initialized reader cursor.
 * @param[out] value Private temporary record; discard it on failure.
 * @return Nonzero only after complete prefix validation; enclosing fields may remain unread.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static int roswasmc_bounded_2_unitree_go_msg_UwbSwitch_read_fields(unsigned char const* p,
                                                                          size_t n,
                                                                          size_t* offset,
                                                                          roswasmc_bounded_2_unitree_go_msg_UwbSwitch* value)
{
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->enabled, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_2_unitree_go_msg_UwbSwitch_valid(value);
}

/**
 * @brief Encode the complete unitree_go/msg/UwbSwitch record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record.
 * @param[out] output Exclusive caller-owned byte storage, disjoint from value and length.
 * @param[in] capacity Available writable byte count.
 * @param[out] length Exact initialized byte count, written only on success.
 * @return Status 0 on success, 22 for invalid/overlapping values, or 90 for insufficient capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static uint32_t
    roswasmc_bounded_2_unitree_go_msg_UwbSwitch_encode(roswasmc_bounded_2_unitree_go_msg_UwbSwitch const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_unitree_go_msg_UwbSwitch_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_unitree_go_msg_UwbSwitch_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_unitree_go_msg_UwbSwitch_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/**
 * @brief Decode exactly one complete unitree_go/msg/UwbSwitch record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] input Immutable complete canonical body, disjoint from value.
 * @param[in] length Exact input byte count; trailing bytes are refused.
 * @param[out] value Caller-owned complete record; unchanged on every refusal.
 * @return Status 0 on complete success, otherwise 22; no partial record is exposed.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static uint32_t roswasmc_bounded_2_unitree_go_msg_UwbSwitch_decode(void const* input, size_t length, roswasmc_bounded_2_unitree_go_msg_UwbSwitch* value)
{
    roswasmc_bounded_2_unitree_go_msg_UwbSwitch next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 1u || length > 1u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_unitree_go_msg_UwbSwitch_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_WIRELESSCONTROLLER)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_WIRELESSCONTROLLER_0 != 0xd540e822UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_WIRELESSCONTROLLER_1 != 0x1c54ffc7UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_WIRELESSCONTROLLER_2 != 0x82048713UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_WIRELESSCONTROLLER_3 != 0x26c5c558UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_WIRELESSCONTROLLER_4 != 0x195a9127UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_WIRELESSCONTROLLER_5 != 0x47b0f623UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_WIRELESSCONTROLLER_6 != 0xac48cacbUL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_WIRELESSCONTROLLER_7 != 0x493d4e75UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_WIRELESSCONTROLLER 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_WIRELESSCONTROLLER_0 0xd540e822UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_WIRELESSCONTROLLER_1 0x1c54ffc7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_WIRELESSCONTROLLER_2 0x82048713UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_WIRELESSCONTROLLER_3 0x26c5c558UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_WIRELESSCONTROLLER_4 0x195a9127UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_WIRELESSCONTROLLER_5 0x47b0f623UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_WIRELESSCONTROLLER_6 0xac48cacbUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_WIRELESSCONTROLLER_7 0x493d4e75UL

/**
 * @brief Complete ROS 2 unitree_go/msg/WirelessController value.
 * @details All 5 declared fields are retained in source order. The canonical representation occupies 18..18
 * bytes and is identified by UWVMROS1_536e69ce5459227cb68b3c6d484a96bfa40e1400aab820f8ad0d0d62ff6ba438.
 * @native Original selected identity: RIHS01_83a5bbbf022f060aa36716ee78afb802528f26ce16238b9c3787939c830cbde5.
 * Compilation of matching native traits is a separate qualification.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_2_unitree_go_msg_WirelessController
{
    /** @brief Declared field lx; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/WirelessController.lx: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgWirelessController; share/platform/ros/rs/API-CONTRACT.md
     */
    float lx;
    /** @brief Declared field ly; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/WirelessController.ly: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgWirelessController; share/platform/ros/rs/API-CONTRACT.md
     */
    float ly;
    /** @brief Declared field rx; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/WirelessController.rx: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgWirelessController; share/platform/ros/rs/API-CONTRACT.md
     */
    float rx;
    /** @brief Declared field ry; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/WirelessController.ry: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgWirelessController; share/platform/ros/rs/API-CONTRACT.md
     */
    float ry;
    /** @brief Declared field keys; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_go/msg/WirelessController.keys: uint16.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_goMsgWirelessController; share/platform/ros/rs/API-CONTRACT.md
     */
    uint16_t keys;
} roswasmc_bounded_2_unitree_go_msg_WirelessController;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_WIRELESSCONTROLLER_MAX_WIRE_BYTES 18u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_WIRELESSCONTROLLER_MIN_WIRE_BYTES 18u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_WIRELESSCONTROLLER_CODEC_IDENTITY "UWVMROS1_536e69ce5459227cb68b3c6d484a96bfa40e1400aab820f8ad0d0d62ff6ba438"

/**
 * @brief Validate every field of unitree_go/msg/WirelessController.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static int roswasmc_bounded_2_unitree_go_msg_WirelessController_valid(roswasmc_bounded_2_unitree_go_msg_WirelessController const* value)
{
    if(!value)
    {
        return 0;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->lx, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
        {
            return 0;
        }
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->ly, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
        {
            return 0;
        }
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->rx, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
        {
            return 0;
        }
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->ry, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
        {
            return 0;
        }
    }
    return 1;
}

/**
 * @brief Measure the complete active canonical extent of unitree_go/msg/WirelessController.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static size_t roswasmc_bounded_2_unitree_go_msg_WirelessController_wire_size(roswasmc_bounded_2_unitree_go_msg_WirelessController const* value)
{
    size_t n = 0;
    n += 4;
    n += 4;
    n += 4;
    n += 4;
    n += 2;
    return n;
}

/**
 * @brief Append all fields of unitree_go/msg/WirelessController to an internal canonical buffer.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete prevalidated immutable record.
 * @param[out] p Sufficient exclusive output storage established by the public encoder.
 * @param[in,out] offset Exclusive initialized writer cursor.
 * @return No value; internal caller guarantees the measured capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static void roswasmc_bounded_2_unitree_go_msg_WirelessController_write_fields(roswasmc_bounded_2_unitree_go_msg_WirelessController const* value,
                                                                                     unsigned char* p,
                                                                                     size_t* offset)
{
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->lx, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->ly, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->rx, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->ry, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    uwvm_bounded_put(p + *offset, (uint64_t)value->keys, 2);
    *offset += 2;
}

/**
 * @brief Decode the full ordered field prefix of unitree_go/msg/WirelessController.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] p Borrowed canonical bytes, stable through return.
 * @param[in] n Available input extent in bytes.
 * @param[in,out] offset Exclusive initialized reader cursor.
 * @param[out] value Private temporary record; discard it on failure.
 * @return Nonzero only after complete prefix validation; enclosing fields may remain unread.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static int roswasmc_bounded_2_unitree_go_msg_WirelessController_read_fields(unsigned char const* p,
                                                                                   size_t n,
                                                                                   size_t* offset,
                                                                                   roswasmc_bounded_2_unitree_go_msg_WirelessController* value)
{
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->lx, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->ly, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->rx, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->ry, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 2)
    {
        return 0;
    }
    {
        uint16_t bits = (uint16_t)uwvm_bounded_get(p + *offset, 2);
        uwvm_bounded_copy(&value->keys, &bits, 2);
    }
    *offset += 2;
    return roswasmc_bounded_2_unitree_go_msg_WirelessController_valid(value);
}

/**
 * @brief Encode the complete unitree_go/msg/WirelessController record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record.
 * @param[out] output Exclusive caller-owned byte storage, disjoint from value and length.
 * @param[in] capacity Available writable byte count.
 * @param[out] length Exact initialized byte count, written only on success.
 * @return Status 0 on success, 22 for invalid/overlapping values, or 90 for insufficient capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static uint32_t roswasmc_bounded_2_unitree_go_msg_WirelessController_encode(roswasmc_bounded_2_unitree_go_msg_WirelessController const* value,
                                                                                   void* output,
                                                                                   size_t capacity,
                                                                                   size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_unitree_go_msg_WirelessController_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_unitree_go_msg_WirelessController_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_unitree_go_msg_WirelessController_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/**
 * @brief Decode exactly one complete unitree_go/msg/WirelessController record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] input Immutable complete canonical body, disjoint from value.
 * @param[in] length Exact input byte count; trailing bytes are refused.
 * @param[out] value Caller-owned complete record; unchanged on every refusal.
 * @return Status 0 on complete success, otherwise 22; no partial record is exposed.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static uint32_t
    roswasmc_bounded_2_unitree_go_msg_WirelessController_decode(void const* input, size_t length, roswasmc_bounded_2_unitree_go_msg_WirelessController* value)
{
    roswasmc_bounded_2_unitree_go_msg_WirelessController next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 18u || length > 18u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_unitree_go_msg_WirelessController_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_BMSCMD)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_BMSCMD_0 != 0x480f6f75UL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_BMSCMD_1 != 0x08e4b9e4UL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_BMSCMD_2 != 0xaa53b2dbUL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_BMSCMD_3 != 0x679ff938UL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_BMSCMD_4 != 0x23f21540UL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_BMSCMD_5 != 0x6932740fUL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_BMSCMD_6 != 0xd6f86a04UL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_BMSCMD_7 != 0x9a148061UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_BMSCMD 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_BMSCMD_0 0x480f6f75UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_BMSCMD_1 0x08e4b9e4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_BMSCMD_2 0xaa53b2dbUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_BMSCMD_3 0x679ff938UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_BMSCMD_4 0x23f21540UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_BMSCMD_5 0x6932740fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_BMSCMD_6 0xd6f86a04UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_BMSCMD_7 0x9a148061UL

/**
 * @brief Complete ROS 2 unitree_hg/msg/BmsCmd value.
 * @details All 2 declared fields are retained in source order. The canonical representation occupies 41..41
 * bytes and is identified by UWVMROS1_a267c92d22aa04a15f7d68c87b7638b15a368ac973f49a42021dc91f991b13de.
 * @native Original selected identity: RIHS01_7b7d2f71ab061902dd207e6f243109167b3fed94427066f40180d563290b6e15.
 * Compilation of matching native traits is a separate qualification.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_2_unitree_hg_msg_BmsCmd
{
    /** @brief Declared field cmd; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_hg/msg/BmsCmd.cmd: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgBmsCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t cmd;
    /** @brief Declared field reserve; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_hg/msg/BmsCmd.reserve: uint8; exactly 40 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgBmsCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t reserve[40];
} roswasmc_bounded_2_unitree_hg_msg_BmsCmd;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_BMSCMD_MAX_WIRE_BYTES 41u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_BMSCMD_MIN_WIRE_BYTES 41u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_BMSCMD_CODEC_IDENTITY "UWVMROS1_a267c92d22aa04a15f7d68c87b7638b15a368ac973f49a42021dc91f991b13de"

/**
 * @brief Validate every field of unitree_hg/msg/BmsCmd.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static int roswasmc_bounded_2_unitree_hg_msg_BmsCmd_valid(roswasmc_bounded_2_unitree_hg_msg_BmsCmd const* value)
{
    if(!value)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < 40u; ++i)
        {
        }
    }
    return 1;
}

/**
 * @brief Measure the complete active canonical extent of unitree_hg/msg/BmsCmd.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static size_t roswasmc_bounded_2_unitree_hg_msg_BmsCmd_wire_size(roswasmc_bounded_2_unitree_hg_msg_BmsCmd const* value)
{
    size_t n = 0;
    n += 1;
    {
        size_t i;
        for(i = 0; i < 40u; ++i)
        {
            n += 1;
        }
    }
    return n;
}

/**
 * @brief Append all fields of unitree_hg/msg/BmsCmd to an internal canonical buffer.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete prevalidated immutable record.
 * @param[out] p Sufficient exclusive output storage established by the public encoder.
 * @param[in,out] offset Exclusive initialized writer cursor.
 * @return No value; internal caller guarantees the measured capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static void
    roswasmc_bounded_2_unitree_hg_msg_BmsCmd_write_fields(roswasmc_bounded_2_unitree_hg_msg_BmsCmd const* value, unsigned char* p, size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->cmd, 1);
    *offset += 1;
    {
        size_t i;
        for(i = 0; i < 40u; ++i)
        {
            uwvm_bounded_put(p + *offset, (uint64_t)value->reserve[i], 1);
            *offset += 1;
        }
    }
}

/**
 * @brief Decode the full ordered field prefix of unitree_hg/msg/BmsCmd.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] p Borrowed canonical bytes, stable through return.
 * @param[in] n Available input extent in bytes.
 * @param[in,out] offset Exclusive initialized reader cursor.
 * @param[out] value Private temporary record; discard it on failure.
 * @return Nonzero only after complete prefix validation; enclosing fields may remain unread.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static int
    roswasmc_bounded_2_unitree_hg_msg_BmsCmd_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_2_unitree_hg_msg_BmsCmd* value)
{
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->cmd, &bits, 1);
    }
    *offset += 1;
    {
        size_t i;
        for(i = 0; i < 40u; ++i)
        {
            if(*offset > n || n - *offset < 1)
            {
                return 0;
            }
            {
                uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
                uwvm_bounded_copy(&value->reserve[i], &bits, 1);
            }
            *offset += 1;
        }
    }
    return roswasmc_bounded_2_unitree_hg_msg_BmsCmd_valid(value);
}

/**
 * @brief Encode the complete unitree_hg/msg/BmsCmd record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record.
 * @param[out] output Exclusive caller-owned byte storage, disjoint from value and length.
 * @param[in] capacity Available writable byte count.
 * @param[out] length Exact initialized byte count, written only on success.
 * @return Status 0 on success, 22 for invalid/overlapping values, or 90 for insufficient capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static uint32_t
    roswasmc_bounded_2_unitree_hg_msg_BmsCmd_encode(roswasmc_bounded_2_unitree_hg_msg_BmsCmd const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_unitree_hg_msg_BmsCmd_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_unitree_hg_msg_BmsCmd_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_unitree_hg_msg_BmsCmd_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/**
 * @brief Decode exactly one complete unitree_hg/msg/BmsCmd record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] input Immutable complete canonical body, disjoint from value.
 * @param[in] length Exact input byte count; trailing bytes are refused.
 * @param[out] value Caller-owned complete record; unchanged on every refusal.
 * @return Status 0 on complete success, otherwise 22; no partial record is exposed.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static uint32_t roswasmc_bounded_2_unitree_hg_msg_BmsCmd_decode(void const* input, size_t length, roswasmc_bounded_2_unitree_hg_msg_BmsCmd* value)
{
    roswasmc_bounded_2_unitree_hg_msg_BmsCmd next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 41u || length > 41u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_unitree_hg_msg_BmsCmd_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_BMSSTATE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_BMSSTATE_0 != 0x731aed7aUL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_BMSSTATE_1 != 0xce10cac5UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_BMSSTATE_2 != 0x41620f6cUL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_BMSSTATE_3 != 0xf28ff1d7UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_BMSSTATE_4 != 0x642a0432UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_BMSSTATE_5 != 0xa15fe499UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_BMSSTATE_6 != 0xdea0e45aUL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_BMSSTATE_7 != 0xdcfc3d0fUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_BMSSTATE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_BMSSTATE_0 0x731aed7aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_BMSSTATE_1 0xce10cac5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_BMSSTATE_2 0x41620f6cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_BMSSTATE_3 0xf28ff1d7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_BMSSTATE_4 0x642a0432UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_BMSSTATE_5 0xa15fe499UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_BMSSTATE_6 0xdea0e45aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_BMSSTATE_7 0xdcfc3d0fUL

/**
 * @brief Complete ROS 2 unitree_hg/msg/BmsState value.
 * @details All 13 declared fields are retained in source order. The canonical representation occupies 161..161
 * bytes and is identified by UWVMROS1_b7ac163c4ab4786d37a9ec027767258adcfc06637ed8b4ef67e30c517397761d.
 * @native Original selected identity: RIHS01_59d9c2459ddf390072902896850ce13ea5de394157907c7dc514d2187ff3e51f.
 * Compilation of matching native traits is a separate qualification.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_2_unitree_hg_msg_BmsState
{
    /** @brief Declared field version_high; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_hg/msg/BmsState.version_high: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgBmsState; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t version_high;
    /** @brief Declared field version_low; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_hg/msg/BmsState.version_low: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgBmsState; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t version_low;
    /** @brief Declared field fn; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_hg/msg/BmsState.fn: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgBmsState; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t fn;
    /** @brief Declared field cell_vol; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_hg/msg/BmsState.cell_vol: uint16; exactly 40 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgBmsState; share/platform/ros/rs/API-CONTRACT.md
     */
    uint16_t cell_vol[40];
    /** @brief Declared field bmsvoltage; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_hg/msg/BmsState.bmsvoltage: uint32; exactly 3 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgBmsState; share/platform/ros/rs/API-CONTRACT.md
     */
    uint32_t bmsvoltage[3];
    /** @brief Declared field current; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_hg/msg/BmsState.current: int32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgBmsState; share/platform/ros/rs/API-CONTRACT.md
     */
    int32_t current;
    /** @brief Declared field soc; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_hg/msg/BmsState.soc: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgBmsState; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t soc;
    /** @brief Declared field soh; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_hg/msg/BmsState.soh: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgBmsState; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t soh;
    /** @brief Declared field temperature; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_hg/msg/BmsState.temperature: int16; exactly 12 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgBmsState; share/platform/ros/rs/API-CONTRACT.md
     */
    int16_t temperature[12];
    /** @brief Declared field cycle; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_hg/msg/BmsState.cycle: uint16.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgBmsState; share/platform/ros/rs/API-CONTRACT.md
     */
    uint16_t cycle;
    /** @brief Declared field manufacturer_date; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_hg/msg/BmsState.manufacturer_date: uint16.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgBmsState; share/platform/ros/rs/API-CONTRACT.md
     */
    uint16_t manufacturer_date;
    /** @brief Declared field bmsstate; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_hg/msg/BmsState.bmsstate: uint32; exactly 5 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgBmsState; share/platform/ros/rs/API-CONTRACT.md
     */
    uint32_t bmsstate[5];
    /** @brief Declared field reserve; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_hg/msg/BmsState.reserve: uint32; exactly 3 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgBmsState; share/platform/ros/rs/API-CONTRACT.md
     */
    uint32_t reserve[3];
} roswasmc_bounded_2_unitree_hg_msg_BmsState;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_BMSSTATE_MAX_WIRE_BYTES 161u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_BMSSTATE_MIN_WIRE_BYTES 161u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_BMSSTATE_CODEC_IDENTITY "UWVMROS1_b7ac163c4ab4786d37a9ec027767258adcfc06637ed8b4ef67e30c517397761d"

/**
 * @brief Validate every field of unitree_hg/msg/BmsState.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static int roswasmc_bounded_2_unitree_hg_msg_BmsState_valid(roswasmc_bounded_2_unitree_hg_msg_BmsState const* value)
{
    if(!value)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < 40u; ++i)
        {
        }
    }
    {
        size_t i;
        for(i = 0; i < 3u; ++i)
        {
        }
    }
    {
        size_t i;
        for(i = 0; i < 12u; ++i)
        {
        }
    }
    {
        size_t i;
        for(i = 0; i < 5u; ++i)
        {
        }
    }
    {
        size_t i;
        for(i = 0; i < 3u; ++i)
        {
        }
    }
    return 1;
}

/**
 * @brief Measure the complete active canonical extent of unitree_hg/msg/BmsState.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static size_t roswasmc_bounded_2_unitree_hg_msg_BmsState_wire_size(roswasmc_bounded_2_unitree_hg_msg_BmsState const* value)
{
    size_t n = 0;
    n += 1;
    n += 1;
    n += 1;
    {
        size_t i;
        for(i = 0; i < 40u; ++i)
        {
            n += 2;
        }
    }
    {
        size_t i;
        for(i = 0; i < 3u; ++i)
        {
            n += 4;
        }
    }
    n += 4;
    n += 1;
    n += 1;
    {
        size_t i;
        for(i = 0; i < 12u; ++i)
        {
            n += 2;
        }
    }
    n += 2;
    n += 2;
    {
        size_t i;
        for(i = 0; i < 5u; ++i)
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

/**
 * @brief Append all fields of unitree_hg/msg/BmsState to an internal canonical buffer.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete prevalidated immutable record.
 * @param[out] p Sufficient exclusive output storage established by the public encoder.
 * @param[in,out] offset Exclusive initialized writer cursor.
 * @return No value; internal caller guarantees the measured capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static void
    roswasmc_bounded_2_unitree_hg_msg_BmsState_write_fields(roswasmc_bounded_2_unitree_hg_msg_BmsState const* value, unsigned char* p, size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->version_high, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->version_low, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->fn, 1);
    *offset += 1;
    {
        size_t i;
        for(i = 0; i < 40u; ++i)
        {
            uwvm_bounded_put(p + *offset, (uint64_t)value->cell_vol[i], 2);
            *offset += 2;
        }
    }
    {
        size_t i;
        for(i = 0; i < 3u; ++i)
        {
            uwvm_bounded_put(p + *offset, (uint64_t)value->bmsvoltage[i], 4);
            *offset += 4;
        }
    }
    uwvm_bounded_put(p + *offset, (uint64_t)value->current, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, (uint64_t)value->soc, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->soh, 1);
    *offset += 1;
    {
        size_t i;
        for(i = 0; i < 12u; ++i)
        {
            uwvm_bounded_put(p + *offset, (uint64_t)value->temperature[i], 2);
            *offset += 2;
        }
    }
    uwvm_bounded_put(p + *offset, (uint64_t)value->cycle, 2);
    *offset += 2;
    uwvm_bounded_put(p + *offset, (uint64_t)value->manufacturer_date, 2);
    *offset += 2;
    {
        size_t i;
        for(i = 0; i < 5u; ++i)
        {
            uwvm_bounded_put(p + *offset, (uint64_t)value->bmsstate[i], 4);
            *offset += 4;
        }
    }
    {
        size_t i;
        for(i = 0; i < 3u; ++i)
        {
            uwvm_bounded_put(p + *offset, (uint64_t)value->reserve[i], 4);
            *offset += 4;
        }
    }
}

/**
 * @brief Decode the full ordered field prefix of unitree_hg/msg/BmsState.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] p Borrowed canonical bytes, stable through return.
 * @param[in] n Available input extent in bytes.
 * @param[in,out] offset Exclusive initialized reader cursor.
 * @param[out] value Private temporary record; discard it on failure.
 * @return Nonzero only after complete prefix validation; enclosing fields may remain unread.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static int
    roswasmc_bounded_2_unitree_hg_msg_BmsState_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_2_unitree_hg_msg_BmsState* value)
{
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->version_high, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->version_low, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->fn, &bits, 1);
    }
    *offset += 1;
    {
        size_t i;
        for(i = 0; i < 40u; ++i)
        {
            if(*offset > n || n - *offset < 2)
            {
                return 0;
            }
            {
                uint16_t bits = (uint16_t)uwvm_bounded_get(p + *offset, 2);
                uwvm_bounded_copy(&value->cell_vol[i], &bits, 2);
            }
            *offset += 2;
        }
    }
    {
        size_t i;
        for(i = 0; i < 3u; ++i)
        {
            if(*offset > n || n - *offset < 4)
            {
                return 0;
            }
            {
                uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
                uwvm_bounded_copy(&value->bmsvoltage[i], &bits, 4);
            }
            *offset += 4;
        }
    }
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->current, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->soc, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->soh, &bits, 1);
    }
    *offset += 1;
    {
        size_t i;
        for(i = 0; i < 12u; ++i)
        {
            if(*offset > n || n - *offset < 2)
            {
                return 0;
            }
            {
                uint16_t bits = (uint16_t)uwvm_bounded_get(p + *offset, 2);
                uwvm_bounded_copy(&value->temperature[i], &bits, 2);
            }
            *offset += 2;
        }
    }
    if(*offset > n || n - *offset < 2)
    {
        return 0;
    }
    {
        uint16_t bits = (uint16_t)uwvm_bounded_get(p + *offset, 2);
        uwvm_bounded_copy(&value->cycle, &bits, 2);
    }
    *offset += 2;
    if(*offset > n || n - *offset < 2)
    {
        return 0;
    }
    {
        uint16_t bits = (uint16_t)uwvm_bounded_get(p + *offset, 2);
        uwvm_bounded_copy(&value->manufacturer_date, &bits, 2);
    }
    *offset += 2;
    {
        size_t i;
        for(i = 0; i < 5u; ++i)
        {
            if(*offset > n || n - *offset < 4)
            {
                return 0;
            }
            {
                uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
                uwvm_bounded_copy(&value->bmsstate[i], &bits, 4);
            }
            *offset += 4;
        }
    }
    {
        size_t i;
        for(i = 0; i < 3u; ++i)
        {
            if(*offset > n || n - *offset < 4)
            {
                return 0;
            }
            {
                uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
                uwvm_bounded_copy(&value->reserve[i], &bits, 4);
            }
            *offset += 4;
        }
    }
    return roswasmc_bounded_2_unitree_hg_msg_BmsState_valid(value);
}

/**
 * @brief Encode the complete unitree_hg/msg/BmsState record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record.
 * @param[out] output Exclusive caller-owned byte storage, disjoint from value and length.
 * @param[in] capacity Available writable byte count.
 * @param[out] length Exact initialized byte count, written only on success.
 * @return Status 0 on success, 22 for invalid/overlapping values, or 90 for insufficient capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static uint32_t
    roswasmc_bounded_2_unitree_hg_msg_BmsState_encode(roswasmc_bounded_2_unitree_hg_msg_BmsState const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_unitree_hg_msg_BmsState_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_unitree_hg_msg_BmsState_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_unitree_hg_msg_BmsState_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/**
 * @brief Decode exactly one complete unitree_hg/msg/BmsState record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] input Immutable complete canonical body, disjoint from value.
 * @param[in] length Exact input byte count; trailing bytes are refused.
 * @param[out] value Caller-owned complete record; unchanged on every refusal.
 * @return Status 0 on complete success, otherwise 22; no partial record is exposed.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static uint32_t roswasmc_bounded_2_unitree_hg_msg_BmsState_decode(void const* input, size_t length, roswasmc_bounded_2_unitree_hg_msg_BmsState* value)
{
    roswasmc_bounded_2_unitree_hg_msg_BmsState next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 161u || length > 161u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_unitree_hg_msg_BmsState_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_MOTORCMD)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_MOTORCMD_0 != 0xaa89a237UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_MOTORCMD_1 != 0xb0346947UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_MOTORCMD_2 != 0xa7da2653UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_MOTORCMD_3 != 0x389ab6d3UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_MOTORCMD_4 != 0x2961f57aUL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_MOTORCMD_5 != 0x89adc4edUL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_MOTORCMD_6 != 0xcf76b3d5UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_MOTORCMD_7 != 0x1d3e5b4aUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_MOTORCMD 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_MOTORCMD_0 0xaa89a237UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_MOTORCMD_1 0xb0346947UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_MOTORCMD_2 0xa7da2653UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_MOTORCMD_3 0x389ab6d3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_MOTORCMD_4 0x2961f57aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_MOTORCMD_5 0x89adc4edUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_MOTORCMD_6 0xcf76b3d5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_MOTORCMD_7 0x1d3e5b4aUL

/**
 * @brief Complete ROS 2 unitree_hg/msg/MotorCmd value.
 * @details All 7 declared fields are retained in source order. The canonical representation occupies 25..25
 * bytes and is identified by UWVMROS1_f3e472df5d061a1515ac185f87b01f702ef2f2bbeff39e42c6c7088d1da26cbb.
 * @native Original selected identity: RIHS01_b47468413c7037d0e2c0227fced04b91224cc165e5befe2b8cefacbe08391329.
 * Compilation of matching native traits is a separate qualification.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_2_unitree_hg_msg_MotorCmd
{
    /** @brief Declared field mode; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_hg/msg/MotorCmd.mode: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgMotorCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t mode;
    /** @brief Declared field q; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_hg/msg/MotorCmd.q: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgMotorCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    float q;
    /** @brief Declared field dq; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_hg/msg/MotorCmd.dq: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgMotorCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    float dq;
    /** @brief Declared field tau; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_hg/msg/MotorCmd.tau: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgMotorCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    float tau;
    /** @brief Declared field kp; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_hg/msg/MotorCmd.kp: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgMotorCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    float kp;
    /** @brief Declared field kd; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_hg/msg/MotorCmd.kd: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgMotorCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    float kd;
    /** @brief Declared field reserve; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_hg/msg/MotorCmd.reserve: uint32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgMotorCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    uint32_t reserve;
} roswasmc_bounded_2_unitree_hg_msg_MotorCmd;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_MOTORCMD_MAX_WIRE_BYTES 25u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_MOTORCMD_MIN_WIRE_BYTES 25u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_MOTORCMD_CODEC_IDENTITY "UWVMROS1_f3e472df5d061a1515ac185f87b01f702ef2f2bbeff39e42c6c7088d1da26cbb"

/**
 * @brief Validate every field of unitree_hg/msg/MotorCmd.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static int roswasmc_bounded_2_unitree_hg_msg_MotorCmd_valid(roswasmc_bounded_2_unitree_hg_msg_MotorCmd const* value)
{
    if(!value)
    {
        return 0;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->q, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
        {
            return 0;
        }
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->dq, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
        {
            return 0;
        }
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->tau, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
        {
            return 0;
        }
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->kp, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
        {
            return 0;
        }
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->kd, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
        {
            return 0;
        }
    }
    return 1;
}

/**
 * @brief Measure the complete active canonical extent of unitree_hg/msg/MotorCmd.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static size_t roswasmc_bounded_2_unitree_hg_msg_MotorCmd_wire_size(roswasmc_bounded_2_unitree_hg_msg_MotorCmd const* value)
{
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

/**
 * @brief Append all fields of unitree_hg/msg/MotorCmd to an internal canonical buffer.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete prevalidated immutable record.
 * @param[out] p Sufficient exclusive output storage established by the public encoder.
 * @param[in,out] offset Exclusive initialized writer cursor.
 * @return No value; internal caller guarantees the measured capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static void
    roswasmc_bounded_2_unitree_hg_msg_MotorCmd_write_fields(roswasmc_bounded_2_unitree_hg_msg_MotorCmd const* value, unsigned char* p, size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->mode, 1);
    *offset += 1;
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->q, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->dq, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->tau, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->kp, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->kd, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    uwvm_bounded_put(p + *offset, (uint64_t)value->reserve, 4);
    *offset += 4;
}

/**
 * @brief Decode the full ordered field prefix of unitree_hg/msg/MotorCmd.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] p Borrowed canonical bytes, stable through return.
 * @param[in] n Available input extent in bytes.
 * @param[in,out] offset Exclusive initialized reader cursor.
 * @param[out] value Private temporary record; discard it on failure.
 * @return Nonzero only after complete prefix validation; enclosing fields may remain unread.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static int
    roswasmc_bounded_2_unitree_hg_msg_MotorCmd_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_2_unitree_hg_msg_MotorCmd* value)
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
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->q, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->dq, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->tau, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->kp, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->kd, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->reserve, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_2_unitree_hg_msg_MotorCmd_valid(value);
}

/**
 * @brief Encode the complete unitree_hg/msg/MotorCmd record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record.
 * @param[out] output Exclusive caller-owned byte storage, disjoint from value and length.
 * @param[in] capacity Available writable byte count.
 * @param[out] length Exact initialized byte count, written only on success.
 * @return Status 0 on success, 22 for invalid/overlapping values, or 90 for insufficient capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static uint32_t
    roswasmc_bounded_2_unitree_hg_msg_MotorCmd_encode(roswasmc_bounded_2_unitree_hg_msg_MotorCmd const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_unitree_hg_msg_MotorCmd_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_unitree_hg_msg_MotorCmd_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_unitree_hg_msg_MotorCmd_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/**
 * @brief Decode exactly one complete unitree_hg/msg/MotorCmd record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] input Immutable complete canonical body, disjoint from value.
 * @param[in] length Exact input byte count; trailing bytes are refused.
 * @param[out] value Caller-owned complete record; unchanged on every refusal.
 * @return Status 0 on complete success, otherwise 22; no partial record is exposed.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static uint32_t roswasmc_bounded_2_unitree_hg_msg_MotorCmd_decode(void const* input, size_t length, roswasmc_bounded_2_unitree_hg_msg_MotorCmd* value)
{
    roswasmc_bounded_2_unitree_hg_msg_MotorCmd next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 25u || length > 25u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_unitree_hg_msg_MotorCmd_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_HANDCMD)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_HANDCMD_0 != 0x6122a7f3UL ||                                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_HANDCMD_1 != 0xac6a74a9UL ||                                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_HANDCMD_2 != 0xa6744707UL ||                                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_HANDCMD_3 != 0xbb5ed6ccUL ||                                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_HANDCMD_4 != 0x697d87c5UL ||                                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_HANDCMD_5 != 0xa22cf5bbUL ||                                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_HANDCMD_6 != 0xef56f475UL ||                                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_HANDCMD_7 != 0xb736d9c9UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_HANDCMD 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_HANDCMD_0 0x6122a7f3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_HANDCMD_1 0xac6a74a9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_HANDCMD_2 0xa6744707UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_HANDCMD_3 0xbb5ed6ccUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_HANDCMD_4 0x697d87c5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_HANDCMD_5 0xa22cf5bbUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_HANDCMD_6 0xef56f475UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_HANDCMD_7 0xb736d9c9UL

/**
 * @brief Own a bounded canonical sequence or UTF-8 byte string inline.
 * @details The active size is 0 through 32. Unused capacity is never serialized or read. This Guest storage is
 * neither a native ROS allocation nor an authority token.
 */
typedef struct
{
    /**
     * @brief Number of initialized active elements.
     * @details Must be no greater than 32; decoders and encoders reject larger values without truncation.
     */
    uint32_t size;
    /**
     * @brief Caller-owned complete finite element capacity.
     * @details Only the initialized active size prefix is meaningful. Retain that prefix unchanged through
     * synchronous encoding; no native pointer or permission is stored.
     */
    roswasmc_bounded_2_unitree_hg_msg_MotorCmd data[32];
} roswasmc_bounded_2_unitree_hg_msg_HandCmd_motor_cmd_sequence;

/**
 * @brief Complete ROS 2 unitree_hg/msg/HandCmd value.
 * @details All 2 declared fields are retained in source order. The canonical representation occupies 20..820
 * bytes and is identified by UWVMROS1_e5215e7e27590939f11d4e93d096535104bb275681fa89a88954227cbdbba006.
 * @native Original selected identity: RIHS01_aa5efb217dfce9bba4a5c51be7d09b6426ea5ad20bb919b2033f285a2b98a8f4.
 * Compilation of matching native traits is a separate qualification.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_2_unitree_hg_msg_HandCmd
{
    /** @brief Declared field motor_cmd; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_hg/msg/HandCmd.motor_cmd: unitree_hg/msg/MotorCmd; 0..32 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgHandCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    roswasmc_bounded_2_unitree_hg_msg_HandCmd_motor_cmd_sequence motor_cmd;
    /** @brief Declared field reserve; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_hg/msg/HandCmd.reserve: uint32; exactly 4 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgHandCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    uint32_t reserve[4];
} roswasmc_bounded_2_unitree_hg_msg_HandCmd;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_HANDCMD_MAX_WIRE_BYTES 820u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_HANDCMD_MIN_WIRE_BYTES 20u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_HANDCMD_CODEC_IDENTITY "UWVMROS1_e5215e7e27590939f11d4e93d096535104bb275681fa89a88954227cbdbba006"

/**
 * @brief Validate every field of unitree_hg/msg/HandCmd.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static int roswasmc_bounded_2_unitree_hg_msg_HandCmd_valid(roswasmc_bounded_2_unitree_hg_msg_HandCmd const* value)
{
    if(!value)
    {
        return 0;
    }
    if(value->motor_cmd.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->motor_cmd.size; ++i)
        {
            if(!roswasmc_bounded_2_unitree_hg_msg_MotorCmd_valid(&value->motor_cmd.data[i]))
            {
                return 0;
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 4u; ++i)
        {
        }
    }
    return 1;
}

/**
 * @brief Measure the complete active canonical extent of unitree_hg/msg/HandCmd.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static size_t roswasmc_bounded_2_unitree_hg_msg_HandCmd_wire_size(roswasmc_bounded_2_unitree_hg_msg_HandCmd const* value)
{
    size_t n = 0;
    n += 4;
    if(value->motor_cmd.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->motor_cmd.size; ++i)
        {
            n += roswasmc_bounded_2_unitree_hg_msg_MotorCmd_wire_size(&value->motor_cmd.data[i]);
        }
    }
    {
        size_t i;
        for(i = 0; i < 4u; ++i)
        {
            n += 4;
        }
    }
    return n;
}

/**
 * @brief Append all fields of unitree_hg/msg/HandCmd to an internal canonical buffer.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete prevalidated immutable record.
 * @param[out] p Sufficient exclusive output storage established by the public encoder.
 * @param[in,out] offset Exclusive initialized writer cursor.
 * @return No value; internal caller guarantees the measured capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static void
    roswasmc_bounded_2_unitree_hg_msg_HandCmd_write_fields(roswasmc_bounded_2_unitree_hg_msg_HandCmd const* value, unsigned char* p, size_t* offset)
{
    uwvm_bounded_put(p + *offset, value->motor_cmd.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->motor_cmd.size; ++i)
        {
            roswasmc_bounded_2_unitree_hg_msg_MotorCmd_write_fields(&value->motor_cmd.data[i], p, offset);
        }
    }
    {
        size_t i;
        for(i = 0; i < 4u; ++i)
        {
            uwvm_bounded_put(p + *offset, (uint64_t)value->reserve[i], 4);
            *offset += 4;
        }
    }
}

/**
 * @brief Decode the full ordered field prefix of unitree_hg/msg/HandCmd.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] p Borrowed canonical bytes, stable through return.
 * @param[in] n Available input extent in bytes.
 * @param[in,out] offset Exclusive initialized reader cursor.
 * @param[out] value Private temporary record; discard it on failure.
 * @return Nonzero only after complete prefix validation; enclosing fields may remain unread.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static int
    roswasmc_bounded_2_unitree_hg_msg_HandCmd_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_2_unitree_hg_msg_HandCmd* value)
{
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->motor_cmd.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->motor_cmd.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->motor_cmd.size; ++i)
        {
            if(!roswasmc_bounded_2_unitree_hg_msg_MotorCmd_read_fields(p, n, offset, &value->motor_cmd.data[i]))
            {
                return 0;
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 4u; ++i)
        {
            if(*offset > n || n - *offset < 4)
            {
                return 0;
            }
            {
                uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
                uwvm_bounded_copy(&value->reserve[i], &bits, 4);
            }
            *offset += 4;
        }
    }
    return roswasmc_bounded_2_unitree_hg_msg_HandCmd_valid(value);
}

/**
 * @brief Encode the complete unitree_hg/msg/HandCmd record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record.
 * @param[out] output Exclusive caller-owned byte storage, disjoint from value and length.
 * @param[in] capacity Available writable byte count.
 * @param[out] length Exact initialized byte count, written only on success.
 * @return Status 0 on success, 22 for invalid/overlapping values, or 90 for insufficient capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static uint32_t
    roswasmc_bounded_2_unitree_hg_msg_HandCmd_encode(roswasmc_bounded_2_unitree_hg_msg_HandCmd const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_unitree_hg_msg_HandCmd_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_unitree_hg_msg_HandCmd_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_unitree_hg_msg_HandCmd_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/**
 * @brief Decode exactly one complete unitree_hg/msg/HandCmd record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] input Immutable complete canonical body, disjoint from value.
 * @param[in] length Exact input byte count; trailing bytes are refused.
 * @param[out] value Caller-owned complete record; unchanged on every refusal.
 * @return Status 0 on complete success, otherwise 22; no partial record is exposed.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static uint32_t roswasmc_bounded_2_unitree_hg_msg_HandCmd_decode(void const* input, size_t length, roswasmc_bounded_2_unitree_hg_msg_HandCmd* value)
{
    roswasmc_bounded_2_unitree_hg_msg_HandCmd next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 20u || length > 820u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_unitree_hg_msg_HandCmd_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_MOTORSTATE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_MOTORSTATE_0 != 0x767b7eb5UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_MOTORSTATE_1 != 0xe69cdafeUL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_MOTORSTATE_2 != 0x03ad1160UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_MOTORSTATE_3 != 0x32f0ae47UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_MOTORSTATE_4 != 0x7fb8aefbUL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_MOTORSTATE_5 != 0xb478a0aaUL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_MOTORSTATE_6 != 0x32441059UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_MOTORSTATE_7 != 0x9c8775daUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_MOTORSTATE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_MOTORSTATE_0 0x767b7eb5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_MOTORSTATE_1 0xe69cdafeUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_MOTORSTATE_2 0x03ad1160UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_MOTORSTATE_3 0x32f0ae47UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_MOTORSTATE_4 0x7fb8aefbUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_MOTORSTATE_5 0xb478a0aaUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_MOTORSTATE_6 0x32441059UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_MOTORSTATE_7 0x9c8775daUL

/**
 * @brief Complete ROS 2 unitree_hg/msg/MotorState value.
 * @details All 10 declared fields are retained in source order. The canonical representation occupies 53..53
 * bytes and is identified by UWVMROS1_65497908fe0136a5c90f11b4a2cda2110507bcc8805f9347ac82be3b32fe5934.
 * @native Original selected identity: RIHS01_9fb0c7e50cef1769037c580304750df0da54b7a6a5fbfa92880f97add4945345.
 * Compilation of matching native traits is a separate qualification.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_2_unitree_hg_msg_MotorState
{
    /** @brief Declared field mode; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_hg/msg/MotorState.mode: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgMotorState; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t mode;
    /** @brief Declared field q; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_hg/msg/MotorState.q: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgMotorState; share/platform/ros/rs/API-CONTRACT.md
     */
    float q;
    /** @brief Declared field dq; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_hg/msg/MotorState.dq: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgMotorState; share/platform/ros/rs/API-CONTRACT.md
     */
    float dq;
    /** @brief Declared field ddq; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_hg/msg/MotorState.ddq: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgMotorState; share/platform/ros/rs/API-CONTRACT.md
     */
    float ddq;
    /** @brief Declared field tau_est; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_hg/msg/MotorState.tau_est: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgMotorState; share/platform/ros/rs/API-CONTRACT.md
     */
    float tau_est;
    /** @brief Declared field temperature; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_hg/msg/MotorState.temperature: int16; exactly 2 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgMotorState; share/platform/ros/rs/API-CONTRACT.md
     */
    int16_t temperature[2];
    /** @brief Declared field vol; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_hg/msg/MotorState.vol: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgMotorState; share/platform/ros/rs/API-CONTRACT.md
     */
    float vol;
    /** @brief Declared field sensor; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_hg/msg/MotorState.sensor: uint32; exactly 2 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgMotorState; share/platform/ros/rs/API-CONTRACT.md
     */
    uint32_t sensor[2];
    /** @brief Declared field motorstate; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_hg/msg/MotorState.motorstate: uint32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgMotorState; share/platform/ros/rs/API-CONTRACT.md
     */
    uint32_t motorstate;
    /** @brief Declared field reserve; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_hg/msg/MotorState.reserve: uint32; exactly 4 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgMotorState; share/platform/ros/rs/API-CONTRACT.md
     */
    uint32_t reserve[4];
} roswasmc_bounded_2_unitree_hg_msg_MotorState;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_MOTORSTATE_MAX_WIRE_BYTES 53u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_MOTORSTATE_MIN_WIRE_BYTES 53u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_MOTORSTATE_CODEC_IDENTITY "UWVMROS1_65497908fe0136a5c90f11b4a2cda2110507bcc8805f9347ac82be3b32fe5934"

/**
 * @brief Validate every field of unitree_hg/msg/MotorState.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static int roswasmc_bounded_2_unitree_hg_msg_MotorState_valid(roswasmc_bounded_2_unitree_hg_msg_MotorState const* value)
{
    if(!value)
    {
        return 0;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->q, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
        {
            return 0;
        }
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->dq, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
        {
            return 0;
        }
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->ddq, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
        {
            return 0;
        }
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->tau_est, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
        {
            return 0;
        }
    }
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
        }
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->vol, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
        {
            return 0;
        }
    }
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
        }
    }
    {
        size_t i;
        for(i = 0; i < 4u; ++i)
        {
        }
    }
    return 1;
}

/**
 * @brief Measure the complete active canonical extent of unitree_hg/msg/MotorState.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static size_t roswasmc_bounded_2_unitree_hg_msg_MotorState_wire_size(roswasmc_bounded_2_unitree_hg_msg_MotorState const* value)
{
    size_t n = 0;
    n += 1;
    n += 4;
    n += 4;
    n += 4;
    n += 4;
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            n += 2;
        }
    }
    n += 4;
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            n += 4;
        }
    }
    n += 4;
    {
        size_t i;
        for(i = 0; i < 4u; ++i)
        {
            n += 4;
        }
    }
    return n;
}

/**
 * @brief Append all fields of unitree_hg/msg/MotorState to an internal canonical buffer.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete prevalidated immutable record.
 * @param[out] p Sufficient exclusive output storage established by the public encoder.
 * @param[in,out] offset Exclusive initialized writer cursor.
 * @return No value; internal caller guarantees the measured capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static void
    roswasmc_bounded_2_unitree_hg_msg_MotorState_write_fields(roswasmc_bounded_2_unitree_hg_msg_MotorState const* value, unsigned char* p, size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->mode, 1);
    *offset += 1;
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->q, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->dq, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->ddq, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->tau_est, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            uwvm_bounded_put(p + *offset, (uint64_t)value->temperature[i], 2);
            *offset += 2;
        }
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->vol, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            uwvm_bounded_put(p + *offset, (uint64_t)value->sensor[i], 4);
            *offset += 4;
        }
    }
    uwvm_bounded_put(p + *offset, (uint64_t)value->motorstate, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < 4u; ++i)
        {
            uwvm_bounded_put(p + *offset, (uint64_t)value->reserve[i], 4);
            *offset += 4;
        }
    }
}

/**
 * @brief Decode the full ordered field prefix of unitree_hg/msg/MotorState.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] p Borrowed canonical bytes, stable through return.
 * @param[in] n Available input extent in bytes.
 * @param[in,out] offset Exclusive initialized reader cursor.
 * @param[out] value Private temporary record; discard it on failure.
 * @return Nonzero only after complete prefix validation; enclosing fields may remain unread.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static int roswasmc_bounded_2_unitree_hg_msg_MotorState_read_fields(unsigned char const* p,
                                                                           size_t n,
                                                                           size_t* offset,
                                                                           roswasmc_bounded_2_unitree_hg_msg_MotorState* value)
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
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->q, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->dq, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->ddq, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->tau_est, &bits, 4);
    }
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            if(*offset > n || n - *offset < 2)
            {
                return 0;
            }
            {
                uint16_t bits = (uint16_t)uwvm_bounded_get(p + *offset, 2);
                uwvm_bounded_copy(&value->temperature[i], &bits, 2);
            }
            *offset += 2;
        }
    }
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->vol, &bits, 4);
    }
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            if(*offset > n || n - *offset < 4)
            {
                return 0;
            }
            {
                uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
                uwvm_bounded_copy(&value->sensor[i], &bits, 4);
            }
            *offset += 4;
        }
    }
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->motorstate, &bits, 4);
    }
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < 4u; ++i)
        {
            if(*offset > n || n - *offset < 4)
            {
                return 0;
            }
            {
                uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
                uwvm_bounded_copy(&value->reserve[i], &bits, 4);
            }
            *offset += 4;
        }
    }
    return roswasmc_bounded_2_unitree_hg_msg_MotorState_valid(value);
}

/**
 * @brief Encode the complete unitree_hg/msg/MotorState record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record.
 * @param[out] output Exclusive caller-owned byte storage, disjoint from value and length.
 * @param[in] capacity Available writable byte count.
 * @param[out] length Exact initialized byte count, written only on success.
 * @return Status 0 on success, 22 for invalid/overlapping values, or 90 for insufficient capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static uint32_t roswasmc_bounded_2_unitree_hg_msg_MotorState_encode(roswasmc_bounded_2_unitree_hg_msg_MotorState const* value,
                                                                           void* output,
                                                                           size_t capacity,
                                                                           size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_unitree_hg_msg_MotorState_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_unitree_hg_msg_MotorState_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_unitree_hg_msg_MotorState_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/**
 * @brief Decode exactly one complete unitree_hg/msg/MotorState record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] input Immutable complete canonical body, disjoint from value.
 * @param[in] length Exact input byte count; trailing bytes are refused.
 * @param[out] value Caller-owned complete record; unchanged on every refusal.
 * @return Status 0 on complete success, otherwise 22; no partial record is exposed.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static uint32_t
    roswasmc_bounded_2_unitree_hg_msg_MotorState_decode(void const* input, size_t length, roswasmc_bounded_2_unitree_hg_msg_MotorState* value)
{
    roswasmc_bounded_2_unitree_hg_msg_MotorState next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 53u || length > 53u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_unitree_hg_msg_MotorState_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_PRESSSENSORSTATE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_PRESSSENSORSTATE_0 != 0xbc61e34bUL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_PRESSSENSORSTATE_1 != 0x05b444faUL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_PRESSSENSORSTATE_2 != 0xf7c8e85cUL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_PRESSSENSORSTATE_3 != 0xf8d3eb8dUL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_PRESSSENSORSTATE_4 != 0xd863b538UL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_PRESSSENSORSTATE_5 != 0x60986e22UL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_PRESSSENSORSTATE_6 != 0x9183f9f9UL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_PRESSSENSORSTATE_7 != 0xbdabe350UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_PRESSSENSORSTATE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_PRESSSENSORSTATE_0 0xbc61e34bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_PRESSSENSORSTATE_1 0x05b444faUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_PRESSSENSORSTATE_2 0xf7c8e85cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_PRESSSENSORSTATE_3 0xf8d3eb8dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_PRESSSENSORSTATE_4 0xd863b538UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_PRESSSENSORSTATE_5 0x60986e22UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_PRESSSENSORSTATE_6 0x9183f9f9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_PRESSSENSORSTATE_7 0xbdabe350UL

/**
 * @brief Complete ROS 2 unitree_hg/msg/PressSensorState value.
 * @details All 4 declared fields are retained in source order. The canonical representation occupies 104..104
 * bytes and is identified by UWVMROS1_4abc296d4acd21132c0c1d185e3fafd9f0db8836a5c16ed040ebcc6127380fe5.
 * @native Original selected identity: RIHS01_3c61bae23b785ee850c57df73a948d53ca5cb00ccbdb82ee526994c77ae8d908.
 * Compilation of matching native traits is a separate qualification.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_2_unitree_hg_msg_PressSensorState
{
    /** @brief Declared field pressure; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_hg/msg/PressSensorState.pressure: float32; exactly 12 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgPressSensorState; share/platform/ros/rs/API-CONTRACT.md
     */
    float pressure[12];
    /** @brief Declared field temperature; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_hg/msg/PressSensorState.temperature: float32; exactly 12 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgPressSensorState; share/platform/ros/rs/API-CONTRACT.md
     */
    float temperature[12];
    /** @brief Declared field lost; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_hg/msg/PressSensorState.lost: uint32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgPressSensorState; share/platform/ros/rs/API-CONTRACT.md
     */
    uint32_t lost;
    /** @brief Declared field reserve; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_hg/msg/PressSensorState.reserve: uint32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgPressSensorState; share/platform/ros/rs/API-CONTRACT.md
     */
    uint32_t reserve;
} roswasmc_bounded_2_unitree_hg_msg_PressSensorState;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_PRESSSENSORSTATE_MAX_WIRE_BYTES 104u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_PRESSSENSORSTATE_MIN_WIRE_BYTES 104u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_PRESSSENSORSTATE_CODEC_IDENTITY "UWVMROS1_4abc296d4acd21132c0c1d185e3fafd9f0db8836a5c16ed040ebcc6127380fe5"

/**
 * @brief Validate every field of unitree_hg/msg/PressSensorState.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static int roswasmc_bounded_2_unitree_hg_msg_PressSensorState_valid(roswasmc_bounded_2_unitree_hg_msg_PressSensorState const* value)
{
    if(!value)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < 12u; ++i)
        {
            {
                uint32_t bits;
                uwvm_bounded_copy(&bits, &value->pressure[i], 4);
                if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
                {
                    return 0;
                }
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 12u; ++i)
        {
            {
                uint32_t bits;
                uwvm_bounded_copy(&bits, &value->temperature[i], 4);
                if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
                {
                    return 0;
                }
            }
        }
    }
    return 1;
}

/**
 * @brief Measure the complete active canonical extent of unitree_hg/msg/PressSensorState.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static size_t roswasmc_bounded_2_unitree_hg_msg_PressSensorState_wire_size(roswasmc_bounded_2_unitree_hg_msg_PressSensorState const* value)
{
    size_t n = 0;
    {
        size_t i;
        for(i = 0; i < 12u; ++i)
        {
            n += 4;
        }
    }
    {
        size_t i;
        for(i = 0; i < 12u; ++i)
        {
            n += 4;
        }
    }
    n += 4;
    n += 4;
    return n;
}

/**
 * @brief Append all fields of unitree_hg/msg/PressSensorState to an internal canonical buffer.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete prevalidated immutable record.
 * @param[out] p Sufficient exclusive output storage established by the public encoder.
 * @param[in,out] offset Exclusive initialized writer cursor.
 * @return No value; internal caller guarantees the measured capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static void roswasmc_bounded_2_unitree_hg_msg_PressSensorState_write_fields(roswasmc_bounded_2_unitree_hg_msg_PressSensorState const* value,
                                                                                   unsigned char* p,
                                                                                   size_t* offset)
{
    {
        size_t i;
        for(i = 0; i < 12u; ++i)
        {
            {
                uint32_t bits;
                uwvm_bounded_copy(&bits, &value->pressure[i], 4);
                uwvm_bounded_put(p + *offset, bits, 4);
                *offset += 4;
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 12u; ++i)
        {
            {
                uint32_t bits;
                uwvm_bounded_copy(&bits, &value->temperature[i], 4);
                uwvm_bounded_put(p + *offset, bits, 4);
                *offset += 4;
            }
        }
    }
    uwvm_bounded_put(p + *offset, (uint64_t)value->lost, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, (uint64_t)value->reserve, 4);
    *offset += 4;
}

/**
 * @brief Decode the full ordered field prefix of unitree_hg/msg/PressSensorState.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] p Borrowed canonical bytes, stable through return.
 * @param[in] n Available input extent in bytes.
 * @param[in,out] offset Exclusive initialized reader cursor.
 * @param[out] value Private temporary record; discard it on failure.
 * @return Nonzero only after complete prefix validation; enclosing fields may remain unread.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static int roswasmc_bounded_2_unitree_hg_msg_PressSensorState_read_fields(unsigned char const* p,
                                                                                 size_t n,
                                                                                 size_t* offset,
                                                                                 roswasmc_bounded_2_unitree_hg_msg_PressSensorState* value)
{
    {
        size_t i;
        for(i = 0; i < 12u; ++i)
        {
            if(*offset > n || n - *offset < 4)
            {
                return 0;
            }
            {
                uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
                uwvm_bounded_copy(&value->pressure[i], &bits, 4);
            }
            *offset += 4;
        }
    }
    {
        size_t i;
        for(i = 0; i < 12u; ++i)
        {
            if(*offset > n || n - *offset < 4)
            {
                return 0;
            }
            {
                uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
                uwvm_bounded_copy(&value->temperature[i], &bits, 4);
            }
            *offset += 4;
        }
    }
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->lost, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->reserve, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_2_unitree_hg_msg_PressSensorState_valid(value);
}

/**
 * @brief Encode the complete unitree_hg/msg/PressSensorState record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record.
 * @param[out] output Exclusive caller-owned byte storage, disjoint from value and length.
 * @param[in] capacity Available writable byte count.
 * @param[out] length Exact initialized byte count, written only on success.
 * @return Status 0 on success, 22 for invalid/overlapping values, or 90 for insufficient capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static uint32_t roswasmc_bounded_2_unitree_hg_msg_PressSensorState_encode(roswasmc_bounded_2_unitree_hg_msg_PressSensorState const* value,
                                                                                 void* output,
                                                                                 size_t capacity,
                                                                                 size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_unitree_hg_msg_PressSensorState_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_unitree_hg_msg_PressSensorState_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_unitree_hg_msg_PressSensorState_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/**
 * @brief Decode exactly one complete unitree_hg/msg/PressSensorState record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] input Immutable complete canonical body, disjoint from value.
 * @param[in] length Exact input byte count; trailing bytes are refused.
 * @param[out] value Caller-owned complete record; unchanged on every refusal.
 * @return Status 0 on complete success, otherwise 22; no partial record is exposed.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static uint32_t
    roswasmc_bounded_2_unitree_hg_msg_PressSensorState_decode(void const* input, size_t length, roswasmc_bounded_2_unitree_hg_msg_PressSensorState* value)
{
    roswasmc_bounded_2_unitree_hg_msg_PressSensorState next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 104u || length > 104u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_unitree_hg_msg_PressSensorState_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_IMUSTATE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_IMUSTATE_0 != 0xd3052590UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_IMUSTATE_1 != 0x94ca6e1dUL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_IMUSTATE_2 != 0xf5f02909UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_IMUSTATE_3 != 0x91bb50d3UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_IMUSTATE_4 != 0x583bc998UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_IMUSTATE_5 != 0x809dc9d8UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_IMUSTATE_6 != 0xbd9e01efUL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_IMUSTATE_7 != 0xc02b2a70UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_IMUSTATE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_IMUSTATE_0 0xd3052590UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_IMUSTATE_1 0x94ca6e1dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_IMUSTATE_2 0xf5f02909UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_IMUSTATE_3 0x91bb50d3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_IMUSTATE_4 0x583bc998UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_IMUSTATE_5 0x809dc9d8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_IMUSTATE_6 0xbd9e01efUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_IMUSTATE_7 0xc02b2a70UL

/**
 * @brief Complete ROS 2 unitree_hg/msg/IMUState value.
 * @details All 5 declared fields are retained in source order. The canonical representation occupies 54..54
 * bytes and is identified by UWVMROS1_d83832e8c27273785113c8388f7f22ea1251d6198817255f13a7e542afb26420.
 * @native Original selected identity: RIHS01_6fbba1a672360bf41e4393ad73d247036fd802d08adfb436d0c99a2a7b3ceec2.
 * Compilation of matching native traits is a separate qualification.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_2_unitree_hg_msg_IMUState
{
    /** @brief Declared field quaternion; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_hg/msg/IMUState.quaternion: float32; exactly 4 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgIMUState; share/platform/ros/rs/API-CONTRACT.md
     */
    float quaternion[4];
    /** @brief Declared field gyroscope; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_hg/msg/IMUState.gyroscope: float32; exactly 3 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgIMUState; share/platform/ros/rs/API-CONTRACT.md
     */
    float gyroscope[3];
    /** @brief Declared field accelerometer; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_hg/msg/IMUState.accelerometer: float32; exactly 3 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgIMUState; share/platform/ros/rs/API-CONTRACT.md
     */
    float accelerometer[3];
    /** @brief Declared field rpy; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_hg/msg/IMUState.rpy: float32; exactly 3 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgIMUState; share/platform/ros/rs/API-CONTRACT.md
     */
    float rpy[3];
    /** @brief Declared field temperature; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_hg/msg/IMUState.temperature: int16.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgIMUState; share/platform/ros/rs/API-CONTRACT.md
     */
    int16_t temperature;
} roswasmc_bounded_2_unitree_hg_msg_IMUState;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_IMUSTATE_MAX_WIRE_BYTES 54u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_IMUSTATE_MIN_WIRE_BYTES 54u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_IMUSTATE_CODEC_IDENTITY "UWVMROS1_d83832e8c27273785113c8388f7f22ea1251d6198817255f13a7e542afb26420"

/**
 * @brief Validate every field of unitree_hg/msg/IMUState.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static int roswasmc_bounded_2_unitree_hg_msg_IMUState_valid(roswasmc_bounded_2_unitree_hg_msg_IMUState const* value)
{
    if(!value)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < 4u; ++i)
        {
            {
                uint32_t bits;
                uwvm_bounded_copy(&bits, &value->quaternion[i], 4);
                if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
                {
                    return 0;
                }
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 3u; ++i)
        {
            {
                uint32_t bits;
                uwvm_bounded_copy(&bits, &value->gyroscope[i], 4);
                if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
                {
                    return 0;
                }
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 3u; ++i)
        {
            {
                uint32_t bits;
                uwvm_bounded_copy(&bits, &value->accelerometer[i], 4);
                if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
                {
                    return 0;
                }
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 3u; ++i)
        {
            {
                uint32_t bits;
                uwvm_bounded_copy(&bits, &value->rpy[i], 4);
                if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
                {
                    return 0;
                }
            }
        }
    }
    return 1;
}

/**
 * @brief Measure the complete active canonical extent of unitree_hg/msg/IMUState.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static size_t roswasmc_bounded_2_unitree_hg_msg_IMUState_wire_size(roswasmc_bounded_2_unitree_hg_msg_IMUState const* value)
{
    size_t n = 0;
    {
        size_t i;
        for(i = 0; i < 4u; ++i)
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
    {
        size_t i;
        for(i = 0; i < 3u; ++i)
        {
            n += 4;
        }
    }
    n += 2;
    return n;
}

/**
 * @brief Append all fields of unitree_hg/msg/IMUState to an internal canonical buffer.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete prevalidated immutable record.
 * @param[out] p Sufficient exclusive output storage established by the public encoder.
 * @param[in,out] offset Exclusive initialized writer cursor.
 * @return No value; internal caller guarantees the measured capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static void
    roswasmc_bounded_2_unitree_hg_msg_IMUState_write_fields(roswasmc_bounded_2_unitree_hg_msg_IMUState const* value, unsigned char* p, size_t* offset)
{
    {
        size_t i;
        for(i = 0; i < 4u; ++i)
        {
            {
                uint32_t bits;
                uwvm_bounded_copy(&bits, &value->quaternion[i], 4);
                uwvm_bounded_put(p + *offset, bits, 4);
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
                uwvm_bounded_copy(&bits, &value->gyroscope[i], 4);
                uwvm_bounded_put(p + *offset, bits, 4);
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
                uwvm_bounded_copy(&bits, &value->accelerometer[i], 4);
                uwvm_bounded_put(p + *offset, bits, 4);
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
                uwvm_bounded_copy(&bits, &value->rpy[i], 4);
                uwvm_bounded_put(p + *offset, bits, 4);
                *offset += 4;
            }
        }
    }
    uwvm_bounded_put(p + *offset, (uint64_t)value->temperature, 2);
    *offset += 2;
}

/**
 * @brief Decode the full ordered field prefix of unitree_hg/msg/IMUState.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] p Borrowed canonical bytes, stable through return.
 * @param[in] n Available input extent in bytes.
 * @param[in,out] offset Exclusive initialized reader cursor.
 * @param[out] value Private temporary record; discard it on failure.
 * @return Nonzero only after complete prefix validation; enclosing fields may remain unread.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static int
    roswasmc_bounded_2_unitree_hg_msg_IMUState_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_2_unitree_hg_msg_IMUState* value)
{
    {
        size_t i;
        for(i = 0; i < 4u; ++i)
        {
            if(*offset > n || n - *offset < 4)
            {
                return 0;
            }
            {
                uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
                uwvm_bounded_copy(&value->quaternion[i], &bits, 4);
            }
            *offset += 4;
        }
    }
    {
        size_t i;
        for(i = 0; i < 3u; ++i)
        {
            if(*offset > n || n - *offset < 4)
            {
                return 0;
            }
            {
                uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
                uwvm_bounded_copy(&value->gyroscope[i], &bits, 4);
            }
            *offset += 4;
        }
    }
    {
        size_t i;
        for(i = 0; i < 3u; ++i)
        {
            if(*offset > n || n - *offset < 4)
            {
                return 0;
            }
            {
                uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
                uwvm_bounded_copy(&value->accelerometer[i], &bits, 4);
            }
            *offset += 4;
        }
    }
    {
        size_t i;
        for(i = 0; i < 3u; ++i)
        {
            if(*offset > n || n - *offset < 4)
            {
                return 0;
            }
            {
                uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
                uwvm_bounded_copy(&value->rpy[i], &bits, 4);
            }
            *offset += 4;
        }
    }
    if(*offset > n || n - *offset < 2)
    {
        return 0;
    }
    {
        uint16_t bits = (uint16_t)uwvm_bounded_get(p + *offset, 2);
        uwvm_bounded_copy(&value->temperature, &bits, 2);
    }
    *offset += 2;
    return roswasmc_bounded_2_unitree_hg_msg_IMUState_valid(value);
}

/**
 * @brief Encode the complete unitree_hg/msg/IMUState record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record.
 * @param[out] output Exclusive caller-owned byte storage, disjoint from value and length.
 * @param[in] capacity Available writable byte count.
 * @param[out] length Exact initialized byte count, written only on success.
 * @return Status 0 on success, 22 for invalid/overlapping values, or 90 for insufficient capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static uint32_t
    roswasmc_bounded_2_unitree_hg_msg_IMUState_encode(roswasmc_bounded_2_unitree_hg_msg_IMUState const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_unitree_hg_msg_IMUState_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_unitree_hg_msg_IMUState_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_unitree_hg_msg_IMUState_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/**
 * @brief Decode exactly one complete unitree_hg/msg/IMUState record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] input Immutable complete canonical body, disjoint from value.
 * @param[in] length Exact input byte count; trailing bytes are refused.
 * @param[out] value Caller-owned complete record; unchanged on every refusal.
 * @return Status 0 on complete success, otherwise 22; no partial record is exposed.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static uint32_t roswasmc_bounded_2_unitree_hg_msg_IMUState_decode(void const* input, size_t length, roswasmc_bounded_2_unitree_hg_msg_IMUState* value)
{
    roswasmc_bounded_2_unitree_hg_msg_IMUState next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 54u || length > 54u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_unitree_hg_msg_IMUState_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_HANDSTATE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_HANDSTATE_0 != 0xda5fa33fUL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_HANDSTATE_1 != 0x8eaa2dd8UL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_HANDSTATE_2 != 0xd0fe8461UL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_HANDSTATE_3 != 0x970e4c0aUL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_HANDSTATE_4 != 0xb6017939UL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_HANDSTATE_5 != 0xab89149cUL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_HANDSTATE_6 != 0x6ed710caUL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_HANDSTATE_7 != 0x925031c9UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_HANDSTATE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_HANDSTATE_0 0xda5fa33fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_HANDSTATE_1 0x8eaa2dd8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_HANDSTATE_2 0xd0fe8461UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_HANDSTATE_3 0x970e4c0aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_HANDSTATE_4 0xb6017939UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_HANDSTATE_5 0xab89149cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_HANDSTATE_6 0x6ed710caUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_HANDSTATE_7 0x925031c9UL

/**
 * @brief Own a bounded canonical sequence or UTF-8 byte string inline.
 * @details The active size is 0 through 32. Unused capacity is never serialized or read. This Guest storage is
 * neither a native ROS allocation nor an authority token.
 */
typedef struct
{
    /**
     * @brief Number of initialized active elements.
     * @details Must be no greater than 32; decoders and encoders reject larger values without truncation.
     */
    uint32_t size;
    /**
     * @brief Caller-owned complete finite element capacity.
     * @details Only the initialized active size prefix is meaningful. Retain that prefix unchanged through
     * synchronous encoding; no native pointer or permission is stored.
     */
    roswasmc_bounded_2_unitree_hg_msg_MotorState data[32];
} roswasmc_bounded_2_unitree_hg_msg_HandState_motor_state_sequence;

/**
 * @brief Own a bounded canonical sequence or UTF-8 byte string inline.
 * @details The active size is 0 through 32. Unused capacity is never serialized or read. This Guest storage is
 * neither a native ROS allocation nor an authority token.
 */
typedef struct
{
    /**
     * @brief Number of initialized active elements.
     * @details Must be no greater than 32; decoders and encoders reject larger values without truncation.
     */
    uint32_t size;
    /**
     * @brief Caller-owned complete finite element capacity.
     * @details Only the initialized active size prefix is meaningful. Retain that prefix unchanged through
     * synchronous encoding; no native pointer or permission is stored.
     */
    roswasmc_bounded_2_unitree_hg_msg_PressSensorState data[32];
} roswasmc_bounded_2_unitree_hg_msg_HandState_press_sensor_state_sequence;

/**
 * @brief Complete ROS 2 unitree_hg/msg/HandState value.
 * @details All 9 declared fields are retained in source order. The canonical representation occupies 94..5118
 * bytes and is identified by UWVMROS1_ea3f597b4453ca352d3a973920d0b3b29639e555cec273f6c63fc5fe95c905f6.
 * @native Original selected identity: RIHS01_f8f161522deb4e58d5c1d679826c2a405b63b409db7e4ea9d17628f3029c4d2f.
 * Compilation of matching native traits is a separate qualification.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_2_unitree_hg_msg_HandState
{
    /** @brief Declared field motor_state; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_hg/msg/HandState.motor_state: unitree_hg/msg/MotorState; 0..32 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgHandState; share/platform/ros/rs/API-CONTRACT.md
     */
    roswasmc_bounded_2_unitree_hg_msg_HandState_motor_state_sequence motor_state;
    /** @brief Declared field press_sensor_state; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_hg/msg/HandState.press_sensor_state: unitree_hg/msg/PressSensorState; 0..32 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgHandState; share/platform/ros/rs/API-CONTRACT.md
     */
    roswasmc_bounded_2_unitree_hg_msg_HandState_press_sensor_state_sequence press_sensor_state;
    /** @brief Declared field imu_state; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_hg/msg/HandState.imu_state: unitree_hg/msg/IMUState.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgHandState; share/platform/ros/rs/API-CONTRACT.md
     */
    roswasmc_bounded_2_unitree_hg_msg_IMUState imu_state;
    /** @brief Declared field power_v; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_hg/msg/HandState.power_v: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgHandState; share/platform/ros/rs/API-CONTRACT.md
     */
    float power_v;
    /** @brief Declared field power_a; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_hg/msg/HandState.power_a: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgHandState; share/platform/ros/rs/API-CONTRACT.md
     */
    float power_a;
    /** @brief Declared field system_v; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_hg/msg/HandState.system_v: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgHandState; share/platform/ros/rs/API-CONTRACT.md
     */
    float system_v;
    /** @brief Declared field device_v; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_hg/msg/HandState.device_v: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgHandState; share/platform/ros/rs/API-CONTRACT.md
     */
    float device_v;
    /** @brief Declared field error; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_hg/msg/HandState.error: uint32; exactly 2 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgHandState; share/platform/ros/rs/API-CONTRACT.md
     */
    uint32_t error[2];
    /** @brief Declared field reserve; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_hg/msg/HandState.reserve: uint32; exactly 2 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgHandState; share/platform/ros/rs/API-CONTRACT.md
     */
    uint32_t reserve[2];
} roswasmc_bounded_2_unitree_hg_msg_HandState;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_HANDSTATE_MAX_WIRE_BYTES 5118u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_HANDSTATE_MIN_WIRE_BYTES 94u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_HANDSTATE_CODEC_IDENTITY "UWVMROS1_ea3f597b4453ca352d3a973920d0b3b29639e555cec273f6c63fc5fe95c905f6"

/**
 * @brief Validate every field of unitree_hg/msg/HandState.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static int roswasmc_bounded_2_unitree_hg_msg_HandState_valid(roswasmc_bounded_2_unitree_hg_msg_HandState const* value)
{
    if(!value)
    {
        return 0;
    }
    if(value->motor_state.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->motor_state.size; ++i)
        {
            if(!roswasmc_bounded_2_unitree_hg_msg_MotorState_valid(&value->motor_state.data[i]))
            {
                return 0;
            }
        }
    }
    if(value->press_sensor_state.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->press_sensor_state.size; ++i)
        {
            if(!roswasmc_bounded_2_unitree_hg_msg_PressSensorState_valid(&value->press_sensor_state.data[i]))
            {
                return 0;
            }
        }
    }
    if(!roswasmc_bounded_2_unitree_hg_msg_IMUState_valid(&value->imu_state))
    {
        return 0;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->power_v, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
        {
            return 0;
        }
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->power_a, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
        {
            return 0;
        }
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->system_v, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
        {
            return 0;
        }
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->device_v, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
        {
            return 0;
        }
    }
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
        }
    }
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
        }
    }
    return 1;
}

/**
 * @brief Measure the complete active canonical extent of unitree_hg/msg/HandState.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static size_t roswasmc_bounded_2_unitree_hg_msg_HandState_wire_size(roswasmc_bounded_2_unitree_hg_msg_HandState const* value)
{
    size_t n = 0;
    n += 4;
    if(value->motor_state.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->motor_state.size; ++i)
        {
            n += roswasmc_bounded_2_unitree_hg_msg_MotorState_wire_size(&value->motor_state.data[i]);
        }
    }
    n += 4;
    if(value->press_sensor_state.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->press_sensor_state.size; ++i)
        {
            n += roswasmc_bounded_2_unitree_hg_msg_PressSensorState_wire_size(&value->press_sensor_state.data[i]);
        }
    }
    n += roswasmc_bounded_2_unitree_hg_msg_IMUState_wire_size(&value->imu_state);
    n += 4;
    n += 4;
    n += 4;
    n += 4;
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            n += 4;
        }
    }
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            n += 4;
        }
    }
    return n;
}

/**
 * @brief Append all fields of unitree_hg/msg/HandState to an internal canonical buffer.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete prevalidated immutable record.
 * @param[out] p Sufficient exclusive output storage established by the public encoder.
 * @param[in,out] offset Exclusive initialized writer cursor.
 * @return No value; internal caller guarantees the measured capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static void
    roswasmc_bounded_2_unitree_hg_msg_HandState_write_fields(roswasmc_bounded_2_unitree_hg_msg_HandState const* value, unsigned char* p, size_t* offset)
{
    uwvm_bounded_put(p + *offset, value->motor_state.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->motor_state.size; ++i)
        {
            roswasmc_bounded_2_unitree_hg_msg_MotorState_write_fields(&value->motor_state.data[i], p, offset);
        }
    }
    uwvm_bounded_put(p + *offset, value->press_sensor_state.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->press_sensor_state.size; ++i)
        {
            roswasmc_bounded_2_unitree_hg_msg_PressSensorState_write_fields(&value->press_sensor_state.data[i], p, offset);
        }
    }
    roswasmc_bounded_2_unitree_hg_msg_IMUState_write_fields(&value->imu_state, p, offset);
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->power_v, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->power_a, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->system_v, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->device_v, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            uwvm_bounded_put(p + *offset, (uint64_t)value->error[i], 4);
            *offset += 4;
        }
    }
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            uwvm_bounded_put(p + *offset, (uint64_t)value->reserve[i], 4);
            *offset += 4;
        }
    }
}

/**
 * @brief Decode the full ordered field prefix of unitree_hg/msg/HandState.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] p Borrowed canonical bytes, stable through return.
 * @param[in] n Available input extent in bytes.
 * @param[in,out] offset Exclusive initialized reader cursor.
 * @param[out] value Private temporary record; discard it on failure.
 * @return Nonzero only after complete prefix validation; enclosing fields may remain unread.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static int roswasmc_bounded_2_unitree_hg_msg_HandState_read_fields(unsigned char const* p,
                                                                          size_t n,
                                                                          size_t* offset,
                                                                          roswasmc_bounded_2_unitree_hg_msg_HandState* value)
{
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->motor_state.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->motor_state.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->motor_state.size; ++i)
        {
            if(!roswasmc_bounded_2_unitree_hg_msg_MotorState_read_fields(p, n, offset, &value->motor_state.data[i]))
            {
                return 0;
            }
        }
    }
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    value->press_sensor_state.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->press_sensor_state.size > 32u)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < value->press_sensor_state.size; ++i)
        {
            if(!roswasmc_bounded_2_unitree_hg_msg_PressSensorState_read_fields(p, n, offset, &value->press_sensor_state.data[i]))
            {
                return 0;
            }
        }
    }
    if(!roswasmc_bounded_2_unitree_hg_msg_IMUState_read_fields(p, n, offset, &value->imu_state))
    {
        return 0;
    }
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->power_v, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->power_a, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->system_v, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->device_v, &bits, 4);
    }
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            if(*offset > n || n - *offset < 4)
            {
                return 0;
            }
            {
                uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
                uwvm_bounded_copy(&value->error[i], &bits, 4);
            }
            *offset += 4;
        }
    }
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            if(*offset > n || n - *offset < 4)
            {
                return 0;
            }
            {
                uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
                uwvm_bounded_copy(&value->reserve[i], &bits, 4);
            }
            *offset += 4;
        }
    }
    return roswasmc_bounded_2_unitree_hg_msg_HandState_valid(value);
}

/**
 * @brief Encode the complete unitree_hg/msg/HandState record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record.
 * @param[out] output Exclusive caller-owned byte storage, disjoint from value and length.
 * @param[in] capacity Available writable byte count.
 * @param[out] length Exact initialized byte count, written only on success.
 * @return Status 0 on success, 22 for invalid/overlapping values, or 90 for insufficient capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static uint32_t
    roswasmc_bounded_2_unitree_hg_msg_HandState_encode(roswasmc_bounded_2_unitree_hg_msg_HandState const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_unitree_hg_msg_HandState_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_unitree_hg_msg_HandState_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_unitree_hg_msg_HandState_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/**
 * @brief Decode exactly one complete unitree_hg/msg/HandState record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] input Immutable complete canonical body, disjoint from value.
 * @param[in] length Exact input byte count; trailing bytes are refused.
 * @param[out] value Caller-owned complete record; unchanged on every refusal.
 * @return Status 0 on complete success, otherwise 22; no partial record is exposed.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static uint32_t roswasmc_bounded_2_unitree_hg_msg_HandState_decode(void const* input, size_t length, roswasmc_bounded_2_unitree_hg_msg_HandState* value)
{
    roswasmc_bounded_2_unitree_hg_msg_HandState next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 94u || length > 5118u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_unitree_hg_msg_HandState_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_LOWCMD)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_LOWCMD_0 != 0xf8f4076aUL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_LOWCMD_1 != 0x14a24c90UL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_LOWCMD_2 != 0x2fbb8a5cUL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_LOWCMD_3 != 0xba8cf5f1UL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_LOWCMD_4 != 0x7bfde407UL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_LOWCMD_5 != 0x02ba68a3UL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_LOWCMD_6 != 0x96765e00UL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_LOWCMD_7 != 0x7d092c15UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_LOWCMD 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_LOWCMD_0 0xf8f4076aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_LOWCMD_1 0x14a24c90UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_LOWCMD_2 0x2fbb8a5cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_LOWCMD_3 0xba8cf5f1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_LOWCMD_4 0x7bfde407UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_LOWCMD_5 0x02ba68a3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_LOWCMD_6 0x96765e00UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_LOWCMD_7 0x7d092c15UL

/**
 * @brief Complete ROS 2 unitree_hg/msg/LowCmd value.
 * @details All 5 declared fields are retained in source order. The canonical representation occupies 897..897
 * bytes and is identified by UWVMROS1_8303ac6e2e3273251662d31daf966a11ced5b5ac10b93aa6253eebc56f4ec461.
 * @native Original selected identity: RIHS01_b0eec4778db3ad67ffade328b063bea700bd1558f3f359ea5e4c86e3c3f25bc5.
 * Compilation of matching native traits is a separate qualification.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_2_unitree_hg_msg_LowCmd
{
    /** @brief Declared field mode_pr; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_hg/msg/LowCmd.mode_pr: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgLowCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t mode_pr;
    /** @brief Declared field mode_machine; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_hg/msg/LowCmd.mode_machine: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgLowCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t mode_machine;
    /** @brief Declared field motor_cmd; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_hg/msg/LowCmd.motor_cmd: unitree_hg/msg/MotorCmd; exactly 35 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgLowCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    roswasmc_bounded_2_unitree_hg_msg_MotorCmd motor_cmd[35];
    /** @brief Declared field reserve; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_hg/msg/LowCmd.reserve: uint32; exactly 4 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgLowCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    uint32_t reserve[4];
    /** @brief Declared field crc; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_hg/msg/LowCmd.crc: uint32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgLowCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    uint32_t crc;
} roswasmc_bounded_2_unitree_hg_msg_LowCmd;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_LOWCMD_MAX_WIRE_BYTES 897u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_LOWCMD_MIN_WIRE_BYTES 897u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_LOWCMD_CODEC_IDENTITY "UWVMROS1_8303ac6e2e3273251662d31daf966a11ced5b5ac10b93aa6253eebc56f4ec461"

/**
 * @brief Validate every field of unitree_hg/msg/LowCmd.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static int roswasmc_bounded_2_unitree_hg_msg_LowCmd_valid(roswasmc_bounded_2_unitree_hg_msg_LowCmd const* value)
{
    if(!value)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < 35u; ++i)
        {
            if(!roswasmc_bounded_2_unitree_hg_msg_MotorCmd_valid(&value->motor_cmd[i]))
            {
                return 0;
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 4u; ++i)
        {
        }
    }
    return 1;
}

/**
 * @brief Measure the complete active canonical extent of unitree_hg/msg/LowCmd.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static size_t roswasmc_bounded_2_unitree_hg_msg_LowCmd_wire_size(roswasmc_bounded_2_unitree_hg_msg_LowCmd const* value)
{
    size_t n = 0;
    n += 1;
    n += 1;
    {
        size_t i;
        for(i = 0; i < 35u; ++i)
        {
            n += roswasmc_bounded_2_unitree_hg_msg_MotorCmd_wire_size(&value->motor_cmd[i]);
        }
    }
    {
        size_t i;
        for(i = 0; i < 4u; ++i)
        {
            n += 4;
        }
    }
    n += 4;
    return n;
}

/**
 * @brief Append all fields of unitree_hg/msg/LowCmd to an internal canonical buffer.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete prevalidated immutable record.
 * @param[out] p Sufficient exclusive output storage established by the public encoder.
 * @param[in,out] offset Exclusive initialized writer cursor.
 * @return No value; internal caller guarantees the measured capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static void
    roswasmc_bounded_2_unitree_hg_msg_LowCmd_write_fields(roswasmc_bounded_2_unitree_hg_msg_LowCmd const* value, unsigned char* p, size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->mode_pr, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->mode_machine, 1);
    *offset += 1;
    {
        size_t i;
        for(i = 0; i < 35u; ++i)
        {
            roswasmc_bounded_2_unitree_hg_msg_MotorCmd_write_fields(&value->motor_cmd[i], p, offset);
        }
    }
    {
        size_t i;
        for(i = 0; i < 4u; ++i)
        {
            uwvm_bounded_put(p + *offset, (uint64_t)value->reserve[i], 4);
            *offset += 4;
        }
    }
    uwvm_bounded_put(p + *offset, (uint64_t)value->crc, 4);
    *offset += 4;
}

/**
 * @brief Decode the full ordered field prefix of unitree_hg/msg/LowCmd.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] p Borrowed canonical bytes, stable through return.
 * @param[in] n Available input extent in bytes.
 * @param[in,out] offset Exclusive initialized reader cursor.
 * @param[out] value Private temporary record; discard it on failure.
 * @return Nonzero only after complete prefix validation; enclosing fields may remain unread.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static int
    roswasmc_bounded_2_unitree_hg_msg_LowCmd_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_2_unitree_hg_msg_LowCmd* value)
{
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->mode_pr, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->mode_machine, &bits, 1);
    }
    *offset += 1;
    {
        size_t i;
        for(i = 0; i < 35u; ++i)
        {
            if(!roswasmc_bounded_2_unitree_hg_msg_MotorCmd_read_fields(p, n, offset, &value->motor_cmd[i]))
            {
                return 0;
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 4u; ++i)
        {
            if(*offset > n || n - *offset < 4)
            {
                return 0;
            }
            {
                uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
                uwvm_bounded_copy(&value->reserve[i], &bits, 4);
            }
            *offset += 4;
        }
    }
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->crc, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_2_unitree_hg_msg_LowCmd_valid(value);
}

/**
 * @brief Encode the complete unitree_hg/msg/LowCmd record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record.
 * @param[out] output Exclusive caller-owned byte storage, disjoint from value and length.
 * @param[in] capacity Available writable byte count.
 * @param[out] length Exact initialized byte count, written only on success.
 * @return Status 0 on success, 22 for invalid/overlapping values, or 90 for insufficient capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static uint32_t
    roswasmc_bounded_2_unitree_hg_msg_LowCmd_encode(roswasmc_bounded_2_unitree_hg_msg_LowCmd const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_unitree_hg_msg_LowCmd_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_unitree_hg_msg_LowCmd_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_unitree_hg_msg_LowCmd_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/**
 * @brief Decode exactly one complete unitree_hg/msg/LowCmd record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] input Immutable complete canonical body, disjoint from value.
 * @param[in] length Exact input byte count; trailing bytes are refused.
 * @param[out] value Caller-owned complete record; unchanged on every refusal.
 * @return Status 0 on complete success, otherwise 22; no partial record is exposed.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static uint32_t roswasmc_bounded_2_unitree_hg_msg_LowCmd_decode(void const* input, size_t length, roswasmc_bounded_2_unitree_hg_msg_LowCmd* value)
{
    roswasmc_bounded_2_unitree_hg_msg_LowCmd next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 897u || length > 897u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_unitree_hg_msg_LowCmd_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_LOWSTATE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_LOWSTATE_0 != 0xae34d70aUL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_LOWSTATE_1 != 0xff1bee24UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_LOWSTATE_2 != 0xc756dbb3UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_LOWSTATE_3 != 0x9eee79ccUL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_LOWSTATE_4 != 0x0e8560f2UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_LOWSTATE_5 != 0xc13956e9UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_LOWSTATE_6 != 0xdc32d530UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_LOWSTATE_7 != 0x514171a4UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_LOWSTATE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_LOWSTATE_0 0xae34d70aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_LOWSTATE_1 0xff1bee24UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_LOWSTATE_2 0xc756dbb3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_LOWSTATE_3 0x9eee79ccUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_LOWSTATE_4 0x0e8560f2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_LOWSTATE_5 0xc13956e9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_LOWSTATE_6 0xdc32d530UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_LOWSTATE_7 0x514171a4UL

/**
 * @brief Complete ROS 2 unitree_hg/msg/LowState value.
 * @details All 9 declared fields are retained in source order. The canonical representation occupies 1983..1983
 * bytes and is identified by UWVMROS1_7eed2692672f536a476643f1d3a07affc8e5b3272663e3d282c199fff1c2fa1d.
 * @native Original selected identity: RIHS01_aee6c5bd4b4d2eeca854bf47e32e4e3d34c47c2cafa05c08b6b0fa4bc51c6b3a.
 * Compilation of matching native traits is a separate qualification.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_2_unitree_hg_msg_LowState
{
    /** @brief Declared field version; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_hg/msg/LowState.version: uint32; exactly 2 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgLowState; share/platform/ros/rs/API-CONTRACT.md
     */
    uint32_t version[2];
    /** @brief Declared field mode_pr; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_hg/msg/LowState.mode_pr: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgLowState; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t mode_pr;
    /** @brief Declared field mode_machine; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_hg/msg/LowState.mode_machine: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgLowState; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t mode_machine;
    /** @brief Declared field tick; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_hg/msg/LowState.tick: uint32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgLowState; share/platform/ros/rs/API-CONTRACT.md
     */
    uint32_t tick;
    /** @brief Declared field imu_state; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_hg/msg/LowState.imu_state: unitree_hg/msg/IMUState.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgLowState; share/platform/ros/rs/API-CONTRACT.md
     */
    roswasmc_bounded_2_unitree_hg_msg_IMUState imu_state;
    /** @brief Declared field motor_state; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_hg/msg/LowState.motor_state: unitree_hg/msg/MotorState; exactly 35 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgLowState; share/platform/ros/rs/API-CONTRACT.md
     */
    roswasmc_bounded_2_unitree_hg_msg_MotorState motor_state[35];
    /** @brief Declared field wireless_remote; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_hg/msg/LowState.wireless_remote: uint8; exactly 40 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgLowState; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t wireless_remote[40];
    /** @brief Declared field reserve; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_hg/msg/LowState.reserve: uint32; exactly 4 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgLowState; share/platform/ros/rs/API-CONTRACT.md
     */
    uint32_t reserve[4];
    /** @brief Declared field crc; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_hg/msg/LowState.crc: uint32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgLowState; share/platform/ros/rs/API-CONTRACT.md
     */
    uint32_t crc;
} roswasmc_bounded_2_unitree_hg_msg_LowState;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_LOWSTATE_MAX_WIRE_BYTES 1983u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_LOWSTATE_MIN_WIRE_BYTES 1983u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_LOWSTATE_CODEC_IDENTITY "UWVMROS1_7eed2692672f536a476643f1d3a07affc8e5b3272663e3d282c199fff1c2fa1d"

/**
 * @brief Validate every field of unitree_hg/msg/LowState.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static int roswasmc_bounded_2_unitree_hg_msg_LowState_valid(roswasmc_bounded_2_unitree_hg_msg_LowState const* value)
{
    if(!value)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
        }
    }
    if(!roswasmc_bounded_2_unitree_hg_msg_IMUState_valid(&value->imu_state))
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < 35u; ++i)
        {
            if(!roswasmc_bounded_2_unitree_hg_msg_MotorState_valid(&value->motor_state[i]))
            {
                return 0;
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 40u; ++i)
        {
        }
    }
    {
        size_t i;
        for(i = 0; i < 4u; ++i)
        {
        }
    }
    return 1;
}

/**
 * @brief Measure the complete active canonical extent of unitree_hg/msg/LowState.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static size_t roswasmc_bounded_2_unitree_hg_msg_LowState_wire_size(roswasmc_bounded_2_unitree_hg_msg_LowState const* value)
{
    size_t n = 0;
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            n += 4;
        }
    }
    n += 1;
    n += 1;
    n += 4;
    n += roswasmc_bounded_2_unitree_hg_msg_IMUState_wire_size(&value->imu_state);
    {
        size_t i;
        for(i = 0; i < 35u; ++i)
        {
            n += roswasmc_bounded_2_unitree_hg_msg_MotorState_wire_size(&value->motor_state[i]);
        }
    }
    {
        size_t i;
        for(i = 0; i < 40u; ++i)
        {
            n += 1;
        }
    }
    {
        size_t i;
        for(i = 0; i < 4u; ++i)
        {
            n += 4;
        }
    }
    n += 4;
    return n;
}

/**
 * @brief Append all fields of unitree_hg/msg/LowState to an internal canonical buffer.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete prevalidated immutable record.
 * @param[out] p Sufficient exclusive output storage established by the public encoder.
 * @param[in,out] offset Exclusive initialized writer cursor.
 * @return No value; internal caller guarantees the measured capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static void
    roswasmc_bounded_2_unitree_hg_msg_LowState_write_fields(roswasmc_bounded_2_unitree_hg_msg_LowState const* value, unsigned char* p, size_t* offset)
{
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            uwvm_bounded_put(p + *offset, (uint64_t)value->version[i], 4);
            *offset += 4;
        }
    }
    uwvm_bounded_put(p + *offset, (uint64_t)value->mode_pr, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->mode_machine, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->tick, 4);
    *offset += 4;
    roswasmc_bounded_2_unitree_hg_msg_IMUState_write_fields(&value->imu_state, p, offset);
    {
        size_t i;
        for(i = 0; i < 35u; ++i)
        {
            roswasmc_bounded_2_unitree_hg_msg_MotorState_write_fields(&value->motor_state[i], p, offset);
        }
    }
    {
        size_t i;
        for(i = 0; i < 40u; ++i)
        {
            uwvm_bounded_put(p + *offset, (uint64_t)value->wireless_remote[i], 1);
            *offset += 1;
        }
    }
    {
        size_t i;
        for(i = 0; i < 4u; ++i)
        {
            uwvm_bounded_put(p + *offset, (uint64_t)value->reserve[i], 4);
            *offset += 4;
        }
    }
    uwvm_bounded_put(p + *offset, (uint64_t)value->crc, 4);
    *offset += 4;
}

/**
 * @brief Decode the full ordered field prefix of unitree_hg/msg/LowState.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] p Borrowed canonical bytes, stable through return.
 * @param[in] n Available input extent in bytes.
 * @param[in,out] offset Exclusive initialized reader cursor.
 * @param[out] value Private temporary record; discard it on failure.
 * @return Nonzero only after complete prefix validation; enclosing fields may remain unread.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static int
    roswasmc_bounded_2_unitree_hg_msg_LowState_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_2_unitree_hg_msg_LowState* value)
{
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            if(*offset > n || n - *offset < 4)
            {
                return 0;
            }
            {
                uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
                uwvm_bounded_copy(&value->version[i], &bits, 4);
            }
            *offset += 4;
        }
    }
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->mode_pr, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->mode_machine, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->tick, &bits, 4);
    }
    *offset += 4;
    if(!roswasmc_bounded_2_unitree_hg_msg_IMUState_read_fields(p, n, offset, &value->imu_state))
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < 35u; ++i)
        {
            if(!roswasmc_bounded_2_unitree_hg_msg_MotorState_read_fields(p, n, offset, &value->motor_state[i]))
            {
                return 0;
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 40u; ++i)
        {
            if(*offset > n || n - *offset < 1)
            {
                return 0;
            }
            {
                uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
                uwvm_bounded_copy(&value->wireless_remote[i], &bits, 1);
            }
            *offset += 1;
        }
    }
    {
        size_t i;
        for(i = 0; i < 4u; ++i)
        {
            if(*offset > n || n - *offset < 4)
            {
                return 0;
            }
            {
                uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
                uwvm_bounded_copy(&value->reserve[i], &bits, 4);
            }
            *offset += 4;
        }
    }
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->crc, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_2_unitree_hg_msg_LowState_valid(value);
}

/**
 * @brief Encode the complete unitree_hg/msg/LowState record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record.
 * @param[out] output Exclusive caller-owned byte storage, disjoint from value and length.
 * @param[in] capacity Available writable byte count.
 * @param[out] length Exact initialized byte count, written only on success.
 * @return Status 0 on success, 22 for invalid/overlapping values, or 90 for insufficient capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static uint32_t
    roswasmc_bounded_2_unitree_hg_msg_LowState_encode(roswasmc_bounded_2_unitree_hg_msg_LowState const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_unitree_hg_msg_LowState_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_unitree_hg_msg_LowState_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_unitree_hg_msg_LowState_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/**
 * @brief Decode exactly one complete unitree_hg/msg/LowState record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] input Immutable complete canonical body, disjoint from value.
 * @param[in] length Exact input byte count; trailing bytes are refused.
 * @param[out] value Caller-owned complete record; unchanged on every refusal.
 * @return Status 0 on complete success, otherwise 22; no partial record is exposed.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static uint32_t roswasmc_bounded_2_unitree_hg_msg_LowState_decode(void const* input, size_t length, roswasmc_bounded_2_unitree_hg_msg_LowState* value)
{
    roswasmc_bounded_2_unitree_hg_msg_LowState next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 1983u || length > 1983u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_unitree_hg_msg_LowState_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_MAINBOARDSTATE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_MAINBOARDSTATE_0 != 0x4c029eb1UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_MAINBOARDSTATE_1 != 0x0951036cUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_MAINBOARDSTATE_2 != 0xf52ea30eUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_MAINBOARDSTATE_3 != 0xbb12ef6eUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_MAINBOARDSTATE_4 != 0x9028cebaUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_MAINBOARDSTATE_5 != 0x014432ecUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_MAINBOARDSTATE_6 != 0x73e9834eUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_MAINBOARDSTATE_7 != 0x2359de91UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_MAINBOARDSTATE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_MAINBOARDSTATE_0 0x4c029eb1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_MAINBOARDSTATE_1 0x0951036cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_MAINBOARDSTATE_2 0xf52ea30eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_MAINBOARDSTATE_3 0xbb12ef6eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_MAINBOARDSTATE_4 0x9028cebaUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_MAINBOARDSTATE_5 0x014432ecUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_MAINBOARDSTATE_6 0x73e9834eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_MAINBOARDSTATE_7 0x2359de91UL

/**
 * @brief Complete ROS 2 unitree_hg/msg/MainBoardState value.
 * @details All 4 declared fields are retained in source order. The canonical representation occupies 72..72
 * bytes and is identified by UWVMROS1_2a27a979aadc7bef33a757e169680faa632936c2634ee787f0c9f25cb08535a6.
 * @native Original selected identity: RIHS01_1420200fd0eedd8dbabb47d0ea2c3bdb38a7ee47c682c84301326db51baa5450.
 * Compilation of matching native traits is a separate qualification.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_2_unitree_hg_msg_MainBoardState
{
    /** @brief Declared field fan_state; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_hg/msg/MainBoardState.fan_state: uint16; exactly 6 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgMainBoardState; share/platform/ros/rs/API-CONTRACT.md
     */
    uint16_t fan_state[6];
    /** @brief Declared field temperature; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_hg/msg/MainBoardState.temperature: int16; exactly 6 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgMainBoardState; share/platform/ros/rs/API-CONTRACT.md
     */
    int16_t temperature[6];
    /** @brief Declared field value; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_hg/msg/MainBoardState.value: float32; exactly 6 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgMainBoardState; share/platform/ros/rs/API-CONTRACT.md
     */
    float value[6];
    /** @brief Declared field state; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_hg/msg/MainBoardState.state: uint32; exactly 6 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros2Unitree_hgMsgMainBoardState; share/platform/ros/rs/API-CONTRACT.md
     */
    uint32_t state[6];
} roswasmc_bounded_2_unitree_hg_msg_MainBoardState;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_MAINBOARDSTATE_MAX_WIRE_BYTES 72u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_MAINBOARDSTATE_MIN_WIRE_BYTES 72u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_MAINBOARDSTATE_CODEC_IDENTITY "UWVMROS1_2a27a979aadc7bef33a757e169680faa632936c2634ee787f0c9f25cb08535a6"

/**
 * @brief Validate every field of unitree_hg/msg/MainBoardState.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static int roswasmc_bounded_2_unitree_hg_msg_MainBoardState_valid(roswasmc_bounded_2_unitree_hg_msg_MainBoardState const* value)
{
    if(!value)
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < 6u; ++i)
        {
        }
    }
    {
        size_t i;
        for(i = 0; i < 6u; ++i)
        {
        }
    }
    {
        size_t i;
        for(i = 0; i < 6u; ++i)
        {
            {
                uint32_t bits;
                uwvm_bounded_copy(&bits, &value->value[i], 4);
                if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
                {
                    return 0;
                }
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 6u; ++i)
        {
        }
    }
    return 1;
}

/**
 * @brief Measure the complete active canonical extent of unitree_hg/msg/MainBoardState.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static size_t roswasmc_bounded_2_unitree_hg_msg_MainBoardState_wire_size(roswasmc_bounded_2_unitree_hg_msg_MainBoardState const* value)
{
    size_t n = 0;
    {
        size_t i;
        for(i = 0; i < 6u; ++i)
        {
            n += 2;
        }
    }
    {
        size_t i;
        for(i = 0; i < 6u; ++i)
        {
            n += 2;
        }
    }
    {
        size_t i;
        for(i = 0; i < 6u; ++i)
        {
            n += 4;
        }
    }
    {
        size_t i;
        for(i = 0; i < 6u; ++i)
        {
            n += 4;
        }
    }
    return n;
}

/**
 * @brief Append all fields of unitree_hg/msg/MainBoardState to an internal canonical buffer.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete prevalidated immutable record.
 * @param[out] p Sufficient exclusive output storage established by the public encoder.
 * @param[in,out] offset Exclusive initialized writer cursor.
 * @return No value; internal caller guarantees the measured capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static void roswasmc_bounded_2_unitree_hg_msg_MainBoardState_write_fields(roswasmc_bounded_2_unitree_hg_msg_MainBoardState const* value,
                                                                                 unsigned char* p,
                                                                                 size_t* offset)
{
    {
        size_t i;
        for(i = 0; i < 6u; ++i)
        {
            uwvm_bounded_put(p + *offset, (uint64_t)value->fan_state[i], 2);
            *offset += 2;
        }
    }
    {
        size_t i;
        for(i = 0; i < 6u; ++i)
        {
            uwvm_bounded_put(p + *offset, (uint64_t)value->temperature[i], 2);
            *offset += 2;
        }
    }
    {
        size_t i;
        for(i = 0; i < 6u; ++i)
        {
            {
                uint32_t bits;
                uwvm_bounded_copy(&bits, &value->value[i], 4);
                uwvm_bounded_put(p + *offset, bits, 4);
                *offset += 4;
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 6u; ++i)
        {
            uwvm_bounded_put(p + *offset, (uint64_t)value->state[i], 4);
            *offset += 4;
        }
    }
}

/**
 * @brief Decode the full ordered field prefix of unitree_hg/msg/MainBoardState.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] p Borrowed canonical bytes, stable through return.
 * @param[in] n Available input extent in bytes.
 * @param[in,out] offset Exclusive initialized reader cursor.
 * @param[out] value Private temporary record; discard it on failure.
 * @return Nonzero only after complete prefix validation; enclosing fields may remain unread.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static int roswasmc_bounded_2_unitree_hg_msg_MainBoardState_read_fields(unsigned char const* p,
                                                                               size_t n,
                                                                               size_t* offset,
                                                                               roswasmc_bounded_2_unitree_hg_msg_MainBoardState* value)
{
    {
        size_t i;
        for(i = 0; i < 6u; ++i)
        {
            if(*offset > n || n - *offset < 2)
            {
                return 0;
            }
            {
                uint16_t bits = (uint16_t)uwvm_bounded_get(p + *offset, 2);
                uwvm_bounded_copy(&value->fan_state[i], &bits, 2);
            }
            *offset += 2;
        }
    }
    {
        size_t i;
        for(i = 0; i < 6u; ++i)
        {
            if(*offset > n || n - *offset < 2)
            {
                return 0;
            }
            {
                uint16_t bits = (uint16_t)uwvm_bounded_get(p + *offset, 2);
                uwvm_bounded_copy(&value->temperature[i], &bits, 2);
            }
            *offset += 2;
        }
    }
    {
        size_t i;
        for(i = 0; i < 6u; ++i)
        {
            if(*offset > n || n - *offset < 4)
            {
                return 0;
            }
            {
                uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
                uwvm_bounded_copy(&value->value[i], &bits, 4);
            }
            *offset += 4;
        }
    }
    {
        size_t i;
        for(i = 0; i < 6u; ++i)
        {
            if(*offset > n || n - *offset < 4)
            {
                return 0;
            }
            {
                uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
                uwvm_bounded_copy(&value->state[i], &bits, 4);
            }
            *offset += 4;
        }
    }
    return roswasmc_bounded_2_unitree_hg_msg_MainBoardState_valid(value);
}

/**
 * @brief Encode the complete unitree_hg/msg/MainBoardState record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record.
 * @param[out] output Exclusive caller-owned byte storage, disjoint from value and length.
 * @param[in] capacity Available writable byte count.
 * @param[out] length Exact initialized byte count, written only on success.
 * @return Status 0 on success, 22 for invalid/overlapping values, or 90 for insufficient capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static uint32_t roswasmc_bounded_2_unitree_hg_msg_MainBoardState_encode(roswasmc_bounded_2_unitree_hg_msg_MainBoardState const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_unitree_hg_msg_MainBoardState_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_2_unitree_hg_msg_MainBoardState_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_2_unitree_hg_msg_MainBoardState_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/**
 * @brief Decode exactly one complete unitree_hg/msg/MainBoardState record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] input Immutable complete canonical body, disjoint from value.
 * @param[in] length Exact input byte count; trailing bytes are refused.
 * @param[out] value Caller-owned complete record; unchanged on every refusal.
 * @return Status 0 on complete success, otherwise 22; no partial record is exposed.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static uint32_t
    roswasmc_bounded_2_unitree_hg_msg_MainBoardState_decode(void const* input, size_t length, roswasmc_bounded_2_unitree_hg_msg_MainBoardState* value)
{
    roswasmc_bounded_2_unitree_hg_msg_MainBoardState next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 72u || length > 72u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_2_unitree_hg_msg_MainBoardState_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#undef UWVM_BOUNDED_ASSERT
#endif
