/**
 * @file bounded_records.h
 * @brief Preserve every complete selected canonical Unitree record inline.
 * @details Every dynamic field has finite caller-owned capacity. Encoding validates and measures before output.
 * Decoding commits one complete temporary only after validation; partial records and overlapping buffers are
 * refused.
 */

#ifndef UWVM_ROS_BOUNDED_RECORDS_5BF56906F21E3E06C4EAB03290B11EBF6CFB0E515F7DF2C63181A2DF60037394
#define UWVM_ROS_BOUNDED_RECORDS_5BF56906F21E3E06C4EAB03290B11EBF6CFB0E515F7DF2C63181A2DF60037394
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
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_BMSSTATE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_BMSSTATE_0 != 0x7075cbbeUL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_BMSSTATE_1 != 0x168b4f34UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_BMSSTATE_2 != 0x592676bbUL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_BMSSTATE_3 != 0x34da7f01UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_BMSSTATE_4 != 0xf0f7d4b7UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_BMSSTATE_5 != 0xe4d764bbUL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_BMSSTATE_6 != 0xebf1db56UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_BMSSTATE_7 != 0x6b40cf3eUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_BMSSTATE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_BMSSTATE_0 0x7075cbbeUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_BMSSTATE_1 0x168b4f34UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_BMSSTATE_2 0x592676bbUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_BMSSTATE_3 0x34da7f01UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_BMSSTATE_4 0xf0f7d4b7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_BMSSTATE_5 0xe4d764bbUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_BMSSTATE_6 0xebf1db56UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_BMSSTATE_7 0x6b40cf3eUL

/**
 * @brief Complete ROS 1 unitree_legged_msgs/BmsState value.
 * @details All 9 declared fields are retained in source order. The canonical representation occupies 34..34
 * bytes and is identified by UWVMROS1_ef0f93501f54d0ff760039d86bd1ba1739cb0c888b3a873611679484ccec094a.
 * @native Original selected identity: 8e007c660c590388bca7c2464d80df54. Compilation of matching native traits is
 * a separate qualification.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_1_unitree_legged_msgs_BmsState
{
    /** @brief Declared field version_h; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/BmsState.version_h: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsBmsState; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t version_h;
    /** @brief Declared field version_l; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/BmsState.version_l: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsBmsState; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t version_l;
    /** @brief Declared field bms_status; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/BmsState.bms_status: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsBmsState; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t bms_status;
    /** @brief Declared field SOC; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/BmsState.SOC: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsBmsState; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t SOC;
    /** @brief Declared field current; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/BmsState.current: int32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsBmsState; share/platform/ros/rs/API-CONTRACT.md
     */
    int32_t current;
    /** @brief Declared field cycle; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/BmsState.cycle: uint16.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsBmsState; share/platform/ros/rs/API-CONTRACT.md
     */
    uint16_t cycle;
    /** @brief Declared field BQ_NTC; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/BmsState.BQ_NTC: int8; exactly 2 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsBmsState; share/platform/ros/rs/API-CONTRACT.md
     */
    int8_t BQ_NTC[2];
    /** @brief Declared field MCU_NTC; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/BmsState.MCU_NTC: int8; exactly 2 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsBmsState; share/platform/ros/rs/API-CONTRACT.md
     */
    int8_t MCU_NTC[2];
    /** @brief Declared field cell_vol; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/BmsState.cell_vol: uint16; exactly 10 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsBmsState; share/platform/ros/rs/API-CONTRACT.md
     */
    uint16_t cell_vol[10];
} roswasmc_bounded_1_unitree_legged_msgs_BmsState;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_BMSSTATE_MAX_WIRE_BYTES 34u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_BMSSTATE_MIN_WIRE_BYTES 34u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_BMSSTATE_CODEC_IDENTITY "UWVMROS1_ef0f93501f54d0ff760039d86bd1ba1739cb0c888b3a873611679484ccec094a"

/**
 * @brief Validate every field of unitree_legged_msgs/BmsState.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static int roswasmc_bounded_1_unitree_legged_msgs_BmsState_valid(roswasmc_bounded_1_unitree_legged_msgs_BmsState const* value)
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
        for(i = 0; i < 10u; ++i)
        {
        }
    }
    return 1;
}

/**
 * @brief Measure the complete active canonical extent of unitree_legged_msgs/BmsState.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static size_t roswasmc_bounded_1_unitree_legged_msgs_BmsState_wire_size(roswasmc_bounded_1_unitree_legged_msgs_BmsState const* value)
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
        for(i = 0; i < 10u; ++i)
        {
            n += 2;
        }
    }
    return n;
}

/**
 * @brief Append all fields of unitree_legged_msgs/BmsState to an internal canonical buffer.
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
    roswasmc_bounded_1_unitree_legged_msgs_BmsState_write_fields(roswasmc_bounded_1_unitree_legged_msgs_BmsState const* value, unsigned char* p, size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->version_h, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->version_l, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->bms_status, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->SOC, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->current, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, (uint64_t)value->cycle, 2);
    *offset += 2;
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            uwvm_bounded_put(p + *offset, (uint64_t)value->BQ_NTC[i], 1);
            *offset += 1;
        }
    }
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            uwvm_bounded_put(p + *offset, (uint64_t)value->MCU_NTC[i], 1);
            *offset += 1;
        }
    }
    {
        size_t i;
        for(i = 0; i < 10u; ++i)
        {
            uwvm_bounded_put(p + *offset, (uint64_t)value->cell_vol[i], 2);
            *offset += 2;
        }
    }
}

/**
 * @brief Decode the full ordered field prefix of unitree_legged_msgs/BmsState.
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
inline static int roswasmc_bounded_1_unitree_legged_msgs_BmsState_read_fields(unsigned char const* p,
                                                                              size_t n,
                                                                              size_t* offset,
                                                                              roswasmc_bounded_1_unitree_legged_msgs_BmsState* value)
{
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->version_h, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->version_l, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->bms_status, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->SOC, &bits, 1);
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
                uwvm_bounded_copy(&value->BQ_NTC[i], &bits, 1);
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
                uwvm_bounded_copy(&value->MCU_NTC[i], &bits, 1);
            }
            *offset += 1;
        }
    }
    {
        size_t i;
        for(i = 0; i < 10u; ++i)
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
    return roswasmc_bounded_1_unitree_legged_msgs_BmsState_valid(value);
}

/**
 * @brief Encode the complete unitree_legged_msgs/BmsState record transactionally.
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
inline static uint32_t roswasmc_bounded_1_unitree_legged_msgs_BmsState_encode(roswasmc_bounded_1_unitree_legged_msgs_BmsState const* value,
                                                                              void* output,
                                                                              size_t capacity,
                                                                              size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_unitree_legged_msgs_BmsState_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_1_unitree_legged_msgs_BmsState_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_1_unitree_legged_msgs_BmsState_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/**
 * @brief Decode exactly one complete unitree_legged_msgs/BmsState record transactionally.
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
    roswasmc_bounded_1_unitree_legged_msgs_BmsState_decode(void const* input, size_t length, roswasmc_bounded_1_unitree_legged_msgs_BmsState* value)
{
    roswasmc_bounded_1_unitree_legged_msgs_BmsState next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 34u || length > 34u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_1_unitree_legged_msgs_BmsState_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_CARTESIAN)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_CARTESIAN_0 != 0x3c08c473UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_CARTESIAN_1 != 0x833d94b9UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_CARTESIAN_2 != 0x068299b5UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_CARTESIAN_3 != 0x6aa8f387UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_CARTESIAN_4 != 0x4a84d8b2UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_CARTESIAN_5 != 0xd2cb7349UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_CARTESIAN_6 != 0x08952b92UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_CARTESIAN_7 != 0x88d69568UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_CARTESIAN 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_CARTESIAN_0 0x3c08c473UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_CARTESIAN_1 0x833d94b9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_CARTESIAN_2 0x068299b5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_CARTESIAN_3 0x6aa8f387UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_CARTESIAN_4 0x4a84d8b2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_CARTESIAN_5 0xd2cb7349UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_CARTESIAN_6 0x08952b92UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_CARTESIAN_7 0x88d69568UL

/**
 * @brief Complete ROS 1 unitree_legged_msgs/Cartesian value.
 * @details All 3 declared fields are retained in source order. The canonical representation occupies 12..12
 * bytes and is identified by UWVMROS1_43c7c62ba2a689751a0a15e326c5c9690a9b1f166b6726a0f803b98d2b3fa722.
 * @native Original selected identity: cc153912f1453b708d221682bc23d9ac. Compilation of matching native traits is
 * a separate qualification.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_1_unitree_legged_msgs_Cartesian
{
    /** @brief Declared field x; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/Cartesian.x: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsCartesian; share/platform/ros/rs/API-CONTRACT.md
     */
    float x;
    /** @brief Declared field y; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/Cartesian.y: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsCartesian; share/platform/ros/rs/API-CONTRACT.md
     */
    float y;
    /** @brief Declared field z; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/Cartesian.z: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsCartesian; share/platform/ros/rs/API-CONTRACT.md
     */
    float z;
} roswasmc_bounded_1_unitree_legged_msgs_Cartesian;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_CARTESIAN_MAX_WIRE_BYTES 12u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_CARTESIAN_MIN_WIRE_BYTES 12u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_CARTESIAN_CODEC_IDENTITY "UWVMROS1_43c7c62ba2a689751a0a15e326c5c9690a9b1f166b6726a0f803b98d2b3fa722"

/**
 * @brief Validate every field of unitree_legged_msgs/Cartesian.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static int roswasmc_bounded_1_unitree_legged_msgs_Cartesian_valid(roswasmc_bounded_1_unitree_legged_msgs_Cartesian const* value)
{
    if(!value)
    {
        return 0;
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
        uwvm_bounded_copy(&bits, &value->z, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
        {
            return 0;
        }
    }
    return 1;
}

/**
 * @brief Measure the complete active canonical extent of unitree_legged_msgs/Cartesian.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static size_t roswasmc_bounded_1_unitree_legged_msgs_Cartesian_wire_size(roswasmc_bounded_1_unitree_legged_msgs_Cartesian const* value)
{
    size_t n = 0;
    n += 4;
    n += 4;
    n += 4;
    return n;
}

/**
 * @brief Append all fields of unitree_legged_msgs/Cartesian to an internal canonical buffer.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete prevalidated immutable record.
 * @param[out] p Sufficient exclusive output storage established by the public encoder.
 * @param[in,out] offset Exclusive initialized writer cursor.
 * @return No value; internal caller guarantees the measured capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static void roswasmc_bounded_1_unitree_legged_msgs_Cartesian_write_fields(roswasmc_bounded_1_unitree_legged_msgs_Cartesian const* value,
                                                                                 unsigned char* p,
                                                                                 size_t* offset)
{
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
        uwvm_bounded_copy(&bits, &value->z, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
}

/**
 * @brief Decode the full ordered field prefix of unitree_legged_msgs/Cartesian.
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
inline static int roswasmc_bounded_1_unitree_legged_msgs_Cartesian_read_fields(unsigned char const* p,
                                                                               size_t n,
                                                                               size_t* offset,
                                                                               roswasmc_bounded_1_unitree_legged_msgs_Cartesian* value)
{
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
        uwvm_bounded_copy(&value->z, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_1_unitree_legged_msgs_Cartesian_valid(value);
}

/**
 * @brief Encode the complete unitree_legged_msgs/Cartesian record transactionally.
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
inline static uint32_t roswasmc_bounded_1_unitree_legged_msgs_Cartesian_encode(roswasmc_bounded_1_unitree_legged_msgs_Cartesian const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_unitree_legged_msgs_Cartesian_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_1_unitree_legged_msgs_Cartesian_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_1_unitree_legged_msgs_Cartesian_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/**
 * @brief Decode exactly one complete unitree_legged_msgs/Cartesian record transactionally.
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
    roswasmc_bounded_1_unitree_legged_msgs_Cartesian_decode(void const* input, size_t length, roswasmc_bounded_1_unitree_legged_msgs_Cartesian* value)
{
    roswasmc_bounded_1_unitree_legged_msgs_Cartesian next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 12u || length > 12u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_1_unitree_legged_msgs_Cartesian_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_IMU)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_IMU_0 != 0x693ca401UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_IMU_1 != 0x49e11254UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_IMU_2 != 0x02e9af61UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_IMU_3 != 0xe35f68e2UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_IMU_4 != 0x3e808be2UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_IMU_5 != 0xae5e51afUL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_IMU_6 != 0x68f97dbcUL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_IMU_7 != 0x1ba654ccUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_IMU 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_IMU_0 0x693ca401UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_IMU_1 0x49e11254UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_IMU_2 0x02e9af61UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_IMU_3 0xe35f68e2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_IMU_4 0x3e808be2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_IMU_5 0xae5e51afUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_IMU_6 0x68f97dbcUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_IMU_7 0x1ba654ccUL

/**
 * @brief Complete ROS 1 unitree_legged_msgs/IMU value.
 * @details All 5 declared fields are retained in source order. The canonical representation occupies 53..53
 * bytes and is identified by UWVMROS1_29d9ec99e676fe8747665da588b78c8ab77a3197e281ba892ab389d2d81fa276.
 * @native Original selected identity: c2bcd83820da00fff261b67d6490da58. Compilation of matching native traits is
 * a separate qualification.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_1_unitree_legged_msgs_IMU
{
    /** @brief Declared field quaternion; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/IMU.quaternion: float32; exactly 4 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsIMU; share/platform/ros/rs/API-CONTRACT.md
     */
    float quaternion[4];
    /** @brief Declared field gyroscope; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/IMU.gyroscope: float32; exactly 3 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsIMU; share/platform/ros/rs/API-CONTRACT.md
     */
    float gyroscope[3];
    /** @brief Declared field accelerometer; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/IMU.accelerometer: float32; exactly 3 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsIMU; share/platform/ros/rs/API-CONTRACT.md
     */
    float accelerometer[3];
    /** @brief Declared field rpy; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/IMU.rpy: float32; exactly 3 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsIMU; share/platform/ros/rs/API-CONTRACT.md
     */
    float rpy[3];
    /** @brief Declared field temperature; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/IMU.temperature: int8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsIMU; share/platform/ros/rs/API-CONTRACT.md
     */
    int8_t temperature;
} roswasmc_bounded_1_unitree_legged_msgs_IMU;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_IMU_MAX_WIRE_BYTES 53u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_IMU_MIN_WIRE_BYTES 53u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_IMU_CODEC_IDENTITY "UWVMROS1_29d9ec99e676fe8747665da588b78c8ab77a3197e281ba892ab389d2d81fa276"

/**
 * @brief Validate every field of unitree_legged_msgs/IMU.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static int roswasmc_bounded_1_unitree_legged_msgs_IMU_valid(roswasmc_bounded_1_unitree_legged_msgs_IMU const* value)
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
 * @brief Measure the complete active canonical extent of unitree_legged_msgs/IMU.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static size_t roswasmc_bounded_1_unitree_legged_msgs_IMU_wire_size(roswasmc_bounded_1_unitree_legged_msgs_IMU const* value)
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
 * @brief Append all fields of unitree_legged_msgs/IMU to an internal canonical buffer.
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
    roswasmc_bounded_1_unitree_legged_msgs_IMU_write_fields(roswasmc_bounded_1_unitree_legged_msgs_IMU const* value, unsigned char* p, size_t* offset)
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
 * @brief Decode the full ordered field prefix of unitree_legged_msgs/IMU.
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
    roswasmc_bounded_1_unitree_legged_msgs_IMU_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_1_unitree_legged_msgs_IMU* value)
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
    return roswasmc_bounded_1_unitree_legged_msgs_IMU_valid(value);
}

/**
 * @brief Encode the complete unitree_legged_msgs/IMU record transactionally.
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
    roswasmc_bounded_1_unitree_legged_msgs_IMU_encode(roswasmc_bounded_1_unitree_legged_msgs_IMU const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_unitree_legged_msgs_IMU_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_1_unitree_legged_msgs_IMU_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_1_unitree_legged_msgs_IMU_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/**
 * @brief Decode exactly one complete unitree_legged_msgs/IMU record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] input Immutable complete canonical body, disjoint from value.
 * @param[in] length Exact input byte count; trailing bytes are refused.
 * @param[out] value Caller-owned complete record; unchanged on every refusal.
 * @return Status 0 on complete success, otherwise 22; no partial record is exposed.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static uint32_t roswasmc_bounded_1_unitree_legged_msgs_IMU_decode(void const* input, size_t length, roswasmc_bounded_1_unitree_legged_msgs_IMU* value)
{
    roswasmc_bounded_1_unitree_legged_msgs_IMU next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 53u || length > 53u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_1_unitree_legged_msgs_IMU_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_MOTORSTATE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_MOTORSTATE_0 != 0x2c734e68UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_MOTORSTATE_1 != 0x9288b899UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_MOTORSTATE_2 != 0x6d9cfca5UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_MOTORSTATE_3 != 0x4be82803UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_MOTORSTATE_4 != 0xefd36b59UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_MOTORSTATE_5 != 0x384132daUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_MOTORSTATE_6 != 0xec22946eUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_MOTORSTATE_7 != 0xc05a3294UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_MOTORSTATE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_MOTORSTATE_0 0x2c734e68UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_MOTORSTATE_1 0x9288b899UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_MOTORSTATE_2 0x6d9cfca5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_MOTORSTATE_3 0x4be82803UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_MOTORSTATE_4 0xefd36b59UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_MOTORSTATE_5 0x384132daUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_MOTORSTATE_6 0xec22946eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_MOTORSTATE_7 0xc05a3294UL

/**
 * @brief Complete ROS 1 unitree_legged_msgs/MotorState value.
 * @details All 10 declared fields are retained in source order. The canonical representation occupies 38..38
 * bytes and is identified by UWVMROS1_be540cb22db5f08b6b9a8082777c76244e80f3148e9cfd63f510e4b2acdc0abf.
 * @native Original selected identity: 94c55ee3b7852be2bd437b20ce12a254. Compilation of matching native traits is
 * a separate qualification.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_1_unitree_legged_msgs_MotorState
{
    /** @brief Declared field mode; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/MotorState.mode: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsMotorState; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t mode;
    /** @brief Declared field q; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/MotorState.q: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsMotorState; share/platform/ros/rs/API-CONTRACT.md
     */
    float q;
    /** @brief Declared field dq; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/MotorState.dq: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsMotorState; share/platform/ros/rs/API-CONTRACT.md
     */
    float dq;
    /** @brief Declared field ddq; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/MotorState.ddq: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsMotorState; share/platform/ros/rs/API-CONTRACT.md
     */
    float ddq;
    /** @brief Declared field tauEst; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/MotorState.tauEst: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsMotorState; share/platform/ros/rs/API-CONTRACT.md
     */
    float tauEst;
    /** @brief Declared field q_raw; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/MotorState.q_raw: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsMotorState; share/platform/ros/rs/API-CONTRACT.md
     */
    float q_raw;
    /** @brief Declared field dq_raw; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/MotorState.dq_raw: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsMotorState; share/platform/ros/rs/API-CONTRACT.md
     */
    float dq_raw;
    /** @brief Declared field ddq_raw; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/MotorState.ddq_raw: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsMotorState; share/platform/ros/rs/API-CONTRACT.md
     */
    float ddq_raw;
    /** @brief Declared field temperature; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/MotorState.temperature: int8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsMotorState; share/platform/ros/rs/API-CONTRACT.md
     */
    int8_t temperature;
    /** @brief Declared field reserve; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/MotorState.reserve: uint32; exactly 2 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsMotorState; share/platform/ros/rs/API-CONTRACT.md
     */
    uint32_t reserve[2];
} roswasmc_bounded_1_unitree_legged_msgs_MotorState;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_MOTORSTATE_MAX_WIRE_BYTES 38u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_MOTORSTATE_MIN_WIRE_BYTES 38u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_MOTORSTATE_CODEC_IDENTITY "UWVMROS1_be540cb22db5f08b6b9a8082777c76244e80f3148e9cfd63f510e4b2acdc0abf"

/**
 * @brief Validate every field of unitree_legged_msgs/MotorState.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static int roswasmc_bounded_1_unitree_legged_msgs_MotorState_valid(roswasmc_bounded_1_unitree_legged_msgs_MotorState const* value)
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
        uwvm_bounded_copy(&bits, &value->tauEst, 4);
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
 * @brief Measure the complete active canonical extent of unitree_legged_msgs/MotorState.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static size_t roswasmc_bounded_1_unitree_legged_msgs_MotorState_wire_size(roswasmc_bounded_1_unitree_legged_msgs_MotorState const* value)
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
 * @brief Append all fields of unitree_legged_msgs/MotorState to an internal canonical buffer.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete prevalidated immutable record.
 * @param[out] p Sufficient exclusive output storage established by the public encoder.
 * @param[in,out] offset Exclusive initialized writer cursor.
 * @return No value; internal caller guarantees the measured capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static void roswasmc_bounded_1_unitree_legged_msgs_MotorState_write_fields(roswasmc_bounded_1_unitree_legged_msgs_MotorState const* value,
                                                                                  unsigned char* p,
                                                                                  size_t* offset)
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
        uwvm_bounded_copy(&bits, &value->tauEst, 4);
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
 * @brief Decode the full ordered field prefix of unitree_legged_msgs/MotorState.
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
inline static int roswasmc_bounded_1_unitree_legged_msgs_MotorState_read_fields(unsigned char const* p,
                                                                                size_t n,
                                                                                size_t* offset,
                                                                                roswasmc_bounded_1_unitree_legged_msgs_MotorState* value)
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
        uwvm_bounded_copy(&value->tauEst, &bits, 4);
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
    return roswasmc_bounded_1_unitree_legged_msgs_MotorState_valid(value);
}

/**
 * @brief Encode the complete unitree_legged_msgs/MotorState record transactionally.
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
inline static uint32_t roswasmc_bounded_1_unitree_legged_msgs_MotorState_encode(roswasmc_bounded_1_unitree_legged_msgs_MotorState const* value,
                                                                                void* output,
                                                                                size_t capacity,
                                                                                size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_unitree_legged_msgs_MotorState_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_1_unitree_legged_msgs_MotorState_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_1_unitree_legged_msgs_MotorState_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/**
 * @brief Decode exactly one complete unitree_legged_msgs/MotorState record transactionally.
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
    roswasmc_bounded_1_unitree_legged_msgs_MotorState_decode(void const* input, size_t length, roswasmc_bounded_1_unitree_legged_msgs_MotorState* value)
{
    roswasmc_bounded_1_unitree_legged_msgs_MotorState next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 38u || length > 38u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_1_unitree_legged_msgs_MotorState_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_HIGHSTATE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_HIGHSTATE_0 != 0x6ba64df2UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_HIGHSTATE_1 != 0xa17d2b3eUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_HIGHSTATE_2 != 0x61b607d7UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_HIGHSTATE_3 != 0x9d9408fbUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_HIGHSTATE_4 != 0xd23adcfbUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_HIGHSTATE_5 != 0x77a6e004UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_HIGHSTATE_6 != 0xcb92a8b8UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_HIGHSTATE_7 != 0x96105c88UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_HIGHSTATE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_HIGHSTATE_0 0x6ba64df2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_HIGHSTATE_1 0xa17d2b3eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_HIGHSTATE_2 0x61b607d7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_HIGHSTATE_3 0x9d9408fbUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_HIGHSTATE_4 0xd23adcfbUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_HIGHSTATE_5 0x77a6e004UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_HIGHSTATE_6 0xcb92a8b8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_HIGHSTATE_7 0x96105c88UL

/**
 * @brief Complete ROS 1 unitree_legged_msgs/HighState value.
 * @details All 25 declared fields are retained in source order. The canonical representation occupies 1087..1087
 * bytes and is identified by UWVMROS1_82ee0efaab21b5cb89e99f5c0f5daec583b48dd5feb2dd6a7e09ba9d9110b53d.
 * @native Original selected identity: 7904f43019dadf7640d573b4c14b9066. Compilation of matching native traits is
 * a separate qualification.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_1_unitree_legged_msgs_HighState
{
    /** @brief Declared field head; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/HighState.head: uint8; exactly 2 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsHighState; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t head[2];
    /** @brief Declared field levelFlag; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/HighState.levelFlag: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsHighState; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t levelFlag;
    /** @brief Declared field frameReserve; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/HighState.frameReserve: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsHighState; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t frameReserve;
    /** @brief Declared field SN; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/HighState.SN: uint32; exactly 2 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsHighState; share/platform/ros/rs/API-CONTRACT.md
     */
    uint32_t SN[2];
    /** @brief Declared field version; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/HighState.version: uint32; exactly 2 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsHighState; share/platform/ros/rs/API-CONTRACT.md
     */
    uint32_t version[2];
    /** @brief Declared field bandWidth; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/HighState.bandWidth: uint16.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsHighState; share/platform/ros/rs/API-CONTRACT.md
     */
    uint16_t bandWidth;
    /** @brief Declared field imu; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/HighState.imu: unitree_legged_msgs/IMU.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsHighState; share/platform/ros/rs/API-CONTRACT.md
     */
    roswasmc_bounded_1_unitree_legged_msgs_IMU imu;
    /** @brief Declared field motorState; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/HighState.motorState: unitree_legged_msgs/MotorState; exactly 20 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsHighState; share/platform/ros/rs/API-CONTRACT.md
     */
    roswasmc_bounded_1_unitree_legged_msgs_MotorState motorState[20];
    /** @brief Declared field bms; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/HighState.bms: unitree_legged_msgs/BmsState.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsHighState; share/platform/ros/rs/API-CONTRACT.md
     */
    roswasmc_bounded_1_unitree_legged_msgs_BmsState bms;
    /** @brief Declared field footForce; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/HighState.footForce: int16; exactly 4 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsHighState; share/platform/ros/rs/API-CONTRACT.md
     */
    int16_t footForce[4];
    /** @brief Declared field footForceEst; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/HighState.footForceEst: int16; exactly 4 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsHighState; share/platform/ros/rs/API-CONTRACT.md
     */
    int16_t footForceEst[4];
    /** @brief Declared field mode; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/HighState.mode: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsHighState; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t mode;
    /** @brief Declared field progress; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/HighState.progress: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsHighState; share/platform/ros/rs/API-CONTRACT.md
     */
    float progress;
    /** @brief Declared field gaitType; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/HighState.gaitType: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsHighState; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t gaitType;
    /** @brief Declared field footRaiseHeight; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/HighState.footRaiseHeight: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsHighState; share/platform/ros/rs/API-CONTRACT.md
     */
    float footRaiseHeight;
    /** @brief Declared field position; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/HighState.position: float32; exactly 3 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsHighState; share/platform/ros/rs/API-CONTRACT.md
     */
    float position[3];
    /** @brief Declared field bodyHeight; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/HighState.bodyHeight: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsHighState; share/platform/ros/rs/API-CONTRACT.md
     */
    float bodyHeight;
    /** @brief Declared field velocity; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/HighState.velocity: float32; exactly 3 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsHighState; share/platform/ros/rs/API-CONTRACT.md
     */
    float velocity[3];
    /** @brief Declared field yawSpeed; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/HighState.yawSpeed: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsHighState; share/platform/ros/rs/API-CONTRACT.md
     */
    float yawSpeed;
    /** @brief Declared field rangeObstacle; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/HighState.rangeObstacle: float32; exactly 4 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsHighState; share/platform/ros/rs/API-CONTRACT.md
     */
    float rangeObstacle[4];
    /** @brief Declared field footPosition2Body; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/HighState.footPosition2Body: unitree_legged_msgs/Cartesian; exactly 4 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsHighState; share/platform/ros/rs/API-CONTRACT.md
     */
    roswasmc_bounded_1_unitree_legged_msgs_Cartesian footPosition2Body[4];
    /** @brief Declared field footSpeed2Body; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/HighState.footSpeed2Body: unitree_legged_msgs/Cartesian; exactly 4 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsHighState; share/platform/ros/rs/API-CONTRACT.md
     */
    roswasmc_bounded_1_unitree_legged_msgs_Cartesian footSpeed2Body[4];
    /** @brief Declared field wirelessRemote; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/HighState.wirelessRemote: uint8; exactly 40 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsHighState; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t wirelessRemote[40];
    /** @brief Declared field reserve; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/HighState.reserve: uint32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsHighState; share/platform/ros/rs/API-CONTRACT.md
     */
    uint32_t reserve;
    /** @brief Declared field crc; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/HighState.crc: uint32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsHighState; share/platform/ros/rs/API-CONTRACT.md
     */
    uint32_t crc;
} roswasmc_bounded_1_unitree_legged_msgs_HighState;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_HIGHSTATE_MAX_WIRE_BYTES 1087u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_HIGHSTATE_MIN_WIRE_BYTES 1087u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_HIGHSTATE_CODEC_IDENTITY "UWVMROS1_82ee0efaab21b5cb89e99f5c0f5daec583b48dd5feb2dd6a7e09ba9d9110b53d"

/**
 * @brief Validate every field of unitree_legged_msgs/HighState.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static int roswasmc_bounded_1_unitree_legged_msgs_HighState_valid(roswasmc_bounded_1_unitree_legged_msgs_HighState const* value)
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
    if(!roswasmc_bounded_1_unitree_legged_msgs_IMU_valid(&value->imu))
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < 20u; ++i)
        {
            if(!roswasmc_bounded_1_unitree_legged_msgs_MotorState_valid(&value->motorState[i]))
            {
                return 0;
            }
        }
    }
    if(!roswasmc_bounded_1_unitree_legged_msgs_BmsState_valid(&value->bms))
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
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->progress, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
        {
            return 0;
        }
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->footRaiseHeight, 4);
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
        uwvm_bounded_copy(&bits, &value->bodyHeight, 4);
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
        uwvm_bounded_copy(&bits, &value->yawSpeed, 4);
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
                uwvm_bounded_copy(&bits, &value->rangeObstacle[i], 4);
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
            if(!roswasmc_bounded_1_unitree_legged_msgs_Cartesian_valid(&value->footPosition2Body[i]))
            {
                return 0;
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 4u; ++i)
        {
            if(!roswasmc_bounded_1_unitree_legged_msgs_Cartesian_valid(&value->footSpeed2Body[i]))
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
    return 1;
}

/**
 * @brief Measure the complete active canonical extent of unitree_legged_msgs/HighState.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static size_t roswasmc_bounded_1_unitree_legged_msgs_HighState_wire_size(roswasmc_bounded_1_unitree_legged_msgs_HighState const* value)
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
    n += roswasmc_bounded_1_unitree_legged_msgs_IMU_wire_size(&value->imu);
    {
        size_t i;
        for(i = 0; i < 20u; ++i)
        {
            n += roswasmc_bounded_1_unitree_legged_msgs_MotorState_wire_size(&value->motorState[i]);
        }
    }
    n += roswasmc_bounded_1_unitree_legged_msgs_BmsState_wire_size(&value->bms);
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
            n += roswasmc_bounded_1_unitree_legged_msgs_Cartesian_wire_size(&value->footPosition2Body[i]);
        }
    }
    {
        size_t i;
        for(i = 0; i < 4u; ++i)
        {
            n += roswasmc_bounded_1_unitree_legged_msgs_Cartesian_wire_size(&value->footSpeed2Body[i]);
        }
    }
    {
        size_t i;
        for(i = 0; i < 40u; ++i)
        {
            n += 1;
        }
    }
    n += 4;
    n += 4;
    return n;
}

/**
 * @brief Append all fields of unitree_legged_msgs/HighState to an internal canonical buffer.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete prevalidated immutable record.
 * @param[out] p Sufficient exclusive output storage established by the public encoder.
 * @param[in,out] offset Exclusive initialized writer cursor.
 * @return No value; internal caller guarantees the measured capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static void roswasmc_bounded_1_unitree_legged_msgs_HighState_write_fields(roswasmc_bounded_1_unitree_legged_msgs_HighState const* value,
                                                                                 unsigned char* p,
                                                                                 size_t* offset)
{
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            uwvm_bounded_put(p + *offset, (uint64_t)value->head[i], 1);
            *offset += 1;
        }
    }
    uwvm_bounded_put(p + *offset, (uint64_t)value->levelFlag, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->frameReserve, 1);
    *offset += 1;
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            uwvm_bounded_put(p + *offset, (uint64_t)value->SN[i], 4);
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
    uwvm_bounded_put(p + *offset, (uint64_t)value->bandWidth, 2);
    *offset += 2;
    roswasmc_bounded_1_unitree_legged_msgs_IMU_write_fields(&value->imu, p, offset);
    {
        size_t i;
        for(i = 0; i < 20u; ++i)
        {
            roswasmc_bounded_1_unitree_legged_msgs_MotorState_write_fields(&value->motorState[i], p, offset);
        }
    }
    roswasmc_bounded_1_unitree_legged_msgs_BmsState_write_fields(&value->bms, p, offset);
    {
        size_t i;
        for(i = 0; i < 4u; ++i)
        {
            uwvm_bounded_put(p + *offset, (uint64_t)value->footForce[i], 2);
            *offset += 2;
        }
    }
    {
        size_t i;
        for(i = 0; i < 4u; ++i)
        {
            uwvm_bounded_put(p + *offset, (uint64_t)value->footForceEst[i], 2);
            *offset += 2;
        }
    }
    uwvm_bounded_put(p + *offset, (uint64_t)value->mode, 1);
    *offset += 1;
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->progress, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    uwvm_bounded_put(p + *offset, (uint64_t)value->gaitType, 1);
    *offset += 1;
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->footRaiseHeight, 4);
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
        uwvm_bounded_copy(&bits, &value->bodyHeight, 4);
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
        uwvm_bounded_copy(&bits, &value->yawSpeed, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        size_t i;
        for(i = 0; i < 4u; ++i)
        {
            {
                uint32_t bits;
                uwvm_bounded_copy(&bits, &value->rangeObstacle[i], 4);
                uwvm_bounded_put(p + *offset, bits, 4);
                *offset += 4;
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 4u; ++i)
        {
            roswasmc_bounded_1_unitree_legged_msgs_Cartesian_write_fields(&value->footPosition2Body[i], p, offset);
        }
    }
    {
        size_t i;
        for(i = 0; i < 4u; ++i)
        {
            roswasmc_bounded_1_unitree_legged_msgs_Cartesian_write_fields(&value->footSpeed2Body[i], p, offset);
        }
    }
    {
        size_t i;
        for(i = 0; i < 40u; ++i)
        {
            uwvm_bounded_put(p + *offset, (uint64_t)value->wirelessRemote[i], 1);
            *offset += 1;
        }
    }
    uwvm_bounded_put(p + *offset, (uint64_t)value->reserve, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, (uint64_t)value->crc, 4);
    *offset += 4;
}

/**
 * @brief Decode the full ordered field prefix of unitree_legged_msgs/HighState.
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
inline static int roswasmc_bounded_1_unitree_legged_msgs_HighState_read_fields(unsigned char const* p,
                                                                               size_t n,
                                                                               size_t* offset,
                                                                               roswasmc_bounded_1_unitree_legged_msgs_HighState* value)
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
        uwvm_bounded_copy(&value->levelFlag, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->frameReserve, &bits, 1);
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
                uwvm_bounded_copy(&value->SN[i], &bits, 4);
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
        uwvm_bounded_copy(&value->bandWidth, &bits, 2);
    }
    *offset += 2;
    if(!roswasmc_bounded_1_unitree_legged_msgs_IMU_read_fields(p, n, offset, &value->imu))
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < 20u; ++i)
        {
            if(!roswasmc_bounded_1_unitree_legged_msgs_MotorState_read_fields(p, n, offset, &value->motorState[i]))
            {
                return 0;
            }
        }
    }
    if(!roswasmc_bounded_1_unitree_legged_msgs_BmsState_read_fields(p, n, offset, &value->bms))
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
                uwvm_bounded_copy(&value->footForce[i], &bits, 2);
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
                uwvm_bounded_copy(&value->footForceEst[i], &bits, 2);
            }
            *offset += 2;
        }
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
        uwvm_bounded_copy(&value->gaitType, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->footRaiseHeight, &bits, 4);
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
        uwvm_bounded_copy(&value->bodyHeight, &bits, 4);
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
        uwvm_bounded_copy(&value->yawSpeed, &bits, 4);
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
                uwvm_bounded_copy(&value->rangeObstacle[i], &bits, 4);
            }
            *offset += 4;
        }
    }
    {
        size_t i;
        for(i = 0; i < 4u; ++i)
        {
            if(!roswasmc_bounded_1_unitree_legged_msgs_Cartesian_read_fields(p, n, offset, &value->footPosition2Body[i]))
            {
                return 0;
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 4u; ++i)
        {
            if(!roswasmc_bounded_1_unitree_legged_msgs_Cartesian_read_fields(p, n, offset, &value->footSpeed2Body[i]))
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
                uwvm_bounded_copy(&value->wirelessRemote[i], &bits, 1);
            }
            *offset += 1;
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
    return roswasmc_bounded_1_unitree_legged_msgs_HighState_valid(value);
}

/**
 * @brief Encode the complete unitree_legged_msgs/HighState record transactionally.
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
inline static uint32_t roswasmc_bounded_1_unitree_legged_msgs_HighState_encode(roswasmc_bounded_1_unitree_legged_msgs_HighState const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_unitree_legged_msgs_HighState_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_1_unitree_legged_msgs_HighState_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_1_unitree_legged_msgs_HighState_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/**
 * @brief Decode exactly one complete unitree_legged_msgs/HighState record transactionally.
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
    roswasmc_bounded_1_unitree_legged_msgs_HighState_decode(void const* input, size_t length, roswasmc_bounded_1_unitree_legged_msgs_HighState* value)
{
    roswasmc_bounded_1_unitree_legged_msgs_HighState next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 1087u || length > 1087u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_1_unitree_legged_msgs_HighState_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_LOWSTATE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_LOWSTATE_0 != 0xea791b94UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_LOWSTATE_1 != 0x39d3f874UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_LOWSTATE_2 != 0xf63474cdUL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_LOWSTATE_3 != 0x7ca89846UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_LOWSTATE_4 != 0xe093e9a0UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_LOWSTATE_5 != 0x690ced8bUL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_LOWSTATE_6 != 0x8ff274a4UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_LOWSTATE_7 != 0x839ff821UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_LOWSTATE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_LOWSTATE_0 0xea791b94UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_LOWSTATE_1 0x39d3f874UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_LOWSTATE_2 0xf63474cdUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_LOWSTATE_3 0x7ca89846UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_LOWSTATE_4 0xe093e9a0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_LOWSTATE_5 0x690ced8bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_LOWSTATE_6 0x8ff274a4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_LOWSTATE_7 0x839ff821UL

/**
 * @brief Complete ROS 1 unitree_legged_msgs/LowState value.
 * @details All 20 declared fields are retained in source order. The canonical representation occupies 1069..1069
 * bytes and is identified by UWVMROS1_37425ed49c0eebd762b6084ee413c7706fc43defc524414d3f50cdd2d25552c0.
 * @native Original selected identity: 481f8a83f729a25e7cc170da192f80f9. Compilation of matching native traits is
 * a separate qualification.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_1_unitree_legged_msgs_LowState
{
    /** @brief Declared field head; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/LowState.head: uint8; exactly 2 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsLowState; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t head[2];
    /** @brief Declared field levelFlag; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/LowState.levelFlag: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsLowState; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t levelFlag;
    /** @brief Declared field frameReserve; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/LowState.frameReserve: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsLowState; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t frameReserve;
    /** @brief Declared field SN; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/LowState.SN: uint32; exactly 2 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsLowState; share/platform/ros/rs/API-CONTRACT.md
     */
    uint32_t SN[2];
    /** @brief Declared field version; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/LowState.version: uint32; exactly 2 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsLowState; share/platform/ros/rs/API-CONTRACT.md
     */
    uint32_t version[2];
    /** @brief Declared field bandWidth; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/LowState.bandWidth: uint16.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsLowState; share/platform/ros/rs/API-CONTRACT.md
     */
    uint16_t bandWidth;
    /** @brief Declared field imu; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/LowState.imu: unitree_legged_msgs/IMU.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsLowState; share/platform/ros/rs/API-CONTRACT.md
     */
    roswasmc_bounded_1_unitree_legged_msgs_IMU imu;
    /** @brief Declared field motorState; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/LowState.motorState: unitree_legged_msgs/MotorState; exactly 20 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsLowState; share/platform/ros/rs/API-CONTRACT.md
     */
    roswasmc_bounded_1_unitree_legged_msgs_MotorState motorState[20];
    /** @brief Declared field bms; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/LowState.bms: unitree_legged_msgs/BmsState.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsLowState; share/platform/ros/rs/API-CONTRACT.md
     */
    roswasmc_bounded_1_unitree_legged_msgs_BmsState bms;
    /** @brief Declared field footForce; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/LowState.footForce: int16; exactly 4 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsLowState; share/platform/ros/rs/API-CONTRACT.md
     */
    int16_t footForce[4];
    /** @brief Declared field footForceEst; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/LowState.footForceEst: int16; exactly 4 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsLowState; share/platform/ros/rs/API-CONTRACT.md
     */
    int16_t footForceEst[4];
    /** @brief Declared field tick; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/LowState.tick: uint32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsLowState; share/platform/ros/rs/API-CONTRACT.md
     */
    uint32_t tick;
    /** @brief Declared field wirelessRemote; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/LowState.wirelessRemote: uint8; exactly 40 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsLowState; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t wirelessRemote[40];
    /** @brief Declared field reserve; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/LowState.reserve: uint32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsLowState; share/platform/ros/rs/API-CONTRACT.md
     */
    uint32_t reserve;
    /** @brief Declared field crc; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/LowState.crc: uint32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsLowState; share/platform/ros/rs/API-CONTRACT.md
     */
    uint32_t crc;
    /** @brief Declared field eeForceRaw; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/LowState.eeForceRaw: unitree_legged_msgs/Cartesian; exactly 4 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsLowState; share/platform/ros/rs/API-CONTRACT.md
     */
    roswasmc_bounded_1_unitree_legged_msgs_Cartesian eeForceRaw[4];
    /** @brief Declared field eeForce; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/LowState.eeForce: unitree_legged_msgs/Cartesian; exactly 4 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsLowState; share/platform/ros/rs/API-CONTRACT.md
     */
    roswasmc_bounded_1_unitree_legged_msgs_Cartesian eeForce[4];
    /** @brief Declared field position; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/LowState.position: unitree_legged_msgs/Cartesian.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsLowState; share/platform/ros/rs/API-CONTRACT.md
     */
    roswasmc_bounded_1_unitree_legged_msgs_Cartesian position;
    /** @brief Declared field velocity; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/LowState.velocity: unitree_legged_msgs/Cartesian.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsLowState; share/platform/ros/rs/API-CONTRACT.md
     */
    roswasmc_bounded_1_unitree_legged_msgs_Cartesian velocity;
    /** @brief Declared field velocity_w; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/LowState.velocity_w: unitree_legged_msgs/Cartesian.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsLowState; share/platform/ros/rs/API-CONTRACT.md
     */
    roswasmc_bounded_1_unitree_legged_msgs_Cartesian velocity_w;
} roswasmc_bounded_1_unitree_legged_msgs_LowState;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_LOWSTATE_MAX_WIRE_BYTES 1069u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_LOWSTATE_MIN_WIRE_BYTES 1069u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_LOWSTATE_CODEC_IDENTITY "UWVMROS1_37425ed49c0eebd762b6084ee413c7706fc43defc524414d3f50cdd2d25552c0"

/**
 * @brief Validate every field of unitree_legged_msgs/LowState.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static int roswasmc_bounded_1_unitree_legged_msgs_LowState_valid(roswasmc_bounded_1_unitree_legged_msgs_LowState const* value)
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
    if(!roswasmc_bounded_1_unitree_legged_msgs_IMU_valid(&value->imu))
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < 20u; ++i)
        {
            if(!roswasmc_bounded_1_unitree_legged_msgs_MotorState_valid(&value->motorState[i]))
            {
                return 0;
            }
        }
    }
    if(!roswasmc_bounded_1_unitree_legged_msgs_BmsState_valid(&value->bms))
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
        size_t i;
        for(i = 0; i < 4u; ++i)
        {
            if(!roswasmc_bounded_1_unitree_legged_msgs_Cartesian_valid(&value->eeForceRaw[i]))
            {
                return 0;
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 4u; ++i)
        {
            if(!roswasmc_bounded_1_unitree_legged_msgs_Cartesian_valid(&value->eeForce[i]))
            {
                return 0;
            }
        }
    }
    if(!roswasmc_bounded_1_unitree_legged_msgs_Cartesian_valid(&value->position))
    {
        return 0;
    }
    if(!roswasmc_bounded_1_unitree_legged_msgs_Cartesian_valid(&value->velocity))
    {
        return 0;
    }
    if(!roswasmc_bounded_1_unitree_legged_msgs_Cartesian_valid(&value->velocity_w))
    {
        return 0;
    }
    return 1;
}

/**
 * @brief Measure the complete active canonical extent of unitree_legged_msgs/LowState.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static size_t roswasmc_bounded_1_unitree_legged_msgs_LowState_wire_size(roswasmc_bounded_1_unitree_legged_msgs_LowState const* value)
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
    n += roswasmc_bounded_1_unitree_legged_msgs_IMU_wire_size(&value->imu);
    {
        size_t i;
        for(i = 0; i < 20u; ++i)
        {
            n += roswasmc_bounded_1_unitree_legged_msgs_MotorState_wire_size(&value->motorState[i]);
        }
    }
    n += roswasmc_bounded_1_unitree_legged_msgs_BmsState_wire_size(&value->bms);
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
    n += 4;
    n += 4;
    {
        size_t i;
        for(i = 0; i < 4u; ++i)
        {
            n += roswasmc_bounded_1_unitree_legged_msgs_Cartesian_wire_size(&value->eeForceRaw[i]);
        }
    }
    {
        size_t i;
        for(i = 0; i < 4u; ++i)
        {
            n += roswasmc_bounded_1_unitree_legged_msgs_Cartesian_wire_size(&value->eeForce[i]);
        }
    }
    n += roswasmc_bounded_1_unitree_legged_msgs_Cartesian_wire_size(&value->position);
    n += roswasmc_bounded_1_unitree_legged_msgs_Cartesian_wire_size(&value->velocity);
    n += roswasmc_bounded_1_unitree_legged_msgs_Cartesian_wire_size(&value->velocity_w);
    return n;
}

/**
 * @brief Append all fields of unitree_legged_msgs/LowState to an internal canonical buffer.
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
    roswasmc_bounded_1_unitree_legged_msgs_LowState_write_fields(roswasmc_bounded_1_unitree_legged_msgs_LowState const* value, unsigned char* p, size_t* offset)
{
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            uwvm_bounded_put(p + *offset, (uint64_t)value->head[i], 1);
            *offset += 1;
        }
    }
    uwvm_bounded_put(p + *offset, (uint64_t)value->levelFlag, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->frameReserve, 1);
    *offset += 1;
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            uwvm_bounded_put(p + *offset, (uint64_t)value->SN[i], 4);
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
    uwvm_bounded_put(p + *offset, (uint64_t)value->bandWidth, 2);
    *offset += 2;
    roswasmc_bounded_1_unitree_legged_msgs_IMU_write_fields(&value->imu, p, offset);
    {
        size_t i;
        for(i = 0; i < 20u; ++i)
        {
            roswasmc_bounded_1_unitree_legged_msgs_MotorState_write_fields(&value->motorState[i], p, offset);
        }
    }
    roswasmc_bounded_1_unitree_legged_msgs_BmsState_write_fields(&value->bms, p, offset);
    {
        size_t i;
        for(i = 0; i < 4u; ++i)
        {
            uwvm_bounded_put(p + *offset, (uint64_t)value->footForce[i], 2);
            *offset += 2;
        }
    }
    {
        size_t i;
        for(i = 0; i < 4u; ++i)
        {
            uwvm_bounded_put(p + *offset, (uint64_t)value->footForceEst[i], 2);
            *offset += 2;
        }
    }
    uwvm_bounded_put(p + *offset, (uint64_t)value->tick, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < 40u; ++i)
        {
            uwvm_bounded_put(p + *offset, (uint64_t)value->wirelessRemote[i], 1);
            *offset += 1;
        }
    }
    uwvm_bounded_put(p + *offset, (uint64_t)value->reserve, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, (uint64_t)value->crc, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < 4u; ++i)
        {
            roswasmc_bounded_1_unitree_legged_msgs_Cartesian_write_fields(&value->eeForceRaw[i], p, offset);
        }
    }
    {
        size_t i;
        for(i = 0; i < 4u; ++i)
        {
            roswasmc_bounded_1_unitree_legged_msgs_Cartesian_write_fields(&value->eeForce[i], p, offset);
        }
    }
    roswasmc_bounded_1_unitree_legged_msgs_Cartesian_write_fields(&value->position, p, offset);
    roswasmc_bounded_1_unitree_legged_msgs_Cartesian_write_fields(&value->velocity, p, offset);
    roswasmc_bounded_1_unitree_legged_msgs_Cartesian_write_fields(&value->velocity_w, p, offset);
}

/**
 * @brief Decode the full ordered field prefix of unitree_legged_msgs/LowState.
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
inline static int roswasmc_bounded_1_unitree_legged_msgs_LowState_read_fields(unsigned char const* p,
                                                                              size_t n,
                                                                              size_t* offset,
                                                                              roswasmc_bounded_1_unitree_legged_msgs_LowState* value)
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
        uwvm_bounded_copy(&value->levelFlag, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->frameReserve, &bits, 1);
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
                uwvm_bounded_copy(&value->SN[i], &bits, 4);
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
        uwvm_bounded_copy(&value->bandWidth, &bits, 2);
    }
    *offset += 2;
    if(!roswasmc_bounded_1_unitree_legged_msgs_IMU_read_fields(p, n, offset, &value->imu))
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < 20u; ++i)
        {
            if(!roswasmc_bounded_1_unitree_legged_msgs_MotorState_read_fields(p, n, offset, &value->motorState[i]))
            {
                return 0;
            }
        }
    }
    if(!roswasmc_bounded_1_unitree_legged_msgs_BmsState_read_fields(p, n, offset, &value->bms))
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
                uwvm_bounded_copy(&value->footForce[i], &bits, 2);
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
                uwvm_bounded_copy(&value->footForceEst[i], &bits, 2);
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
                uwvm_bounded_copy(&value->wirelessRemote[i], &bits, 1);
            }
            *offset += 1;
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
    {
        size_t i;
        for(i = 0; i < 4u; ++i)
        {
            if(!roswasmc_bounded_1_unitree_legged_msgs_Cartesian_read_fields(p, n, offset, &value->eeForceRaw[i]))
            {
                return 0;
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 4u; ++i)
        {
            if(!roswasmc_bounded_1_unitree_legged_msgs_Cartesian_read_fields(p, n, offset, &value->eeForce[i]))
            {
                return 0;
            }
        }
    }
    if(!roswasmc_bounded_1_unitree_legged_msgs_Cartesian_read_fields(p, n, offset, &value->position))
    {
        return 0;
    }
    if(!roswasmc_bounded_1_unitree_legged_msgs_Cartesian_read_fields(p, n, offset, &value->velocity))
    {
        return 0;
    }
    if(!roswasmc_bounded_1_unitree_legged_msgs_Cartesian_read_fields(p, n, offset, &value->velocity_w))
    {
        return 0;
    }
    return roswasmc_bounded_1_unitree_legged_msgs_LowState_valid(value);
}

/**
 * @brief Encode the complete unitree_legged_msgs/LowState record transactionally.
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
inline static uint32_t roswasmc_bounded_1_unitree_legged_msgs_LowState_encode(roswasmc_bounded_1_unitree_legged_msgs_LowState const* value,
                                                                              void* output,
                                                                              size_t capacity,
                                                                              size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_unitree_legged_msgs_LowState_valid(value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_1_unitree_legged_msgs_LowState_wire_size(value);
    if(capacity < n)
    {
        return UWVM_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UWVM_BOUNDED_INVALID;
    }
    roswasmc_bounded_1_unitree_legged_msgs_LowState_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/**
 * @brief Decode exactly one complete unitree_legged_msgs/LowState record transactionally.
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
    roswasmc_bounded_1_unitree_legged_msgs_LowState_decode(void const* input, size_t length, roswasmc_bounded_1_unitree_legged_msgs_LowState* value)
{
    roswasmc_bounded_1_unitree_legged_msgs_LowState next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 1069u || length > 1069u || uwvm_bounded_overlap(value, sizeof *value, input, length))
    {
        return UWVM_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_1_unitree_legged_msgs_LowState_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UWVM_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#undef UWVM_BOUNDED_ASSERT
#endif
