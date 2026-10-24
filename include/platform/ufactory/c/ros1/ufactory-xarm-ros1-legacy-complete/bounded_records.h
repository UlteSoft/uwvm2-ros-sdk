/** @brief @file Generated bounded-v2 canonical values; no native ROS serialization or authority.
 * Every dynamic field has inline caller-owned capacity. Encode validates and measures
 * the full value before writes; decode commits one temporary only after full validation.
 * Supply distinct record, byte and size-output storage; overlap is explicitly refused.
 * Empty Service/Action components use a C layout dummy that is never a wire field. */
#ifndef UWVM_ROS_BOUNDED_RECORDS_8EA89086406D77149EE43B10ED590AE19995180CBF1BFFF6AA3CA035FC8B1D01
#define UWVM_ROS_BOUNDED_RECORDS_8EA89086406D77149EE43B10ED590AE19995180CBF1BFFF6AA3CA035FC8B1D01
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
/**
 * @brief Copy exactly one initialized primitive or UTF-8 byte extent.
 * @details Internal synchronous helper. Caller establishes sufficient nonoverlapping storage before use; this
 * function performs no bounds check or ROS operation.
 * @param[out] out Exclusive writable caller storage of at least n bytes.
 * @param[in] in Immutable initialized input of at least n bytes.
 * @param[in] n Exact byte count; zero copies no bytes.
 * @ownership Both buffers remain caller-owned and stable through return.
 */
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

/**
 * @brief Read an unsigned little-endian primitive without native structure padding.
 * @details Internal caller establishes the complete initialized extent before entry. No allocation, pointer
 * retention, or transport operation occurs.
 * @param[in] p Immutable initialized input of at least n bytes.
 * @param[in] n Primitive byte width, from 1 through 8.
 * @return Exact zero-extended unsigned bit pattern.
 */
static inline uint64_t uwvm_bounded_get(unsigned char const* p, unsigned n)
{
    uint64_t v = 0;
    unsigned i;
    for(i = 0; i < n; ++i)
        v |= (uint64_t)p[i] << (8 * i);
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
static inline void uwvm_bounded_put(unsigned char* p, uint64_t v, unsigned n)
{
    unsigned i;
    for(i = 0; i < n; ++i)
        p[i] = (unsigned char)(v >> (8 * i));
}

/** @brief Strict Unicode scalar UTF-8, rejecting embedded NUL as required by this profile. */
/**
 * @brief Validate the complete strict Unicode scalar UTF-8 extent.
 * @details Reject embedded NUL, malformed continuations, overlong forms, surrogates, and out-of-range
 * codepoints. The immutable input is borrowed synchronously with no allocation.
 * @param[in] p Initialized immutable input of n bytes.
 * @param[in] n Exact active byte extent; zero is a valid empty string.
 * @return Nonzero only when every byte is admitted by the canonical string profile.
 */
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
static inline int uwvm_bounded_overlap(void const* a, size_t an, void const* b, size_t bn)
{
    uintptr_t x = (uintptr_t)a, y = (uintptr_t)b;
    if((an && !a) || (bn && !b) || an > UINTPTR_MAX - x || bn > UINTPTR_MAX - y)
        return 1;
    return an && bn && x < y + bn && y < x + an;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POINT)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POINT_0 != 0x82ef1675UL ||                                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POINT_1 != 0xb97d1448UL ||                                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POINT_2 != 0xe124f62cUL ||                                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POINT_3 != 0x376f2131UL ||                                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POINT_4 != 0x7509cfe4UL ||                                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POINT_5 != 0xe47a0145UL ||                                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POINT_6 != 0x11d41d87UL ||                                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POINT_7 != 0x93e4d387UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POINT 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POINT_0 0x82ef1675UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POINT_1 0xb97d1448UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POINT_2 0xe124f62cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POINT_3 0x376f2131UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POINT_4 0x7509cfe4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POINT_5 0xe47a0145UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POINT_6 0x11d41d87UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POINT_7 0x93e4d387UL

/** @brief Complete ROS1 geometry_msgs/Point value; no field projects away native data. */
/**
 * @brief Complete ROS 1 geometry_msgs/Point value.
 * @details All 3 declared fields are retained in source order. The canonical representation occupies 24..24
 * bytes and is identified by UWVMROS1_b55e2bde60f6cedb426cada54bc7baefc536c7bc731bd49fb152d89a892de62b.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_1_geometry_msgs_Point
{
    /** @brief Declared field x; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief geometry_msgs/Point.x: float64.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Geometry_msgsPoint; share/platform/ros/rs/API-CONTRACT.md
     */
    double x;
    /** @brief Declared field y; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief geometry_msgs/Point.y: float64.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Geometry_msgsPoint; share/platform/ros/rs/API-CONTRACT.md
     */
    double y;
    /** @brief Declared field z; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief geometry_msgs/Point.z: float64.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Geometry_msgsPoint; share/platform/ros/rs/API-CONTRACT.md
     */
    double z;
} roswasmc_bounded_1_geometry_msgs_Point;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POINT_MAX_WIRE_BYTES 24u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POINT_MIN_WIRE_BYTES 24u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POINT_CODEC_IDENTITY "UWVMROS1_b55e2bde60f6cedb426cada54bc7baefc536c7bc731bd49fb152d89a892de62b"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate every field of geometry_msgs/Point.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline int roswasmc_bounded_1_geometry_msgs_Point_valid(roswasmc_bounded_1_geometry_msgs_Point const* value)
{
    if(!value)
        return 0;
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->x, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
            return 0;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->y, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
            return 0;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->z, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
            return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the complete active canonical extent of geometry_msgs/Point.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline size_t roswasmc_bounded_1_geometry_msgs_Point_wire_size(roswasmc_bounded_1_geometry_msgs_Point const* value)
{
    size_t n = 0;
    (void)value;
    n += 8;
    n += 8;
    n += 8;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Append all fields of geometry_msgs/Point to an internal canonical buffer.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete prevalidated immutable record.
 * @param[out] p Sufficient exclusive output storage established by the public encoder.
 * @param[in,out] offset Exclusive initialized writer cursor.
 * @return No value; internal caller guarantees the measured capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline void roswasmc_bounded_1_geometry_msgs_Point_write_fields(roswasmc_bounded_1_geometry_msgs_Point const* value, unsigned char* p, size_t* offset)
{
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->x, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->y, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->z, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Decode the full ordered field prefix of geometry_msgs/Point.
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
static inline int
    roswasmc_bounded_1_geometry_msgs_Point_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_1_geometry_msgs_Point* value)
{
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->x, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->y, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->z, &bits, 8);
    }
    *offset += 8;
    return roswasmc_bounded_1_geometry_msgs_Point_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode the complete geometry_msgs/Point record transactionally.
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
static inline uint32_t
    roswasmc_bounded_1_geometry_msgs_Point_encode(roswasmc_bounded_1_geometry_msgs_Point const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_geometry_msgs_Point_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_geometry_msgs_Point_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_geometry_msgs_Point_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete geometry_msgs/Point record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] input Immutable complete canonical body, disjoint from value.
 * @param[in] length Exact input byte count; trailing bytes are refused.
 * @param[out] value Caller-owned complete record; unchanged on every refusal.
 * @return Status 0 on complete success, otherwise 22; no partial record is exposed.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline uint32_t roswasmc_bounded_1_geometry_msgs_Point_decode(void const* input, size_t length, roswasmc_bounded_1_geometry_msgs_Point* value)
{
    roswasmc_bounded_1_geometry_msgs_Point next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_geometry_msgs_Point);
    size_t offset = 0;
    if(!value || (length && !input) || length < 24u || length > 24u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_geometry_msgs_Point_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_QUATERNION)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_QUATERNION_0 != 0x84d7d1b4UL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_QUATERNION_1 != 0xc899d875UL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_QUATERNION_2 != 0xf288b383UL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_QUATERNION_3 != 0xca824e7cUL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_QUATERNION_4 != 0xd29586a3UL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_QUATERNION_5 != 0x60f1c1b7UL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_QUATERNION_6 != 0x78b067d2UL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_QUATERNION_7 != 0x5073f3c1UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_QUATERNION 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_QUATERNION_0 0x84d7d1b4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_QUATERNION_1 0xc899d875UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_QUATERNION_2 0xf288b383UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_QUATERNION_3 0xca824e7cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_QUATERNION_4 0xd29586a3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_QUATERNION_5 0x60f1c1b7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_QUATERNION_6 0x78b067d2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_QUATERNION_7 0x5073f3c1UL

/** @brief Complete ROS1 geometry_msgs/Quaternion value; no field projects away native data. */
/**
 * @brief Complete ROS 1 geometry_msgs/Quaternion value.
 * @details All 4 declared fields are retained in source order. The canonical representation occupies 32..32
 * bytes and is identified by UWVMROS1_48fe20d5d29a8ca1a630605a58f80baacc52d9a65b1ca87efd50ffdd52882934.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_1_geometry_msgs_Quaternion
{
    /** @brief Declared field x; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief geometry_msgs/Quaternion.x: float64.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Geometry_msgsQuaternion; share/platform/ros/rs/API-CONTRACT.md
     */
    double x;
    /** @brief Declared field y; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief geometry_msgs/Quaternion.y: float64.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Geometry_msgsQuaternion; share/platform/ros/rs/API-CONTRACT.md
     */
    double y;
    /** @brief Declared field z; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief geometry_msgs/Quaternion.z: float64.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Geometry_msgsQuaternion; share/platform/ros/rs/API-CONTRACT.md
     */
    double z;
    /** @brief Declared field w; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief geometry_msgs/Quaternion.w: float64.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Geometry_msgsQuaternion; share/platform/ros/rs/API-CONTRACT.md
     */
    double w;
} roswasmc_bounded_1_geometry_msgs_Quaternion;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_QUATERNION_MAX_WIRE_BYTES 32u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_QUATERNION_MIN_WIRE_BYTES 32u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_QUATERNION_CODEC_IDENTITY "UWVMROS1_48fe20d5d29a8ca1a630605a58f80baacc52d9a65b1ca87efd50ffdd52882934"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate every field of geometry_msgs/Quaternion.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline int roswasmc_bounded_1_geometry_msgs_Quaternion_valid(roswasmc_bounded_1_geometry_msgs_Quaternion const* value)
{
    if(!value)
        return 0;
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->x, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
            return 0;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->y, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
            return 0;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->z, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
            return 0;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->w, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
            return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the complete active canonical extent of geometry_msgs/Quaternion.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline size_t roswasmc_bounded_1_geometry_msgs_Quaternion_wire_size(roswasmc_bounded_1_geometry_msgs_Quaternion const* value)
{
    size_t n = 0;
    (void)value;
    n += 8;
    n += 8;
    n += 8;
    n += 8;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Append all fields of geometry_msgs/Quaternion to an internal canonical buffer.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete prevalidated immutable record.
 * @param[out] p Sufficient exclusive output storage established by the public encoder.
 * @param[in,out] offset Exclusive initialized writer cursor.
 * @return No value; internal caller guarantees the measured capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline void
    roswasmc_bounded_1_geometry_msgs_Quaternion_write_fields(roswasmc_bounded_1_geometry_msgs_Quaternion const* value, unsigned char* p, size_t* offset)
{
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->x, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->y, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->z, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->w, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Decode the full ordered field prefix of geometry_msgs/Quaternion.
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
static inline int roswasmc_bounded_1_geometry_msgs_Quaternion_read_fields(unsigned char const* p,
                                                                          size_t n,
                                                                          size_t* offset,
                                                                          roswasmc_bounded_1_geometry_msgs_Quaternion* value)
{
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->x, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->y, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->z, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->w, &bits, 8);
    }
    *offset += 8;
    return roswasmc_bounded_1_geometry_msgs_Quaternion_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode the complete geometry_msgs/Quaternion record transactionally.
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
static inline uint32_t
    roswasmc_bounded_1_geometry_msgs_Quaternion_encode(roswasmc_bounded_1_geometry_msgs_Quaternion const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_geometry_msgs_Quaternion_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_geometry_msgs_Quaternion_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_geometry_msgs_Quaternion_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete geometry_msgs/Quaternion record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] input Immutable complete canonical body, disjoint from value.
 * @param[in] length Exact input byte count; trailing bytes are refused.
 * @param[out] value Caller-owned complete record; unchanged on every refusal.
 * @return Status 0 on complete success, otherwise 22; no partial record is exposed.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline uint32_t roswasmc_bounded_1_geometry_msgs_Quaternion_decode(void const* input, size_t length, roswasmc_bounded_1_geometry_msgs_Quaternion* value)
{
    roswasmc_bounded_1_geometry_msgs_Quaternion next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_geometry_msgs_Quaternion);
    size_t offset = 0;
    if(!value || (length && !input) || length < 32u || length > 32u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_geometry_msgs_Quaternion_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POSE_0 != 0x0c47ed4dUL ||                                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POSE_1 != 0x41556936UL ||                                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POSE_2 != 0xd0740ee4UL ||                                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POSE_3 != 0x656e90dbUL ||                                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POSE_4 != 0xa818a89eUL ||                                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POSE_5 != 0xc3b14b61UL ||                                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POSE_6 != 0x526afc7cUL ||                                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POSE_7 != 0xc0133880UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POSE_0 0x0c47ed4dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POSE_1 0x41556936UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POSE_2 0xd0740ee4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POSE_3 0x656e90dbUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POSE_4 0xa818a89eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POSE_5 0xc3b14b61UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POSE_6 0x526afc7cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POSE_7 0xc0133880UL

/** @brief Complete ROS1 geometry_msgs/Pose value; no field projects away native data. */
/**
 * @brief Complete ROS 1 geometry_msgs/Pose value.
 * @details All 2 declared fields are retained in source order. The canonical representation occupies 56..56
 * bytes and is identified by UWVMROS1_e49ed287cd0de31a16c8cd49ad8f41f81d44e23306b8dcb61da6e0e789595471.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_1_geometry_msgs_Pose
{
    /** @brief Declared field position; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief geometry_msgs/Pose.position: geometry_msgs/Point.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Geometry_msgsPose; share/platform/ros/rs/API-CONTRACT.md
     */
    roswasmc_bounded_1_geometry_msgs_Point position;
    /** @brief Declared field orientation; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief geometry_msgs/Pose.orientation: geometry_msgs/Quaternion.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Geometry_msgsPose; share/platform/ros/rs/API-CONTRACT.md
     */
    roswasmc_bounded_1_geometry_msgs_Quaternion orientation;
} roswasmc_bounded_1_geometry_msgs_Pose;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POSE_MAX_WIRE_BYTES 56u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POSE_MIN_WIRE_BYTES 56u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POSE_CODEC_IDENTITY "UWVMROS1_e49ed287cd0de31a16c8cd49ad8f41f81d44e23306b8dcb61da6e0e789595471"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate every field of geometry_msgs/Pose.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline int roswasmc_bounded_1_geometry_msgs_Pose_valid(roswasmc_bounded_1_geometry_msgs_Pose const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_1_geometry_msgs_Point_valid(&value->position))
        return 0;
    if(!roswasmc_bounded_1_geometry_msgs_Quaternion_valid(&value->orientation))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the complete active canonical extent of geometry_msgs/Pose.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline size_t roswasmc_bounded_1_geometry_msgs_Pose_wire_size(roswasmc_bounded_1_geometry_msgs_Pose const* value)
{
    size_t n = 0;
    (void)value;
    n += roswasmc_bounded_1_geometry_msgs_Point_wire_size(&value->position);
    n += roswasmc_bounded_1_geometry_msgs_Quaternion_wire_size(&value->orientation);
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Append all fields of geometry_msgs/Pose to an internal canonical buffer.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete prevalidated immutable record.
 * @param[out] p Sufficient exclusive output storage established by the public encoder.
 * @param[in,out] offset Exclusive initialized writer cursor.
 * @return No value; internal caller guarantees the measured capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline void roswasmc_bounded_1_geometry_msgs_Pose_write_fields(roswasmc_bounded_1_geometry_msgs_Pose const* value, unsigned char* p, size_t* offset)
{
    roswasmc_bounded_1_geometry_msgs_Point_write_fields(&value->position, p, offset);
    roswasmc_bounded_1_geometry_msgs_Quaternion_write_fields(&value->orientation, p, offset);
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Decode the full ordered field prefix of geometry_msgs/Pose.
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
static inline int
    roswasmc_bounded_1_geometry_msgs_Pose_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_1_geometry_msgs_Pose* value)
{
    if(!roswasmc_bounded_1_geometry_msgs_Point_read_fields(p, n, offset, &value->position))
        return 0;
    if(!roswasmc_bounded_1_geometry_msgs_Quaternion_read_fields(p, n, offset, &value->orientation))
        return 0;
    return roswasmc_bounded_1_geometry_msgs_Pose_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode the complete geometry_msgs/Pose record transactionally.
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
static inline uint32_t
    roswasmc_bounded_1_geometry_msgs_Pose_encode(roswasmc_bounded_1_geometry_msgs_Pose const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_geometry_msgs_Pose_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_geometry_msgs_Pose_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_geometry_msgs_Pose_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete geometry_msgs/Pose record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] input Immutable complete canonical body, disjoint from value.
 * @param[in] length Exact input byte count; trailing bytes are refused.
 * @param[out] value Caller-owned complete record; unchanged on every refusal.
 * @return Status 0 on complete success, otherwise 22; no partial record is exposed.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline uint32_t roswasmc_bounded_1_geometry_msgs_Pose_decode(void const* input, size_t length, roswasmc_bounded_1_geometry_msgs_Pose* value)
{
    roswasmc_bounded_1_geometry_msgs_Pose next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_geometry_msgs_Pose);
    size_t offset = 0;
    if(!value || (length && !input) || length < 56u || length > 56u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_geometry_msgs_Pose_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_IOSTATE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_IOSTATE_0 != 0xaeb351e4UL ||                                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_IOSTATE_1 != 0xd75d31bdUL ||                                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_IOSTATE_2 != 0x6d57a420UL ||                                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_IOSTATE_3 != 0xcb876877UL ||                                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_IOSTATE_4 != 0xc94efe67UL ||                                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_IOSTATE_5 != 0x6201eda4UL ||                                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_IOSTATE_6 != 0xbaa7eb19UL ||                                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_IOSTATE_7 != 0x311110f5UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_IOSTATE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_IOSTATE_0 0xaeb351e4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_IOSTATE_1 0xd75d31bdUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_IOSTATE_2 0x6d57a420UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_IOSTATE_3 0xcb876877UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_IOSTATE_4 0xc94efe67UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_IOSTATE_5 0x6201eda4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_IOSTATE_6 0xbaa7eb19UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_IOSTATE_7 0x311110f5UL

/** @brief Complete ROS1 xarm_msgs/IOState value; no field projects away native data. */
/**
 * @brief Complete ROS 1 xarm_msgs/IOState value.
 * @details All 4 declared fields are retained in source order. The canonical representation occupies 16..16
 * bytes and is identified by UWVMROS1_93ef0c71a5fed6eaa7c8e87447b280778ffd05c376cf41a577c71acfeb02d996.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_1_xarm_msgs_IOState
{
    /** @brief Declared field digital_1; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief xarm_msgs/IOState.digital_1: int32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Xarm_msgsIOState; share/platform/ros/rs/API-CONTRACT.md
     */
    int32_t digital_1;
    /** @brief Declared field digital_2; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief xarm_msgs/IOState.digital_2: int32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Xarm_msgsIOState; share/platform/ros/rs/API-CONTRACT.md
     */
    int32_t digital_2;
    /** @brief Declared field analog_1; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief xarm_msgs/IOState.analog_1: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Xarm_msgsIOState; share/platform/ros/rs/API-CONTRACT.md
     */
    float analog_1;
    /** @brief Declared field analog_2; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief xarm_msgs/IOState.analog_2: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Xarm_msgsIOState; share/platform/ros/rs/API-CONTRACT.md
     */
    float analog_2;
} roswasmc_bounded_1_xarm_msgs_IOState;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_1_XARM_MSGS_IOSTATE_MAX_WIRE_BYTES 16u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_1_XARM_MSGS_IOSTATE_MIN_WIRE_BYTES 16u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_1_XARM_MSGS_IOSTATE_CODEC_IDENTITY "UWVMROS1_93ef0c71a5fed6eaa7c8e87447b280778ffd05c376cf41a577c71acfeb02d996"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate every field of xarm_msgs/IOState.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline int roswasmc_bounded_1_xarm_msgs_IOState_valid(roswasmc_bounded_1_xarm_msgs_IOState const* value)
{
    if(!value)
        return 0;
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->analog_1, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->analog_2, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the complete active canonical extent of xarm_msgs/IOState.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline size_t roswasmc_bounded_1_xarm_msgs_IOState_wire_size(roswasmc_bounded_1_xarm_msgs_IOState const* value)
{
    size_t n = 0;
    (void)value;
    n += 4;
    n += 4;
    n += 4;
    n += 4;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Append all fields of xarm_msgs/IOState to an internal canonical buffer.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete prevalidated immutable record.
 * @param[out] p Sufficient exclusive output storage established by the public encoder.
 * @param[in,out] offset Exclusive initialized writer cursor.
 * @return No value; internal caller guarantees the measured capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline void roswasmc_bounded_1_xarm_msgs_IOState_write_fields(roswasmc_bounded_1_xarm_msgs_IOState const* value, unsigned char* p, size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->digital_1, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, (uint64_t)value->digital_2, 4);
    *offset += 4;
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->analog_1, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->analog_2, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Decode the full ordered field prefix of xarm_msgs/IOState.
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
static inline int
    roswasmc_bounded_1_xarm_msgs_IOState_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_1_xarm_msgs_IOState* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->digital_1, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->digital_2, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->analog_1, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->analog_2, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_1_xarm_msgs_IOState_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode the complete xarm_msgs/IOState record transactionally.
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
static inline uint32_t
    roswasmc_bounded_1_xarm_msgs_IOState_encode(roswasmc_bounded_1_xarm_msgs_IOState const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_xarm_msgs_IOState_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_xarm_msgs_IOState_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_xarm_msgs_IOState_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete xarm_msgs/IOState record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] input Immutable complete canonical body, disjoint from value.
 * @param[in] length Exact input byte count; trailing bytes are refused.
 * @param[out] value Caller-owned complete record; unchanged on every refusal.
 * @return Status 0 on complete success, otherwise 22; no partial record is exposed.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline uint32_t roswasmc_bounded_1_xarm_msgs_IOState_decode(void const* input, size_t length, roswasmc_bounded_1_xarm_msgs_IOState* value)
{
    roswasmc_bounded_1_xarm_msgs_IOState next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_xarm_msgs_IOState);
    size_t offset = 0;
    if(!value || (length && !input) || length < 16u || length > 16u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_xarm_msgs_IOState_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_ROBOTMSG)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_ROBOTMSG_0 != 0x421b2492UL ||                                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_ROBOTMSG_1 != 0x701bda40UL ||                                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_ROBOTMSG_2 != 0x186a99baUL ||                                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_ROBOTMSG_3 != 0xbcf117a4UL ||                                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_ROBOTMSG_4 != 0x163dcda3UL ||                                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_ROBOTMSG_5 != 0x7b0c83a3UL ||                                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_ROBOTMSG_6 != 0x812c3ad5UL ||                                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_ROBOTMSG_7 != 0x9251ebd2UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_ROBOTMSG 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_ROBOTMSG_0 0x421b2492UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_ROBOTMSG_1 0x701bda40UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_ROBOTMSG_2 0x186a99baUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_ROBOTMSG_3 0xbcf117a4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_ROBOTMSG_4 0x163dcda3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_ROBOTMSG_5 0x7b0c83a3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_ROBOTMSG_6 0x812c3ad5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_ROBOTMSG_7 0x9251ebd2UL

/** @brief At most7 initialized logical elements; unused capacity is never serialized. */
/**
 * @brief Own a bounded canonical sequence or UTF-8 byte string inline.
 * @details The active size is 0 through 7. Unused capacity is never serialized or read. This Guest storage is
 * neither a native ROS allocation nor an authority token.
 */
typedef struct
{
    /**
     * @brief Number of initialized active elements.
     * @details Must be no greater than 7; decoders and encoders reject larger values without truncation.
     */
    uint32_t size;
    /**
     * @brief Caller-owned complete finite element capacity.
     * @details Only the initialized active size prefix is meaningful. Retain that prefix unchanged through
     * synchronous encoding; no native pointer or permission is stored.
     */
    float data[7];
} roswasmc_bounded_1_xarm_msgs_RobotMsg_angle_sequence;

/** @brief Complete ROS1 xarm_msgs/RobotMsg value; no field projects away native data. */
/**
 * @brief Complete ROS 1 xarm_msgs/RobotMsg value.
 * @details All 10 declared fields are retained in source order. The canonical representation occupies 66..94
 * bytes and is identified by UWVMROS1_e5509a530075a638bfa1f09cf5fd78c4d609dccbd79ddd75ef50f5061f68b0f7.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_1_xarm_msgs_RobotMsg
{
    /** @brief Declared field state; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief xarm_msgs/RobotMsg.state: int16.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Xarm_msgsRobotMsg; share/platform/ros/rs/API-CONTRACT.md
     */
    int16_t state;
    /** @brief Declared field mode; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief xarm_msgs/RobotMsg.mode: int16.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Xarm_msgsRobotMsg; share/platform/ros/rs/API-CONTRACT.md
     */
    int16_t mode;
    /** @brief Declared field cmdnum; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief xarm_msgs/RobotMsg.cmdnum: int16.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Xarm_msgsRobotMsg; share/platform/ros/rs/API-CONTRACT.md
     */
    int16_t cmdnum;
    /** @brief Declared field mt_brake; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief xarm_msgs/RobotMsg.mt_brake: int16.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Xarm_msgsRobotMsg; share/platform/ros/rs/API-CONTRACT.md
     */
    int16_t mt_brake;
    /** @brief Declared field mt_able; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief xarm_msgs/RobotMsg.mt_able: int16.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Xarm_msgsRobotMsg; share/platform/ros/rs/API-CONTRACT.md
     */
    int16_t mt_able;
    /** @brief Declared field err; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief xarm_msgs/RobotMsg.err: int16.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Xarm_msgsRobotMsg; share/platform/ros/rs/API-CONTRACT.md
     */
    int16_t err;
    /** @brief Declared field warn; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief xarm_msgs/RobotMsg.warn: int16.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Xarm_msgsRobotMsg; share/platform/ros/rs/API-CONTRACT.md
     */
    int16_t warn;
    /** @brief Declared field angle; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief xarm_msgs/RobotMsg.angle: float32; 0..7 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Xarm_msgsRobotMsg; share/platform/ros/rs/API-CONTRACT.md
     */
    roswasmc_bounded_1_xarm_msgs_RobotMsg_angle_sequence angle;
    /** @brief Declared field pose; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief xarm_msgs/RobotMsg.pose: float32; exactly 6 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Xarm_msgsRobotMsg; share/platform/ros/rs/API-CONTRACT.md
     */
    float pose[6];
    /** @brief Declared field offset; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief xarm_msgs/RobotMsg.offset: float32; exactly 6 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Xarm_msgsRobotMsg; share/platform/ros/rs/API-CONTRACT.md
     */
    float offset[6];
} roswasmc_bounded_1_xarm_msgs_RobotMsg;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_1_XARM_MSGS_ROBOTMSG_MAX_WIRE_BYTES 94u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_1_XARM_MSGS_ROBOTMSG_MIN_WIRE_BYTES 66u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_1_XARM_MSGS_ROBOTMSG_CODEC_IDENTITY "UWVMROS1_e5509a530075a638bfa1f09cf5fd78c4d609dccbd79ddd75ef50f5061f68b0f7"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate every field of xarm_msgs/RobotMsg.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline int roswasmc_bounded_1_xarm_msgs_RobotMsg_valid(roswasmc_bounded_1_xarm_msgs_RobotMsg const* value)
{
    if(!value)
        return 0;
    if(value->angle.size > 7u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->angle.size; ++i)
        {
            {
                uint32_t bits;
                uwvm_bounded_copy(&bits, &value->angle.data[i], 4);
                if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
                    return 0;
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 6u; ++i)
        {
            {
                uint32_t bits;
                uwvm_bounded_copy(&bits, &value->pose[i], 4);
                if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
                    return 0;
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 6u; ++i)
        {
            {
                uint32_t bits;
                uwvm_bounded_copy(&bits, &value->offset[i], 4);
                if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
                    return 0;
            }
        }
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the complete active canonical extent of xarm_msgs/RobotMsg.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline size_t roswasmc_bounded_1_xarm_msgs_RobotMsg_wire_size(roswasmc_bounded_1_xarm_msgs_RobotMsg const* value)
{
    size_t n = 0;
    (void)value;
    n += 2;
    n += 2;
    n += 2;
    n += 2;
    n += 2;
    n += 2;
    n += 2;
    n += 4;
    if(value->angle.size > 7u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->angle.size; ++i)
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
    {
        size_t i;
        for(i = 0; i < 6u; ++i)
        {
            n += 4;
        }
    }
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Append all fields of xarm_msgs/RobotMsg to an internal canonical buffer.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete prevalidated immutable record.
 * @param[out] p Sufficient exclusive output storage established by the public encoder.
 * @param[in,out] offset Exclusive initialized writer cursor.
 * @return No value; internal caller guarantees the measured capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline void roswasmc_bounded_1_xarm_msgs_RobotMsg_write_fields(roswasmc_bounded_1_xarm_msgs_RobotMsg const* value, unsigned char* p, size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->state, 2);
    *offset += 2;
    uwvm_bounded_put(p + *offset, (uint64_t)value->mode, 2);
    *offset += 2;
    uwvm_bounded_put(p + *offset, (uint64_t)value->cmdnum, 2);
    *offset += 2;
    uwvm_bounded_put(p + *offset, (uint64_t)value->mt_brake, 2);
    *offset += 2;
    uwvm_bounded_put(p + *offset, (uint64_t)value->mt_able, 2);
    *offset += 2;
    uwvm_bounded_put(p + *offset, (uint64_t)value->err, 2);
    *offset += 2;
    uwvm_bounded_put(p + *offset, (uint64_t)value->warn, 2);
    *offset += 2;
    uwvm_bounded_put(p + *offset, value->angle.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->angle.size; ++i)
        {
            {
                uint32_t bits;
                uwvm_bounded_copy(&bits, &value->angle.data[i], 4);
                uwvm_bounded_put(p + *offset, bits, 4);
                *offset += 4;
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 6u; ++i)
        {
            {
                uint32_t bits;
                uwvm_bounded_copy(&bits, &value->pose[i], 4);
                uwvm_bounded_put(p + *offset, bits, 4);
                *offset += 4;
            }
        }
    }
    {
        size_t i;
        for(i = 0; i < 6u; ++i)
        {
            {
                uint32_t bits;
                uwvm_bounded_copy(&bits, &value->offset[i], 4);
                uwvm_bounded_put(p + *offset, bits, 4);
                *offset += 4;
            }
        }
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Decode the full ordered field prefix of xarm_msgs/RobotMsg.
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
static inline int
    roswasmc_bounded_1_xarm_msgs_RobotMsg_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_1_xarm_msgs_RobotMsg* value)
{
    if(*offset > n || n - *offset < 2)
        return 0;
    {
        uint16_t bits = (uint16_t)uwvm_bounded_get(p + *offset, 2);
        uwvm_bounded_copy(&value->state, &bits, 2);
    }
    *offset += 2;
    if(*offset > n || n - *offset < 2)
        return 0;
    {
        uint16_t bits = (uint16_t)uwvm_bounded_get(p + *offset, 2);
        uwvm_bounded_copy(&value->mode, &bits, 2);
    }
    *offset += 2;
    if(*offset > n || n - *offset < 2)
        return 0;
    {
        uint16_t bits = (uint16_t)uwvm_bounded_get(p + *offset, 2);
        uwvm_bounded_copy(&value->cmdnum, &bits, 2);
    }
    *offset += 2;
    if(*offset > n || n - *offset < 2)
        return 0;
    {
        uint16_t bits = (uint16_t)uwvm_bounded_get(p + *offset, 2);
        uwvm_bounded_copy(&value->mt_brake, &bits, 2);
    }
    *offset += 2;
    if(*offset > n || n - *offset < 2)
        return 0;
    {
        uint16_t bits = (uint16_t)uwvm_bounded_get(p + *offset, 2);
        uwvm_bounded_copy(&value->mt_able, &bits, 2);
    }
    *offset += 2;
    if(*offset > n || n - *offset < 2)
        return 0;
    {
        uint16_t bits = (uint16_t)uwvm_bounded_get(p + *offset, 2);
        uwvm_bounded_copy(&value->err, &bits, 2);
    }
    *offset += 2;
    if(*offset > n || n - *offset < 2)
        return 0;
    {
        uint16_t bits = (uint16_t)uwvm_bounded_get(p + *offset, 2);
        uwvm_bounded_copy(&value->warn, &bits, 2);
    }
    *offset += 2;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->angle.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->angle.size > 7u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->angle.size; ++i)
        {
            if(*offset > n || n - *offset < 4)
                return 0;
            {
                uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
                uwvm_bounded_copy(&value->angle.data[i], &bits, 4);
            }
            *offset += 4;
        }
    }
    {
        size_t i;
        for(i = 0; i < 6u; ++i)
        {
            if(*offset > n || n - *offset < 4)
                return 0;
            {
                uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
                uwvm_bounded_copy(&value->pose[i], &bits, 4);
            }
            *offset += 4;
        }
    }
    {
        size_t i;
        for(i = 0; i < 6u; ++i)
        {
            if(*offset > n || n - *offset < 4)
                return 0;
            {
                uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
                uwvm_bounded_copy(&value->offset[i], &bits, 4);
            }
            *offset += 4;
        }
    }
    return roswasmc_bounded_1_xarm_msgs_RobotMsg_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode the complete xarm_msgs/RobotMsg record transactionally.
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
static inline uint32_t
    roswasmc_bounded_1_xarm_msgs_RobotMsg_encode(roswasmc_bounded_1_xarm_msgs_RobotMsg const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_xarm_msgs_RobotMsg_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_xarm_msgs_RobotMsg_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_xarm_msgs_RobotMsg_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete xarm_msgs/RobotMsg record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] input Immutable complete canonical body, disjoint from value.
 * @param[in] length Exact input byte count; trailing bytes are refused.
 * @param[out] value Caller-owned complete record; unchanged on every refusal.
 * @return Status 0 on complete success, otherwise 22; no partial record is exposed.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline uint32_t roswasmc_bounded_1_xarm_msgs_RobotMsg_decode(void const* input, size_t length, roswasmc_bounded_1_xarm_msgs_RobotMsg* value)
{
    roswasmc_bounded_1_xarm_msgs_RobotMsg next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_xarm_msgs_RobotMsg);
    size_t offset = 0;
    if(!value || (length && !input) || length < 66u || length > 94u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_xarm_msgs_RobotMsg_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERRREQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERRREQUEST_0 != 0x9a117fd0UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERRREQUEST_1 != 0x6aecaa12UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERRREQUEST_2 != 0xdf4f5feeUL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERRREQUEST_3 != 0x465cb797UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERRREQUEST_4 != 0x31e8123eUL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERRREQUEST_5 != 0x8e4a9198UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERRREQUEST_6 != 0x926e0bc6UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERRREQUEST_7 != 0xe09e1c1bUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERRREQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERRREQUEST_0 0x9a117fd0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERRREQUEST_1 0x6aecaa12UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERRREQUEST_2 0xdf4f5feeUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERRREQUEST_3 0x465cb797UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERRREQUEST_4 0x31e8123eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERRREQUEST_5 0x8e4a9198UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERRREQUEST_6 0x926e0bc6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERRREQUEST_7 0xe09e1c1bUL

/** @brief Complete ROS1 xarm_msgs/ClearErrRequest value; no field projects away native data. */
/**
 * @brief Complete ROS 1 xarm_msgs/ClearErrRequest value.
 * @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes
 * and is identified by UWVMROS1_ce83a45aee719e0916f27f8caab41c12bb15d04942bfdd0489047e7b79f3b9e8.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_1_xarm_msgs_ClearErrRequest
{
    /** @brief Local C layout placeholder; empty native component has exactly zero canonical bytes. */
    unsigned char local_empty_placeholder;
} roswasmc_bounded_1_xarm_msgs_ClearErrRequest;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERRREQUEST_MAX_WIRE_BYTES 0u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERRREQUEST_MIN_WIRE_BYTES 0u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERRREQUEST_CODEC_IDENTITY "UWVMROS1_ce83a45aee719e0916f27f8caab41c12bb15d04942bfdd0489047e7b79f3b9e8"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate every field of xarm_msgs/ClearErrRequest.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline int roswasmc_bounded_1_xarm_msgs_ClearErrRequest_valid(roswasmc_bounded_1_xarm_msgs_ClearErrRequest const* value)
{
    if(!value)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the complete active canonical extent of xarm_msgs/ClearErrRequest.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline size_t roswasmc_bounded_1_xarm_msgs_ClearErrRequest_wire_size(roswasmc_bounded_1_xarm_msgs_ClearErrRequest const* value)
{
    size_t n = 0;
    (void)value;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Append all fields of xarm_msgs/ClearErrRequest to an internal canonical buffer.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete prevalidated immutable record.
 * @param[out] p Sufficient exclusive output storage established by the public encoder.
 * @param[in,out] offset Exclusive initialized writer cursor.
 * @return No value; internal caller guarantees the measured capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline void
    roswasmc_bounded_1_xarm_msgs_ClearErrRequest_write_fields(roswasmc_bounded_1_xarm_msgs_ClearErrRequest const* value, unsigned char* p, size_t* offset)
{
    (void)value;
    (void)p;
    (void)offset;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Decode the full ordered field prefix of xarm_msgs/ClearErrRequest.
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
static inline int roswasmc_bounded_1_xarm_msgs_ClearErrRequest_read_fields(unsigned char const* p,
                                                                           size_t n,
                                                                           size_t* offset,
                                                                           roswasmc_bounded_1_xarm_msgs_ClearErrRequest* value)
{
    (void)p;
    (void)n;
    (void)offset;
    return roswasmc_bounded_1_xarm_msgs_ClearErrRequest_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode the complete xarm_msgs/ClearErrRequest record transactionally.
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
static inline uint32_t roswasmc_bounded_1_xarm_msgs_ClearErrRequest_encode(roswasmc_bounded_1_xarm_msgs_ClearErrRequest const* value,
                                                                           void* output,
                                                                           size_t capacity,
                                                                           size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_xarm_msgs_ClearErrRequest_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_xarm_msgs_ClearErrRequest_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_xarm_msgs_ClearErrRequest_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete xarm_msgs/ClearErrRequest record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] input Immutable complete canonical body, disjoint from value.
 * @param[in] length Exact input byte count; trailing bytes are refused.
 * @param[out] value Caller-owned complete record; unchanged on every refusal.
 * @return Status 0 on complete success, otherwise 22; no partial record is exposed.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline uint32_t
    roswasmc_bounded_1_xarm_msgs_ClearErrRequest_decode(void const* input, size_t length, roswasmc_bounded_1_xarm_msgs_ClearErrRequest* value)
{
    roswasmc_bounded_1_xarm_msgs_ClearErrRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_xarm_msgs_ClearErrRequest);
    size_t offset = 0;
    if(!value || (length && !input) || length < 0u || length > 0u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_xarm_msgs_ClearErrRequest_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERRRESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERRRESPONSE_0 != 0x3b49b124UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERRRESPONSE_1 != 0xe4e67abaUL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERRRESPONSE_2 != 0x1e23958dUL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERRRESPONSE_3 != 0x39e0c2abUL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERRRESPONSE_4 != 0xb73eef47UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERRRESPONSE_5 != 0x75a2123fUL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERRRESPONSE_6 != 0x5c1df025UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERRRESPONSE_7 != 0xf3c5450bUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERRRESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERRRESPONSE_0 0x3b49b124UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERRRESPONSE_1 0xe4e67abaUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERRRESPONSE_2 0x1e23958dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERRRESPONSE_3 0x39e0c2abUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERRRESPONSE_4 0xb73eef47UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERRRESPONSE_5 0x75a2123fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERRRESPONSE_6 0x5c1df025UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERRRESPONSE_7 0xf3c5450bUL

/** @brief UTF-8 byte storage for xarm_msgs/ClearErrResponse.message; size excludes padding/terminators. */
/**
 * @brief Own a bounded canonical sequence or UTF-8 byte string inline.
 * @details The active size is 0 through 256. Unused capacity is never serialized or read. This Guest storage is
 * neither a native ROS allocation nor an authority token.
 */
typedef struct
{
    /**
     * @brief Number of initialized active elements.
     * @details Must be no greater than 256; decoders and encoders reject larger values without truncation.
     */
    uint32_t size;
    /**
     * @brief Caller-owned complete finite element capacity.
     * @details Only the initialized active size prefix is meaningful. Retain that prefix unchanged through
     * synchronous encoding; no native pointer or permission is stored.
     */
    unsigned char data[256];
} roswasmc_bounded_1_xarm_msgs_ClearErrResponse_message_text;

/** @brief Complete ROS1 xarm_msgs/ClearErrResponse value; no field projects away native data. */
/**
 * @brief Complete ROS 1 xarm_msgs/ClearErrResponse value.
 * @details All 2 declared fields are retained in source order. The canonical representation occupies 6..262
 * bytes and is identified by UWVMROS1_33a2634f63b2881e08efe4031630e29743093d33cf0da846bad1551329243054.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_1_xarm_msgs_ClearErrResponse
{
    /** @brief Declared field ret; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief xarm_msgs/ClearErrResponse.ret: int16.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Xarm_msgsClearErrResponse; share/platform/ros/rs/API-CONTRACT.md
     */
    int16_t ret;
    /** @brief Declared field message; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief xarm_msgs/ClearErrResponse.message: string; each string is 0..256 bytes; strict UTF-8 with no embedded
     * NUL.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Xarm_msgsClearErrResponse; share/platform/ros/rs/API-CONTRACT.md
     */
    roswasmc_bounded_1_xarm_msgs_ClearErrResponse_message_text message;
} roswasmc_bounded_1_xarm_msgs_ClearErrResponse;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERRRESPONSE_MAX_WIRE_BYTES 262u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERRRESPONSE_MIN_WIRE_BYTES 6u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERRRESPONSE_CODEC_IDENTITY "UWVMROS1_33a2634f63b2881e08efe4031630e29743093d33cf0da846bad1551329243054"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate every field of xarm_msgs/ClearErrResponse.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline int roswasmc_bounded_1_xarm_msgs_ClearErrResponse_valid(roswasmc_bounded_1_xarm_msgs_ClearErrResponse const* value)
{
    if(!value)
        return 0;
    if(value->message.size > 256u || !uwvm_bounded_utf8(value->message.data, value->message.size))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the complete active canonical extent of xarm_msgs/ClearErrResponse.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline size_t roswasmc_bounded_1_xarm_msgs_ClearErrResponse_wire_size(roswasmc_bounded_1_xarm_msgs_ClearErrResponse const* value)
{
    size_t n = 0;
    (void)value;
    n += 2;
    n += 4 + value->message.size;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Append all fields of xarm_msgs/ClearErrResponse to an internal canonical buffer.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete prevalidated immutable record.
 * @param[out] p Sufficient exclusive output storage established by the public encoder.
 * @param[in,out] offset Exclusive initialized writer cursor.
 * @return No value; internal caller guarantees the measured capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline void
    roswasmc_bounded_1_xarm_msgs_ClearErrResponse_write_fields(roswasmc_bounded_1_xarm_msgs_ClearErrResponse const* value, unsigned char* p, size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->ret, 2);
    *offset += 2;
    uwvm_bounded_put(p + *offset, value->message.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->message.data, value->message.size);
    *offset += value->message.size;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Decode the full ordered field prefix of xarm_msgs/ClearErrResponse.
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
static inline int roswasmc_bounded_1_xarm_msgs_ClearErrResponse_read_fields(unsigned char const* p,
                                                                            size_t n,
                                                                            size_t* offset,
                                                                            roswasmc_bounded_1_xarm_msgs_ClearErrResponse* value)
{
    if(*offset > n || n - *offset < 2)
        return 0;
    {
        uint16_t bits = (uint16_t)uwvm_bounded_get(p + *offset, 2);
        uwvm_bounded_copy(&value->ret, &bits, 2);
    }
    *offset += 2;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->message.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->message.size > 256u || value->message.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->message.data, p + *offset, value->message.size);
    *offset += value->message.size;
    return roswasmc_bounded_1_xarm_msgs_ClearErrResponse_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode the complete xarm_msgs/ClearErrResponse record transactionally.
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
static inline uint32_t roswasmc_bounded_1_xarm_msgs_ClearErrResponse_encode(roswasmc_bounded_1_xarm_msgs_ClearErrResponse const* value,
                                                                            void* output,
                                                                            size_t capacity,
                                                                            size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_xarm_msgs_ClearErrResponse_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_xarm_msgs_ClearErrResponse_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_xarm_msgs_ClearErrResponse_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete xarm_msgs/ClearErrResponse record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] input Immutable complete canonical body, disjoint from value.
 * @param[in] length Exact input byte count; trailing bytes are refused.
 * @param[out] value Caller-owned complete record; unchanged on every refusal.
 * @return Status 0 on complete success, otherwise 22; no partial record is exposed.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline uint32_t
    roswasmc_bounded_1_xarm_msgs_ClearErrResponse_decode(void const* input, size_t length, roswasmc_bounded_1_xarm_msgs_ClearErrResponse* value)
{
    roswasmc_bounded_1_xarm_msgs_ClearErrResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_xarm_msgs_ClearErrResponse);
    size_t offset = 0;
    if(!value || (length && !input) || length < 6u || length > 262u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_xarm_msgs_ClearErrResponse_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIOREQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIOREQUEST_0 != 0x04d8ec98UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIOREQUEST_1 != 0x5fbbc15dUL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIOREQUEST_2 != 0x27b7e75fUL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIOREQUEST_3 != 0x6bffe299UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIOREQUEST_4 != 0x525e49dfUL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIOREQUEST_5 != 0xf1a7fb47UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIOREQUEST_6 != 0xbb6ef3a3UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIOREQUEST_7 != 0xf81211ebUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIOREQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIOREQUEST_0 0x04d8ec98UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIOREQUEST_1 0x5fbbc15dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIOREQUEST_2 0x27b7e75fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIOREQUEST_3 0x6bffe299UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIOREQUEST_4 0x525e49dfUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIOREQUEST_5 0xf1a7fb47UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIOREQUEST_6 0xbb6ef3a3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIOREQUEST_7 0xf81211ebUL

/** @brief Complete ROS1 xarm_msgs/GetAnalogIORequest value; no field projects away native data. */
/**
 * @brief Complete ROS 1 xarm_msgs/GetAnalogIORequest value.
 * @details All 1 declared fields are retained in source order. The canonical representation occupies 2..2 bytes
 * and is identified by UWVMROS1_08bf2816e784cc03d6d2ea33d71e457038f9071f8d80726d05f566d60ab961e8.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_1_xarm_msgs_GetAnalogIORequest
{
    /** @brief Declared field port_num; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief xarm_msgs/GetAnalogIORequest.port_num: int16.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Xarm_msgsGetAnalogIORequest; share/platform/ros/rs/API-CONTRACT.md
     */
    int16_t port_num;
} roswasmc_bounded_1_xarm_msgs_GetAnalogIORequest;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIOREQUEST_MAX_WIRE_BYTES 2u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIOREQUEST_MIN_WIRE_BYTES 2u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIOREQUEST_CODEC_IDENTITY "UWVMROS1_08bf2816e784cc03d6d2ea33d71e457038f9071f8d80726d05f566d60ab961e8"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate every field of xarm_msgs/GetAnalogIORequest.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline int roswasmc_bounded_1_xarm_msgs_GetAnalogIORequest_valid(roswasmc_bounded_1_xarm_msgs_GetAnalogIORequest const* value)
{
    if(!value)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the complete active canonical extent of xarm_msgs/GetAnalogIORequest.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline size_t roswasmc_bounded_1_xarm_msgs_GetAnalogIORequest_wire_size(roswasmc_bounded_1_xarm_msgs_GetAnalogIORequest const* value)
{
    size_t n = 0;
    (void)value;
    n += 2;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Append all fields of xarm_msgs/GetAnalogIORequest to an internal canonical buffer.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete prevalidated immutable record.
 * @param[out] p Sufficient exclusive output storage established by the public encoder.
 * @param[in,out] offset Exclusive initialized writer cursor.
 * @return No value; internal caller guarantees the measured capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline void
    roswasmc_bounded_1_xarm_msgs_GetAnalogIORequest_write_fields(roswasmc_bounded_1_xarm_msgs_GetAnalogIORequest const* value, unsigned char* p, size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->port_num, 2);
    *offset += 2;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Decode the full ordered field prefix of xarm_msgs/GetAnalogIORequest.
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
static inline int roswasmc_bounded_1_xarm_msgs_GetAnalogIORequest_read_fields(unsigned char const* p,
                                                                              size_t n,
                                                                              size_t* offset,
                                                                              roswasmc_bounded_1_xarm_msgs_GetAnalogIORequest* value)
{
    if(*offset > n || n - *offset < 2)
        return 0;
    {
        uint16_t bits = (uint16_t)uwvm_bounded_get(p + *offset, 2);
        uwvm_bounded_copy(&value->port_num, &bits, 2);
    }
    *offset += 2;
    return roswasmc_bounded_1_xarm_msgs_GetAnalogIORequest_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode the complete xarm_msgs/GetAnalogIORequest record transactionally.
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
static inline uint32_t roswasmc_bounded_1_xarm_msgs_GetAnalogIORequest_encode(roswasmc_bounded_1_xarm_msgs_GetAnalogIORequest const* value,
                                                                              void* output,
                                                                              size_t capacity,
                                                                              size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_xarm_msgs_GetAnalogIORequest_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_xarm_msgs_GetAnalogIORequest_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_xarm_msgs_GetAnalogIORequest_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete xarm_msgs/GetAnalogIORequest record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] input Immutable complete canonical body, disjoint from value.
 * @param[in] length Exact input byte count; trailing bytes are refused.
 * @param[out] value Caller-owned complete record; unchanged on every refusal.
 * @return Status 0 on complete success, otherwise 22; no partial record is exposed.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline uint32_t
    roswasmc_bounded_1_xarm_msgs_GetAnalogIORequest_decode(void const* input, size_t length, roswasmc_bounded_1_xarm_msgs_GetAnalogIORequest* value)
{
    roswasmc_bounded_1_xarm_msgs_GetAnalogIORequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_xarm_msgs_GetAnalogIORequest);
    size_t offset = 0;
    if(!value || (length && !input) || length < 2u || length > 2u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_xarm_msgs_GetAnalogIORequest_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIORESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIORESPONSE_0 != 0x084d08daUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIORESPONSE_1 != 0xc3c99ebfUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIORESPONSE_2 != 0xc79d8b92UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIORESPONSE_3 != 0x29ac44f9UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIORESPONSE_4 != 0xe513fe1dUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIORESPONSE_5 != 0x9812376fUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIORESPONSE_6 != 0xd238ee02UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIORESPONSE_7 != 0x30a35d81UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIORESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIORESPONSE_0 0x084d08daUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIORESPONSE_1 0xc3c99ebfUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIORESPONSE_2 0xc79d8b92UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIORESPONSE_3 0x29ac44f9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIORESPONSE_4 0xe513fe1dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIORESPONSE_5 0x9812376fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIORESPONSE_6 0xd238ee02UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIORESPONSE_7 0x30a35d81UL

/** @brief UTF-8 byte storage for xarm_msgs/GetAnalogIOResponse.message; size excludes padding/terminators. */
/**
 * @brief Own a bounded canonical sequence or UTF-8 byte string inline.
 * @details The active size is 0 through 256. Unused capacity is never serialized or read. This Guest storage is
 * neither a native ROS allocation nor an authority token.
 */
typedef struct
{
    /**
     * @brief Number of initialized active elements.
     * @details Must be no greater than 256; decoders and encoders reject larger values without truncation.
     */
    uint32_t size;
    /**
     * @brief Caller-owned complete finite element capacity.
     * @details Only the initialized active size prefix is meaningful. Retain that prefix unchanged through
     * synchronous encoding; no native pointer or permission is stored.
     */
    unsigned char data[256];
} roswasmc_bounded_1_xarm_msgs_GetAnalogIOResponse_message_text;

/** @brief Complete ROS1 xarm_msgs/GetAnalogIOResponse value; no field projects away native data. */
/**
 * @brief Complete ROS 1 xarm_msgs/GetAnalogIOResponse value.
 * @details All 3 declared fields are retained in source order. The canonical representation occupies 10..266
 * bytes and is identified by UWVMROS1_137ef1f1e94ed2e165023544043960031650f0848512d81afc97a2725144b835.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_1_xarm_msgs_GetAnalogIOResponse
{
    /** @brief Declared field analog_value; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief xarm_msgs/GetAnalogIOResponse.analog_value: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Xarm_msgsGetAnalogIOResponse; share/platform/ros/rs/API-CONTRACT.md
     */
    float analog_value;
    /** @brief Declared field ret; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief xarm_msgs/GetAnalogIOResponse.ret: int16.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Xarm_msgsGetAnalogIOResponse; share/platform/ros/rs/API-CONTRACT.md
     */
    int16_t ret;
    /** @brief Declared field message; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief xarm_msgs/GetAnalogIOResponse.message: string; each string is 0..256 bytes; strict UTF-8 with no
     * embedded NUL.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Xarm_msgsGetAnalogIOResponse; share/platform/ros/rs/API-CONTRACT.md
     */
    roswasmc_bounded_1_xarm_msgs_GetAnalogIOResponse_message_text message;
} roswasmc_bounded_1_xarm_msgs_GetAnalogIOResponse;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIORESPONSE_MAX_WIRE_BYTES 266u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIORESPONSE_MIN_WIRE_BYTES 10u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIORESPONSE_CODEC_IDENTITY "UWVMROS1_137ef1f1e94ed2e165023544043960031650f0848512d81afc97a2725144b835"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate every field of xarm_msgs/GetAnalogIOResponse.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline int roswasmc_bounded_1_xarm_msgs_GetAnalogIOResponse_valid(roswasmc_bounded_1_xarm_msgs_GetAnalogIOResponse const* value)
{
    if(!value)
        return 0;
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->analog_value, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    if(value->message.size > 256u || !uwvm_bounded_utf8(value->message.data, value->message.size))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the complete active canonical extent of xarm_msgs/GetAnalogIOResponse.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline size_t roswasmc_bounded_1_xarm_msgs_GetAnalogIOResponse_wire_size(roswasmc_bounded_1_xarm_msgs_GetAnalogIOResponse const* value)
{
    size_t n = 0;
    (void)value;
    n += 4;
    n += 2;
    n += 4 + value->message.size;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Append all fields of xarm_msgs/GetAnalogIOResponse to an internal canonical buffer.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete prevalidated immutable record.
 * @param[out] p Sufficient exclusive output storage established by the public encoder.
 * @param[in,out] offset Exclusive initialized writer cursor.
 * @return No value; internal caller guarantees the measured capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline void roswasmc_bounded_1_xarm_msgs_GetAnalogIOResponse_write_fields(roswasmc_bounded_1_xarm_msgs_GetAnalogIOResponse const* value,
                                                                                 unsigned char* p,
                                                                                 size_t* offset)
{
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->analog_value, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    uwvm_bounded_put(p + *offset, (uint64_t)value->ret, 2);
    *offset += 2;
    uwvm_bounded_put(p + *offset, value->message.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->message.data, value->message.size);
    *offset += value->message.size;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Decode the full ordered field prefix of xarm_msgs/GetAnalogIOResponse.
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
static inline int roswasmc_bounded_1_xarm_msgs_GetAnalogIOResponse_read_fields(unsigned char const* p,
                                                                               size_t n,
                                                                               size_t* offset,
                                                                               roswasmc_bounded_1_xarm_msgs_GetAnalogIOResponse* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->analog_value, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 2)
        return 0;
    {
        uint16_t bits = (uint16_t)uwvm_bounded_get(p + *offset, 2);
        uwvm_bounded_copy(&value->ret, &bits, 2);
    }
    *offset += 2;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->message.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->message.size > 256u || value->message.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->message.data, p + *offset, value->message.size);
    *offset += value->message.size;
    return roswasmc_bounded_1_xarm_msgs_GetAnalogIOResponse_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode the complete xarm_msgs/GetAnalogIOResponse record transactionally.
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
static inline uint32_t roswasmc_bounded_1_xarm_msgs_GetAnalogIOResponse_encode(roswasmc_bounded_1_xarm_msgs_GetAnalogIOResponse const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_xarm_msgs_GetAnalogIOResponse_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_xarm_msgs_GetAnalogIOResponse_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_xarm_msgs_GetAnalogIOResponse_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete xarm_msgs/GetAnalogIOResponse record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] input Immutable complete canonical body, disjoint from value.
 * @param[in] length Exact input byte count; trailing bytes are refused.
 * @param[out] value Caller-owned complete record; unchanged on every refusal.
 * @return Status 0 on complete success, otherwise 22; no partial record is exposed.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline uint32_t
    roswasmc_bounded_1_xarm_msgs_GetAnalogIOResponse_decode(void const* input, size_t length, roswasmc_bounded_1_xarm_msgs_GetAnalogIOResponse* value)
{
    roswasmc_bounded_1_xarm_msgs_GetAnalogIOResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_xarm_msgs_GetAnalogIOResponse);
    size_t offset = 0;
    if(!value || (length && !input) || length < 10u || length > 266u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_xarm_msgs_GetAnalogIOResponse_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIOREQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIOREQUEST_0 != 0xb8962a45UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIOREQUEST_1 != 0x15f8a98fUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIOREQUEST_2 != 0xe10fddfeUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIOREQUEST_3 != 0x3412349fUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIOREQUEST_4 != 0x0683aee2UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIOREQUEST_5 != 0x49973feeUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIOREQUEST_6 != 0xb891b0c0UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIOREQUEST_7 != 0xe8fe68b2UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIOREQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIOREQUEST_0 0xb8962a45UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIOREQUEST_1 0x15f8a98fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIOREQUEST_2 0xe10fddfeUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIOREQUEST_3 0x3412349fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIOREQUEST_4 0x0683aee2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIOREQUEST_5 0x49973feeUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIOREQUEST_6 0xb891b0c0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIOREQUEST_7 0xe8fe68b2UL

/** @brief Complete ROS1 xarm_msgs/GetDigitalIORequest value; no field projects away native data. */
/**
 * @brief Complete ROS 1 xarm_msgs/GetDigitalIORequest value.
 * @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes
 * and is identified by UWVMROS1_edd78f1a2ed7ab9fc8541c8b5f0f9ff32713c949c03b66728ef7c41ed50a23da.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_1_xarm_msgs_GetDigitalIORequest
{
    /** @brief Local C layout placeholder; empty native component has exactly zero canonical bytes. */
    unsigned char local_empty_placeholder;
} roswasmc_bounded_1_xarm_msgs_GetDigitalIORequest;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIOREQUEST_MAX_WIRE_BYTES 0u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIOREQUEST_MIN_WIRE_BYTES 0u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIOREQUEST_CODEC_IDENTITY "UWVMROS1_edd78f1a2ed7ab9fc8541c8b5f0f9ff32713c949c03b66728ef7c41ed50a23da"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate every field of xarm_msgs/GetDigitalIORequest.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline int roswasmc_bounded_1_xarm_msgs_GetDigitalIORequest_valid(roswasmc_bounded_1_xarm_msgs_GetDigitalIORequest const* value)
{
    if(!value)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the complete active canonical extent of xarm_msgs/GetDigitalIORequest.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline size_t roswasmc_bounded_1_xarm_msgs_GetDigitalIORequest_wire_size(roswasmc_bounded_1_xarm_msgs_GetDigitalIORequest const* value)
{
    size_t n = 0;
    (void)value;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Append all fields of xarm_msgs/GetDigitalIORequest to an internal canonical buffer.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete prevalidated immutable record.
 * @param[out] p Sufficient exclusive output storage established by the public encoder.
 * @param[in,out] offset Exclusive initialized writer cursor.
 * @return No value; internal caller guarantees the measured capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline void roswasmc_bounded_1_xarm_msgs_GetDigitalIORequest_write_fields(roswasmc_bounded_1_xarm_msgs_GetDigitalIORequest const* value,
                                                                                 unsigned char* p,
                                                                                 size_t* offset)
{
    (void)value;
    (void)p;
    (void)offset;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Decode the full ordered field prefix of xarm_msgs/GetDigitalIORequest.
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
static inline int roswasmc_bounded_1_xarm_msgs_GetDigitalIORequest_read_fields(unsigned char const* p,
                                                                               size_t n,
                                                                               size_t* offset,
                                                                               roswasmc_bounded_1_xarm_msgs_GetDigitalIORequest* value)
{
    (void)p;
    (void)n;
    (void)offset;
    return roswasmc_bounded_1_xarm_msgs_GetDigitalIORequest_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode the complete xarm_msgs/GetDigitalIORequest record transactionally.
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
static inline uint32_t roswasmc_bounded_1_xarm_msgs_GetDigitalIORequest_encode(roswasmc_bounded_1_xarm_msgs_GetDigitalIORequest const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_xarm_msgs_GetDigitalIORequest_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_xarm_msgs_GetDigitalIORequest_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_xarm_msgs_GetDigitalIORequest_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete xarm_msgs/GetDigitalIORequest record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] input Immutable complete canonical body, disjoint from value.
 * @param[in] length Exact input byte count; trailing bytes are refused.
 * @param[out] value Caller-owned complete record; unchanged on every refusal.
 * @return Status 0 on complete success, otherwise 22; no partial record is exposed.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline uint32_t
    roswasmc_bounded_1_xarm_msgs_GetDigitalIORequest_decode(void const* input, size_t length, roswasmc_bounded_1_xarm_msgs_GetDigitalIORequest* value)
{
    roswasmc_bounded_1_xarm_msgs_GetDigitalIORequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_xarm_msgs_GetDigitalIORequest);
    size_t offset = 0;
    if(!value || (length && !input) || length < 0u || length > 0u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_xarm_msgs_GetDigitalIORequest_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIORESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIORESPONSE_0 != 0x141e38d3UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIORESPONSE_1 != 0x53534ca1UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIORESPONSE_2 != 0x7c3ed08bUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIORESPONSE_3 != 0x40236088UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIORESPONSE_4 != 0x6673ad1aUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIORESPONSE_5 != 0x23a5d10fUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIORESPONSE_6 != 0x11e51cb7UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIORESPONSE_7 != 0x9b5f9c76UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIORESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIORESPONSE_0 0x141e38d3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIORESPONSE_1 0x53534ca1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIORESPONSE_2 0x7c3ed08bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIORESPONSE_3 0x40236088UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIORESPONSE_4 0x6673ad1aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIORESPONSE_5 0x23a5d10fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIORESPONSE_6 0x11e51cb7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIORESPONSE_7 0x9b5f9c76UL

/** @brief UTF-8 byte storage for xarm_msgs/GetDigitalIOResponse.message; size excludes padding/terminators. */
/**
 * @brief Own a bounded canonical sequence or UTF-8 byte string inline.
 * @details The active size is 0 through 256. Unused capacity is never serialized or read. This Guest storage is
 * neither a native ROS allocation nor an authority token.
 */
typedef struct
{
    /**
     * @brief Number of initialized active elements.
     * @details Must be no greater than 256; decoders and encoders reject larger values without truncation.
     */
    uint32_t size;
    /**
     * @brief Caller-owned complete finite element capacity.
     * @details Only the initialized active size prefix is meaningful. Retain that prefix unchanged through
     * synchronous encoding; no native pointer or permission is stored.
     */
    unsigned char data[256];
} roswasmc_bounded_1_xarm_msgs_GetDigitalIOResponse_message_text;

/** @brief Complete ROS1 xarm_msgs/GetDigitalIOResponse value; no field projects away native data. */
/**
 * @brief Complete ROS 1 xarm_msgs/GetDigitalIOResponse value.
 * @details All 4 declared fields are retained in source order. The canonical representation occupies 14..270
 * bytes and is identified by UWVMROS1_7af72b4f19e23493c4b4c2cf7c88076549e34ed741a04ee758db31de11457498.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_1_xarm_msgs_GetDigitalIOResponse
{
    /** @brief Declared field digital_1; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief xarm_msgs/GetDigitalIOResponse.digital_1: int32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Xarm_msgsGetDigitalIOResponse; share/platform/ros/rs/API-CONTRACT.md
     */
    int32_t digital_1;
    /** @brief Declared field digital_2; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief xarm_msgs/GetDigitalIOResponse.digital_2: int32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Xarm_msgsGetDigitalIOResponse; share/platform/ros/rs/API-CONTRACT.md
     */
    int32_t digital_2;
    /** @brief Declared field ret; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief xarm_msgs/GetDigitalIOResponse.ret: int16.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Xarm_msgsGetDigitalIOResponse; share/platform/ros/rs/API-CONTRACT.md
     */
    int16_t ret;
    /** @brief Declared field message; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief xarm_msgs/GetDigitalIOResponse.message: string; each string is 0..256 bytes; strict UTF-8 with no
     * embedded NUL.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Xarm_msgsGetDigitalIOResponse; share/platform/ros/rs/API-CONTRACT.md
     */
    roswasmc_bounded_1_xarm_msgs_GetDigitalIOResponse_message_text message;
} roswasmc_bounded_1_xarm_msgs_GetDigitalIOResponse;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIORESPONSE_MAX_WIRE_BYTES 270u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIORESPONSE_MIN_WIRE_BYTES 14u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIORESPONSE_CODEC_IDENTITY "UWVMROS1_7af72b4f19e23493c4b4c2cf7c88076549e34ed741a04ee758db31de11457498"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate every field of xarm_msgs/GetDigitalIOResponse.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline int roswasmc_bounded_1_xarm_msgs_GetDigitalIOResponse_valid(roswasmc_bounded_1_xarm_msgs_GetDigitalIOResponse const* value)
{
    if(!value)
        return 0;
    if(value->message.size > 256u || !uwvm_bounded_utf8(value->message.data, value->message.size))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the complete active canonical extent of xarm_msgs/GetDigitalIOResponse.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline size_t roswasmc_bounded_1_xarm_msgs_GetDigitalIOResponse_wire_size(roswasmc_bounded_1_xarm_msgs_GetDigitalIOResponse const* value)
{
    size_t n = 0;
    (void)value;
    n += 4;
    n += 4;
    n += 2;
    n += 4 + value->message.size;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Append all fields of xarm_msgs/GetDigitalIOResponse to an internal canonical buffer.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete prevalidated immutable record.
 * @param[out] p Sufficient exclusive output storage established by the public encoder.
 * @param[in,out] offset Exclusive initialized writer cursor.
 * @return No value; internal caller guarantees the measured capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline void roswasmc_bounded_1_xarm_msgs_GetDigitalIOResponse_write_fields(roswasmc_bounded_1_xarm_msgs_GetDigitalIOResponse const* value,
                                                                                  unsigned char* p,
                                                                                  size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->digital_1, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, (uint64_t)value->digital_2, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, (uint64_t)value->ret, 2);
    *offset += 2;
    uwvm_bounded_put(p + *offset, value->message.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->message.data, value->message.size);
    *offset += value->message.size;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Decode the full ordered field prefix of xarm_msgs/GetDigitalIOResponse.
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
static inline int roswasmc_bounded_1_xarm_msgs_GetDigitalIOResponse_read_fields(unsigned char const* p,
                                                                                size_t n,
                                                                                size_t* offset,
                                                                                roswasmc_bounded_1_xarm_msgs_GetDigitalIOResponse* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->digital_1, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->digital_2, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 2)
        return 0;
    {
        uint16_t bits = (uint16_t)uwvm_bounded_get(p + *offset, 2);
        uwvm_bounded_copy(&value->ret, &bits, 2);
    }
    *offset += 2;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->message.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->message.size > 256u || value->message.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->message.data, p + *offset, value->message.size);
    *offset += value->message.size;
    return roswasmc_bounded_1_xarm_msgs_GetDigitalIOResponse_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode the complete xarm_msgs/GetDigitalIOResponse record transactionally.
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
static inline uint32_t roswasmc_bounded_1_xarm_msgs_GetDigitalIOResponse_encode(roswasmc_bounded_1_xarm_msgs_GetDigitalIOResponse const* value,
                                                                                void* output,
                                                                                size_t capacity,
                                                                                size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_xarm_msgs_GetDigitalIOResponse_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_xarm_msgs_GetDigitalIOResponse_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_xarm_msgs_GetDigitalIOResponse_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete xarm_msgs/GetDigitalIOResponse record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] input Immutable complete canonical body, disjoint from value.
 * @param[in] length Exact input byte count; trailing bytes are refused.
 * @param[out] value Caller-owned complete record; unchanged on every refusal.
 * @return Status 0 on complete success, otherwise 22; no partial record is exposed.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline uint32_t
    roswasmc_bounded_1_xarm_msgs_GetDigitalIOResponse_decode(void const* input, size_t length, roswasmc_bounded_1_xarm_msgs_GetDigitalIOResponse* value)
{
    roswasmc_bounded_1_xarm_msgs_GetDigitalIOResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_xarm_msgs_GetDigitalIOResponse);
    size_t offset = 0;
    if(!value || (length && !input) || length < 14u || length > 270u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_xarm_msgs_GetDigitalIOResponse_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVEREQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVEREQUEST_0 != 0x8af6951fUL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVEREQUEST_1 != 0x0199de8dUL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVEREQUEST_2 != 0x39cf4a17UL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVEREQUEST_3 != 0xab28b847UL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVEREQUEST_4 != 0x12a3bc1bUL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVEREQUEST_5 != 0xe9424d3eUL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVEREQUEST_6 != 0xb5a40e7aUL ||                                                                     \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVEREQUEST_7 != 0x2f950443UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVEREQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVEREQUEST_0 0x8af6951fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVEREQUEST_1 0x0199de8dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVEREQUEST_2 0x39cf4a17UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVEREQUEST_3 0xab28b847UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVEREQUEST_4 0x12a3bc1bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVEREQUEST_5 0xe9424d3eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVEREQUEST_6 0xb5a40e7aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVEREQUEST_7 0x2f950443UL

/** @brief At most32 initialized logical elements; unused capacity is never serialized. */
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
} roswasmc_bounded_1_xarm_msgs_MoveRequest_pose_sequence;

/** @brief Complete ROS1 xarm_msgs/MoveRequest value; no field projects away native data. */
/**
 * @brief Complete ROS 1 xarm_msgs/MoveRequest value.
 * @details All 5 declared fields are retained in source order. The canonical representation occupies 20..148
 * bytes and is identified by UWVMROS1_9bfae5d05a608fb8f020e0cdb251b7e3b00e50ff610a26b70093837f365d4ced.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_1_xarm_msgs_MoveRequest
{
    /** @brief Declared field pose; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief xarm_msgs/MoveRequest.pose: float32; 0..32 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Xarm_msgsMoveRequest; share/platform/ros/rs/API-CONTRACT.md
     */
    roswasmc_bounded_1_xarm_msgs_MoveRequest_pose_sequence pose;
    /** @brief Declared field mvvelo; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief xarm_msgs/MoveRequest.mvvelo: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Xarm_msgsMoveRequest; share/platform/ros/rs/API-CONTRACT.md
     */
    float mvvelo;
    /** @brief Declared field mvacc; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief xarm_msgs/MoveRequest.mvacc: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Xarm_msgsMoveRequest; share/platform/ros/rs/API-CONTRACT.md
     */
    float mvacc;
    /** @brief Declared field mvtime; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief xarm_msgs/MoveRequest.mvtime: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Xarm_msgsMoveRequest; share/platform/ros/rs/API-CONTRACT.md
     */
    float mvtime;
    /** @brief Declared field mvradii; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief xarm_msgs/MoveRequest.mvradii: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Xarm_msgsMoveRequest; share/platform/ros/rs/API-CONTRACT.md
     */
    float mvradii;
} roswasmc_bounded_1_xarm_msgs_MoveRequest;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_1_XARM_MSGS_MOVEREQUEST_MAX_WIRE_BYTES 148u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_1_XARM_MSGS_MOVEREQUEST_MIN_WIRE_BYTES 20u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_1_XARM_MSGS_MOVEREQUEST_CODEC_IDENTITY "UWVMROS1_9bfae5d05a608fb8f020e0cdb251b7e3b00e50ff610a26b70093837f365d4ced"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate every field of xarm_msgs/MoveRequest.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline int roswasmc_bounded_1_xarm_msgs_MoveRequest_valid(roswasmc_bounded_1_xarm_msgs_MoveRequest const* value)
{
    if(!value)
        return 0;
    if(value->pose.size > 32u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->pose.size; ++i)
        {
            {
                uint32_t bits;
                uwvm_bounded_copy(&bits, &value->pose.data[i], 4);
                if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
                    return 0;
            }
        }
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->mvvelo, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->mvacc, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->mvtime, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->mvradii, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the complete active canonical extent of xarm_msgs/MoveRequest.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline size_t roswasmc_bounded_1_xarm_msgs_MoveRequest_wire_size(roswasmc_bounded_1_xarm_msgs_MoveRequest const* value)
{
    size_t n = 0;
    (void)value;
    n += 4;
    if(value->pose.size > 32u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->pose.size; ++i)
        {
            n += 4;
        }
    }
    n += 4;
    n += 4;
    n += 4;
    n += 4;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Append all fields of xarm_msgs/MoveRequest to an internal canonical buffer.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete prevalidated immutable record.
 * @param[out] p Sufficient exclusive output storage established by the public encoder.
 * @param[in,out] offset Exclusive initialized writer cursor.
 * @return No value; internal caller guarantees the measured capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline void
    roswasmc_bounded_1_xarm_msgs_MoveRequest_write_fields(roswasmc_bounded_1_xarm_msgs_MoveRequest const* value, unsigned char* p, size_t* offset)
{
    uwvm_bounded_put(p + *offset, value->pose.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->pose.size; ++i)
        {
            {
                uint32_t bits;
                uwvm_bounded_copy(&bits, &value->pose.data[i], 4);
                uwvm_bounded_put(p + *offset, bits, 4);
                *offset += 4;
            }
        }
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->mvvelo, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->mvacc, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->mvtime, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->mvradii, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Decode the full ordered field prefix of xarm_msgs/MoveRequest.
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
static inline int
    roswasmc_bounded_1_xarm_msgs_MoveRequest_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_1_xarm_msgs_MoveRequest* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    value->pose.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->pose.size > 32u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->pose.size; ++i)
        {
            if(*offset > n || n - *offset < 4)
                return 0;
            {
                uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
                uwvm_bounded_copy(&value->pose.data[i], &bits, 4);
            }
            *offset += 4;
        }
    }
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->mvvelo, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->mvacc, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->mvtime, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->mvradii, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_1_xarm_msgs_MoveRequest_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode the complete xarm_msgs/MoveRequest record transactionally.
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
static inline uint32_t
    roswasmc_bounded_1_xarm_msgs_MoveRequest_encode(roswasmc_bounded_1_xarm_msgs_MoveRequest const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_xarm_msgs_MoveRequest_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_xarm_msgs_MoveRequest_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_xarm_msgs_MoveRequest_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete xarm_msgs/MoveRequest record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] input Immutable complete canonical body, disjoint from value.
 * @param[in] length Exact input byte count; trailing bytes are refused.
 * @param[out] value Caller-owned complete record; unchanged on every refusal.
 * @return Status 0 on complete success, otherwise 22; no partial record is exposed.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline uint32_t roswasmc_bounded_1_xarm_msgs_MoveRequest_decode(void const* input, size_t length, roswasmc_bounded_1_xarm_msgs_MoveRequest* value)
{
    roswasmc_bounded_1_xarm_msgs_MoveRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_xarm_msgs_MoveRequest);
    size_t offset = 0;
    if(!value || (length && !input) || length < 20u || length > 148u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_xarm_msgs_MoveRequest_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVERESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVERESPONSE_0 != 0x64639054UL ||                                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVERESPONSE_1 != 0xaf7e2972UL ||                                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVERESPONSE_2 != 0xfafc7bdcUL ||                                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVERESPONSE_3 != 0x2ed2a71bUL ||                                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVERESPONSE_4 != 0x1da8f5b1UL ||                                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVERESPONSE_5 != 0xf416bc2fUL ||                                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVERESPONSE_6 != 0xca0c2204UL ||                                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVERESPONSE_7 != 0x92419884UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVERESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVERESPONSE_0 0x64639054UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVERESPONSE_1 0xaf7e2972UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVERESPONSE_2 0xfafc7bdcUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVERESPONSE_3 0x2ed2a71bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVERESPONSE_4 0x1da8f5b1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVERESPONSE_5 0xf416bc2fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVERESPONSE_6 0xca0c2204UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVERESPONSE_7 0x92419884UL

/** @brief UTF-8 byte storage for xarm_msgs/MoveResponse.message; size excludes padding/terminators. */
/**
 * @brief Own a bounded canonical sequence or UTF-8 byte string inline.
 * @details The active size is 0 through 256. Unused capacity is never serialized or read. This Guest storage is
 * neither a native ROS allocation nor an authority token.
 */
typedef struct
{
    /**
     * @brief Number of initialized active elements.
     * @details Must be no greater than 256; decoders and encoders reject larger values without truncation.
     */
    uint32_t size;
    /**
     * @brief Caller-owned complete finite element capacity.
     * @details Only the initialized active size prefix is meaningful. Retain that prefix unchanged through
     * synchronous encoding; no native pointer or permission is stored.
     */
    unsigned char data[256];
} roswasmc_bounded_1_xarm_msgs_MoveResponse_message_text;

/** @brief Complete ROS1 xarm_msgs/MoveResponse value; no field projects away native data. */
/**
 * @brief Complete ROS 1 xarm_msgs/MoveResponse value.
 * @details All 2 declared fields are retained in source order. The canonical representation occupies 6..262
 * bytes and is identified by UWVMROS1_6081579d8a79f052cbb7616c0d366bad3948ac3b1380b118ad5b03e4123ce53d.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_1_xarm_msgs_MoveResponse
{
    /** @brief Declared field ret; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief xarm_msgs/MoveResponse.ret: int16.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Xarm_msgsMoveResponse; share/platform/ros/rs/API-CONTRACT.md
     */
    int16_t ret;
    /** @brief Declared field message; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief xarm_msgs/MoveResponse.message: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Xarm_msgsMoveResponse; share/platform/ros/rs/API-CONTRACT.md
     */
    roswasmc_bounded_1_xarm_msgs_MoveResponse_message_text message;
} roswasmc_bounded_1_xarm_msgs_MoveResponse;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_1_XARM_MSGS_MOVERESPONSE_MAX_WIRE_BYTES 262u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_1_XARM_MSGS_MOVERESPONSE_MIN_WIRE_BYTES 6u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_1_XARM_MSGS_MOVERESPONSE_CODEC_IDENTITY "UWVMROS1_6081579d8a79f052cbb7616c0d366bad3948ac3b1380b118ad5b03e4123ce53d"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate every field of xarm_msgs/MoveResponse.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline int roswasmc_bounded_1_xarm_msgs_MoveResponse_valid(roswasmc_bounded_1_xarm_msgs_MoveResponse const* value)
{
    if(!value)
        return 0;
    if(value->message.size > 256u || !uwvm_bounded_utf8(value->message.data, value->message.size))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the complete active canonical extent of xarm_msgs/MoveResponse.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline size_t roswasmc_bounded_1_xarm_msgs_MoveResponse_wire_size(roswasmc_bounded_1_xarm_msgs_MoveResponse const* value)
{
    size_t n = 0;
    (void)value;
    n += 2;
    n += 4 + value->message.size;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Append all fields of xarm_msgs/MoveResponse to an internal canonical buffer.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete prevalidated immutable record.
 * @param[out] p Sufficient exclusive output storage established by the public encoder.
 * @param[in,out] offset Exclusive initialized writer cursor.
 * @return No value; internal caller guarantees the measured capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline void
    roswasmc_bounded_1_xarm_msgs_MoveResponse_write_fields(roswasmc_bounded_1_xarm_msgs_MoveResponse const* value, unsigned char* p, size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->ret, 2);
    *offset += 2;
    uwvm_bounded_put(p + *offset, value->message.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->message.data, value->message.size);
    *offset += value->message.size;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Decode the full ordered field prefix of xarm_msgs/MoveResponse.
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
static inline int
    roswasmc_bounded_1_xarm_msgs_MoveResponse_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_1_xarm_msgs_MoveResponse* value)
{
    if(*offset > n || n - *offset < 2)
        return 0;
    {
        uint16_t bits = (uint16_t)uwvm_bounded_get(p + *offset, 2);
        uwvm_bounded_copy(&value->ret, &bits, 2);
    }
    *offset += 2;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->message.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->message.size > 256u || value->message.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->message.data, p + *offset, value->message.size);
    *offset += value->message.size;
    return roswasmc_bounded_1_xarm_msgs_MoveResponse_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode the complete xarm_msgs/MoveResponse record transactionally.
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
static inline uint32_t
    roswasmc_bounded_1_xarm_msgs_MoveResponse_encode(roswasmc_bounded_1_xarm_msgs_MoveResponse const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_xarm_msgs_MoveResponse_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_xarm_msgs_MoveResponse_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_xarm_msgs_MoveResponse_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete xarm_msgs/MoveResponse record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] input Immutable complete canonical body, disjoint from value.
 * @param[in] length Exact input byte count; trailing bytes are refused.
 * @param[out] value Caller-owned complete record; unchanged on every refusal.
 * @return Status 0 on complete success, otherwise 22; no partial record is exposed.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline uint32_t roswasmc_bounded_1_xarm_msgs_MoveResponse_decode(void const* input, size_t length, roswasmc_bounded_1_xarm_msgs_MoveResponse* value)
{
    roswasmc_bounded_1_xarm_msgs_MoveResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_xarm_msgs_MoveResponse);
    size_t offset = 0;
    if(!value || (length && !input) || length < 6u || length > 262u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_xarm_msgs_MoveResponse_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXISREQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXISREQUEST_0 != 0x1e677929UL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXISREQUEST_1 != 0x475d68f6UL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXISREQUEST_2 != 0x27670082UL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXISREQUEST_3 != 0x61f6d61bUL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXISREQUEST_4 != 0xc24ef7b2UL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXISREQUEST_5 != 0x719166f2UL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXISREQUEST_6 != 0x5c75bbf6UL ||                                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXISREQUEST_7 != 0x9071b8b2UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXISREQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXISREQUEST_0 0x1e677929UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXISREQUEST_1 0x475d68f6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXISREQUEST_2 0x27670082UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXISREQUEST_3 0x61f6d61bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXISREQUEST_4 0xc24ef7b2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXISREQUEST_5 0x719166f2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXISREQUEST_6 0x5c75bbf6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXISREQUEST_7 0x9071b8b2UL

/** @brief Complete ROS1 xarm_msgs/SetAxisRequest value; no field projects away native data. */
/**
 * @brief Complete ROS 1 xarm_msgs/SetAxisRequest value.
 * @details All 2 declared fields are retained in source order. The canonical representation occupies 4..4 bytes
 * and is identified by UWVMROS1_e9c45f00c83898744975890928756584b0646cf287024b3cb841380c368639f6.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_1_xarm_msgs_SetAxisRequest
{
    /** @brief Declared field id; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief xarm_msgs/SetAxisRequest.id: int16.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Xarm_msgsSetAxisRequest; share/platform/ros/rs/API-CONTRACT.md
     */
    int16_t id;
    /** @brief Declared field data; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief xarm_msgs/SetAxisRequest.data: int16.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Xarm_msgsSetAxisRequest; share/platform/ros/rs/API-CONTRACT.md
     */
    int16_t data;
} roswasmc_bounded_1_xarm_msgs_SetAxisRequest;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXISREQUEST_MAX_WIRE_BYTES 4u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXISREQUEST_MIN_WIRE_BYTES 4u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXISREQUEST_CODEC_IDENTITY "UWVMROS1_e9c45f00c83898744975890928756584b0646cf287024b3cb841380c368639f6"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate every field of xarm_msgs/SetAxisRequest.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline int roswasmc_bounded_1_xarm_msgs_SetAxisRequest_valid(roswasmc_bounded_1_xarm_msgs_SetAxisRequest const* value)
{
    if(!value)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the complete active canonical extent of xarm_msgs/SetAxisRequest.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline size_t roswasmc_bounded_1_xarm_msgs_SetAxisRequest_wire_size(roswasmc_bounded_1_xarm_msgs_SetAxisRequest const* value)
{
    size_t n = 0;
    (void)value;
    n += 2;
    n += 2;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Append all fields of xarm_msgs/SetAxisRequest to an internal canonical buffer.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete prevalidated immutable record.
 * @param[out] p Sufficient exclusive output storage established by the public encoder.
 * @param[in,out] offset Exclusive initialized writer cursor.
 * @return No value; internal caller guarantees the measured capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline void
    roswasmc_bounded_1_xarm_msgs_SetAxisRequest_write_fields(roswasmc_bounded_1_xarm_msgs_SetAxisRequest const* value, unsigned char* p, size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->id, 2);
    *offset += 2;
    uwvm_bounded_put(p + *offset, (uint64_t)value->data, 2);
    *offset += 2;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Decode the full ordered field prefix of xarm_msgs/SetAxisRequest.
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
static inline int roswasmc_bounded_1_xarm_msgs_SetAxisRequest_read_fields(unsigned char const* p,
                                                                          size_t n,
                                                                          size_t* offset,
                                                                          roswasmc_bounded_1_xarm_msgs_SetAxisRequest* value)
{
    if(*offset > n || n - *offset < 2)
        return 0;
    {
        uint16_t bits = (uint16_t)uwvm_bounded_get(p + *offset, 2);
        uwvm_bounded_copy(&value->id, &bits, 2);
    }
    *offset += 2;
    if(*offset > n || n - *offset < 2)
        return 0;
    {
        uint16_t bits = (uint16_t)uwvm_bounded_get(p + *offset, 2);
        uwvm_bounded_copy(&value->data, &bits, 2);
    }
    *offset += 2;
    return roswasmc_bounded_1_xarm_msgs_SetAxisRequest_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode the complete xarm_msgs/SetAxisRequest record transactionally.
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
static inline uint32_t
    roswasmc_bounded_1_xarm_msgs_SetAxisRequest_encode(roswasmc_bounded_1_xarm_msgs_SetAxisRequest const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_xarm_msgs_SetAxisRequest_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_xarm_msgs_SetAxisRequest_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_xarm_msgs_SetAxisRequest_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete xarm_msgs/SetAxisRequest record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] input Immutable complete canonical body, disjoint from value.
 * @param[in] length Exact input byte count; trailing bytes are refused.
 * @param[out] value Caller-owned complete record; unchanged on every refusal.
 * @return Status 0 on complete success, otherwise 22; no partial record is exposed.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline uint32_t roswasmc_bounded_1_xarm_msgs_SetAxisRequest_decode(void const* input, size_t length, roswasmc_bounded_1_xarm_msgs_SetAxisRequest* value)
{
    roswasmc_bounded_1_xarm_msgs_SetAxisRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_xarm_msgs_SetAxisRequest);
    size_t offset = 0;
    if(!value || (length && !input) || length < 4u || length > 4u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_xarm_msgs_SetAxisRequest_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXISRESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXISRESPONSE_0 != 0x7d3077e6UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXISRESPONSE_1 != 0x44ad84c9UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXISRESPONSE_2 != 0x4a8b46fbUL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXISRESPONSE_3 != 0x5f75b654UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXISRESPONSE_4 != 0x8045caf8UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXISRESPONSE_5 != 0x51f87b2fUL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXISRESPONSE_6 != 0xf732feebUL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXISRESPONSE_7 != 0xd59d5a59UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXISRESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXISRESPONSE_0 0x7d3077e6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXISRESPONSE_1 0x44ad84c9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXISRESPONSE_2 0x4a8b46fbUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXISRESPONSE_3 0x5f75b654UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXISRESPONSE_4 0x8045caf8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXISRESPONSE_5 0x51f87b2fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXISRESPONSE_6 0xf732feebUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXISRESPONSE_7 0xd59d5a59UL

/** @brief UTF-8 byte storage for xarm_msgs/SetAxisResponse.message; size excludes padding/terminators. */
/**
 * @brief Own a bounded canonical sequence or UTF-8 byte string inline.
 * @details The active size is 0 through 256. Unused capacity is never serialized or read. This Guest storage is
 * neither a native ROS allocation nor an authority token.
 */
typedef struct
{
    /**
     * @brief Number of initialized active elements.
     * @details Must be no greater than 256; decoders and encoders reject larger values without truncation.
     */
    uint32_t size;
    /**
     * @brief Caller-owned complete finite element capacity.
     * @details Only the initialized active size prefix is meaningful. Retain that prefix unchanged through
     * synchronous encoding; no native pointer or permission is stored.
     */
    /**
     * @brief xarm_msgs/SetAxisRequest.data: int16.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Xarm_msgsSetAxisRequest; share/platform/ros/rs/API-CONTRACT.md
     */
    unsigned char data[256];
} roswasmc_bounded_1_xarm_msgs_SetAxisResponse_message_text;

/** @brief Complete ROS1 xarm_msgs/SetAxisResponse value; no field projects away native data. */
/**
 * @brief Complete ROS 1 xarm_msgs/SetAxisResponse value.
 * @details All 2 declared fields are retained in source order. The canonical representation occupies 6..262
 * bytes and is identified by UWVMROS1_f4de9fe78f1ee22ef7c06a47de4dfd6dbd0d4f9d25021ee58779a1f241304a27.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_1_xarm_msgs_SetAxisResponse
{
    /** @brief Declared field ret; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief xarm_msgs/SetAxisResponse.ret: int16.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Xarm_msgsSetAxisResponse; share/platform/ros/rs/API-CONTRACT.md
     */
    int16_t ret;
    /** @brief Declared field message; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief xarm_msgs/SetAxisResponse.message: string; each string is 0..256 bytes; strict UTF-8 with no embedded
     * NUL.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Xarm_msgsSetAxisResponse; share/platform/ros/rs/API-CONTRACT.md
     */
    roswasmc_bounded_1_xarm_msgs_SetAxisResponse_message_text message;
} roswasmc_bounded_1_xarm_msgs_SetAxisResponse;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXISRESPONSE_MAX_WIRE_BYTES 262u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXISRESPONSE_MIN_WIRE_BYTES 6u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXISRESPONSE_CODEC_IDENTITY "UWVMROS1_f4de9fe78f1ee22ef7c06a47de4dfd6dbd0d4f9d25021ee58779a1f241304a27"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate every field of xarm_msgs/SetAxisResponse.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline int roswasmc_bounded_1_xarm_msgs_SetAxisResponse_valid(roswasmc_bounded_1_xarm_msgs_SetAxisResponse const* value)
{
    if(!value)
        return 0;
    if(value->message.size > 256u || !uwvm_bounded_utf8(value->message.data, value->message.size))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the complete active canonical extent of xarm_msgs/SetAxisResponse.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline size_t roswasmc_bounded_1_xarm_msgs_SetAxisResponse_wire_size(roswasmc_bounded_1_xarm_msgs_SetAxisResponse const* value)
{
    size_t n = 0;
    (void)value;
    n += 2;
    n += 4 + value->message.size;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Append all fields of xarm_msgs/SetAxisResponse to an internal canonical buffer.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete prevalidated immutable record.
 * @param[out] p Sufficient exclusive output storage established by the public encoder.
 * @param[in,out] offset Exclusive initialized writer cursor.
 * @return No value; internal caller guarantees the measured capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline void
    roswasmc_bounded_1_xarm_msgs_SetAxisResponse_write_fields(roswasmc_bounded_1_xarm_msgs_SetAxisResponse const* value, unsigned char* p, size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->ret, 2);
    *offset += 2;
    uwvm_bounded_put(p + *offset, value->message.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->message.data, value->message.size);
    *offset += value->message.size;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Decode the full ordered field prefix of xarm_msgs/SetAxisResponse.
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
static inline int roswasmc_bounded_1_xarm_msgs_SetAxisResponse_read_fields(unsigned char const* p,
                                                                           size_t n,
                                                                           size_t* offset,
                                                                           roswasmc_bounded_1_xarm_msgs_SetAxisResponse* value)
{
    if(*offset > n || n - *offset < 2)
        return 0;
    {
        uint16_t bits = (uint16_t)uwvm_bounded_get(p + *offset, 2);
        uwvm_bounded_copy(&value->ret, &bits, 2);
    }
    *offset += 2;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->message.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->message.size > 256u || value->message.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->message.data, p + *offset, value->message.size);
    *offset += value->message.size;
    return roswasmc_bounded_1_xarm_msgs_SetAxisResponse_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode the complete xarm_msgs/SetAxisResponse record transactionally.
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
static inline uint32_t roswasmc_bounded_1_xarm_msgs_SetAxisResponse_encode(roswasmc_bounded_1_xarm_msgs_SetAxisResponse const* value,
                                                                           void* output,
                                                                           size_t capacity,
                                                                           size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_xarm_msgs_SetAxisResponse_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_xarm_msgs_SetAxisResponse_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_xarm_msgs_SetAxisResponse_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete xarm_msgs/SetAxisResponse record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] input Immutable complete canonical body, disjoint from value.
 * @param[in] length Exact input byte count; trailing bytes are refused.
 * @param[out] value Caller-owned complete record; unchanged on every refusal.
 * @return Status 0 on complete success, otherwise 22; no partial record is exposed.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline uint32_t
    roswasmc_bounded_1_xarm_msgs_SetAxisResponse_decode(void const* input, size_t length, roswasmc_bounded_1_xarm_msgs_SetAxisResponse* value)
{
    roswasmc_bounded_1_xarm_msgs_SetAxisResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_xarm_msgs_SetAxisResponse);
    size_t offset = 0;
    if(!value || (length && !input) || length < 6u || length > 262u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_xarm_msgs_SetAxisResponse_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIOREQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIOREQUEST_0 != 0x9cda1e62UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIOREQUEST_1 != 0x449cc900UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIOREQUEST_2 != 0xe3e4f4d1UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIOREQUEST_3 != 0xfe92d00eUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIOREQUEST_4 != 0x7fa4d487UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIOREQUEST_5 != 0x48560ebdUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIOREQUEST_6 != 0xf7d66a13UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIOREQUEST_7 != 0xde235662UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIOREQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIOREQUEST_0 0x9cda1e62UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIOREQUEST_1 0x449cc900UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIOREQUEST_2 0xe3e4f4d1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIOREQUEST_3 0xfe92d00eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIOREQUEST_4 0x7fa4d487UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIOREQUEST_5 0x48560ebdUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIOREQUEST_6 0xf7d66a13UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIOREQUEST_7 0xde235662UL

/** @brief Complete ROS1 xarm_msgs/SetDigitalIORequest value; no field projects away native data. */
/**
 * @brief Complete ROS 1 xarm_msgs/SetDigitalIORequest value.
 * @details All 2 declared fields are retained in source order. The canonical representation occupies 4..4 bytes
 * and is identified by UWVMROS1_ac50ddbde487936e79606cb389b9bc074249136b4187a1334da6f09866cc3959.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_1_xarm_msgs_SetDigitalIORequest
{
    /** @brief Declared field io_num; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief xarm_msgs/SetDigitalIORequest.io_num: int16.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Xarm_msgsSetDigitalIORequest; share/platform/ros/rs/API-CONTRACT.md
     */
    int16_t io_num;
    /** @brief Declared field value; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief xarm_msgs/SetDigitalIORequest.value: int16.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Xarm_msgsSetDigitalIORequest; share/platform/ros/rs/API-CONTRACT.md
     */
    int16_t value;
} roswasmc_bounded_1_xarm_msgs_SetDigitalIORequest;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIOREQUEST_MAX_WIRE_BYTES 4u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIOREQUEST_MIN_WIRE_BYTES 4u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIOREQUEST_CODEC_IDENTITY "UWVMROS1_ac50ddbde487936e79606cb389b9bc074249136b4187a1334da6f09866cc3959"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate every field of xarm_msgs/SetDigitalIORequest.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline int roswasmc_bounded_1_xarm_msgs_SetDigitalIORequest_valid(roswasmc_bounded_1_xarm_msgs_SetDigitalIORequest const* value)
{
    if(!value)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the complete active canonical extent of xarm_msgs/SetDigitalIORequest.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline size_t roswasmc_bounded_1_xarm_msgs_SetDigitalIORequest_wire_size(roswasmc_bounded_1_xarm_msgs_SetDigitalIORequest const* value)
{
    size_t n = 0;
    (void)value;
    n += 2;
    n += 2;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Append all fields of xarm_msgs/SetDigitalIORequest to an internal canonical buffer.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete prevalidated immutable record.
 * @param[out] p Sufficient exclusive output storage established by the public encoder.
 * @param[in,out] offset Exclusive initialized writer cursor.
 * @return No value; internal caller guarantees the measured capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline void roswasmc_bounded_1_xarm_msgs_SetDigitalIORequest_write_fields(roswasmc_bounded_1_xarm_msgs_SetDigitalIORequest const* value,
                                                                                 unsigned char* p,
                                                                                 size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->io_num, 2);
    *offset += 2;
    uwvm_bounded_put(p + *offset, (uint64_t)value->value, 2);
    *offset += 2;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Decode the full ordered field prefix of xarm_msgs/SetDigitalIORequest.
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
static inline int roswasmc_bounded_1_xarm_msgs_SetDigitalIORequest_read_fields(unsigned char const* p,
                                                                               size_t n,
                                                                               size_t* offset,
                                                                               roswasmc_bounded_1_xarm_msgs_SetDigitalIORequest* value)
{
    if(*offset > n || n - *offset < 2)
        return 0;
    {
        uint16_t bits = (uint16_t)uwvm_bounded_get(p + *offset, 2);
        uwvm_bounded_copy(&value->io_num, &bits, 2);
    }
    *offset += 2;
    if(*offset > n || n - *offset < 2)
        return 0;
    {
        uint16_t bits = (uint16_t)uwvm_bounded_get(p + *offset, 2);
        uwvm_bounded_copy(&value->value, &bits, 2);
    }
    *offset += 2;
    return roswasmc_bounded_1_xarm_msgs_SetDigitalIORequest_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode the complete xarm_msgs/SetDigitalIORequest record transactionally.
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
static inline uint32_t roswasmc_bounded_1_xarm_msgs_SetDigitalIORequest_encode(roswasmc_bounded_1_xarm_msgs_SetDigitalIORequest const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_xarm_msgs_SetDigitalIORequest_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_xarm_msgs_SetDigitalIORequest_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_xarm_msgs_SetDigitalIORequest_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete xarm_msgs/SetDigitalIORequest record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] input Immutable complete canonical body, disjoint from value.
 * @param[in] length Exact input byte count; trailing bytes are refused.
 * @param[out] value Caller-owned complete record; unchanged on every refusal.
 * @return Status 0 on complete success, otherwise 22; no partial record is exposed.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline uint32_t
    roswasmc_bounded_1_xarm_msgs_SetDigitalIORequest_decode(void const* input, size_t length, roswasmc_bounded_1_xarm_msgs_SetDigitalIORequest* value)
{
    roswasmc_bounded_1_xarm_msgs_SetDigitalIORequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_xarm_msgs_SetDigitalIORequest);
    size_t offset = 0;
    if(!value || (length && !input) || length < 4u || length > 4u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_xarm_msgs_SetDigitalIORequest_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIORESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIORESPONSE_0 != 0xc5651178UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIORESPONSE_1 != 0x6b00fe62UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIORESPONSE_2 != 0xeea6fc13UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIORESPONSE_3 != 0xf01519eeUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIORESPONSE_4 != 0x4dbbe00eUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIORESPONSE_5 != 0x5297d3c4UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIORESPONSE_6 != 0x23004ffaUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIORESPONSE_7 != 0xdfc7d628UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIORESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIORESPONSE_0 0xc5651178UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIORESPONSE_1 0x6b00fe62UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIORESPONSE_2 0xeea6fc13UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIORESPONSE_3 0xf01519eeUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIORESPONSE_4 0x4dbbe00eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIORESPONSE_5 0x5297d3c4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIORESPONSE_6 0x23004ffaUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIORESPONSE_7 0xdfc7d628UL

/** @brief UTF-8 byte storage for xarm_msgs/SetDigitalIOResponse.message; size excludes padding/terminators. */
/**
 * @brief Own a bounded canonical sequence or UTF-8 byte string inline.
 * @details The active size is 0 through 256. Unused capacity is never serialized or read. This Guest storage is
 * neither a native ROS allocation nor an authority token.
 */
typedef struct
{
    /**
     * @brief Number of initialized active elements.
     * @details Must be no greater than 256; decoders and encoders reject larger values without truncation.
     */
    uint32_t size;
    /**
     * @brief Caller-owned complete finite element capacity.
     * @details Only the initialized active size prefix is meaningful. Retain that prefix unchanged through
     * synchronous encoding; no native pointer or permission is stored.
     */
    unsigned char data[256];
} roswasmc_bounded_1_xarm_msgs_SetDigitalIOResponse_message_text;

/** @brief Complete ROS1 xarm_msgs/SetDigitalIOResponse value; no field projects away native data. */
/**
 * @brief Complete ROS 1 xarm_msgs/SetDigitalIOResponse value.
 * @details All 2 declared fields are retained in source order. The canonical representation occupies 6..262
 * bytes and is identified by UWVMROS1_7f3aa4fdf4749d20e4ef13a51ecaa589df1a9a470ff3658ebb7c343e5940046a.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_1_xarm_msgs_SetDigitalIOResponse
{
    /** @brief Declared field ret; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief xarm_msgs/SetDigitalIOResponse.ret: int16.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Xarm_msgsSetDigitalIOResponse; share/platform/ros/rs/API-CONTRACT.md
     */
    int16_t ret;
    /** @brief Declared field message; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief xarm_msgs/SetDigitalIOResponse.message: string; each string is 0..256 bytes; strict UTF-8 with no
     * embedded NUL.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Xarm_msgsSetDigitalIOResponse; share/platform/ros/rs/API-CONTRACT.md
     */
    roswasmc_bounded_1_xarm_msgs_SetDigitalIOResponse_message_text message;
} roswasmc_bounded_1_xarm_msgs_SetDigitalIOResponse;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIORESPONSE_MAX_WIRE_BYTES 262u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIORESPONSE_MIN_WIRE_BYTES 6u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIORESPONSE_CODEC_IDENTITY "UWVMROS1_7f3aa4fdf4749d20e4ef13a51ecaa589df1a9a470ff3658ebb7c343e5940046a"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate every field of xarm_msgs/SetDigitalIOResponse.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline int roswasmc_bounded_1_xarm_msgs_SetDigitalIOResponse_valid(roswasmc_bounded_1_xarm_msgs_SetDigitalIOResponse const* value)
{
    if(!value)
        return 0;
    if(value->message.size > 256u || !uwvm_bounded_utf8(value->message.data, value->message.size))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the complete active canonical extent of xarm_msgs/SetDigitalIOResponse.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline size_t roswasmc_bounded_1_xarm_msgs_SetDigitalIOResponse_wire_size(roswasmc_bounded_1_xarm_msgs_SetDigitalIOResponse const* value)
{
    size_t n = 0;
    (void)value;
    n += 2;
    n += 4 + value->message.size;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Append all fields of xarm_msgs/SetDigitalIOResponse to an internal canonical buffer.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete prevalidated immutable record.
 * @param[out] p Sufficient exclusive output storage established by the public encoder.
 * @param[in,out] offset Exclusive initialized writer cursor.
 * @return No value; internal caller guarantees the measured capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline void roswasmc_bounded_1_xarm_msgs_SetDigitalIOResponse_write_fields(roswasmc_bounded_1_xarm_msgs_SetDigitalIOResponse const* value,
                                                                                  unsigned char* p,
                                                                                  size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->ret, 2);
    *offset += 2;
    uwvm_bounded_put(p + *offset, value->message.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->message.data, value->message.size);
    *offset += value->message.size;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Decode the full ordered field prefix of xarm_msgs/SetDigitalIOResponse.
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
static inline int roswasmc_bounded_1_xarm_msgs_SetDigitalIOResponse_read_fields(unsigned char const* p,
                                                                                size_t n,
                                                                                size_t* offset,
                                                                                roswasmc_bounded_1_xarm_msgs_SetDigitalIOResponse* value)
{
    if(*offset > n || n - *offset < 2)
        return 0;
    {
        uint16_t bits = (uint16_t)uwvm_bounded_get(p + *offset, 2);
        uwvm_bounded_copy(&value->ret, &bits, 2);
    }
    *offset += 2;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->message.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->message.size > 256u || value->message.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->message.data, p + *offset, value->message.size);
    *offset += value->message.size;
    return roswasmc_bounded_1_xarm_msgs_SetDigitalIOResponse_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode the complete xarm_msgs/SetDigitalIOResponse record transactionally.
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
static inline uint32_t roswasmc_bounded_1_xarm_msgs_SetDigitalIOResponse_encode(roswasmc_bounded_1_xarm_msgs_SetDigitalIOResponse const* value,
                                                                                void* output,
                                                                                size_t capacity,
                                                                                size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_xarm_msgs_SetDigitalIOResponse_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_xarm_msgs_SetDigitalIOResponse_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_xarm_msgs_SetDigitalIOResponse_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete xarm_msgs/SetDigitalIOResponse record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] input Immutable complete canonical body, disjoint from value.
 * @param[in] length Exact input byte count; trailing bytes are refused.
 * @param[out] value Caller-owned complete record; unchanged on every refusal.
 * @return Status 0 on complete success, otherwise 22; no partial record is exposed.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline uint32_t
    roswasmc_bounded_1_xarm_msgs_SetDigitalIOResponse_decode(void const* input, size_t length, roswasmc_bounded_1_xarm_msgs_SetDigitalIOResponse* value)
{
    roswasmc_bounded_1_xarm_msgs_SetDigitalIOResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_xarm_msgs_SetDigitalIOResponse);
    size_t offset = 0;
    if(!value || (length && !input) || length < 6u || length > 262u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_xarm_msgs_SetDigitalIOResponse_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16REQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16REQUEST_0 != 0x45f651a2UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16REQUEST_1 != 0x9f0c2518UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16REQUEST_2 != 0x5a5ea1dfUL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16REQUEST_3 != 0x509ee761UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16REQUEST_4 != 0x823db8b9UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16REQUEST_5 != 0x6738a384UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16REQUEST_6 != 0x4ee07536UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16REQUEST_7 != 0x12fb1d92UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16REQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16REQUEST_0 0x45f651a2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16REQUEST_1 0x9f0c2518UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16REQUEST_2 0x5a5ea1dfUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16REQUEST_3 0x509ee761UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16REQUEST_4 0x823db8b9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16REQUEST_5 0x6738a384UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16REQUEST_6 0x4ee07536UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16REQUEST_7 0x12fb1d92UL

/** @brief Complete ROS1 xarm_msgs/SetInt16Request value; no field projects away native data. */
/**
 * @brief Complete ROS 1 xarm_msgs/SetInt16Request value.
 * @details All 1 declared fields are retained in source order. The canonical representation occupies 2..2 bytes
 * and is identified by UWVMROS1_a218118282ed14fca33c7529762ce9849398540f031ad6e18e3a99a90226c5c7.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_1_xarm_msgs_SetInt16Request
{
    /** @brief Declared field data; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief xarm_msgs/SetInt16Request.data: int16.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Xarm_msgsSetInt16Request; share/platform/ros/rs/API-CONTRACT.md
     */
    int16_t data;
} roswasmc_bounded_1_xarm_msgs_SetInt16Request;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16REQUEST_MAX_WIRE_BYTES 2u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16REQUEST_MIN_WIRE_BYTES 2u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16REQUEST_CODEC_IDENTITY "UWVMROS1_a218118282ed14fca33c7529762ce9849398540f031ad6e18e3a99a90226c5c7"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate every field of xarm_msgs/SetInt16Request.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline int roswasmc_bounded_1_xarm_msgs_SetInt16Request_valid(roswasmc_bounded_1_xarm_msgs_SetInt16Request const* value)
{
    if(!value)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the complete active canonical extent of xarm_msgs/SetInt16Request.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline size_t roswasmc_bounded_1_xarm_msgs_SetInt16Request_wire_size(roswasmc_bounded_1_xarm_msgs_SetInt16Request const* value)
{
    size_t n = 0;
    (void)value;
    n += 2;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Append all fields of xarm_msgs/SetInt16Request to an internal canonical buffer.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete prevalidated immutable record.
 * @param[out] p Sufficient exclusive output storage established by the public encoder.
 * @param[in,out] offset Exclusive initialized writer cursor.
 * @return No value; internal caller guarantees the measured capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline void
    roswasmc_bounded_1_xarm_msgs_SetInt16Request_write_fields(roswasmc_bounded_1_xarm_msgs_SetInt16Request const* value, unsigned char* p, size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->data, 2);
    *offset += 2;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Decode the full ordered field prefix of xarm_msgs/SetInt16Request.
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
static inline int roswasmc_bounded_1_xarm_msgs_SetInt16Request_read_fields(unsigned char const* p,
                                                                           size_t n,
                                                                           size_t* offset,
                                                                           roswasmc_bounded_1_xarm_msgs_SetInt16Request* value)
{
    if(*offset > n || n - *offset < 2)
        return 0;
    {
        uint16_t bits = (uint16_t)uwvm_bounded_get(p + *offset, 2);
        uwvm_bounded_copy(&value->data, &bits, 2);
    }
    *offset += 2;
    return roswasmc_bounded_1_xarm_msgs_SetInt16Request_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode the complete xarm_msgs/SetInt16Request record transactionally.
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
static inline uint32_t roswasmc_bounded_1_xarm_msgs_SetInt16Request_encode(roswasmc_bounded_1_xarm_msgs_SetInt16Request const* value,
                                                                           void* output,
                                                                           size_t capacity,
                                                                           size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_xarm_msgs_SetInt16Request_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_xarm_msgs_SetInt16Request_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_xarm_msgs_SetInt16Request_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete xarm_msgs/SetInt16Request record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] input Immutable complete canonical body, disjoint from value.
 * @param[in] length Exact input byte count; trailing bytes are refused.
 * @param[out] value Caller-owned complete record; unchanged on every refusal.
 * @return Status 0 on complete success, otherwise 22; no partial record is exposed.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline uint32_t
    roswasmc_bounded_1_xarm_msgs_SetInt16Request_decode(void const* input, size_t length, roswasmc_bounded_1_xarm_msgs_SetInt16Request* value)
{
    roswasmc_bounded_1_xarm_msgs_SetInt16Request next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_xarm_msgs_SetInt16Request);
    size_t offset = 0;
    if(!value || (length && !input) || length < 2u || length > 2u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_xarm_msgs_SetInt16Request_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16RESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16RESPONSE_0 != 0x25a4a98cUL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16RESPONSE_1 != 0x41fc0229UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16RESPONSE_2 != 0x08801fa3UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16RESPONSE_3 != 0xae1c5184UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16RESPONSE_4 != 0xca27f1c5UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16RESPONSE_5 != 0x6dc9b707UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16RESPONSE_6 != 0xc4a38ac1UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16RESPONSE_7 != 0x0aace052UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16RESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16RESPONSE_0 0x25a4a98cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16RESPONSE_1 0x41fc0229UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16RESPONSE_2 0x08801fa3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16RESPONSE_3 0xae1c5184UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16RESPONSE_4 0xca27f1c5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16RESPONSE_5 0x6dc9b707UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16RESPONSE_6 0xc4a38ac1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16RESPONSE_7 0x0aace052UL

/** @brief UTF-8 byte storage for xarm_msgs/SetInt16Response.message; size excludes padding/terminators. */
/**
 * @brief Own a bounded canonical sequence or UTF-8 byte string inline.
 * @details The active size is 0 through 256. Unused capacity is never serialized or read. This Guest storage is
 * neither a native ROS allocation nor an authority token.
 */
typedef struct
{
    /**
     * @brief Number of initialized active elements.
     * @details Must be no greater than 256; decoders and encoders reject larger values without truncation.
     */
    uint32_t size;
    /**
     * @brief Caller-owned complete finite element capacity.
     * @details Only the initialized active size prefix is meaningful. Retain that prefix unchanged through
     * synchronous encoding; no native pointer or permission is stored.
     */
    /**
     * @brief xarm_msgs/SetInt16Request.data: int16.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Xarm_msgsSetInt16Request; share/platform/ros/rs/API-CONTRACT.md
     */
    unsigned char data[256];
} roswasmc_bounded_1_xarm_msgs_SetInt16Response_message_text;

/** @brief Complete ROS1 xarm_msgs/SetInt16Response value; no field projects away native data. */
/**
 * @brief Complete ROS 1 xarm_msgs/SetInt16Response value.
 * @details All 2 declared fields are retained in source order. The canonical representation occupies 6..262
 * bytes and is identified by UWVMROS1_8df1192ff5ed3fc5eaaadf33980726b8764a541d30d062293d378d261367d656.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_1_xarm_msgs_SetInt16Response
{
    /** @brief Declared field ret; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief xarm_msgs/SetInt16Response.ret: int16.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Xarm_msgsSetInt16Response; share/platform/ros/rs/API-CONTRACT.md
     */
    int16_t ret;
    /** @brief Declared field message; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief xarm_msgs/SetInt16Response.message: string; each string is 0..256 bytes; strict UTF-8 with no embedded
     * NUL.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Xarm_msgsSetInt16Response; share/platform/ros/rs/API-CONTRACT.md
     */
    roswasmc_bounded_1_xarm_msgs_SetInt16Response_message_text message;
} roswasmc_bounded_1_xarm_msgs_SetInt16Response;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16RESPONSE_MAX_WIRE_BYTES 262u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16RESPONSE_MIN_WIRE_BYTES 6u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16RESPONSE_CODEC_IDENTITY "UWVMROS1_8df1192ff5ed3fc5eaaadf33980726b8764a541d30d062293d378d261367d656"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate every field of xarm_msgs/SetInt16Response.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline int roswasmc_bounded_1_xarm_msgs_SetInt16Response_valid(roswasmc_bounded_1_xarm_msgs_SetInt16Response const* value)
{
    if(!value)
        return 0;
    if(value->message.size > 256u || !uwvm_bounded_utf8(value->message.data, value->message.size))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the complete active canonical extent of xarm_msgs/SetInt16Response.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline size_t roswasmc_bounded_1_xarm_msgs_SetInt16Response_wire_size(roswasmc_bounded_1_xarm_msgs_SetInt16Response const* value)
{
    size_t n = 0;
    (void)value;
    n += 2;
    n += 4 + value->message.size;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Append all fields of xarm_msgs/SetInt16Response to an internal canonical buffer.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete prevalidated immutable record.
 * @param[out] p Sufficient exclusive output storage established by the public encoder.
 * @param[in,out] offset Exclusive initialized writer cursor.
 * @return No value; internal caller guarantees the measured capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline void
    roswasmc_bounded_1_xarm_msgs_SetInt16Response_write_fields(roswasmc_bounded_1_xarm_msgs_SetInt16Response const* value, unsigned char* p, size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->ret, 2);
    *offset += 2;
    uwvm_bounded_put(p + *offset, value->message.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->message.data, value->message.size);
    *offset += value->message.size;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Decode the full ordered field prefix of xarm_msgs/SetInt16Response.
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
static inline int roswasmc_bounded_1_xarm_msgs_SetInt16Response_read_fields(unsigned char const* p,
                                                                            size_t n,
                                                                            size_t* offset,
                                                                            roswasmc_bounded_1_xarm_msgs_SetInt16Response* value)
{
    if(*offset > n || n - *offset < 2)
        return 0;
    {
        uint16_t bits = (uint16_t)uwvm_bounded_get(p + *offset, 2);
        uwvm_bounded_copy(&value->ret, &bits, 2);
    }
    *offset += 2;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->message.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->message.size > 256u || value->message.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->message.data, p + *offset, value->message.size);
    *offset += value->message.size;
    return roswasmc_bounded_1_xarm_msgs_SetInt16Response_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode the complete xarm_msgs/SetInt16Response record transactionally.
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
static inline uint32_t roswasmc_bounded_1_xarm_msgs_SetInt16Response_encode(roswasmc_bounded_1_xarm_msgs_SetInt16Response const* value,
                                                                            void* output,
                                                                            size_t capacity,
                                                                            size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_xarm_msgs_SetInt16Response_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_xarm_msgs_SetInt16Response_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_xarm_msgs_SetInt16Response_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete xarm_msgs/SetInt16Response record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] input Immutable complete canonical body, disjoint from value.
 * @param[in] length Exact input byte count; trailing bytes are refused.
 * @param[out] value Caller-owned complete record; unchanged on every refusal.
 * @return Status 0 on complete success, otherwise 22; no partial record is exposed.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline uint32_t
    roswasmc_bounded_1_xarm_msgs_SetInt16Response_decode(void const* input, size_t length, roswasmc_bounded_1_xarm_msgs_SetInt16Response* value)
{
    roswasmc_bounded_1_xarm_msgs_SetInt16Response next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_xarm_msgs_SetInt16Response);
    size_t offset = 0;
    if(!value || (length && !input) || length < 6u || length > 262u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_xarm_msgs_SetInt16Response_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSETREQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSETREQUEST_0 != 0x4efd5628UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSETREQUEST_1 != 0x927b90daUL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSETREQUEST_2 != 0x2e113e67UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSETREQUEST_3 != 0x8bbdf820UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSETREQUEST_4 != 0xfd1922eaUL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSETREQUEST_5 != 0xa09e051fUL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSETREQUEST_6 != 0xd8b1b0cbUL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSETREQUEST_7 != 0x00989055UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSETREQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSETREQUEST_0 0x4efd5628UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSETREQUEST_1 0x927b90daUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSETREQUEST_2 0x2e113e67UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSETREQUEST_3 0x8bbdf820UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSETREQUEST_4 0xfd1922eaUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSETREQUEST_5 0xa09e051fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSETREQUEST_6 0xd8b1b0cbUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSETREQUEST_7 0x00989055UL

/** @brief Complete ROS1 xarm_msgs/TCPOffsetRequest value; no field projects away native data. */
/**
 * @brief Complete ROS 1 xarm_msgs/TCPOffsetRequest value.
 * @details All 6 declared fields are retained in source order. The canonical representation occupies 24..24
 * bytes and is identified by UWVMROS1_588f23b909cce18cc490801b9d2f0960335362b0c823651cda6d5c8a27ee0afd.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_1_xarm_msgs_TCPOffsetRequest
{
    /** @brief Declared field x; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief xarm_msgs/TCPOffsetRequest.x: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Xarm_msgsTCPOffsetRequest; share/platform/ros/rs/API-CONTRACT.md
     */
    float x;
    /** @brief Declared field y; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief xarm_msgs/TCPOffsetRequest.y: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Xarm_msgsTCPOffsetRequest; share/platform/ros/rs/API-CONTRACT.md
     */
    float y;
    /** @brief Declared field z; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief xarm_msgs/TCPOffsetRequest.z: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Xarm_msgsTCPOffsetRequest; share/platform/ros/rs/API-CONTRACT.md
     */
    float z;
    /** @brief Declared field roll; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief xarm_msgs/TCPOffsetRequest.roll: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Xarm_msgsTCPOffsetRequest; share/platform/ros/rs/API-CONTRACT.md
     */
    float roll;
    /** @brief Declared field pitch; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief xarm_msgs/TCPOffsetRequest.pitch: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Xarm_msgsTCPOffsetRequest; share/platform/ros/rs/API-CONTRACT.md
     */
    float pitch;
    /** @brief Declared field yaw; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief xarm_msgs/TCPOffsetRequest.yaw: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Xarm_msgsTCPOffsetRequest; share/platform/ros/rs/API-CONTRACT.md
     */
    float yaw;
} roswasmc_bounded_1_xarm_msgs_TCPOffsetRequest;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSETREQUEST_MAX_WIRE_BYTES 24u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSETREQUEST_MIN_WIRE_BYTES 24u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSETREQUEST_CODEC_IDENTITY "UWVMROS1_588f23b909cce18cc490801b9d2f0960335362b0c823651cda6d5c8a27ee0afd"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate every field of xarm_msgs/TCPOffsetRequest.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline int roswasmc_bounded_1_xarm_msgs_TCPOffsetRequest_valid(roswasmc_bounded_1_xarm_msgs_TCPOffsetRequest const* value)
{
    if(!value)
        return 0;
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->x, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->y, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->z, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->roll, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->pitch, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->yaw, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the complete active canonical extent of xarm_msgs/TCPOffsetRequest.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline size_t roswasmc_bounded_1_xarm_msgs_TCPOffsetRequest_wire_size(roswasmc_bounded_1_xarm_msgs_TCPOffsetRequest const* value)
{
    size_t n = 0;
    (void)value;
    n += 4;
    n += 4;
    n += 4;
    n += 4;
    n += 4;
    n += 4;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Append all fields of xarm_msgs/TCPOffsetRequest to an internal canonical buffer.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete prevalidated immutable record.
 * @param[out] p Sufficient exclusive output storage established by the public encoder.
 * @param[in,out] offset Exclusive initialized writer cursor.
 * @return No value; internal caller guarantees the measured capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline void
    roswasmc_bounded_1_xarm_msgs_TCPOffsetRequest_write_fields(roswasmc_bounded_1_xarm_msgs_TCPOffsetRequest const* value, unsigned char* p, size_t* offset)
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
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->roll, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->pitch, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->yaw, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Decode the full ordered field prefix of xarm_msgs/TCPOffsetRequest.
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
static inline int roswasmc_bounded_1_xarm_msgs_TCPOffsetRequest_read_fields(unsigned char const* p,
                                                                            size_t n,
                                                                            size_t* offset,
                                                                            roswasmc_bounded_1_xarm_msgs_TCPOffsetRequest* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->x, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->y, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->z, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->roll, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->pitch, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->yaw, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_1_xarm_msgs_TCPOffsetRequest_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode the complete xarm_msgs/TCPOffsetRequest record transactionally.
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
static inline uint32_t roswasmc_bounded_1_xarm_msgs_TCPOffsetRequest_encode(roswasmc_bounded_1_xarm_msgs_TCPOffsetRequest const* value,
                                                                            void* output,
                                                                            size_t capacity,
                                                                            size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_xarm_msgs_TCPOffsetRequest_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_xarm_msgs_TCPOffsetRequest_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_xarm_msgs_TCPOffsetRequest_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete xarm_msgs/TCPOffsetRequest record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] input Immutable complete canonical body, disjoint from value.
 * @param[in] length Exact input byte count; trailing bytes are refused.
 * @param[out] value Caller-owned complete record; unchanged on every refusal.
 * @return Status 0 on complete success, otherwise 22; no partial record is exposed.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline uint32_t
    roswasmc_bounded_1_xarm_msgs_TCPOffsetRequest_decode(void const* input, size_t length, roswasmc_bounded_1_xarm_msgs_TCPOffsetRequest* value)
{
    roswasmc_bounded_1_xarm_msgs_TCPOffsetRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_xarm_msgs_TCPOffsetRequest);
    size_t offset = 0;
    if(!value || (length && !input) || length < 24u || length > 24u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_xarm_msgs_TCPOffsetRequest_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSETRESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSETRESPONSE_0 != 0x93b2edd1UL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSETRESPONSE_1 != 0xee462bb6UL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSETRESPONSE_2 != 0xfdf7425fUL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSETRESPONSE_3 != 0x0f3beeebUL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSETRESPONSE_4 != 0x180c0c35UL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSETRESPONSE_5 != 0x6ab41c44UL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSETRESPONSE_6 != 0x057a6627UL ||                                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSETRESPONSE_7 != 0x3eda222aUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSETRESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSETRESPONSE_0 0x93b2edd1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSETRESPONSE_1 0xee462bb6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSETRESPONSE_2 0xfdf7425fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSETRESPONSE_3 0x0f3beeebUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSETRESPONSE_4 0x180c0c35UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSETRESPONSE_5 0x6ab41c44UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSETRESPONSE_6 0x057a6627UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSETRESPONSE_7 0x3eda222aUL

/** @brief UTF-8 byte storage for xarm_msgs/TCPOffsetResponse.message; size excludes padding/terminators. */
/**
 * @brief Own a bounded canonical sequence or UTF-8 byte string inline.
 * @details The active size is 0 through 256. Unused capacity is never serialized or read. This Guest storage is
 * neither a native ROS allocation nor an authority token.
 */
typedef struct
{
    /**
     * @brief Number of initialized active elements.
     * @details Must be no greater than 256; decoders and encoders reject larger values without truncation.
     */
    uint32_t size;
    /**
     * @brief Caller-owned complete finite element capacity.
     * @details Only the initialized active size prefix is meaningful. Retain that prefix unchanged through
     * synchronous encoding; no native pointer or permission is stored.
     */
    unsigned char data[256];
} roswasmc_bounded_1_xarm_msgs_TCPOffsetResponse_message_text;

/** @brief Complete ROS1 xarm_msgs/TCPOffsetResponse value; no field projects away native data. */
/**
 * @brief Complete ROS 1 xarm_msgs/TCPOffsetResponse value.
 * @details All 2 declared fields are retained in source order. The canonical representation occupies 6..262
 * bytes and is identified by UWVMROS1_2f06deb14c2f0acce41ada4fecefd70e32bda4bc84b82354dffe333d2337464d.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_1_xarm_msgs_TCPOffsetResponse
{
    /** @brief Declared field ret; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief xarm_msgs/TCPOffsetResponse.ret: int16.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Xarm_msgsTCPOffsetResponse; share/platform/ros/rs/API-CONTRACT.md
     */
    int16_t ret;
    /** @brief Declared field message; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief xarm_msgs/TCPOffsetResponse.message: string; each string is 0..256 bytes; strict UTF-8 with no embedded
     * NUL.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Xarm_msgsTCPOffsetResponse; share/platform/ros/rs/API-CONTRACT.md
     */
    roswasmc_bounded_1_xarm_msgs_TCPOffsetResponse_message_text message;
} roswasmc_bounded_1_xarm_msgs_TCPOffsetResponse;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSETRESPONSE_MAX_WIRE_BYTES 262u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSETRESPONSE_MIN_WIRE_BYTES 6u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSETRESPONSE_CODEC_IDENTITY "UWVMROS1_2f06deb14c2f0acce41ada4fecefd70e32bda4bc84b82354dffe333d2337464d"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate every field of xarm_msgs/TCPOffsetResponse.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline int roswasmc_bounded_1_xarm_msgs_TCPOffsetResponse_valid(roswasmc_bounded_1_xarm_msgs_TCPOffsetResponse const* value)
{
    if(!value)
        return 0;
    if(value->message.size > 256u || !uwvm_bounded_utf8(value->message.data, value->message.size))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the complete active canonical extent of xarm_msgs/TCPOffsetResponse.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline size_t roswasmc_bounded_1_xarm_msgs_TCPOffsetResponse_wire_size(roswasmc_bounded_1_xarm_msgs_TCPOffsetResponse const* value)
{
    size_t n = 0;
    (void)value;
    n += 2;
    n += 4 + value->message.size;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Append all fields of xarm_msgs/TCPOffsetResponse to an internal canonical buffer.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete prevalidated immutable record.
 * @param[out] p Sufficient exclusive output storage established by the public encoder.
 * @param[in,out] offset Exclusive initialized writer cursor.
 * @return No value; internal caller guarantees the measured capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline void
    roswasmc_bounded_1_xarm_msgs_TCPOffsetResponse_write_fields(roswasmc_bounded_1_xarm_msgs_TCPOffsetResponse const* value, unsigned char* p, size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->ret, 2);
    *offset += 2;
    uwvm_bounded_put(p + *offset, value->message.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->message.data, value->message.size);
    *offset += value->message.size;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Decode the full ordered field prefix of xarm_msgs/TCPOffsetResponse.
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
static inline int roswasmc_bounded_1_xarm_msgs_TCPOffsetResponse_read_fields(unsigned char const* p,
                                                                             size_t n,
                                                                             size_t* offset,
                                                                             roswasmc_bounded_1_xarm_msgs_TCPOffsetResponse* value)
{
    if(*offset > n || n - *offset < 2)
        return 0;
    {
        uint16_t bits = (uint16_t)uwvm_bounded_get(p + *offset, 2);
        uwvm_bounded_copy(&value->ret, &bits, 2);
    }
    *offset += 2;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->message.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->message.size > 256u || value->message.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->message.data, p + *offset, value->message.size);
    *offset += value->message.size;
    return roswasmc_bounded_1_xarm_msgs_TCPOffsetResponse_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode the complete xarm_msgs/TCPOffsetResponse record transactionally.
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
static inline uint32_t roswasmc_bounded_1_xarm_msgs_TCPOffsetResponse_encode(roswasmc_bounded_1_xarm_msgs_TCPOffsetResponse const* value,
                                                                             void* output,
                                                                             size_t capacity,
                                                                             size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_xarm_msgs_TCPOffsetResponse_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_xarm_msgs_TCPOffsetResponse_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_xarm_msgs_TCPOffsetResponse_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete xarm_msgs/TCPOffsetResponse record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] input Immutable complete canonical body, disjoint from value.
 * @param[in] length Exact input byte count; trailing bytes are refused.
 * @param[out] value Caller-owned complete record; unchanged on every refusal.
 * @return Status 0 on complete success, otherwise 22; no partial record is exposed.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline uint32_t
    roswasmc_bounded_1_xarm_msgs_TCPOffsetResponse_decode(void const* input, size_t length, roswasmc_bounded_1_xarm_msgs_TCPOffsetResponse* value)
{
    roswasmc_bounded_1_xarm_msgs_TCPOffsetResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_xarm_msgs_TCPOffsetResponse);
    size_t offset = 0;
    if(!value || (length && !input) || length < 6u || length > 262u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_xarm_msgs_TCPOffsetResponse_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_EXEC_PLANREQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_EXEC_PLANREQUEST_0 != 0xede184c8UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_EXEC_PLANREQUEST_1 != 0xbef25e9eUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_EXEC_PLANREQUEST_2 != 0xc35cd606UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_EXEC_PLANREQUEST_3 != 0x29a3192dUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_EXEC_PLANREQUEST_4 != 0x9c630644UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_EXEC_PLANREQUEST_5 != 0x6b239267UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_EXEC_PLANREQUEST_6 != 0xb3002ce2UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_EXEC_PLANREQUEST_7 != 0xed88e39fUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_EXEC_PLANREQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_EXEC_PLANREQUEST_0 0xede184c8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_EXEC_PLANREQUEST_1 0xbef25e9eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_EXEC_PLANREQUEST_2 0xc35cd606UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_EXEC_PLANREQUEST_3 0x29a3192dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_EXEC_PLANREQUEST_4 0x9c630644UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_EXEC_PLANREQUEST_5 0x6b239267UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_EXEC_PLANREQUEST_6 0xb3002ce2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_EXEC_PLANREQUEST_7 0xed88e39fUL

/** @brief Complete ROS1 xarm_planner/exec_planRequest value; no field projects away native data. */
/**
 * @brief Complete ROS 1 xarm_planner/exec_planRequest value.
 * @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1 bytes
 * and is identified by UWVMROS1_f7c4c0d95453c6a7cfdc7726b003a63745ad0e533ced368d6422c5cb2c3d21f3.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_1_xarm_planner_exec_planRequest
{
    /** @brief Declared field exec; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief xarm_planner/exec_planRequest.exec: bool.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Xarm_plannerExec_planRequest; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t exec;
} roswasmc_bounded_1_xarm_planner_exec_planRequest;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_1_XARM_PLANNER_EXEC_PLANREQUEST_MAX_WIRE_BYTES 1u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_1_XARM_PLANNER_EXEC_PLANREQUEST_MIN_WIRE_BYTES 1u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_1_XARM_PLANNER_EXEC_PLANREQUEST_CODEC_IDENTITY "UWVMROS1_f7c4c0d95453c6a7cfdc7726b003a63745ad0e533ced368d6422c5cb2c3d21f3"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate every field of xarm_planner/exec_planRequest.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline int roswasmc_bounded_1_xarm_planner_exec_planRequest_valid(roswasmc_bounded_1_xarm_planner_exec_planRequest const* value)
{
    if(!value)
        return 0;
    if(value->exec > 1)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the complete active canonical extent of xarm_planner/exec_planRequest.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline size_t roswasmc_bounded_1_xarm_planner_exec_planRequest_wire_size(roswasmc_bounded_1_xarm_planner_exec_planRequest const* value)
{
    size_t n = 0;
    (void)value;
    n += 1;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Append all fields of xarm_planner/exec_planRequest to an internal canonical buffer.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete prevalidated immutable record.
 * @param[out] p Sufficient exclusive output storage established by the public encoder.
 * @param[in,out] offset Exclusive initialized writer cursor.
 * @return No value; internal caller guarantees the measured capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline void roswasmc_bounded_1_xarm_planner_exec_planRequest_write_fields(roswasmc_bounded_1_xarm_planner_exec_planRequest const* value,
                                                                                 unsigned char* p,
                                                                                 size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->exec, 1);
    *offset += 1;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Decode the full ordered field prefix of xarm_planner/exec_planRequest.
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
static inline int roswasmc_bounded_1_xarm_planner_exec_planRequest_read_fields(unsigned char const* p,
                                                                               size_t n,
                                                                               size_t* offset,
                                                                               roswasmc_bounded_1_xarm_planner_exec_planRequest* value)
{
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->exec, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_1_xarm_planner_exec_planRequest_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode the complete xarm_planner/exec_planRequest record transactionally.
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
static inline uint32_t roswasmc_bounded_1_xarm_planner_exec_planRequest_encode(roswasmc_bounded_1_xarm_planner_exec_planRequest const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_xarm_planner_exec_planRequest_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_xarm_planner_exec_planRequest_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_xarm_planner_exec_planRequest_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete xarm_planner/exec_planRequest record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] input Immutable complete canonical body, disjoint from value.
 * @param[in] length Exact input byte count; trailing bytes are refused.
 * @param[out] value Caller-owned complete record; unchanged on every refusal.
 * @return Status 0 on complete success, otherwise 22; no partial record is exposed.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline uint32_t
    roswasmc_bounded_1_xarm_planner_exec_planRequest_decode(void const* input, size_t length, roswasmc_bounded_1_xarm_planner_exec_planRequest* value)
{
    roswasmc_bounded_1_xarm_planner_exec_planRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_xarm_planner_exec_planRequest);
    size_t offset = 0;
    if(!value || (length && !input) || length < 1u || length > 1u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_xarm_planner_exec_planRequest_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_EXEC_PLANRESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_EXEC_PLANRESPONSE_0 != 0xc80ba460UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_EXEC_PLANRESPONSE_1 != 0x9f511de3UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_EXEC_PLANRESPONSE_2 != 0xed626da3UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_EXEC_PLANRESPONSE_3 != 0xafa8548eUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_EXEC_PLANRESPONSE_4 != 0x7eefcc07UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_EXEC_PLANRESPONSE_5 != 0xc0ffe76dUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_EXEC_PLANRESPONSE_6 != 0x29fbd93dUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_EXEC_PLANRESPONSE_7 != 0xd1075ba1UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_EXEC_PLANRESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_EXEC_PLANRESPONSE_0 0xc80ba460UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_EXEC_PLANRESPONSE_1 0x9f511de3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_EXEC_PLANRESPONSE_2 0xed626da3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_EXEC_PLANRESPONSE_3 0xafa8548eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_EXEC_PLANRESPONSE_4 0x7eefcc07UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_EXEC_PLANRESPONSE_5 0xc0ffe76dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_EXEC_PLANRESPONSE_6 0x29fbd93dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_EXEC_PLANRESPONSE_7 0xd1075ba1UL

/** @brief Complete ROS1 xarm_planner/exec_planResponse value; no field projects away native data. */
/**
 * @brief Complete ROS 1 xarm_planner/exec_planResponse value.
 * @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1 bytes
 * and is identified by UWVMROS1_7e265ca343aa21c5f0dc043d8662e82ed8e57f56c4eaf7f15733162c1029a625.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_1_xarm_planner_exec_planResponse
{
    /** @brief Declared field success; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief xarm_planner/exec_planResponse.success: bool.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Xarm_plannerExec_planResponse; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t success;
} roswasmc_bounded_1_xarm_planner_exec_planResponse;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_1_XARM_PLANNER_EXEC_PLANRESPONSE_MAX_WIRE_BYTES 1u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_1_XARM_PLANNER_EXEC_PLANRESPONSE_MIN_WIRE_BYTES 1u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_1_XARM_PLANNER_EXEC_PLANRESPONSE_CODEC_IDENTITY "UWVMROS1_7e265ca343aa21c5f0dc043d8662e82ed8e57f56c4eaf7f15733162c1029a625"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate every field of xarm_planner/exec_planResponse.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline int roswasmc_bounded_1_xarm_planner_exec_planResponse_valid(roswasmc_bounded_1_xarm_planner_exec_planResponse const* value)
{
    if(!value)
        return 0;
    if(value->success > 1)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the complete active canonical extent of xarm_planner/exec_planResponse.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline size_t roswasmc_bounded_1_xarm_planner_exec_planResponse_wire_size(roswasmc_bounded_1_xarm_planner_exec_planResponse const* value)
{
    size_t n = 0;
    (void)value;
    n += 1;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Append all fields of xarm_planner/exec_planResponse to an internal canonical buffer.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete prevalidated immutable record.
 * @param[out] p Sufficient exclusive output storage established by the public encoder.
 * @param[in,out] offset Exclusive initialized writer cursor.
 * @return No value; internal caller guarantees the measured capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline void roswasmc_bounded_1_xarm_planner_exec_planResponse_write_fields(roswasmc_bounded_1_xarm_planner_exec_planResponse const* value,
                                                                                  unsigned char* p,
                                                                                  size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->success, 1);
    *offset += 1;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Decode the full ordered field prefix of xarm_planner/exec_planResponse.
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
static inline int roswasmc_bounded_1_xarm_planner_exec_planResponse_read_fields(unsigned char const* p,
                                                                                size_t n,
                                                                                size_t* offset,
                                                                                roswasmc_bounded_1_xarm_planner_exec_planResponse* value)
{
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->success, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_1_xarm_planner_exec_planResponse_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode the complete xarm_planner/exec_planResponse record transactionally.
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
static inline uint32_t roswasmc_bounded_1_xarm_planner_exec_planResponse_encode(roswasmc_bounded_1_xarm_planner_exec_planResponse const* value,
                                                                                void* output,
                                                                                size_t capacity,
                                                                                size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_xarm_planner_exec_planResponse_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_xarm_planner_exec_planResponse_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_xarm_planner_exec_planResponse_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete xarm_planner/exec_planResponse record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] input Immutable complete canonical body, disjoint from value.
 * @param[in] length Exact input byte count; trailing bytes are refused.
 * @param[out] value Caller-owned complete record; unchanged on every refusal.
 * @return Status 0 on complete success, otherwise 22; no partial record is exposed.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline uint32_t
    roswasmc_bounded_1_xarm_planner_exec_planResponse_decode(void const* input, size_t length, roswasmc_bounded_1_xarm_planner_exec_planResponse* value)
{
    roswasmc_bounded_1_xarm_planner_exec_planResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_xarm_planner_exec_planResponse);
    size_t offset = 0;
    if(!value || (length && !input) || length < 1u || length > 1u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_xarm_planner_exec_planResponse_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_JOINT_PLANREQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_JOINT_PLANREQUEST_0 != 0x7f8a2013UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_JOINT_PLANREQUEST_1 != 0xe0f0b201UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_JOINT_PLANREQUEST_2 != 0x486ff9ecUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_JOINT_PLANREQUEST_3 != 0xbe140b8cUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_JOINT_PLANREQUEST_4 != 0xeb1e76b7UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_JOINT_PLANREQUEST_5 != 0xb597eb7dUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_JOINT_PLANREQUEST_6 != 0xe497807eUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_JOINT_PLANREQUEST_7 != 0x0e871cb3UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_JOINT_PLANREQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_JOINT_PLANREQUEST_0 0x7f8a2013UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_JOINT_PLANREQUEST_1 0xe0f0b201UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_JOINT_PLANREQUEST_2 0x486ff9ecUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_JOINT_PLANREQUEST_3 0xbe140b8cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_JOINT_PLANREQUEST_4 0xeb1e76b7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_JOINT_PLANREQUEST_5 0xb597eb7dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_JOINT_PLANREQUEST_6 0xe497807eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_JOINT_PLANREQUEST_7 0x0e871cb3UL

/** @brief At most32 initialized logical elements; unused capacity is never serialized. */
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
    double data[32];
} roswasmc_bounded_1_xarm_planner_joint_planRequest_target_sequence;

/** @brief Complete ROS1 xarm_planner/joint_planRequest value; no field projects away native data. */
/**
 * @brief Complete ROS 1 xarm_planner/joint_planRequest value.
 * @details All 1 declared fields are retained in source order. The canonical representation occupies 4..260
 * bytes and is identified by UWVMROS1_8a531cf6d8b62366b63ef2f7c6fd2314211a3043b2da3f050c20080cf4ec8fd9.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_1_xarm_planner_joint_planRequest
{
    /** @brief Declared field target; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief xarm_planner/joint_planRequest.target: float64; 0..32 elements.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Xarm_plannerJoint_planRequest; share/platform/ros/rs/API-CONTRACT.md
     */
    roswasmc_bounded_1_xarm_planner_joint_planRequest_target_sequence target;
} roswasmc_bounded_1_xarm_planner_joint_planRequest;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_1_XARM_PLANNER_JOINT_PLANREQUEST_MAX_WIRE_BYTES 260u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_1_XARM_PLANNER_JOINT_PLANREQUEST_MIN_WIRE_BYTES 4u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_1_XARM_PLANNER_JOINT_PLANREQUEST_CODEC_IDENTITY "UWVMROS1_8a531cf6d8b62366b63ef2f7c6fd2314211a3043b2da3f050c20080cf4ec8fd9"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate every field of xarm_planner/joint_planRequest.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline int roswasmc_bounded_1_xarm_planner_joint_planRequest_valid(roswasmc_bounded_1_xarm_planner_joint_planRequest const* value)
{
    if(!value)
        return 0;
    if(value->target.size > 32u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->target.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->target.data[i], 8);
                if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                    return 0;
            }
        }
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the complete active canonical extent of xarm_planner/joint_planRequest.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline size_t roswasmc_bounded_1_xarm_planner_joint_planRequest_wire_size(roswasmc_bounded_1_xarm_planner_joint_planRequest const* value)
{
    size_t n = 0;
    (void)value;
    n += 4;
    if(value->target.size > 32u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->target.size; ++i)
        {
            n += 8;
        }
    }
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Append all fields of xarm_planner/joint_planRequest to an internal canonical buffer.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete prevalidated immutable record.
 * @param[out] p Sufficient exclusive output storage established by the public encoder.
 * @param[in,out] offset Exclusive initialized writer cursor.
 * @return No value; internal caller guarantees the measured capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline void roswasmc_bounded_1_xarm_planner_joint_planRequest_write_fields(roswasmc_bounded_1_xarm_planner_joint_planRequest const* value,
                                                                                  unsigned char* p,
                                                                                  size_t* offset)
{
    uwvm_bounded_put(p + *offset, value->target.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->target.size; ++i)
        {
            {
                uint64_t bits;
                uwvm_bounded_copy(&bits, &value->target.data[i], 8);
                uwvm_bounded_put(p + *offset, bits, 8);
                *offset += 8;
            }
        }
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Decode the full ordered field prefix of xarm_planner/joint_planRequest.
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
static inline int roswasmc_bounded_1_xarm_planner_joint_planRequest_read_fields(unsigned char const* p,
                                                                                size_t n,
                                                                                size_t* offset,
                                                                                roswasmc_bounded_1_xarm_planner_joint_planRequest* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    value->target.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->target.size > 32u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->target.size; ++i)
        {
            if(*offset > n || n - *offset < 8)
                return 0;
            {
                uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
                uwvm_bounded_copy(&value->target.data[i], &bits, 8);
            }
            *offset += 8;
        }
    }
    return roswasmc_bounded_1_xarm_planner_joint_planRequest_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode the complete xarm_planner/joint_planRequest record transactionally.
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
static inline uint32_t roswasmc_bounded_1_xarm_planner_joint_planRequest_encode(roswasmc_bounded_1_xarm_planner_joint_planRequest const* value,
                                                                                void* output,
                                                                                size_t capacity,
                                                                                size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_xarm_planner_joint_planRequest_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_xarm_planner_joint_planRequest_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_xarm_planner_joint_planRequest_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete xarm_planner/joint_planRequest record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] input Immutable complete canonical body, disjoint from value.
 * @param[in] length Exact input byte count; trailing bytes are refused.
 * @param[out] value Caller-owned complete record; unchanged on every refusal.
 * @return Status 0 on complete success, otherwise 22; no partial record is exposed.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline uint32_t
    roswasmc_bounded_1_xarm_planner_joint_planRequest_decode(void const* input, size_t length, roswasmc_bounded_1_xarm_planner_joint_planRequest* value)
{
    roswasmc_bounded_1_xarm_planner_joint_planRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_xarm_planner_joint_planRequest);
    size_t offset = 0;
    if(!value || (length && !input) || length < 4u || length > 260u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_xarm_planner_joint_planRequest_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_JOINT_PLANRESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_JOINT_PLANRESPONSE_0 != 0xf221b894UL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_JOINT_PLANRESPONSE_1 != 0xdb47e173UL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_JOINT_PLANRESPONSE_2 != 0x1f08ca4cUL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_JOINT_PLANRESPONSE_3 != 0x389647acUL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_JOINT_PLANRESPONSE_4 != 0xab70990dUL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_JOINT_PLANRESPONSE_5 != 0xfe8eee38UL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_JOINT_PLANRESPONSE_6 != 0xe966e8f9UL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_JOINT_PLANRESPONSE_7 != 0xfb1c6496UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_JOINT_PLANRESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_JOINT_PLANRESPONSE_0 0xf221b894UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_JOINT_PLANRESPONSE_1 0xdb47e173UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_JOINT_PLANRESPONSE_2 0x1f08ca4cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_JOINT_PLANRESPONSE_3 0x389647acUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_JOINT_PLANRESPONSE_4 0xab70990dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_JOINT_PLANRESPONSE_5 0xfe8eee38UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_JOINT_PLANRESPONSE_6 0xe966e8f9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_JOINT_PLANRESPONSE_7 0xfb1c6496UL

/** @brief Complete ROS1 xarm_planner/joint_planResponse value; no field projects away native data. */
/**
 * @brief Complete ROS 1 xarm_planner/joint_planResponse value.
 * @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1 bytes
 * and is identified by UWVMROS1_46925f1a9e54d9d74604a2f12457a97394e4ec30aa2832b7a66ae3da2782d668.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_1_xarm_planner_joint_planResponse
{
    /** @brief Declared field success; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief xarm_planner/joint_planResponse.success: bool.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Xarm_plannerJoint_planResponse; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t success;
} roswasmc_bounded_1_xarm_planner_joint_planResponse;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_1_XARM_PLANNER_JOINT_PLANRESPONSE_MAX_WIRE_BYTES 1u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_1_XARM_PLANNER_JOINT_PLANRESPONSE_MIN_WIRE_BYTES 1u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_1_XARM_PLANNER_JOINT_PLANRESPONSE_CODEC_IDENTITY "UWVMROS1_46925f1a9e54d9d74604a2f12457a97394e4ec30aa2832b7a66ae3da2782d668"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate every field of xarm_planner/joint_planResponse.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline int roswasmc_bounded_1_xarm_planner_joint_planResponse_valid(roswasmc_bounded_1_xarm_planner_joint_planResponse const* value)
{
    if(!value)
        return 0;
    if(value->success > 1)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the complete active canonical extent of xarm_planner/joint_planResponse.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline size_t roswasmc_bounded_1_xarm_planner_joint_planResponse_wire_size(roswasmc_bounded_1_xarm_planner_joint_planResponse const* value)
{
    size_t n = 0;
    (void)value;
    n += 1;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Append all fields of xarm_planner/joint_planResponse to an internal canonical buffer.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete prevalidated immutable record.
 * @param[out] p Sufficient exclusive output storage established by the public encoder.
 * @param[in,out] offset Exclusive initialized writer cursor.
 * @return No value; internal caller guarantees the measured capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline void roswasmc_bounded_1_xarm_planner_joint_planResponse_write_fields(roswasmc_bounded_1_xarm_planner_joint_planResponse const* value,
                                                                                   unsigned char* p,
                                                                                   size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->success, 1);
    *offset += 1;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Decode the full ordered field prefix of xarm_planner/joint_planResponse.
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
static inline int roswasmc_bounded_1_xarm_planner_joint_planResponse_read_fields(unsigned char const* p,
                                                                                 size_t n,
                                                                                 size_t* offset,
                                                                                 roswasmc_bounded_1_xarm_planner_joint_planResponse* value)
{
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->success, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_1_xarm_planner_joint_planResponse_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode the complete xarm_planner/joint_planResponse record transactionally.
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
static inline uint32_t roswasmc_bounded_1_xarm_planner_joint_planResponse_encode(roswasmc_bounded_1_xarm_planner_joint_planResponse const* value,
                                                                                 void* output,
                                                                                 size_t capacity,
                                                                                 size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_xarm_planner_joint_planResponse_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_xarm_planner_joint_planResponse_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_xarm_planner_joint_planResponse_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete xarm_planner/joint_planResponse record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] input Immutable complete canonical body, disjoint from value.
 * @param[in] length Exact input byte count; trailing bytes are refused.
 * @param[out] value Caller-owned complete record; unchanged on every refusal.
 * @return Status 0 on complete success, otherwise 22; no partial record is exposed.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline uint32_t
    roswasmc_bounded_1_xarm_planner_joint_planResponse_decode(void const* input, size_t length, roswasmc_bounded_1_xarm_planner_joint_planResponse* value)
{
    roswasmc_bounded_1_xarm_planner_joint_planResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_xarm_planner_joint_planResponse);
    size_t offset = 0;
    if(!value || (length && !input) || length < 1u || length > 1u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_xarm_planner_joint_planResponse_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_POSE_PLANREQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_POSE_PLANREQUEST_0 != 0x30a91059UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_POSE_PLANREQUEST_1 != 0x1df62a3eUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_POSE_PLANREQUEST_2 != 0x6db26271UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_POSE_PLANREQUEST_3 != 0xb878d5ddUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_POSE_PLANREQUEST_4 != 0xbed15ee5UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_POSE_PLANREQUEST_5 != 0xd62e43a7UL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_POSE_PLANREQUEST_6 != 0xc43907bcUL ||                                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_POSE_PLANREQUEST_7 != 0xcdfd4ff6UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_POSE_PLANREQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_POSE_PLANREQUEST_0 0x30a91059UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_POSE_PLANREQUEST_1 0x1df62a3eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_POSE_PLANREQUEST_2 0x6db26271UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_POSE_PLANREQUEST_3 0xb878d5ddUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_POSE_PLANREQUEST_4 0xbed15ee5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_POSE_PLANREQUEST_5 0xd62e43a7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_POSE_PLANREQUEST_6 0xc43907bcUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_POSE_PLANREQUEST_7 0xcdfd4ff6UL

/** @brief Complete ROS1 xarm_planner/pose_planRequest value; no field projects away native data. */
/**
 * @brief Complete ROS 1 xarm_planner/pose_planRequest value.
 * @details All 1 declared fields are retained in source order. The canonical representation occupies 56..56
 * bytes and is identified by UWVMROS1_4ef40b7333ab897b974b0d800d68ed65ab28d52fc3b5dbe0561f799c7818cf22.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_1_xarm_planner_pose_planRequest
{
    /** @brief Declared field target; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief xarm_planner/pose_planRequest.target: geometry_msgs/Pose.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Xarm_plannerPose_planRequest; share/platform/ros/rs/API-CONTRACT.md
     */
    roswasmc_bounded_1_geometry_msgs_Pose target;
} roswasmc_bounded_1_xarm_planner_pose_planRequest;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_1_XARM_PLANNER_POSE_PLANREQUEST_MAX_WIRE_BYTES 56u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_1_XARM_PLANNER_POSE_PLANREQUEST_MIN_WIRE_BYTES 56u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_1_XARM_PLANNER_POSE_PLANREQUEST_CODEC_IDENTITY "UWVMROS1_4ef40b7333ab897b974b0d800d68ed65ab28d52fc3b5dbe0561f799c7818cf22"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate every field of xarm_planner/pose_planRequest.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline int roswasmc_bounded_1_xarm_planner_pose_planRequest_valid(roswasmc_bounded_1_xarm_planner_pose_planRequest const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_1_geometry_msgs_Pose_valid(&value->target))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the complete active canonical extent of xarm_planner/pose_planRequest.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline size_t roswasmc_bounded_1_xarm_planner_pose_planRequest_wire_size(roswasmc_bounded_1_xarm_planner_pose_planRequest const* value)
{
    size_t n = 0;
    (void)value;
    n += roswasmc_bounded_1_geometry_msgs_Pose_wire_size(&value->target);
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Append all fields of xarm_planner/pose_planRequest to an internal canonical buffer.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete prevalidated immutable record.
 * @param[out] p Sufficient exclusive output storage established by the public encoder.
 * @param[in,out] offset Exclusive initialized writer cursor.
 * @return No value; internal caller guarantees the measured capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline void roswasmc_bounded_1_xarm_planner_pose_planRequest_write_fields(roswasmc_bounded_1_xarm_planner_pose_planRequest const* value,
                                                                                 unsigned char* p,
                                                                                 size_t* offset)
{
    roswasmc_bounded_1_geometry_msgs_Pose_write_fields(&value->target, p, offset);
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Decode the full ordered field prefix of xarm_planner/pose_planRequest.
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
static inline int roswasmc_bounded_1_xarm_planner_pose_planRequest_read_fields(unsigned char const* p,
                                                                               size_t n,
                                                                               size_t* offset,
                                                                               roswasmc_bounded_1_xarm_planner_pose_planRequest* value)
{
    if(!roswasmc_bounded_1_geometry_msgs_Pose_read_fields(p, n, offset, &value->target))
        return 0;
    return roswasmc_bounded_1_xarm_planner_pose_planRequest_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode the complete xarm_planner/pose_planRequest record transactionally.
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
static inline uint32_t roswasmc_bounded_1_xarm_planner_pose_planRequest_encode(roswasmc_bounded_1_xarm_planner_pose_planRequest const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_xarm_planner_pose_planRequest_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_xarm_planner_pose_planRequest_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_xarm_planner_pose_planRequest_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete xarm_planner/pose_planRequest record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] input Immutable complete canonical body, disjoint from value.
 * @param[in] length Exact input byte count; trailing bytes are refused.
 * @param[out] value Caller-owned complete record; unchanged on every refusal.
 * @return Status 0 on complete success, otherwise 22; no partial record is exposed.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline uint32_t
    roswasmc_bounded_1_xarm_planner_pose_planRequest_decode(void const* input, size_t length, roswasmc_bounded_1_xarm_planner_pose_planRequest* value)
{
    roswasmc_bounded_1_xarm_planner_pose_planRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_xarm_planner_pose_planRequest);
    size_t offset = 0;
    if(!value || (length && !input) || length < 56u || length > 56u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_xarm_planner_pose_planRequest_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_POSE_PLANRESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_POSE_PLANRESPONSE_0 != 0x020f0a1dUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_POSE_PLANRESPONSE_1 != 0x4cc54bb4UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_POSE_PLANRESPONSE_2 != 0x1d52fdc0UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_POSE_PLANRESPONSE_3 != 0xa57d9b5cUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_POSE_PLANRESPONSE_4 != 0xcd89e301UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_POSE_PLANRESPONSE_5 != 0x19509783UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_POSE_PLANRESPONSE_6 != 0x2e2323c5UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_POSE_PLANRESPONSE_7 != 0x30144476UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_POSE_PLANRESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_POSE_PLANRESPONSE_0 0x020f0a1dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_POSE_PLANRESPONSE_1 0x4cc54bb4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_POSE_PLANRESPONSE_2 0x1d52fdc0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_POSE_PLANRESPONSE_3 0xa57d9b5cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_POSE_PLANRESPONSE_4 0xcd89e301UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_POSE_PLANRESPONSE_5 0x19509783UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_POSE_PLANRESPONSE_6 0x2e2323c5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_POSE_PLANRESPONSE_7 0x30144476UL

/** @brief Complete ROS1 xarm_planner/pose_planResponse value; no field projects away native data. */
/**
 * @brief Complete ROS 1 xarm_planner/pose_planResponse value.
 * @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1 bytes
 * and is identified by UWVMROS1_d8eb8efb60382e22f7c357dbfd8391a3c6608358522718dadaeb36a46b985113.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_1_xarm_planner_pose_planResponse
{
    /** @brief Declared field success; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief xarm_planner/pose_planResponse.success: bool.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Xarm_plannerPose_planResponse; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t success;
} roswasmc_bounded_1_xarm_planner_pose_planResponse;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_1_XARM_PLANNER_POSE_PLANRESPONSE_MAX_WIRE_BYTES 1u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_1_XARM_PLANNER_POSE_PLANRESPONSE_MIN_WIRE_BYTES 1u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_1_XARM_PLANNER_POSE_PLANRESPONSE_CODEC_IDENTITY "UWVMROS1_d8eb8efb60382e22f7c357dbfd8391a3c6608358522718dadaeb36a46b985113"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate every field of xarm_planner/pose_planResponse.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline int roswasmc_bounded_1_xarm_planner_pose_planResponse_valid(roswasmc_bounded_1_xarm_planner_pose_planResponse const* value)
{
    if(!value)
        return 0;
    if(value->success > 1)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the complete active canonical extent of xarm_planner/pose_planResponse.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline size_t roswasmc_bounded_1_xarm_planner_pose_planResponse_wire_size(roswasmc_bounded_1_xarm_planner_pose_planResponse const* value)
{
    size_t n = 0;
    (void)value;
    n += 1;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Append all fields of xarm_planner/pose_planResponse to an internal canonical buffer.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete prevalidated immutable record.
 * @param[out] p Sufficient exclusive output storage established by the public encoder.
 * @param[in,out] offset Exclusive initialized writer cursor.
 * @return No value; internal caller guarantees the measured capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline void roswasmc_bounded_1_xarm_planner_pose_planResponse_write_fields(roswasmc_bounded_1_xarm_planner_pose_planResponse const* value,
                                                                                  unsigned char* p,
                                                                                  size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->success, 1);
    *offset += 1;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Decode the full ordered field prefix of xarm_planner/pose_planResponse.
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
static inline int roswasmc_bounded_1_xarm_planner_pose_planResponse_read_fields(unsigned char const* p,
                                                                                size_t n,
                                                                                size_t* offset,
                                                                                roswasmc_bounded_1_xarm_planner_pose_planResponse* value)
{
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->success, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_1_xarm_planner_pose_planResponse_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode the complete xarm_planner/pose_planResponse record transactionally.
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
static inline uint32_t roswasmc_bounded_1_xarm_planner_pose_planResponse_encode(roswasmc_bounded_1_xarm_planner_pose_planResponse const* value,
                                                                                void* output,
                                                                                size_t capacity,
                                                                                size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_xarm_planner_pose_planResponse_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_xarm_planner_pose_planResponse_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_xarm_planner_pose_planResponse_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete xarm_planner/pose_planResponse record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] input Immutable complete canonical body, disjoint from value.
 * @param[in] length Exact input byte count; trailing bytes are refused.
 * @param[out] value Caller-owned complete record; unchanged on every refusal.
 * @return Status 0 on complete success, otherwise 22; no partial record is exposed.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline uint32_t
    roswasmc_bounded_1_xarm_planner_pose_planResponse_decode(void const* input, size_t length, roswasmc_bounded_1_xarm_planner_pose_planResponse* value)
{
    roswasmc_bounded_1_xarm_planner_pose_planResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_xarm_planner_pose_planResponse);
    size_t offset = 0;
    if(!value || (length && !input) || length < 1u || length > 1u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_xarm_planner_pose_planResponse_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_SINGLE_STRAIGHT_PLANREQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_SINGLE_STRAIGHT_PLANREQUEST_0 != 0xf3f992c9UL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_SINGLE_STRAIGHT_PLANREQUEST_1 != 0xfdd0479dUL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_SINGLE_STRAIGHT_PLANREQUEST_2 != 0xc5c51591UL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_SINGLE_STRAIGHT_PLANREQUEST_3 != 0xe6208458UL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_SINGLE_STRAIGHT_PLANREQUEST_4 != 0xaa2ec79cUL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_SINGLE_STRAIGHT_PLANREQUEST_5 != 0x2428e9e6UL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_SINGLE_STRAIGHT_PLANREQUEST_6 != 0x857f3065UL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_SINGLE_STRAIGHT_PLANREQUEST_7 != 0xfbed479dUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_SINGLE_STRAIGHT_PLANREQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_SINGLE_STRAIGHT_PLANREQUEST_0 0xf3f992c9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_SINGLE_STRAIGHT_PLANREQUEST_1 0xfdd0479dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_SINGLE_STRAIGHT_PLANREQUEST_2 0xc5c51591UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_SINGLE_STRAIGHT_PLANREQUEST_3 0xe6208458UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_SINGLE_STRAIGHT_PLANREQUEST_4 0xaa2ec79cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_SINGLE_STRAIGHT_PLANREQUEST_5 0x2428e9e6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_SINGLE_STRAIGHT_PLANREQUEST_6 0x857f3065UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_SINGLE_STRAIGHT_PLANREQUEST_7 0xfbed479dUL

/** @brief Complete ROS1 xarm_planner/single_straight_planRequest value; no field projects away native data. */
/**
 * @brief Complete ROS 1 xarm_planner/single_straight_planRequest value.
 * @details All 1 declared fields are retained in source order. The canonical representation occupies 56..56
 * bytes and is identified by UWVMROS1_1a6d7a443bf5aa7120d9595f93f922319b473efe007c59700a3b70ed7907809f.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_1_xarm_planner_single_straight_planRequest
{
    /** @brief Declared field target; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief xarm_planner/single_straight_planRequest.target: geometry_msgs/Pose.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Xarm_plannerSingle_straight_planRequest; share/platform/ros/rs/API-CONTRACT.md
     */
    roswasmc_bounded_1_geometry_msgs_Pose target;
} roswasmc_bounded_1_xarm_planner_single_straight_planRequest;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_1_XARM_PLANNER_SINGLE_STRAIGHT_PLANREQUEST_MAX_WIRE_BYTES 56u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_1_XARM_PLANNER_SINGLE_STRAIGHT_PLANREQUEST_MIN_WIRE_BYTES 56u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_1_XARM_PLANNER_SINGLE_STRAIGHT_PLANREQUEST_CODEC_IDENTITY "UWVMROS1_1a6d7a443bf5aa7120d9595f93f922319b473efe007c59700a3b70ed7907809f"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate every field of xarm_planner/single_straight_planRequest.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline int roswasmc_bounded_1_xarm_planner_single_straight_planRequest_valid(roswasmc_bounded_1_xarm_planner_single_straight_planRequest const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_1_geometry_msgs_Pose_valid(&value->target))
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the complete active canonical extent of xarm_planner/single_straight_planRequest.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline size_t
    roswasmc_bounded_1_xarm_planner_single_straight_planRequest_wire_size(roswasmc_bounded_1_xarm_planner_single_straight_planRequest const* value)
{
    size_t n = 0;
    (void)value;
    n += roswasmc_bounded_1_geometry_msgs_Pose_wire_size(&value->target);
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Append all fields of xarm_planner/single_straight_planRequest to an internal canonical buffer.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete prevalidated immutable record.
 * @param[out] p Sufficient exclusive output storage established by the public encoder.
 * @param[in,out] offset Exclusive initialized writer cursor.
 * @return No value; internal caller guarantees the measured capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline void
    roswasmc_bounded_1_xarm_planner_single_straight_planRequest_write_fields(roswasmc_bounded_1_xarm_planner_single_straight_planRequest const* value,
                                                                             unsigned char* p,
                                                                             size_t* offset)
{
    roswasmc_bounded_1_geometry_msgs_Pose_write_fields(&value->target, p, offset);
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Decode the full ordered field prefix of xarm_planner/single_straight_planRequest.
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
static inline int roswasmc_bounded_1_xarm_planner_single_straight_planRequest_read_fields(unsigned char const* p,
                                                                                          size_t n,
                                                                                          size_t* offset,
                                                                                          roswasmc_bounded_1_xarm_planner_single_straight_planRequest* value)
{
    if(!roswasmc_bounded_1_geometry_msgs_Pose_read_fields(p, n, offset, &value->target))
        return 0;
    return roswasmc_bounded_1_xarm_planner_single_straight_planRequest_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode the complete xarm_planner/single_straight_planRequest record transactionally.
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
static inline uint32_t
    roswasmc_bounded_1_xarm_planner_single_straight_planRequest_encode(roswasmc_bounded_1_xarm_planner_single_straight_planRequest const* value,
                                                                       void* output,
                                                                       size_t capacity,
                                                                       size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_xarm_planner_single_straight_planRequest_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_xarm_planner_single_straight_planRequest_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_xarm_planner_single_straight_planRequest_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete xarm_planner/single_straight_planRequest record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] input Immutable complete canonical body, disjoint from value.
 * @param[in] length Exact input byte count; trailing bytes are refused.
 * @param[out] value Caller-owned complete record; unchanged on every refusal.
 * @return Status 0 on complete success, otherwise 22; no partial record is exposed.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline uint32_t roswasmc_bounded_1_xarm_planner_single_straight_planRequest_decode(void const* input,
                                                                                          size_t length,
                                                                                          roswasmc_bounded_1_xarm_planner_single_straight_planRequest* value)
{
    roswasmc_bounded_1_xarm_planner_single_straight_planRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_xarm_planner_single_straight_planRequest);
    size_t offset = 0;
    if(!value || (length && !input) || length < 56u || length > 56u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_xarm_planner_single_straight_planRequest_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_SINGLE_STRAIGHT_PLANRESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_SINGLE_STRAIGHT_PLANRESPONSE_0 != 0xbd44fec1UL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_SINGLE_STRAIGHT_PLANRESPONSE_1 != 0xe3bfc4d1UL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_SINGLE_STRAIGHT_PLANRESPONSE_2 != 0x459737cfUL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_SINGLE_STRAIGHT_PLANRESPONSE_3 != 0x8a676e99UL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_SINGLE_STRAIGHT_PLANRESPONSE_4 != 0xf6e8fd61UL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_SINGLE_STRAIGHT_PLANRESPONSE_5 != 0xbcd4faecUL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_SINGLE_STRAIGHT_PLANRESPONSE_6 != 0x60bf4dd3UL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_SINGLE_STRAIGHT_PLANRESPONSE_7 != 0x56892eb1UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_SINGLE_STRAIGHT_PLANRESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_SINGLE_STRAIGHT_PLANRESPONSE_0 0xbd44fec1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_SINGLE_STRAIGHT_PLANRESPONSE_1 0xe3bfc4d1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_SINGLE_STRAIGHT_PLANRESPONSE_2 0x459737cfUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_SINGLE_STRAIGHT_PLANRESPONSE_3 0x8a676e99UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_SINGLE_STRAIGHT_PLANRESPONSE_4 0xf6e8fd61UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_SINGLE_STRAIGHT_PLANRESPONSE_5 0xbcd4faecUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_SINGLE_STRAIGHT_PLANRESPONSE_6 0x60bf4dd3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_XARM_PLANNER_SINGLE_STRAIGHT_PLANRESPONSE_7 0x56892eb1UL

/** @brief Complete ROS1 xarm_planner/single_straight_planResponse value; no field projects away native data. */
/**
 * @brief Complete ROS 1 xarm_planner/single_straight_planResponse value.
 * @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1 bytes
 * and is identified by UWVMROS1_91dfc3564ce446deb95d1e7a9d080b597b426a13c16f0af6d0452af21c3697dd.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_1_xarm_planner_single_straight_planResponse
{
    /** @brief Declared field success; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief xarm_planner/single_straight_planResponse.success: bool.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Xarm_plannerSingle_straight_planResponse; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t success;
} roswasmc_bounded_1_xarm_planner_single_straight_planResponse;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_1_XARM_PLANNER_SINGLE_STRAIGHT_PLANRESPONSE_MAX_WIRE_BYTES 1u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_1_XARM_PLANNER_SINGLE_STRAIGHT_PLANRESPONSE_MIN_WIRE_BYTES 1u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_1_XARM_PLANNER_SINGLE_STRAIGHT_PLANRESPONSE_CODEC_IDENTITY "UWVMROS1_91dfc3564ce446deb95d1e7a9d080b597b426a13c16f0af6d0452af21c3697dd"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate every field of xarm_planner/single_straight_planResponse.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline int roswasmc_bounded_1_xarm_planner_single_straight_planResponse_valid(roswasmc_bounded_1_xarm_planner_single_straight_planResponse const* value)
{
    if(!value)
        return 0;
    if(value->success > 1)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the complete active canonical extent of xarm_planner/single_straight_planResponse.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline size_t
    roswasmc_bounded_1_xarm_planner_single_straight_planResponse_wire_size(roswasmc_bounded_1_xarm_planner_single_straight_planResponse const* value)
{
    size_t n = 0;
    (void)value;
    n += 1;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Append all fields of xarm_planner/single_straight_planResponse to an internal canonical buffer.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete prevalidated immutable record.
 * @param[out] p Sufficient exclusive output storage established by the public encoder.
 * @param[in,out] offset Exclusive initialized writer cursor.
 * @return No value; internal caller guarantees the measured capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline void
    roswasmc_bounded_1_xarm_planner_single_straight_planResponse_write_fields(roswasmc_bounded_1_xarm_planner_single_straight_planResponse const* value,
                                                                              unsigned char* p,
                                                                              size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->success, 1);
    *offset += 1;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Decode the full ordered field prefix of xarm_planner/single_straight_planResponse.
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
static inline int roswasmc_bounded_1_xarm_planner_single_straight_planResponse_read_fields(unsigned char const* p,
                                                                                           size_t n,
                                                                                           size_t* offset,
                                                                                           roswasmc_bounded_1_xarm_planner_single_straight_planResponse* value)
{
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->success, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_1_xarm_planner_single_straight_planResponse_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode the complete xarm_planner/single_straight_planResponse record transactionally.
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
static inline uint32_t
    roswasmc_bounded_1_xarm_planner_single_straight_planResponse_encode(roswasmc_bounded_1_xarm_planner_single_straight_planResponse const* value,
                                                                        void* output,
                                                                        size_t capacity,
                                                                        size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_xarm_planner_single_straight_planResponse_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_xarm_planner_single_straight_planResponse_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_xarm_planner_single_straight_planResponse_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete xarm_planner/single_straight_planResponse record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] input Immutable complete canonical body, disjoint from value.
 * @param[in] length Exact input byte count; trailing bytes are refused.
 * @param[out] value Caller-owned complete record; unchanged on every refusal.
 * @return Status 0 on complete success, otherwise 22; no partial record is exposed.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline uint32_t roswasmc_bounded_1_xarm_planner_single_straight_planResponse_decode(void const* input,
                                                                                           size_t length,
                                                                                           roswasmc_bounded_1_xarm_planner_single_straight_planResponse* value)
{
    roswasmc_bounded_1_xarm_planner_single_straight_planResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_xarm_planner_single_straight_planResponse);
    size_t offset = 0;
    if(!value || (length && !input) || length < 1u || length > 1u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_xarm_planner_single_straight_planResponse_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#undef UWVM_BOUNDED_ASSERT
#endif
