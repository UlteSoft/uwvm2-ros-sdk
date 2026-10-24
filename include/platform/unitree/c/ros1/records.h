/**
 * @file records.h
 * @brief Preserve all complete original Unitree ROS 1 canonical records.
 * @details Every field retains its original width, signedness, order and finite quota. Caller-owned inline
 * records remain distinct from installed native ROS objects; construction grants no transport authority.
 */

#ifndef UWVM_UNITREE_ROS1_BOUNDED_RECORDS_A61428242C28E4580F7718395573B2A64BA5CB7E925938C0DE9AFCE80B6E1CBF
#define UWVM_UNITREE_ROS1_BOUNDED_RECORDS_A61428242C28E4580F7718395573B2A64BA5CB7E925938C0DE9AFCE80B6E1CBF
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

#ifndef UWVM_UNITREE_ROS1_BOUNDED_CODEC_HELPERS
# define UWVM_UNITREE_ROS1_BOUNDED_CODEC_HELPERS
# define UNITREE_ROS1_BOUNDED_INVALID 22u
# define UNITREE_ROS1_BOUNDED_TOO_LARGE 90u
# if defined(__cplusplus) && __cplusplus >= 201103L
#  define UNITREE_ROS1_BOUNDED_ASSERT(x) static_assert(x, "canonical representation required")
# elif defined(__cplusplus)
#  define UNITREE_ROS1_BOUNDED_ASSERT(x) typedef char unitree_ros1_bounded_representation_required[(x) ? 1 : -1]
# else
#  define UNITREE_ROS1_BOUNDED_ASSERT(x) _Static_assert(x, "canonical representation required")
# endif
UNITREE_ROS1_BOUNDED_ASSERT(CHAR_BIT == 8 && sizeof(float) == 4 && sizeof(double) == 8 && FLT_RADIX == 2 && FLT_MANT_DIG == 24 && DBL_MANT_DIG == 53 &&
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
inline static void unitree_ros1_bounded_copy(void* out, void const* in, size_t n)
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
inline static uint64_t unitree_ros1_bounded_get(unsigned char const* p, unsigned n)
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
inline static void unitree_ros1_bounded_put(unsigned char* p, uint64_t v, unsigned n)
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
inline static int unitree_ros1_bounded_utf8(unsigned char const* p, size_t n)
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
inline static int unitree_ros1_bounded_overlap(void const* a, size_t an, void const* b, size_t bn)
{
    uintptr_t x = (uintptr_t)a, y = (uintptr_t)b;
    if((an && !a) || (bn && !b) || an > UINTPTR_MAX - x || bn > UINTPTR_MAX - y)
    {
        return 1;
    }
    return an && bn && x < y + bn && y < x + an;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_BMSCMD)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_BMSCMD_0 != 0x9a766323UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_BMSCMD_1 != 0x9077e623UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_BMSCMD_2 != 0x96aac4abUL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_BMSCMD_3 != 0xd174b65fUL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_BMSCMD_4 != 0x8f135700UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_BMSCMD_5 != 0x1519429bUL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_BMSCMD_6 != 0x07e18a30UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_BMSCMD_7 != 0xe1e7e08dUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_BMSCMD 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_BMSCMD_0 0x9a766323UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_BMSCMD_1 0x9077e623UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_BMSCMD_2 0x96aac4abUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_BMSCMD_3 0xd174b65fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_BMSCMD_4 0x8f135700UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_BMSCMD_5 0x1519429bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_BMSCMD_6 0x07e18a30UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_BMSCMD_7 0xe1e7e08dUL

/**
 * @brief Complete ROS 1 unitree_legged_msgs/BmsCmd value.
 * @details All 2 declared fields are retained in source order. The canonical representation occupies 4..4 bytes
 * and is identified by UWVMROS1_75732753b156fff8db3ba7e39541444bed2b71e139389a9b5bfbc49a4fa14928.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_1_unitree_legged_msgs_BmsCmd
{
    /** @brief Declared field off; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/BmsCmd.off: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsBmsCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t off;
    /** @brief Declared field reserve; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/BmsCmd.reserve: uint8; exactly 3 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsBmsCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t reserve[3];
} roswasmc_bounded_1_unitree_legged_msgs_BmsCmd;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_BMSCMD_MAX_WIRE_BYTES 4u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_BMSCMD_MIN_WIRE_BYTES 4u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_BMSCMD_CODEC_IDENTITY "UWVMROS1_75732753b156fff8db3ba7e39541444bed2b71e139389a9b5bfbc49a4fa14928"

/**
 * @brief Validate every field of unitree_legged_msgs/BmsCmd.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static int roswasmc_bounded_1_unitree_legged_msgs_BmsCmd_valid(roswasmc_bounded_1_unitree_legged_msgs_BmsCmd const* value)
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
 * @brief Measure the complete active canonical extent of unitree_legged_msgs/BmsCmd.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static size_t roswasmc_bounded_1_unitree_legged_msgs_BmsCmd_wire_size(roswasmc_bounded_1_unitree_legged_msgs_BmsCmd const* value)
{
    (void)value;
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
 * @brief Append all fields of unitree_legged_msgs/BmsCmd to an internal canonical buffer.
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
    roswasmc_bounded_1_unitree_legged_msgs_BmsCmd_write_fields(roswasmc_bounded_1_unitree_legged_msgs_BmsCmd const* value, unsigned char* p, size_t* offset)
{
    unitree_ros1_bounded_put(p + *offset, (uint64_t)value->off, 1);
    *offset += 1;
    {
        size_t i;
        for(i = 0; i < 3u; ++i)
        {
            unitree_ros1_bounded_put(p + *offset, (uint64_t)value->reserve[i], 1);
            *offset += 1;
        }
    }
}

/**
 * @brief Decode the full ordered field prefix of unitree_legged_msgs/BmsCmd.
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
inline static int roswasmc_bounded_1_unitree_legged_msgs_BmsCmd_read_fields(unsigned char const* p,
                                                                            size_t n,
                                                                            size_t* offset,
                                                                            roswasmc_bounded_1_unitree_legged_msgs_BmsCmd* value)
{
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)unitree_ros1_bounded_get(p + *offset, 1);
        unitree_ros1_bounded_copy(&value->off, &bits, 1);
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
                uint8_t bits = (uint8_t)unitree_ros1_bounded_get(p + *offset, 1);
                unitree_ros1_bounded_copy(&value->reserve[i], &bits, 1);
            }
            *offset += 1;
        }
    }
    return roswasmc_bounded_1_unitree_legged_msgs_BmsCmd_valid(value);
}

/**
 * @brief Encode the complete unitree_legged_msgs/BmsCmd record transactionally.
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
inline static uint32_t roswasmc_bounded_1_unitree_legged_msgs_BmsCmd_encode(roswasmc_bounded_1_unitree_legged_msgs_BmsCmd const* value,
                                                                            void* output,
                                                                            size_t capacity,
                                                                            size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_unitree_legged_msgs_BmsCmd_valid(value))
    {
        return UNITREE_ROS1_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_1_unitree_legged_msgs_BmsCmd_wire_size(value);
    if(capacity < n)
    {
        return UNITREE_ROS1_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || unitree_ros1_bounded_overlap(value, sizeof *value, output, n) || unitree_ros1_bounded_overlap(length, sizeof *length, output, n) ||
       unitree_ros1_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UNITREE_ROS1_BOUNDED_INVALID;
    }
    roswasmc_bounded_1_unitree_legged_msgs_BmsCmd_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/**
 * @brief Decode exactly one complete unitree_legged_msgs/BmsCmd record transactionally.
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
    roswasmc_bounded_1_unitree_legged_msgs_BmsCmd_decode(void const* input, size_t length, roswasmc_bounded_1_unitree_legged_msgs_BmsCmd* value)
{
    roswasmc_bounded_1_unitree_legged_msgs_BmsCmd next = UWVM_ROS_C_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 4u || length > 4u || unitree_ros1_bounded_overlap(value, sizeof *value, input, length))
    {
        return UNITREE_ROS1_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_1_unitree_legged_msgs_BmsCmd_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UNITREE_ROS1_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_BMSSTATE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_BMSSTATE_0 != 0x122c27faUL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_BMSSTATE_1 != 0x401f3b0fUL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_BMSSTATE_2 != 0xfe5dd657UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_BMSSTATE_3 != 0xd6c9eb8cUL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_BMSSTATE_4 != 0x8e577dfaUL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_BMSSTATE_5 != 0xb722079aUL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_BMSSTATE_6 != 0xb25a6897UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_BMSSTATE_7 != 0x2c171882UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_BMSSTATE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_BMSSTATE_0 0x122c27faUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_BMSSTATE_1 0x401f3b0fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_BMSSTATE_2 0xfe5dd657UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_BMSSTATE_3 0xd6c9eb8cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_BMSSTATE_4 0x8e577dfaUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_BMSSTATE_5 0xb722079aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_BMSSTATE_6 0xb25a6897UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_BMSSTATE_7 0x2c171882UL

/**
 * @brief Complete ROS 1 unitree_legged_msgs/BmsState value.
 * @details All 9 declared fields are retained in source order. The canonical representation occupies 34..34
 * bytes and is identified by UWVMROS1_ef0f93501f54d0ff760039d86bd1ba1739cb0c888b3a873611679484ccec094a.
 * @native No native identity is established by this source record.
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
    (void)value;
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
    unitree_ros1_bounded_put(p + *offset, (uint64_t)value->version_h, 1);
    *offset += 1;
    unitree_ros1_bounded_put(p + *offset, (uint64_t)value->version_l, 1);
    *offset += 1;
    unitree_ros1_bounded_put(p + *offset, (uint64_t)value->bms_status, 1);
    *offset += 1;
    unitree_ros1_bounded_put(p + *offset, (uint64_t)value->SOC, 1);
    *offset += 1;
    unitree_ros1_bounded_put(p + *offset, (uint64_t)value->current, 4);
    *offset += 4;
    unitree_ros1_bounded_put(p + *offset, (uint64_t)value->cycle, 2);
    *offset += 2;
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            unitree_ros1_bounded_put(p + *offset, (uint64_t)value->BQ_NTC[i], 1);
            *offset += 1;
        }
    }
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            unitree_ros1_bounded_put(p + *offset, (uint64_t)value->MCU_NTC[i], 1);
            *offset += 1;
        }
    }
    {
        size_t i;
        for(i = 0; i < 10u; ++i)
        {
            unitree_ros1_bounded_put(p + *offset, (uint64_t)value->cell_vol[i], 2);
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
        uint8_t bits = (uint8_t)unitree_ros1_bounded_get(p + *offset, 1);
        unitree_ros1_bounded_copy(&value->version_h, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)unitree_ros1_bounded_get(p + *offset, 1);
        unitree_ros1_bounded_copy(&value->version_l, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)unitree_ros1_bounded_get(p + *offset, 1);
        unitree_ros1_bounded_copy(&value->bms_status, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)unitree_ros1_bounded_get(p + *offset, 1);
        unitree_ros1_bounded_copy(&value->SOC, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)unitree_ros1_bounded_get(p + *offset, 4);
        unitree_ros1_bounded_copy(&value->current, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 2)
    {
        return 0;
    }
    {
        uint16_t bits = (uint16_t)unitree_ros1_bounded_get(p + *offset, 2);
        unitree_ros1_bounded_copy(&value->cycle, &bits, 2);
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
                uint8_t bits = (uint8_t)unitree_ros1_bounded_get(p + *offset, 1);
                unitree_ros1_bounded_copy(&value->BQ_NTC[i], &bits, 1);
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
                uint8_t bits = (uint8_t)unitree_ros1_bounded_get(p + *offset, 1);
                unitree_ros1_bounded_copy(&value->MCU_NTC[i], &bits, 1);
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
                uint16_t bits = (uint16_t)unitree_ros1_bounded_get(p + *offset, 2);
                unitree_ros1_bounded_copy(&value->cell_vol[i], &bits, 2);
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
        return UNITREE_ROS1_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_1_unitree_legged_msgs_BmsState_wire_size(value);
    if(capacity < n)
    {
        return UNITREE_ROS1_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || unitree_ros1_bounded_overlap(value, sizeof *value, output, n) || unitree_ros1_bounded_overlap(length, sizeof *length, output, n) ||
       unitree_ros1_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UNITREE_ROS1_BOUNDED_INVALID;
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
    roswasmc_bounded_1_unitree_legged_msgs_BmsState next = UWVM_ROS_C_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 34u || length > 34u || unitree_ros1_bounded_overlap(value, sizeof *value, input, length))
    {
        return UNITREE_ROS1_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_1_unitree_legged_msgs_BmsState_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UNITREE_ROS1_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_CARTESIAN)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_CARTESIAN_0 != 0x4c03f3faUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_CARTESIAN_1 != 0xdb03c125UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_CARTESIAN_2 != 0x2112d863UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_CARTESIAN_3 != 0xf76256bbUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_CARTESIAN_4 != 0x7c11c213UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_CARTESIAN_5 != 0x3657a2e7UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_CARTESIAN_6 != 0xed03dbe8UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_CARTESIAN_7 != 0x93cbfe32UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_CARTESIAN 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_CARTESIAN_0 0x4c03f3faUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_CARTESIAN_1 0xdb03c125UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_CARTESIAN_2 0x2112d863UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_CARTESIAN_3 0xf76256bbUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_CARTESIAN_4 0x7c11c213UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_CARTESIAN_5 0x3657a2e7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_CARTESIAN_6 0xed03dbe8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_CARTESIAN_7 0x93cbfe32UL

/**
 * @brief Complete ROS 1 unitree_legged_msgs/Cartesian value.
 * @details All 3 declared fields are retained in source order. The canonical representation occupies 12..12
 * bytes and is identified by UWVMROS1_43c7c62ba2a689751a0a15e326c5c9690a9b1f166b6726a0f803b98d2b3fa722.
 * @native No native identity is established by this source record.
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
        unitree_ros1_bounded_copy(&bits, &value->x, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
        {
            return 0;
        }
    }
    {
        uint32_t bits;
        unitree_ros1_bounded_copy(&bits, &value->y, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
        {
            return 0;
        }
    }
    {
        uint32_t bits;
        unitree_ros1_bounded_copy(&bits, &value->z, 4);
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
    (void)value;
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
        unitree_ros1_bounded_copy(&bits, &value->x, 4);
        unitree_ros1_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        unitree_ros1_bounded_copy(&bits, &value->y, 4);
        unitree_ros1_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        unitree_ros1_bounded_copy(&bits, &value->z, 4);
        unitree_ros1_bounded_put(p + *offset, bits, 4);
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
        uint32_t bits = (uint32_t)unitree_ros1_bounded_get(p + *offset, 4);
        unitree_ros1_bounded_copy(&value->x, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)unitree_ros1_bounded_get(p + *offset, 4);
        unitree_ros1_bounded_copy(&value->y, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)unitree_ros1_bounded_get(p + *offset, 4);
        unitree_ros1_bounded_copy(&value->z, &bits, 4);
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
        return UNITREE_ROS1_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_1_unitree_legged_msgs_Cartesian_wire_size(value);
    if(capacity < n)
    {
        return UNITREE_ROS1_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || unitree_ros1_bounded_overlap(value, sizeof *value, output, n) || unitree_ros1_bounded_overlap(length, sizeof *length, output, n) ||
       unitree_ros1_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UNITREE_ROS1_BOUNDED_INVALID;
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
    roswasmc_bounded_1_unitree_legged_msgs_Cartesian next = UWVM_ROS_C_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 12u || length > 12u || unitree_ros1_bounded_overlap(value, sizeof *value, input, length))
    {
        return UNITREE_ROS1_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_1_unitree_legged_msgs_Cartesian_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UNITREE_ROS1_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_LED)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_LED_0 != 0xd6e95efeUL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_LED_1 != 0xbf445429UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_LED_2 != 0x19f7d0cdUL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_LED_3 != 0x44097e0aUL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_LED_4 != 0xf5ac9a46UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_LED_5 != 0x51a5cdaaUL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_LED_6 != 0x3e91c8e9UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_LED_7 != 0xe1f7f52eUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_LED 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_LED_0 0xd6e95efeUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_LED_1 0xbf445429UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_LED_2 0x19f7d0cdUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_LED_3 0x44097e0aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_LED_4 0xf5ac9a46UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_LED_5 0x51a5cdaaUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_LED_6 0x3e91c8e9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_LED_7 0xe1f7f52eUL

/**
 * @brief Complete ROS 1 unitree_legged_msgs/LED value.
 * @details All 3 declared fields are retained in source order. The canonical representation occupies 3..3 bytes
 * and is identified by UWVMROS1_b4efac59eaf4d3f09c069e4833dd82b5422980f6a9f27db84950243a47164ea5.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_1_unitree_legged_msgs_LED
{
    /** @brief Declared field r; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/LED.r: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsLED; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t r;
    /** @brief Declared field g; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/LED.g: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsLED; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t g;
    /** @brief Declared field b; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/LED.b: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsLED; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t b;
} roswasmc_bounded_1_unitree_legged_msgs_LED;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_LED_MAX_WIRE_BYTES 3u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_LED_MIN_WIRE_BYTES 3u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_LED_CODEC_IDENTITY "UWVMROS1_b4efac59eaf4d3f09c069e4833dd82b5422980f6a9f27db84950243a47164ea5"

/**
 * @brief Validate every field of unitree_legged_msgs/LED.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static int roswasmc_bounded_1_unitree_legged_msgs_LED_valid(roswasmc_bounded_1_unitree_legged_msgs_LED const* value)
{
    if(!value)
    {
        return 0;
    }
    return 1;
}

/**
 * @brief Measure the complete active canonical extent of unitree_legged_msgs/LED.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static size_t roswasmc_bounded_1_unitree_legged_msgs_LED_wire_size(roswasmc_bounded_1_unitree_legged_msgs_LED const* value)
{
    (void)value;
    size_t n = 0;
    n += 1;
    n += 1;
    n += 1;
    return n;
}

/**
 * @brief Append all fields of unitree_legged_msgs/LED to an internal canonical buffer.
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
    roswasmc_bounded_1_unitree_legged_msgs_LED_write_fields(roswasmc_bounded_1_unitree_legged_msgs_LED const* value, unsigned char* p, size_t* offset)
{
    unitree_ros1_bounded_put(p + *offset, (uint64_t)value->r, 1);
    *offset += 1;
    unitree_ros1_bounded_put(p + *offset, (uint64_t)value->g, 1);
    *offset += 1;
    unitree_ros1_bounded_put(p + *offset, (uint64_t)value->b, 1);
    *offset += 1;
}

/**
 * @brief Decode the full ordered field prefix of unitree_legged_msgs/LED.
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
    roswasmc_bounded_1_unitree_legged_msgs_LED_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_1_unitree_legged_msgs_LED* value)
{
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)unitree_ros1_bounded_get(p + *offset, 1);
        unitree_ros1_bounded_copy(&value->r, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)unitree_ros1_bounded_get(p + *offset, 1);
        unitree_ros1_bounded_copy(&value->g, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)unitree_ros1_bounded_get(p + *offset, 1);
        unitree_ros1_bounded_copy(&value->b, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_1_unitree_legged_msgs_LED_valid(value);
}

/**
 * @brief Encode the complete unitree_legged_msgs/LED record transactionally.
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
    roswasmc_bounded_1_unitree_legged_msgs_LED_encode(roswasmc_bounded_1_unitree_legged_msgs_LED const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_unitree_legged_msgs_LED_valid(value))
    {
        return UNITREE_ROS1_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_1_unitree_legged_msgs_LED_wire_size(value);
    if(capacity < n)
    {
        return UNITREE_ROS1_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || unitree_ros1_bounded_overlap(value, sizeof *value, output, n) || unitree_ros1_bounded_overlap(length, sizeof *length, output, n) ||
       unitree_ros1_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UNITREE_ROS1_BOUNDED_INVALID;
    }
    roswasmc_bounded_1_unitree_legged_msgs_LED_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/**
 * @brief Decode exactly one complete unitree_legged_msgs/LED record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] input Immutable complete canonical body, disjoint from value.
 * @param[in] length Exact input byte count; trailing bytes are refused.
 * @param[out] value Caller-owned complete record; unchanged on every refusal.
 * @return Status 0 on complete success, otherwise 22; no partial record is exposed.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static uint32_t roswasmc_bounded_1_unitree_legged_msgs_LED_decode(void const* input, size_t length, roswasmc_bounded_1_unitree_legged_msgs_LED* value)
{
    roswasmc_bounded_1_unitree_legged_msgs_LED next = UWVM_ROS_C_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 3u || length > 3u || unitree_ros1_bounded_overlap(value, sizeof *value, input, length))
    {
        return UNITREE_ROS1_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_1_unitree_legged_msgs_LED_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UNITREE_ROS1_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_HIGHCMD)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_HIGHCMD_0 != 0x71b853b5UL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_HIGHCMD_1 != 0x7f97b9f8UL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_HIGHCMD_2 != 0x9833e909UL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_HIGHCMD_3 != 0x488d7a92UL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_HIGHCMD_4 != 0x852314cdUL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_HIGHCMD_5 != 0xb2b33cf0UL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_HIGHCMD_6 != 0x5b0ef31eUL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_HIGHCMD_7 != 0x1b88b458UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_HIGHCMD 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_HIGHCMD_0 0x71b853b5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_HIGHCMD_1 0x7f97b9f8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_HIGHCMD_2 0x9833e909UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_HIGHCMD_3 0x488d7a92UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_HIGHCMD_4 0x852314cdUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_HIGHCMD_5 0xb2b33cf0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_HIGHCMD_6 0x5b0ef31eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_HIGHCMD_7 0x1b88b458UL

/**
 * @brief Complete ROS 1 unitree_legged_msgs/HighCmd value.
 * @details All 20 declared fields are retained in source order. The canonical representation occupies 129..129
 * bytes and is identified by UWVMROS1_ec6ec8937b2629a4441adc4a21eed83fca940b18d46b970d96e05c957ac90b38.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_1_unitree_legged_msgs_HighCmd
{
    /** @brief Declared field head; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/HighCmd.head: uint8; exactly 2 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsHighCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t head[2];
    /** @brief Declared field levelFlag; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/HighCmd.levelFlag: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsHighCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t levelFlag;
    /** @brief Declared field frameReserve; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/HighCmd.frameReserve: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsHighCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t frameReserve;
    /** @brief Declared field SN; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/HighCmd.SN: uint32; exactly 2 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsHighCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    uint32_t SN[2];
    /** @brief Declared field version; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/HighCmd.version: uint32; exactly 2 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsHighCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    uint32_t version[2];
    /** @brief Declared field bandWidth; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/HighCmd.bandWidth: uint16.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsHighCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    uint16_t bandWidth;
    /** @brief Declared field mode; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/HighCmd.mode: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsHighCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t mode;
    /** @brief Declared field gaitType; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/HighCmd.gaitType: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsHighCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t gaitType;
    /** @brief Declared field speedLevel; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/HighCmd.speedLevel: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsHighCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t speedLevel;
    /** @brief Declared field footRaiseHeight; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/HighCmd.footRaiseHeight: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsHighCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    float footRaiseHeight;
    /** @brief Declared field bodyHeight; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/HighCmd.bodyHeight: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsHighCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    float bodyHeight;
    /** @brief Declared field position; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/HighCmd.position: float32; exactly 2 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsHighCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    float position[2];
    /** @brief Declared field euler; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/HighCmd.euler: float32; exactly 3 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsHighCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    float euler[3];
    /** @brief Declared field velocity; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/HighCmd.velocity: float32; exactly 2 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsHighCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    float velocity[2];
    /** @brief Declared field yawSpeed; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/HighCmd.yawSpeed: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsHighCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    float yawSpeed;
    /** @brief Declared field bms; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/HighCmd.bms: unitree_legged_msgs/BmsCmd.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsHighCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    roswasmc_bounded_1_unitree_legged_msgs_BmsCmd bms;
    /** @brief Declared field led; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/HighCmd.led: unitree_legged_msgs/LED; exactly 4 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsHighCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    roswasmc_bounded_1_unitree_legged_msgs_LED led[4];
    /** @brief Declared field wirelessRemote; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/HighCmd.wirelessRemote: uint8; exactly 40 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsHighCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t wirelessRemote[40];
    /** @brief Declared field reserve; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/HighCmd.reserve: uint32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsHighCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    uint32_t reserve;
    /** @brief Declared field crc; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/HighCmd.crc: uint32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsHighCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    uint32_t crc;
} roswasmc_bounded_1_unitree_legged_msgs_HighCmd;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_HIGHCMD_MAX_WIRE_BYTES 129u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_HIGHCMD_MIN_WIRE_BYTES 129u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_HIGHCMD_CODEC_IDENTITY "UWVMROS1_ec6ec8937b2629a4441adc4a21eed83fca940b18d46b970d96e05c957ac90b38"

/**
 * @brief Validate every field of unitree_legged_msgs/HighCmd.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static int roswasmc_bounded_1_unitree_legged_msgs_HighCmd_valid(roswasmc_bounded_1_unitree_legged_msgs_HighCmd const* value)
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
        uint32_t bits;
        unitree_ros1_bounded_copy(&bits, &value->footRaiseHeight, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
        {
            return 0;
        }
    }
    {
        uint32_t bits;
        unitree_ros1_bounded_copy(&bits, &value->bodyHeight, 4);
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
                unitree_ros1_bounded_copy(&bits, &value->position[i], 4);
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
                unitree_ros1_bounded_copy(&bits, &value->euler[i], 4);
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
                unitree_ros1_bounded_copy(&bits, &value->velocity[i], 4);
                if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
                {
                    return 0;
                }
            }
        }
    }
    {
        uint32_t bits;
        unitree_ros1_bounded_copy(&bits, &value->yawSpeed, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
        {
            return 0;
        }
    }
    if(!roswasmc_bounded_1_unitree_legged_msgs_BmsCmd_valid(&value->bms))
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < 4u; ++i)
        {
            if(!roswasmc_bounded_1_unitree_legged_msgs_LED_valid(&value->led[i]))
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
 * @brief Measure the complete active canonical extent of unitree_legged_msgs/HighCmd.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static size_t roswasmc_bounded_1_unitree_legged_msgs_HighCmd_wire_size(roswasmc_bounded_1_unitree_legged_msgs_HighCmd const* value)
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
    n += roswasmc_bounded_1_unitree_legged_msgs_BmsCmd_wire_size(&value->bms);
    {
        size_t i;
        for(i = 0; i < 4u; ++i)
        {
            n += roswasmc_bounded_1_unitree_legged_msgs_LED_wire_size(&value->led[i]);
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
 * @brief Append all fields of unitree_legged_msgs/HighCmd to an internal canonical buffer.
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
    roswasmc_bounded_1_unitree_legged_msgs_HighCmd_write_fields(roswasmc_bounded_1_unitree_legged_msgs_HighCmd const* value, unsigned char* p, size_t* offset)
{
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            unitree_ros1_bounded_put(p + *offset, (uint64_t)value->head[i], 1);
            *offset += 1;
        }
    }
    unitree_ros1_bounded_put(p + *offset, (uint64_t)value->levelFlag, 1);
    *offset += 1;
    unitree_ros1_bounded_put(p + *offset, (uint64_t)value->frameReserve, 1);
    *offset += 1;
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            unitree_ros1_bounded_put(p + *offset, (uint64_t)value->SN[i], 4);
            *offset += 4;
        }
    }
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            unitree_ros1_bounded_put(p + *offset, (uint64_t)value->version[i], 4);
            *offset += 4;
        }
    }
    unitree_ros1_bounded_put(p + *offset, (uint64_t)value->bandWidth, 2);
    *offset += 2;
    unitree_ros1_bounded_put(p + *offset, (uint64_t)value->mode, 1);
    *offset += 1;
    unitree_ros1_bounded_put(p + *offset, (uint64_t)value->gaitType, 1);
    *offset += 1;
    unitree_ros1_bounded_put(p + *offset, (uint64_t)value->speedLevel, 1);
    *offset += 1;
    {
        uint32_t bits;
        unitree_ros1_bounded_copy(&bits, &value->footRaiseHeight, 4);
        unitree_ros1_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        unitree_ros1_bounded_copy(&bits, &value->bodyHeight, 4);
        unitree_ros1_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            {
                uint32_t bits;
                unitree_ros1_bounded_copy(&bits, &value->position[i], 4);
                unitree_ros1_bounded_put(p + *offset, bits, 4);
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
                unitree_ros1_bounded_copy(&bits, &value->euler[i], 4);
                unitree_ros1_bounded_put(p + *offset, bits, 4);
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
                unitree_ros1_bounded_copy(&bits, &value->velocity[i], 4);
                unitree_ros1_bounded_put(p + *offset, bits, 4);
                *offset += 4;
            }
        }
    }
    {
        uint32_t bits;
        unitree_ros1_bounded_copy(&bits, &value->yawSpeed, 4);
        unitree_ros1_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    roswasmc_bounded_1_unitree_legged_msgs_BmsCmd_write_fields(&value->bms, p, offset);
    {
        size_t i;
        for(i = 0; i < 4u; ++i)
        {
            roswasmc_bounded_1_unitree_legged_msgs_LED_write_fields(&value->led[i], p, offset);
        }
    }
    {
        size_t i;
        for(i = 0; i < 40u; ++i)
        {
            unitree_ros1_bounded_put(p + *offset, (uint64_t)value->wirelessRemote[i], 1);
            *offset += 1;
        }
    }
    unitree_ros1_bounded_put(p + *offset, (uint64_t)value->reserve, 4);
    *offset += 4;
    unitree_ros1_bounded_put(p + *offset, (uint64_t)value->crc, 4);
    *offset += 4;
}

/**
 * @brief Decode the full ordered field prefix of unitree_legged_msgs/HighCmd.
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
inline static int roswasmc_bounded_1_unitree_legged_msgs_HighCmd_read_fields(unsigned char const* p,
                                                                             size_t n,
                                                                             size_t* offset,
                                                                             roswasmc_bounded_1_unitree_legged_msgs_HighCmd* value)
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
                uint8_t bits = (uint8_t)unitree_ros1_bounded_get(p + *offset, 1);
                unitree_ros1_bounded_copy(&value->head[i], &bits, 1);
            }
            *offset += 1;
        }
    }
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)unitree_ros1_bounded_get(p + *offset, 1);
        unitree_ros1_bounded_copy(&value->levelFlag, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)unitree_ros1_bounded_get(p + *offset, 1);
        unitree_ros1_bounded_copy(&value->frameReserve, &bits, 1);
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
                uint32_t bits = (uint32_t)unitree_ros1_bounded_get(p + *offset, 4);
                unitree_ros1_bounded_copy(&value->SN[i], &bits, 4);
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
                uint32_t bits = (uint32_t)unitree_ros1_bounded_get(p + *offset, 4);
                unitree_ros1_bounded_copy(&value->version[i], &bits, 4);
            }
            *offset += 4;
        }
    }
    if(*offset > n || n - *offset < 2)
    {
        return 0;
    }
    {
        uint16_t bits = (uint16_t)unitree_ros1_bounded_get(p + *offset, 2);
        unitree_ros1_bounded_copy(&value->bandWidth, &bits, 2);
    }
    *offset += 2;
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)unitree_ros1_bounded_get(p + *offset, 1);
        unitree_ros1_bounded_copy(&value->mode, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)unitree_ros1_bounded_get(p + *offset, 1);
        unitree_ros1_bounded_copy(&value->gaitType, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)unitree_ros1_bounded_get(p + *offset, 1);
        unitree_ros1_bounded_copy(&value->speedLevel, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)unitree_ros1_bounded_get(p + *offset, 4);
        unitree_ros1_bounded_copy(&value->footRaiseHeight, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)unitree_ros1_bounded_get(p + *offset, 4);
        unitree_ros1_bounded_copy(&value->bodyHeight, &bits, 4);
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
                uint32_t bits = (uint32_t)unitree_ros1_bounded_get(p + *offset, 4);
                unitree_ros1_bounded_copy(&value->position[i], &bits, 4);
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
                uint32_t bits = (uint32_t)unitree_ros1_bounded_get(p + *offset, 4);
                unitree_ros1_bounded_copy(&value->euler[i], &bits, 4);
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
                uint32_t bits = (uint32_t)unitree_ros1_bounded_get(p + *offset, 4);
                unitree_ros1_bounded_copy(&value->velocity[i], &bits, 4);
            }
            *offset += 4;
        }
    }
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)unitree_ros1_bounded_get(p + *offset, 4);
        unitree_ros1_bounded_copy(&value->yawSpeed, &bits, 4);
    }
    *offset += 4;
    if(!roswasmc_bounded_1_unitree_legged_msgs_BmsCmd_read_fields(p, n, offset, &value->bms))
    {
        return 0;
    }
    {
        size_t i;
        for(i = 0; i < 4u; ++i)
        {
            if(!roswasmc_bounded_1_unitree_legged_msgs_LED_read_fields(p, n, offset, &value->led[i]))
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
                uint8_t bits = (uint8_t)unitree_ros1_bounded_get(p + *offset, 1);
                unitree_ros1_bounded_copy(&value->wirelessRemote[i], &bits, 1);
            }
            *offset += 1;
        }
    }
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)unitree_ros1_bounded_get(p + *offset, 4);
        unitree_ros1_bounded_copy(&value->reserve, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)unitree_ros1_bounded_get(p + *offset, 4);
        unitree_ros1_bounded_copy(&value->crc, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_1_unitree_legged_msgs_HighCmd_valid(value);
}

/**
 * @brief Encode the complete unitree_legged_msgs/HighCmd record transactionally.
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
inline static uint32_t roswasmc_bounded_1_unitree_legged_msgs_HighCmd_encode(roswasmc_bounded_1_unitree_legged_msgs_HighCmd const* value,
                                                                             void* output,
                                                                             size_t capacity,
                                                                             size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_unitree_legged_msgs_HighCmd_valid(value))
    {
        return UNITREE_ROS1_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_1_unitree_legged_msgs_HighCmd_wire_size(value);
    if(capacity < n)
    {
        return UNITREE_ROS1_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || unitree_ros1_bounded_overlap(value, sizeof *value, output, n) || unitree_ros1_bounded_overlap(length, sizeof *length, output, n) ||
       unitree_ros1_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UNITREE_ROS1_BOUNDED_INVALID;
    }
    roswasmc_bounded_1_unitree_legged_msgs_HighCmd_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/**
 * @brief Decode exactly one complete unitree_legged_msgs/HighCmd record transactionally.
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
    roswasmc_bounded_1_unitree_legged_msgs_HighCmd_decode(void const* input, size_t length, roswasmc_bounded_1_unitree_legged_msgs_HighCmd* value)
{
    roswasmc_bounded_1_unitree_legged_msgs_HighCmd next = UWVM_ROS_C_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 129u || length > 129u || unitree_ros1_bounded_overlap(value, sizeof *value, input, length))
    {
        return UNITREE_ROS1_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_1_unitree_legged_msgs_HighCmd_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UNITREE_ROS1_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_IMU)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_IMU_0 != 0x518fd0c4UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_IMU_1 != 0x1f314265UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_IMU_2 != 0x145f5478UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_IMU_3 != 0xf38790ccUL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_IMU_4 != 0x27e29fdcUL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_IMU_5 != 0x0f96a84aUL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_IMU_6 != 0xc426d3e0UL ||                                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_IMU_7 != 0xf4be5f0cUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_IMU 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_IMU_0 0x518fd0c4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_IMU_1 0x1f314265UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_IMU_2 0x145f5478UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_IMU_3 0xf38790ccUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_IMU_4 0x27e29fdcUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_IMU_5 0x0f96a84aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_IMU_6 0xc426d3e0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_IMU_7 0xf4be5f0cUL

/**
 * @brief Complete ROS 1 unitree_legged_msgs/IMU value.
 * @details All 5 declared fields are retained in source order. The canonical representation occupies 53..53
 * bytes and is identified by UWVMROS1_29d9ec99e676fe8747665da588b78c8ab77a3197e281ba892ab389d2d81fa276.
 * @native No native identity is established by this source record.
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
                unitree_ros1_bounded_copy(&bits, &value->quaternion[i], 4);
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
                unitree_ros1_bounded_copy(&bits, &value->gyroscope[i], 4);
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
                unitree_ros1_bounded_copy(&bits, &value->accelerometer[i], 4);
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
                unitree_ros1_bounded_copy(&bits, &value->rpy[i], 4);
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
    (void)value;
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
                unitree_ros1_bounded_copy(&bits, &value->quaternion[i], 4);
                unitree_ros1_bounded_put(p + *offset, bits, 4);
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
                unitree_ros1_bounded_copy(&bits, &value->gyroscope[i], 4);
                unitree_ros1_bounded_put(p + *offset, bits, 4);
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
                unitree_ros1_bounded_copy(&bits, &value->accelerometer[i], 4);
                unitree_ros1_bounded_put(p + *offset, bits, 4);
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
                unitree_ros1_bounded_copy(&bits, &value->rpy[i], 4);
                unitree_ros1_bounded_put(p + *offset, bits, 4);
                *offset += 4;
            }
        }
    }
    unitree_ros1_bounded_put(p + *offset, (uint64_t)value->temperature, 1);
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
                uint32_t bits = (uint32_t)unitree_ros1_bounded_get(p + *offset, 4);
                unitree_ros1_bounded_copy(&value->quaternion[i], &bits, 4);
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
                uint32_t bits = (uint32_t)unitree_ros1_bounded_get(p + *offset, 4);
                unitree_ros1_bounded_copy(&value->gyroscope[i], &bits, 4);
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
                uint32_t bits = (uint32_t)unitree_ros1_bounded_get(p + *offset, 4);
                unitree_ros1_bounded_copy(&value->accelerometer[i], &bits, 4);
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
                uint32_t bits = (uint32_t)unitree_ros1_bounded_get(p + *offset, 4);
                unitree_ros1_bounded_copy(&value->rpy[i], &bits, 4);
            }
            *offset += 4;
        }
    }
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)unitree_ros1_bounded_get(p + *offset, 1);
        unitree_ros1_bounded_copy(&value->temperature, &bits, 1);
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
        return UNITREE_ROS1_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_1_unitree_legged_msgs_IMU_wire_size(value);
    if(capacity < n)
    {
        return UNITREE_ROS1_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || unitree_ros1_bounded_overlap(value, sizeof *value, output, n) || unitree_ros1_bounded_overlap(length, sizeof *length, output, n) ||
       unitree_ros1_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UNITREE_ROS1_BOUNDED_INVALID;
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
    roswasmc_bounded_1_unitree_legged_msgs_IMU next = UWVM_ROS_C_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 53u || length > 53u || unitree_ros1_bounded_overlap(value, sizeof *value, input, length))
    {
        return UNITREE_ROS1_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_1_unitree_legged_msgs_IMU_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UNITREE_ROS1_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_MOTORSTATE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_MOTORSTATE_0 != 0xb1a2149dUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_MOTORSTATE_1 != 0x2c2ce891UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_MOTORSTATE_2 != 0x6c26c853UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_MOTORSTATE_3 != 0xa9bb0b97UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_MOTORSTATE_4 != 0xb549168eUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_MOTORSTATE_5 != 0xfb1a2f24UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_MOTORSTATE_6 != 0x41400f1dUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_MOTORSTATE_7 != 0xf67a9346UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_MOTORSTATE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_MOTORSTATE_0 0xb1a2149dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_MOTORSTATE_1 0x2c2ce891UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_MOTORSTATE_2 0x6c26c853UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_MOTORSTATE_3 0xa9bb0b97UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_MOTORSTATE_4 0xb549168eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_MOTORSTATE_5 0xfb1a2f24UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_MOTORSTATE_6 0x41400f1dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_MOTORSTATE_7 0xf67a9346UL

/**
 * @brief Complete ROS 1 unitree_legged_msgs/MotorState value.
 * @details All 10 declared fields are retained in source order. The canonical representation occupies 38..38
 * bytes and is identified by UWVMROS1_be540cb22db5f08b6b9a8082777c76244e80f3148e9cfd63f510e4b2acdc0abf.
 * @native No native identity is established by this source record.
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
        unitree_ros1_bounded_copy(&bits, &value->q, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
        {
            return 0;
        }
    }
    {
        uint32_t bits;
        unitree_ros1_bounded_copy(&bits, &value->dq, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
        {
            return 0;
        }
    }
    {
        uint32_t bits;
        unitree_ros1_bounded_copy(&bits, &value->ddq, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
        {
            return 0;
        }
    }
    {
        uint32_t bits;
        unitree_ros1_bounded_copy(&bits, &value->tauEst, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
        {
            return 0;
        }
    }
    {
        uint32_t bits;
        unitree_ros1_bounded_copy(&bits, &value->q_raw, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
        {
            return 0;
        }
    }
    {
        uint32_t bits;
        unitree_ros1_bounded_copy(&bits, &value->dq_raw, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
        {
            return 0;
        }
    }
    {
        uint32_t bits;
        unitree_ros1_bounded_copy(&bits, &value->ddq_raw, 4);
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
    (void)value;
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
    unitree_ros1_bounded_put(p + *offset, (uint64_t)value->mode, 1);
    *offset += 1;
    {
        uint32_t bits;
        unitree_ros1_bounded_copy(&bits, &value->q, 4);
        unitree_ros1_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        unitree_ros1_bounded_copy(&bits, &value->dq, 4);
        unitree_ros1_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        unitree_ros1_bounded_copy(&bits, &value->ddq, 4);
        unitree_ros1_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        unitree_ros1_bounded_copy(&bits, &value->tauEst, 4);
        unitree_ros1_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        unitree_ros1_bounded_copy(&bits, &value->q_raw, 4);
        unitree_ros1_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        unitree_ros1_bounded_copy(&bits, &value->dq_raw, 4);
        unitree_ros1_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        unitree_ros1_bounded_copy(&bits, &value->ddq_raw, 4);
        unitree_ros1_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    unitree_ros1_bounded_put(p + *offset, (uint64_t)value->temperature, 1);
    *offset += 1;
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            unitree_ros1_bounded_put(p + *offset, (uint64_t)value->reserve[i], 4);
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
        uint8_t bits = (uint8_t)unitree_ros1_bounded_get(p + *offset, 1);
        unitree_ros1_bounded_copy(&value->mode, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)unitree_ros1_bounded_get(p + *offset, 4);
        unitree_ros1_bounded_copy(&value->q, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)unitree_ros1_bounded_get(p + *offset, 4);
        unitree_ros1_bounded_copy(&value->dq, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)unitree_ros1_bounded_get(p + *offset, 4);
        unitree_ros1_bounded_copy(&value->ddq, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)unitree_ros1_bounded_get(p + *offset, 4);
        unitree_ros1_bounded_copy(&value->tauEst, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)unitree_ros1_bounded_get(p + *offset, 4);
        unitree_ros1_bounded_copy(&value->q_raw, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)unitree_ros1_bounded_get(p + *offset, 4);
        unitree_ros1_bounded_copy(&value->dq_raw, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)unitree_ros1_bounded_get(p + *offset, 4);
        unitree_ros1_bounded_copy(&value->ddq_raw, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)unitree_ros1_bounded_get(p + *offset, 1);
        unitree_ros1_bounded_copy(&value->temperature, &bits, 1);
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
                uint32_t bits = (uint32_t)unitree_ros1_bounded_get(p + *offset, 4);
                unitree_ros1_bounded_copy(&value->reserve[i], &bits, 4);
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
        return UNITREE_ROS1_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_1_unitree_legged_msgs_MotorState_wire_size(value);
    if(capacity < n)
    {
        return UNITREE_ROS1_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || unitree_ros1_bounded_overlap(value, sizeof *value, output, n) || unitree_ros1_bounded_overlap(length, sizeof *length, output, n) ||
       unitree_ros1_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UNITREE_ROS1_BOUNDED_INVALID;
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
    roswasmc_bounded_1_unitree_legged_msgs_MotorState next = UWVM_ROS_C_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 38u || length > 38u || unitree_ros1_bounded_overlap(value, sizeof *value, input, length))
    {
        return UNITREE_ROS1_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_1_unitree_legged_msgs_MotorState_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UNITREE_ROS1_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_HIGHSTATE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_HIGHSTATE_0 != 0xe8a08577UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_HIGHSTATE_1 != 0x8bdc0854UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_HIGHSTATE_2 != 0xb97caadeUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_HIGHSTATE_3 != 0xfcba0b28UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_HIGHSTATE_4 != 0x4fe191a2UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_HIGHSTATE_5 != 0x07693fbcUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_HIGHSTATE_6 != 0x1a48b761UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_HIGHSTATE_7 != 0x74169785UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_HIGHSTATE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_HIGHSTATE_0 0xe8a08577UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_HIGHSTATE_1 0x8bdc0854UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_HIGHSTATE_2 0xb97caadeUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_HIGHSTATE_3 0xfcba0b28UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_HIGHSTATE_4 0x4fe191a2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_HIGHSTATE_5 0x07693fbcUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_HIGHSTATE_6 0x1a48b761UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_HIGHSTATE_7 0x74169785UL

/**
 * @brief Complete ROS 1 unitree_legged_msgs/HighState value.
 * @details All 25 declared fields are retained in source order. The canonical representation occupies 1087..1087
 * bytes and is identified by UWVMROS1_82ee0efaab21b5cb89e99f5c0f5daec583b48dd5feb2dd6a7e09ba9d9110b53d.
 * @native No native identity is established by this source record.
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
        unitree_ros1_bounded_copy(&bits, &value->progress, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
        {
            return 0;
        }
    }
    {
        uint32_t bits;
        unitree_ros1_bounded_copy(&bits, &value->footRaiseHeight, 4);
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
                unitree_ros1_bounded_copy(&bits, &value->position[i], 4);
                if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
                {
                    return 0;
                }
            }
        }
    }
    {
        uint32_t bits;
        unitree_ros1_bounded_copy(&bits, &value->bodyHeight, 4);
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
                unitree_ros1_bounded_copy(&bits, &value->velocity[i], 4);
                if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
                {
                    return 0;
                }
            }
        }
    }
    {
        uint32_t bits;
        unitree_ros1_bounded_copy(&bits, &value->yawSpeed, 4);
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
                unitree_ros1_bounded_copy(&bits, &value->rangeObstacle[i], 4);
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
            unitree_ros1_bounded_put(p + *offset, (uint64_t)value->head[i], 1);
            *offset += 1;
        }
    }
    unitree_ros1_bounded_put(p + *offset, (uint64_t)value->levelFlag, 1);
    *offset += 1;
    unitree_ros1_bounded_put(p + *offset, (uint64_t)value->frameReserve, 1);
    *offset += 1;
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            unitree_ros1_bounded_put(p + *offset, (uint64_t)value->SN[i], 4);
            *offset += 4;
        }
    }
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            unitree_ros1_bounded_put(p + *offset, (uint64_t)value->version[i], 4);
            *offset += 4;
        }
    }
    unitree_ros1_bounded_put(p + *offset, (uint64_t)value->bandWidth, 2);
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
            unitree_ros1_bounded_put(p + *offset, (uint64_t)value->footForce[i], 2);
            *offset += 2;
        }
    }
    {
        size_t i;
        for(i = 0; i < 4u; ++i)
        {
            unitree_ros1_bounded_put(p + *offset, (uint64_t)value->footForceEst[i], 2);
            *offset += 2;
        }
    }
    unitree_ros1_bounded_put(p + *offset, (uint64_t)value->mode, 1);
    *offset += 1;
    {
        uint32_t bits;
        unitree_ros1_bounded_copy(&bits, &value->progress, 4);
        unitree_ros1_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    unitree_ros1_bounded_put(p + *offset, (uint64_t)value->gaitType, 1);
    *offset += 1;
    {
        uint32_t bits;
        unitree_ros1_bounded_copy(&bits, &value->footRaiseHeight, 4);
        unitree_ros1_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        size_t i;
        for(i = 0; i < 3u; ++i)
        {
            {
                uint32_t bits;
                unitree_ros1_bounded_copy(&bits, &value->position[i], 4);
                unitree_ros1_bounded_put(p + *offset, bits, 4);
                *offset += 4;
            }
        }
    }
    {
        uint32_t bits;
        unitree_ros1_bounded_copy(&bits, &value->bodyHeight, 4);
        unitree_ros1_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        size_t i;
        for(i = 0; i < 3u; ++i)
        {
            {
                uint32_t bits;
                unitree_ros1_bounded_copy(&bits, &value->velocity[i], 4);
                unitree_ros1_bounded_put(p + *offset, bits, 4);
                *offset += 4;
            }
        }
    }
    {
        uint32_t bits;
        unitree_ros1_bounded_copy(&bits, &value->yawSpeed, 4);
        unitree_ros1_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        size_t i;
        for(i = 0; i < 4u; ++i)
        {
            {
                uint32_t bits;
                unitree_ros1_bounded_copy(&bits, &value->rangeObstacle[i], 4);
                unitree_ros1_bounded_put(p + *offset, bits, 4);
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
            unitree_ros1_bounded_put(p + *offset, (uint64_t)value->wirelessRemote[i], 1);
            *offset += 1;
        }
    }
    unitree_ros1_bounded_put(p + *offset, (uint64_t)value->reserve, 4);
    *offset += 4;
    unitree_ros1_bounded_put(p + *offset, (uint64_t)value->crc, 4);
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
                uint8_t bits = (uint8_t)unitree_ros1_bounded_get(p + *offset, 1);
                unitree_ros1_bounded_copy(&value->head[i], &bits, 1);
            }
            *offset += 1;
        }
    }
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)unitree_ros1_bounded_get(p + *offset, 1);
        unitree_ros1_bounded_copy(&value->levelFlag, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)unitree_ros1_bounded_get(p + *offset, 1);
        unitree_ros1_bounded_copy(&value->frameReserve, &bits, 1);
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
                uint32_t bits = (uint32_t)unitree_ros1_bounded_get(p + *offset, 4);
                unitree_ros1_bounded_copy(&value->SN[i], &bits, 4);
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
                uint32_t bits = (uint32_t)unitree_ros1_bounded_get(p + *offset, 4);
                unitree_ros1_bounded_copy(&value->version[i], &bits, 4);
            }
            *offset += 4;
        }
    }
    if(*offset > n || n - *offset < 2)
    {
        return 0;
    }
    {
        uint16_t bits = (uint16_t)unitree_ros1_bounded_get(p + *offset, 2);
        unitree_ros1_bounded_copy(&value->bandWidth, &bits, 2);
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
                uint16_t bits = (uint16_t)unitree_ros1_bounded_get(p + *offset, 2);
                unitree_ros1_bounded_copy(&value->footForce[i], &bits, 2);
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
                uint16_t bits = (uint16_t)unitree_ros1_bounded_get(p + *offset, 2);
                unitree_ros1_bounded_copy(&value->footForceEst[i], &bits, 2);
            }
            *offset += 2;
        }
    }
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)unitree_ros1_bounded_get(p + *offset, 1);
        unitree_ros1_bounded_copy(&value->mode, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)unitree_ros1_bounded_get(p + *offset, 4);
        unitree_ros1_bounded_copy(&value->progress, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)unitree_ros1_bounded_get(p + *offset, 1);
        unitree_ros1_bounded_copy(&value->gaitType, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)unitree_ros1_bounded_get(p + *offset, 4);
        unitree_ros1_bounded_copy(&value->footRaiseHeight, &bits, 4);
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
                uint32_t bits = (uint32_t)unitree_ros1_bounded_get(p + *offset, 4);
                unitree_ros1_bounded_copy(&value->position[i], &bits, 4);
            }
            *offset += 4;
        }
    }
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)unitree_ros1_bounded_get(p + *offset, 4);
        unitree_ros1_bounded_copy(&value->bodyHeight, &bits, 4);
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
                uint32_t bits = (uint32_t)unitree_ros1_bounded_get(p + *offset, 4);
                unitree_ros1_bounded_copy(&value->velocity[i], &bits, 4);
            }
            *offset += 4;
        }
    }
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)unitree_ros1_bounded_get(p + *offset, 4);
        unitree_ros1_bounded_copy(&value->yawSpeed, &bits, 4);
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
                uint32_t bits = (uint32_t)unitree_ros1_bounded_get(p + *offset, 4);
                unitree_ros1_bounded_copy(&value->rangeObstacle[i], &bits, 4);
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
                uint8_t bits = (uint8_t)unitree_ros1_bounded_get(p + *offset, 1);
                unitree_ros1_bounded_copy(&value->wirelessRemote[i], &bits, 1);
            }
            *offset += 1;
        }
    }
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)unitree_ros1_bounded_get(p + *offset, 4);
        unitree_ros1_bounded_copy(&value->reserve, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)unitree_ros1_bounded_get(p + *offset, 4);
        unitree_ros1_bounded_copy(&value->crc, &bits, 4);
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
        return UNITREE_ROS1_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_1_unitree_legged_msgs_HighState_wire_size(value);
    if(capacity < n)
    {
        return UNITREE_ROS1_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || unitree_ros1_bounded_overlap(value, sizeof *value, output, n) || unitree_ros1_bounded_overlap(length, sizeof *length, output, n) ||
       unitree_ros1_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UNITREE_ROS1_BOUNDED_INVALID;
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
    roswasmc_bounded_1_unitree_legged_msgs_HighState next = UWVM_ROS_C_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 1087u || length > 1087u || unitree_ros1_bounded_overlap(value, sizeof *value, input, length))
    {
        return UNITREE_ROS1_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_1_unitree_legged_msgs_HighState_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UNITREE_ROS1_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_MOTORCMD)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_MOTORCMD_0 != 0x038a9d94UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_MOTORCMD_1 != 0x3fd9684dUL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_MOTORCMD_2 != 0x6fe49d9cUL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_MOTORCMD_3 != 0xb475108bUL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_MOTORCMD_4 != 0x31049aa4UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_MOTORCMD_5 != 0xde36873cUL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_MOTORCMD_6 != 0x4ce24ebdUL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_MOTORCMD_7 != 0xe52d0769UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_MOTORCMD 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_MOTORCMD_0 0x038a9d94UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_MOTORCMD_1 0x3fd9684dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_MOTORCMD_2 0x6fe49d9cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_MOTORCMD_3 0xb475108bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_MOTORCMD_4 0x31049aa4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_MOTORCMD_5 0xde36873cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_MOTORCMD_6 0x4ce24ebdUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_MOTORCMD_7 0xe52d0769UL

/**
 * @brief Complete ROS 1 unitree_legged_msgs/MotorCmd value.
 * @details All 7 declared fields are retained in source order. The canonical representation occupies 33..33
 * bytes and is identified by UWVMROS1_632b25f209e72857182d92752aa72e3ab47a45e895cc352ee6dc05f1c1168083.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_1_unitree_legged_msgs_MotorCmd
{
    /** @brief Declared field mode; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/MotorCmd.mode: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsMotorCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t mode;
    /** @brief Declared field q; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/MotorCmd.q: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsMotorCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    float q;
    /** @brief Declared field dq; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/MotorCmd.dq: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsMotorCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    float dq;
    /** @brief Declared field tau; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/MotorCmd.tau: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsMotorCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    float tau;
    /** @brief Declared field Kp; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/MotorCmd.Kp: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsMotorCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    float Kp;
    /** @brief Declared field Kd; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/MotorCmd.Kd: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsMotorCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    float Kd;
    /** @brief Declared field reserve; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/MotorCmd.reserve: uint32; exactly 3 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsMotorCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    uint32_t reserve[3];
} roswasmc_bounded_1_unitree_legged_msgs_MotorCmd;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_MOTORCMD_MAX_WIRE_BYTES 33u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_MOTORCMD_MIN_WIRE_BYTES 33u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_MOTORCMD_CODEC_IDENTITY "UWVMROS1_632b25f209e72857182d92752aa72e3ab47a45e895cc352ee6dc05f1c1168083"

/**
 * @brief Validate every field of unitree_legged_msgs/MotorCmd.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static int roswasmc_bounded_1_unitree_legged_msgs_MotorCmd_valid(roswasmc_bounded_1_unitree_legged_msgs_MotorCmd const* value)
{
    if(!value)
    {
        return 0;
    }
    {
        uint32_t bits;
        unitree_ros1_bounded_copy(&bits, &value->q, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
        {
            return 0;
        }
    }
    {
        uint32_t bits;
        unitree_ros1_bounded_copy(&bits, &value->dq, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
        {
            return 0;
        }
    }
    {
        uint32_t bits;
        unitree_ros1_bounded_copy(&bits, &value->tau, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
        {
            return 0;
        }
    }
    {
        uint32_t bits;
        unitree_ros1_bounded_copy(&bits, &value->Kp, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
        {
            return 0;
        }
    }
    {
        uint32_t bits;
        unitree_ros1_bounded_copy(&bits, &value->Kd, 4);
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
 * @brief Measure the complete active canonical extent of unitree_legged_msgs/MotorCmd.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static size_t roswasmc_bounded_1_unitree_legged_msgs_MotorCmd_wire_size(roswasmc_bounded_1_unitree_legged_msgs_MotorCmd const* value)
{
    (void)value;
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
 * @brief Append all fields of unitree_legged_msgs/MotorCmd to an internal canonical buffer.
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
    roswasmc_bounded_1_unitree_legged_msgs_MotorCmd_write_fields(roswasmc_bounded_1_unitree_legged_msgs_MotorCmd const* value, unsigned char* p, size_t* offset)
{
    unitree_ros1_bounded_put(p + *offset, (uint64_t)value->mode, 1);
    *offset += 1;
    {
        uint32_t bits;
        unitree_ros1_bounded_copy(&bits, &value->q, 4);
        unitree_ros1_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        unitree_ros1_bounded_copy(&bits, &value->dq, 4);
        unitree_ros1_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        unitree_ros1_bounded_copy(&bits, &value->tau, 4);
        unitree_ros1_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        unitree_ros1_bounded_copy(&bits, &value->Kp, 4);
        unitree_ros1_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        unitree_ros1_bounded_copy(&bits, &value->Kd, 4);
        unitree_ros1_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        size_t i;
        for(i = 0; i < 3u; ++i)
        {
            unitree_ros1_bounded_put(p + *offset, (uint64_t)value->reserve[i], 4);
            *offset += 4;
        }
    }
}

/**
 * @brief Decode the full ordered field prefix of unitree_legged_msgs/MotorCmd.
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
inline static int roswasmc_bounded_1_unitree_legged_msgs_MotorCmd_read_fields(unsigned char const* p,
                                                                              size_t n,
                                                                              size_t* offset,
                                                                              roswasmc_bounded_1_unitree_legged_msgs_MotorCmd* value)
{
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)unitree_ros1_bounded_get(p + *offset, 1);
        unitree_ros1_bounded_copy(&value->mode, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)unitree_ros1_bounded_get(p + *offset, 4);
        unitree_ros1_bounded_copy(&value->q, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)unitree_ros1_bounded_get(p + *offset, 4);
        unitree_ros1_bounded_copy(&value->dq, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)unitree_ros1_bounded_get(p + *offset, 4);
        unitree_ros1_bounded_copy(&value->tau, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)unitree_ros1_bounded_get(p + *offset, 4);
        unitree_ros1_bounded_copy(&value->Kp, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)unitree_ros1_bounded_get(p + *offset, 4);
        unitree_ros1_bounded_copy(&value->Kd, &bits, 4);
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
                uint32_t bits = (uint32_t)unitree_ros1_bounded_get(p + *offset, 4);
                unitree_ros1_bounded_copy(&value->reserve[i], &bits, 4);
            }
            *offset += 4;
        }
    }
    return roswasmc_bounded_1_unitree_legged_msgs_MotorCmd_valid(value);
}

/**
 * @brief Encode the complete unitree_legged_msgs/MotorCmd record transactionally.
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
inline static uint32_t roswasmc_bounded_1_unitree_legged_msgs_MotorCmd_encode(roswasmc_bounded_1_unitree_legged_msgs_MotorCmd const* value,
                                                                              void* output,
                                                                              size_t capacity,
                                                                              size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_unitree_legged_msgs_MotorCmd_valid(value))
    {
        return UNITREE_ROS1_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_1_unitree_legged_msgs_MotorCmd_wire_size(value);
    if(capacity < n)
    {
        return UNITREE_ROS1_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || unitree_ros1_bounded_overlap(value, sizeof *value, output, n) || unitree_ros1_bounded_overlap(length, sizeof *length, output, n) ||
       unitree_ros1_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UNITREE_ROS1_BOUNDED_INVALID;
    }
    roswasmc_bounded_1_unitree_legged_msgs_MotorCmd_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/**
 * @brief Decode exactly one complete unitree_legged_msgs/MotorCmd record transactionally.
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
    roswasmc_bounded_1_unitree_legged_msgs_MotorCmd_decode(void const* input, size_t length, roswasmc_bounded_1_unitree_legged_msgs_MotorCmd* value)
{
    roswasmc_bounded_1_unitree_legged_msgs_MotorCmd next = UWVM_ROS_C_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 33u || length > 33u || unitree_ros1_bounded_overlap(value, sizeof *value, input, length))
    {
        return UNITREE_ROS1_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_1_unitree_legged_msgs_MotorCmd_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UNITREE_ROS1_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_LOWCMD)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_LOWCMD_0 != 0x4dc383faUL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_LOWCMD_1 != 0x08a49771UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_LOWCMD_2 != 0x462920b6UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_LOWCMD_3 != 0x2a30bb87UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_LOWCMD_4 != 0xac8ed822UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_LOWCMD_5 != 0xdb120bc7UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_LOWCMD_6 != 0xc60c109fUL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_LOWCMD_7 != 0xe45c7e60UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_LOWCMD 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_LOWCMD_0 0x4dc383faUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_LOWCMD_1 0x08a49771UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_LOWCMD_2 0x462920b6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_LOWCMD_3 0x2a30bb87UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_LOWCMD_4 0xac8ed822UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_LOWCMD_5 0xdb120bc7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_LOWCMD_6 0xc60c109fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_LOWCMD_7 0xe45c7e60UL

/**
 * @brief Complete ROS 1 unitree_legged_msgs/LowCmd value.
 * @details All 11 declared fields are retained in source order. The canonical representation occupies 734..734
 * bytes and is identified by UWVMROS1_11d3ac7c497f01fbf6624c39ec71fa613c462cd62acb20c1f263cdde672e9181.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_1_unitree_legged_msgs_LowCmd
{
    /** @brief Declared field head; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/LowCmd.head: uint8; exactly 2 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsLowCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t head[2];
    /** @brief Declared field levelFlag; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/LowCmd.levelFlag: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsLowCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t levelFlag;
    /** @brief Declared field frameReserve; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/LowCmd.frameReserve: uint8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsLowCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t frameReserve;
    /** @brief Declared field SN; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/LowCmd.SN: uint32; exactly 2 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsLowCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    uint32_t SN[2];
    /** @brief Declared field version; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/LowCmd.version: uint32; exactly 2 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsLowCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    uint32_t version[2];
    /** @brief Declared field bandWidth; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/LowCmd.bandWidth: uint16.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsLowCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    uint16_t bandWidth;
    /** @brief Declared field motorCmd; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/LowCmd.motorCmd: unitree_legged_msgs/MotorCmd; exactly 20 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsLowCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    roswasmc_bounded_1_unitree_legged_msgs_MotorCmd motorCmd[20];
    /** @brief Declared field bms; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/LowCmd.bms: unitree_legged_msgs/BmsCmd.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsLowCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    roswasmc_bounded_1_unitree_legged_msgs_BmsCmd bms;
    /** @brief Declared field wirelessRemote; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/LowCmd.wirelessRemote: uint8; exactly 40 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsLowCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t wirelessRemote[40];
    /** @brief Declared field reserve; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/LowCmd.reserve: uint32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsLowCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    uint32_t reserve;
    /** @brief Declared field crc; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief unitree_legged_msgs/LowCmd.crc: uint32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Unitree_legged_msgsLowCmd; share/platform/ros/rs/API-CONTRACT.md
     */
    uint32_t crc;
} roswasmc_bounded_1_unitree_legged_msgs_LowCmd;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_LOWCMD_MAX_WIRE_BYTES 734u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_LOWCMD_MIN_WIRE_BYTES 734u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_LOWCMD_CODEC_IDENTITY "UWVMROS1_11d3ac7c497f01fbf6624c39ec71fa613c462cd62acb20c1f263cdde672e9181"

/**
 * @brief Validate every field of unitree_legged_msgs/LowCmd.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static int roswasmc_bounded_1_unitree_legged_msgs_LowCmd_valid(roswasmc_bounded_1_unitree_legged_msgs_LowCmd const* value)
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
            if(!roswasmc_bounded_1_unitree_legged_msgs_MotorCmd_valid(&value->motorCmd[i]))
            {
                return 0;
            }
        }
    }
    if(!roswasmc_bounded_1_unitree_legged_msgs_BmsCmd_valid(&value->bms))
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
 * @brief Measure the complete active canonical extent of unitree_legged_msgs/LowCmd.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
inline static size_t roswasmc_bounded_1_unitree_legged_msgs_LowCmd_wire_size(roswasmc_bounded_1_unitree_legged_msgs_LowCmd const* value)
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
            n += roswasmc_bounded_1_unitree_legged_msgs_MotorCmd_wire_size(&value->motorCmd[i]);
        }
    }
    n += roswasmc_bounded_1_unitree_legged_msgs_BmsCmd_wire_size(&value->bms);
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
 * @brief Append all fields of unitree_legged_msgs/LowCmd to an internal canonical buffer.
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
    roswasmc_bounded_1_unitree_legged_msgs_LowCmd_write_fields(roswasmc_bounded_1_unitree_legged_msgs_LowCmd const* value, unsigned char* p, size_t* offset)
{
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            unitree_ros1_bounded_put(p + *offset, (uint64_t)value->head[i], 1);
            *offset += 1;
        }
    }
    unitree_ros1_bounded_put(p + *offset, (uint64_t)value->levelFlag, 1);
    *offset += 1;
    unitree_ros1_bounded_put(p + *offset, (uint64_t)value->frameReserve, 1);
    *offset += 1;
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            unitree_ros1_bounded_put(p + *offset, (uint64_t)value->SN[i], 4);
            *offset += 4;
        }
    }
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            unitree_ros1_bounded_put(p + *offset, (uint64_t)value->version[i], 4);
            *offset += 4;
        }
    }
    unitree_ros1_bounded_put(p + *offset, (uint64_t)value->bandWidth, 2);
    *offset += 2;
    {
        size_t i;
        for(i = 0; i < 20u; ++i)
        {
            roswasmc_bounded_1_unitree_legged_msgs_MotorCmd_write_fields(&value->motorCmd[i], p, offset);
        }
    }
    roswasmc_bounded_1_unitree_legged_msgs_BmsCmd_write_fields(&value->bms, p, offset);
    {
        size_t i;
        for(i = 0; i < 40u; ++i)
        {
            unitree_ros1_bounded_put(p + *offset, (uint64_t)value->wirelessRemote[i], 1);
            *offset += 1;
        }
    }
    unitree_ros1_bounded_put(p + *offset, (uint64_t)value->reserve, 4);
    *offset += 4;
    unitree_ros1_bounded_put(p + *offset, (uint64_t)value->crc, 4);
    *offset += 4;
}

/**
 * @brief Decode the full ordered field prefix of unitree_legged_msgs/LowCmd.
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
inline static int roswasmc_bounded_1_unitree_legged_msgs_LowCmd_read_fields(unsigned char const* p,
                                                                            size_t n,
                                                                            size_t* offset,
                                                                            roswasmc_bounded_1_unitree_legged_msgs_LowCmd* value)
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
                uint8_t bits = (uint8_t)unitree_ros1_bounded_get(p + *offset, 1);
                unitree_ros1_bounded_copy(&value->head[i], &bits, 1);
            }
            *offset += 1;
        }
    }
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)unitree_ros1_bounded_get(p + *offset, 1);
        unitree_ros1_bounded_copy(&value->levelFlag, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)unitree_ros1_bounded_get(p + *offset, 1);
        unitree_ros1_bounded_copy(&value->frameReserve, &bits, 1);
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
                uint32_t bits = (uint32_t)unitree_ros1_bounded_get(p + *offset, 4);
                unitree_ros1_bounded_copy(&value->SN[i], &bits, 4);
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
                uint32_t bits = (uint32_t)unitree_ros1_bounded_get(p + *offset, 4);
                unitree_ros1_bounded_copy(&value->version[i], &bits, 4);
            }
            *offset += 4;
        }
    }
    if(*offset > n || n - *offset < 2)
    {
        return 0;
    }
    {
        uint16_t bits = (uint16_t)unitree_ros1_bounded_get(p + *offset, 2);
        unitree_ros1_bounded_copy(&value->bandWidth, &bits, 2);
    }
    *offset += 2;
    {
        size_t i;
        for(i = 0; i < 20u; ++i)
        {
            if(!roswasmc_bounded_1_unitree_legged_msgs_MotorCmd_read_fields(p, n, offset, &value->motorCmd[i]))
            {
                return 0;
            }
        }
    }
    if(!roswasmc_bounded_1_unitree_legged_msgs_BmsCmd_read_fields(p, n, offset, &value->bms))
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
                uint8_t bits = (uint8_t)unitree_ros1_bounded_get(p + *offset, 1);
                unitree_ros1_bounded_copy(&value->wirelessRemote[i], &bits, 1);
            }
            *offset += 1;
        }
    }
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)unitree_ros1_bounded_get(p + *offset, 4);
        unitree_ros1_bounded_copy(&value->reserve, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)unitree_ros1_bounded_get(p + *offset, 4);
        unitree_ros1_bounded_copy(&value->crc, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_1_unitree_legged_msgs_LowCmd_valid(value);
}

/**
 * @brief Encode the complete unitree_legged_msgs/LowCmd record transactionally.
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
inline static uint32_t roswasmc_bounded_1_unitree_legged_msgs_LowCmd_encode(roswasmc_bounded_1_unitree_legged_msgs_LowCmd const* value,
                                                                            void* output,
                                                                            size_t capacity,
                                                                            size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_unitree_legged_msgs_LowCmd_valid(value))
    {
        return UNITREE_ROS1_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_1_unitree_legged_msgs_LowCmd_wire_size(value);
    if(capacity < n)
    {
        return UNITREE_ROS1_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || unitree_ros1_bounded_overlap(value, sizeof *value, output, n) || unitree_ros1_bounded_overlap(length, sizeof *length, output, n) ||
       unitree_ros1_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UNITREE_ROS1_BOUNDED_INVALID;
    }
    roswasmc_bounded_1_unitree_legged_msgs_LowCmd_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/**
 * @brief Decode exactly one complete unitree_legged_msgs/LowCmd record transactionally.
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
    roswasmc_bounded_1_unitree_legged_msgs_LowCmd_decode(void const* input, size_t length, roswasmc_bounded_1_unitree_legged_msgs_LowCmd* value)
{
    roswasmc_bounded_1_unitree_legged_msgs_LowCmd next = UWVM_ROS_C_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 734u || length > 734u || unitree_ros1_bounded_overlap(value, sizeof *value, input, length))
    {
        return UNITREE_ROS1_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_1_unitree_legged_msgs_LowCmd_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UNITREE_ROS1_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_LOWSTATE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_LOWSTATE_0 != 0x20daf4adUL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_LOWSTATE_1 != 0xb7ba4728UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_LOWSTATE_2 != 0xd87767eeUL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_LOWSTATE_3 != 0x7bd8cdb6UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_LOWSTATE_4 != 0x118c4fa2UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_LOWSTATE_5 != 0x12574e0aUL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_LOWSTATE_6 != 0xd78518d2UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_LOWSTATE_7 != 0x4cc95249UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_LOWSTATE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_LOWSTATE_0 0x20daf4adUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_LOWSTATE_1 0xb7ba4728UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_LOWSTATE_2 0xd87767eeUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_LOWSTATE_3 0x7bd8cdb6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_LOWSTATE_4 0x118c4fa2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_LOWSTATE_5 0x12574e0aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_LOWSTATE_6 0xd78518d2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_LOWSTATE_7 0x4cc95249UL

/**
 * @brief Complete ROS 1 unitree_legged_msgs/LowState value.
 * @details All 20 declared fields are retained in source order. The canonical representation occupies 1069..1069
 * bytes and is identified by UWVMROS1_37425ed49c0eebd762b6084ee413c7706fc43defc524414d3f50cdd2d25552c0.
 * @native No native identity is established by this source record.
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
            unitree_ros1_bounded_put(p + *offset, (uint64_t)value->head[i], 1);
            *offset += 1;
        }
    }
    unitree_ros1_bounded_put(p + *offset, (uint64_t)value->levelFlag, 1);
    *offset += 1;
    unitree_ros1_bounded_put(p + *offset, (uint64_t)value->frameReserve, 1);
    *offset += 1;
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            unitree_ros1_bounded_put(p + *offset, (uint64_t)value->SN[i], 4);
            *offset += 4;
        }
    }
    {
        size_t i;
        for(i = 0; i < 2u; ++i)
        {
            unitree_ros1_bounded_put(p + *offset, (uint64_t)value->version[i], 4);
            *offset += 4;
        }
    }
    unitree_ros1_bounded_put(p + *offset, (uint64_t)value->bandWidth, 2);
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
            unitree_ros1_bounded_put(p + *offset, (uint64_t)value->footForce[i], 2);
            *offset += 2;
        }
    }
    {
        size_t i;
        for(i = 0; i < 4u; ++i)
        {
            unitree_ros1_bounded_put(p + *offset, (uint64_t)value->footForceEst[i], 2);
            *offset += 2;
        }
    }
    unitree_ros1_bounded_put(p + *offset, (uint64_t)value->tick, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < 40u; ++i)
        {
            unitree_ros1_bounded_put(p + *offset, (uint64_t)value->wirelessRemote[i], 1);
            *offset += 1;
        }
    }
    unitree_ros1_bounded_put(p + *offset, (uint64_t)value->reserve, 4);
    *offset += 4;
    unitree_ros1_bounded_put(p + *offset, (uint64_t)value->crc, 4);
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
                uint8_t bits = (uint8_t)unitree_ros1_bounded_get(p + *offset, 1);
                unitree_ros1_bounded_copy(&value->head[i], &bits, 1);
            }
            *offset += 1;
        }
    }
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)unitree_ros1_bounded_get(p + *offset, 1);
        unitree_ros1_bounded_copy(&value->levelFlag, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
    {
        return 0;
    }
    {
        uint8_t bits = (uint8_t)unitree_ros1_bounded_get(p + *offset, 1);
        unitree_ros1_bounded_copy(&value->frameReserve, &bits, 1);
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
                uint32_t bits = (uint32_t)unitree_ros1_bounded_get(p + *offset, 4);
                unitree_ros1_bounded_copy(&value->SN[i], &bits, 4);
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
                uint32_t bits = (uint32_t)unitree_ros1_bounded_get(p + *offset, 4);
                unitree_ros1_bounded_copy(&value->version[i], &bits, 4);
            }
            *offset += 4;
        }
    }
    if(*offset > n || n - *offset < 2)
    {
        return 0;
    }
    {
        uint16_t bits = (uint16_t)unitree_ros1_bounded_get(p + *offset, 2);
        unitree_ros1_bounded_copy(&value->bandWidth, &bits, 2);
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
                uint16_t bits = (uint16_t)unitree_ros1_bounded_get(p + *offset, 2);
                unitree_ros1_bounded_copy(&value->footForce[i], &bits, 2);
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
                uint16_t bits = (uint16_t)unitree_ros1_bounded_get(p + *offset, 2);
                unitree_ros1_bounded_copy(&value->footForceEst[i], &bits, 2);
            }
            *offset += 2;
        }
    }
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)unitree_ros1_bounded_get(p + *offset, 4);
        unitree_ros1_bounded_copy(&value->tick, &bits, 4);
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
                uint8_t bits = (uint8_t)unitree_ros1_bounded_get(p + *offset, 1);
                unitree_ros1_bounded_copy(&value->wirelessRemote[i], &bits, 1);
            }
            *offset += 1;
        }
    }
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)unitree_ros1_bounded_get(p + *offset, 4);
        unitree_ros1_bounded_copy(&value->reserve, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
    {
        return 0;
    }
    {
        uint32_t bits = (uint32_t)unitree_ros1_bounded_get(p + *offset, 4);
        unitree_ros1_bounded_copy(&value->crc, &bits, 4);
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
        return UNITREE_ROS1_BOUNDED_INVALID;
    }
    n = roswasmc_bounded_1_unitree_legged_msgs_LowState_wire_size(value);
    if(capacity < n)
    {
        return UNITREE_ROS1_BOUNDED_TOO_LARGE;
    }
    if((n && !output) || unitree_ros1_bounded_overlap(value, sizeof *value, output, n) || unitree_ros1_bounded_overlap(length, sizeof *length, output, n) ||
       unitree_ros1_bounded_overlap(length, sizeof *length, value, sizeof *value))
    {
        return UNITREE_ROS1_BOUNDED_INVALID;
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
    roswasmc_bounded_1_unitree_legged_msgs_LowState next = UWVM_ROS_C_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 1069u || length > 1069u || unitree_ros1_bounded_overlap(value, sizeof *value, input, length))
    {
        return UNITREE_ROS1_BOUNDED_INVALID;
    }
    if(!roswasmc_bounded_1_unitree_legged_msgs_LowState_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
    {
        return UNITREE_ROS1_BOUNDED_INVALID;
    }
    *value = next;
    return 0;
}
#endif
#undef UNITREE_ROS1_BOUNDED_ASSERT
#endif
