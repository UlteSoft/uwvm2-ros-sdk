/**
 * @file bounded_records.h
 * @brief Preserve every complete selected canonical Unitree record inline.
 * @details Every dynamic field has finite caller-owned capacity. Encoding validates and measures before output.
 * Decoding commits one complete temporary only after validation; partial records and overlapping buffers are
 * refused.
 */

#ifndef UWVM_ROS_BOUNDED_RECORDS_5B7A8BF257B434B1D136E72B39B8739A52E2E540F2555329B7B061A1ABD054BF
#define UWVM_ROS_BOUNDED_RECORDS_5B7A8BF257B434B1D136E72B39B8739A52E2E540F2555329B7B061A1ABD054BF
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
#undef UWVM_BOUNDED_ASSERT
#endif
