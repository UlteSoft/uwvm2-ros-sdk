/** @brief @file Generated bounded-v2 canonical values; no native ROS serialization or authority.
 * Every dynamic field has inline caller-owned capacity. Encode validates and measures
 * the full value before writes; decode commits one temporary only after full validation.
 * Supply distinct record, byte and size-output storage; overlap is explicitly refused.
 * Empty Service/Action components use a C layout dummy that is never a wire field. */
#ifndef UWVM_ROS_BOUNDED_RECORDS_222677866B9F1C23A3513A36EE4A92689395CDB8C75FEECC507620DBCF4F1B6E
#define UWVM_ROS_BOUNDED_RECORDS_222677866B9F1C23A3513A36EE4A92689395CDB8C75FEECC507620DBCF4F1B6E
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
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTANGLES)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTANGLES_0 != 0xeeb3fe56UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTANGLES_1 != 0x9c408b7dUL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTANGLES_2 != 0x6919ce44UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTANGLES_3 != 0xf7a719b6UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTANGLES_4 != 0xc2c23600UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTANGLES_5 != 0xba9e8d71UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTANGLES_6 != 0xc638b20cUL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTANGLES_7 != 0xcad56c35UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTANGLES 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTANGLES_0 0xeeb3fe56UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTANGLES_1 0x9c408b7dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTANGLES_2 0x6919ce44UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTANGLES_3 0xf7a719b6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTANGLES_4 0xc2c23600UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTANGLES_5 0xba9e8d71UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTANGLES_6 0xc638b20cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTANGLES_7 0xcad56c35UL

/** @brief Complete ROS1 mycobot_communication/MycobotAngles value; no field projects away native data. */
/**
 * @brief Complete ROS 1 mycobot_communication/MycobotAngles value.
 * @details All 6 declared fields are retained in source order. The canonical representation occupies 24..24
 * bytes and is identified by UWVMROS1_4cbda93a13d78e9c592327caa737dfecf33adf6db898015afd56ecf7732f9aa6.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_1_mycobot_communication_MycobotAngles
{
    /** @brief Declared field joint_1; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mycobot_communication/MycobotAngles.joint_1: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mycobot_communicationMycobotAngles; share/platform/ros/rs/API-CONTRACT.md
     */
    float joint_1;
    /** @brief Declared field joint_2; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mycobot_communication/MycobotAngles.joint_2: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mycobot_communicationMycobotAngles; share/platform/ros/rs/API-CONTRACT.md
     */
    float joint_2;
    /** @brief Declared field joint_3; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mycobot_communication/MycobotAngles.joint_3: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mycobot_communicationMycobotAngles; share/platform/ros/rs/API-CONTRACT.md
     */
    float joint_3;
    /** @brief Declared field joint_4; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mycobot_communication/MycobotAngles.joint_4: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mycobot_communicationMycobotAngles; share/platform/ros/rs/API-CONTRACT.md
     */
    float joint_4;
    /** @brief Declared field joint_5; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mycobot_communication/MycobotAngles.joint_5: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mycobot_communicationMycobotAngles; share/platform/ros/rs/API-CONTRACT.md
     */
    float joint_5;
    /** @brief Declared field joint_6; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mycobot_communication/MycobotAngles.joint_6: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mycobot_communicationMycobotAngles; share/platform/ros/rs/API-CONTRACT.md
     */
    float joint_6;
} roswasmc_bounded_1_mycobot_communication_MycobotAngles;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTANGLES_MAX_WIRE_BYTES 24u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTANGLES_MIN_WIRE_BYTES 24u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTANGLES_CODEC_IDENTITY "UWVMROS1_4cbda93a13d78e9c592327caa737dfecf33adf6db898015afd56ecf7732f9aa6"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate every field of mycobot_communication/MycobotAngles.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline int roswasmc_bounded_1_mycobot_communication_MycobotAngles_valid(roswasmc_bounded_1_mycobot_communication_MycobotAngles const* value)
{
    if(!value)
        return 0;
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->joint_1, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->joint_2, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->joint_3, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->joint_4, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->joint_5, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->joint_6, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the complete active canonical extent of mycobot_communication/MycobotAngles.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline size_t roswasmc_bounded_1_mycobot_communication_MycobotAngles_wire_size(roswasmc_bounded_1_mycobot_communication_MycobotAngles const* value)
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
 * @brief Append all fields of mycobot_communication/MycobotAngles to an internal canonical buffer.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete prevalidated immutable record.
 * @param[out] p Sufficient exclusive output storage established by the public encoder.
 * @param[in,out] offset Exclusive initialized writer cursor.
 * @return No value; internal caller guarantees the measured capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline void roswasmc_bounded_1_mycobot_communication_MycobotAngles_write_fields(roswasmc_bounded_1_mycobot_communication_MycobotAngles const* value,
                                                                                       unsigned char* p,
                                                                                       size_t* offset)
{
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->joint_1, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->joint_2, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->joint_3, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->joint_4, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->joint_5, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->joint_6, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Decode the full ordered field prefix of mycobot_communication/MycobotAngles.
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
static inline int roswasmc_bounded_1_mycobot_communication_MycobotAngles_read_fields(unsigned char const* p,
                                                                                     size_t n,
                                                                                     size_t* offset,
                                                                                     roswasmc_bounded_1_mycobot_communication_MycobotAngles* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->joint_1, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->joint_2, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->joint_3, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->joint_4, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->joint_5, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->joint_6, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_1_mycobot_communication_MycobotAngles_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode the complete mycobot_communication/MycobotAngles record transactionally.
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
static inline uint32_t roswasmc_bounded_1_mycobot_communication_MycobotAngles_encode(roswasmc_bounded_1_mycobot_communication_MycobotAngles const* value,
                                                                                     void* output,
                                                                                     size_t capacity,
                                                                                     size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_mycobot_communication_MycobotAngles_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_mycobot_communication_MycobotAngles_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_mycobot_communication_MycobotAngles_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete mycobot_communication/MycobotAngles record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] input Immutable complete canonical body, disjoint from value.
 * @param[in] length Exact input byte count; trailing bytes are refused.
 * @param[out] value Caller-owned complete record; unchanged on every refusal.
 * @return Status 0 on complete success, otherwise 22; no partial record is exposed.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline uint32_t roswasmc_bounded_1_mycobot_communication_MycobotAngles_decode(void const* input,
                                                                                     size_t length,
                                                                                     roswasmc_bounded_1_mycobot_communication_MycobotAngles* value)
{
    roswasmc_bounded_1_mycobot_communication_MycobotAngles next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mycobot_communication_MycobotAngles);
    size_t offset = 0;
    if(!value || (length && !input) || length < 24u || length > 24u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_mycobot_communication_MycobotAngles_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTCOORDS)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTCOORDS_0 != 0xcaa9617eUL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTCOORDS_1 != 0x17264297UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTCOORDS_2 != 0x64b007c9UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTCOORDS_3 != 0x281e6edaUL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTCOORDS_4 != 0x848c5120UL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTCOORDS_5 != 0x1214ab8dUL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTCOORDS_6 != 0xde9ab20eUL ||                                                       \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTCOORDS_7 != 0x6593df3aUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTCOORDS 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTCOORDS_0 0xcaa9617eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTCOORDS_1 0x17264297UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTCOORDS_2 0x64b007c9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTCOORDS_3 0x281e6edaUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTCOORDS_4 0x848c5120UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTCOORDS_5 0x1214ab8dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTCOORDS_6 0xde9ab20eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTCOORDS_7 0x6593df3aUL

/** @brief Complete ROS1 mycobot_communication/MycobotCoords value; no field projects away native data. */
/**
 * @brief Complete ROS 1 mycobot_communication/MycobotCoords value.
 * @details All 6 declared fields are retained in source order. The canonical representation occupies 24..24
 * bytes and is identified by UWVMROS1_1da0d6342a1f4079244a65ad413d4559047d33b049ce9da04f8ab0bd226410a2.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_1_mycobot_communication_MycobotCoords
{
    /** @brief Declared field x; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mycobot_communication/MycobotCoords.x: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mycobot_communicationMycobotCoords; share/platform/ros/rs/API-CONTRACT.md
     */
    float x;
    /** @brief Declared field y; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mycobot_communication/MycobotCoords.y: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mycobot_communicationMycobotCoords; share/platform/ros/rs/API-CONTRACT.md
     */
    float y;
    /** @brief Declared field z; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mycobot_communication/MycobotCoords.z: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mycobot_communicationMycobotCoords; share/platform/ros/rs/API-CONTRACT.md
     */
    float z;
    /** @brief Declared field rx; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mycobot_communication/MycobotCoords.rx: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mycobot_communicationMycobotCoords; share/platform/ros/rs/API-CONTRACT.md
     */
    float rx;
    /** @brief Declared field ry; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mycobot_communication/MycobotCoords.ry: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mycobot_communicationMycobotCoords; share/platform/ros/rs/API-CONTRACT.md
     */
    float ry;
    /** @brief Declared field rz; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mycobot_communication/MycobotCoords.rz: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mycobot_communicationMycobotCoords; share/platform/ros/rs/API-CONTRACT.md
     */
    float rz;
} roswasmc_bounded_1_mycobot_communication_MycobotCoords;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTCOORDS_MAX_WIRE_BYTES 24u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTCOORDS_MIN_WIRE_BYTES 24u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTCOORDS_CODEC_IDENTITY "UWVMROS1_1da0d6342a1f4079244a65ad413d4559047d33b049ce9da04f8ab0bd226410a2"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate every field of mycobot_communication/MycobotCoords.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline int roswasmc_bounded_1_mycobot_communication_MycobotCoords_valid(roswasmc_bounded_1_mycobot_communication_MycobotCoords const* value)
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
        uwvm_bounded_copy(&bits, &value->rx, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->ry, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->rz, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the complete active canonical extent of mycobot_communication/MycobotCoords.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline size_t roswasmc_bounded_1_mycobot_communication_MycobotCoords_wire_size(roswasmc_bounded_1_mycobot_communication_MycobotCoords const* value)
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
 * @brief Append all fields of mycobot_communication/MycobotCoords to an internal canonical buffer.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete prevalidated immutable record.
 * @param[out] p Sufficient exclusive output storage established by the public encoder.
 * @param[in,out] offset Exclusive initialized writer cursor.
 * @return No value; internal caller guarantees the measured capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline void roswasmc_bounded_1_mycobot_communication_MycobotCoords_write_fields(roswasmc_bounded_1_mycobot_communication_MycobotCoords const* value,
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
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->rz, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Decode the full ordered field prefix of mycobot_communication/MycobotCoords.
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
static inline int roswasmc_bounded_1_mycobot_communication_MycobotCoords_read_fields(unsigned char const* p,
                                                                                     size_t n,
                                                                                     size_t* offset,
                                                                                     roswasmc_bounded_1_mycobot_communication_MycobotCoords* value)
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
        uwvm_bounded_copy(&value->rx, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->ry, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->rz, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_1_mycobot_communication_MycobotCoords_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode the complete mycobot_communication/MycobotCoords record transactionally.
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
static inline uint32_t roswasmc_bounded_1_mycobot_communication_MycobotCoords_encode(roswasmc_bounded_1_mycobot_communication_MycobotCoords const* value,
                                                                                     void* output,
                                                                                     size_t capacity,
                                                                                     size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_mycobot_communication_MycobotCoords_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_mycobot_communication_MycobotCoords_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_mycobot_communication_MycobotCoords_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete mycobot_communication/MycobotCoords record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] input Immutable complete canonical body, disjoint from value.
 * @param[in] length Exact input byte count; trailing bytes are refused.
 * @param[out] value Caller-owned complete record; unchanged on every refusal.
 * @return Status 0 on complete success, otherwise 22; no partial record is exposed.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline uint32_t roswasmc_bounded_1_mycobot_communication_MycobotCoords_decode(void const* input,
                                                                                     size_t length,
                                                                                     roswasmc_bounded_1_mycobot_communication_MycobotCoords* value)
{
    roswasmc_bounded_1_mycobot_communication_MycobotCoords next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mycobot_communication_MycobotCoords);
    size_t offset = 0;
    if(!value || (length && !input) || length < 24u || length > 24u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_mycobot_communication_MycobotCoords_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTGRIPPERSTATUS)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTGRIPPERSTATUS_0 != 0xcde6bca6UL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTGRIPPERSTATUS_1 != 0x7930dd0cUL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTGRIPPERSTATUS_2 != 0xf3837827UL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTGRIPPERSTATUS_3 != 0x54cf8dc7UL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTGRIPPERSTATUS_4 != 0xb22bf79dUL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTGRIPPERSTATUS_5 != 0xedc4c5a8UL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTGRIPPERSTATUS_6 != 0x5abb7de5UL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTGRIPPERSTATUS_7 != 0xfbb7895fUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTGRIPPERSTATUS 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTGRIPPERSTATUS_0 0xcde6bca6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTGRIPPERSTATUS_1 0x7930dd0cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTGRIPPERSTATUS_2 0xf3837827UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTGRIPPERSTATUS_3 0x54cf8dc7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTGRIPPERSTATUS_4 0xb22bf79dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTGRIPPERSTATUS_5 0xedc4c5a8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTGRIPPERSTATUS_6 0x5abb7de5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTGRIPPERSTATUS_7 0xfbb7895fUL

/** @brief Complete ROS1 mycobot_communication/MycobotGripperStatus value; no field projects away native data. */
/**
 * @brief Complete ROS 1 mycobot_communication/MycobotGripperStatus value.
 * @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1 bytes
 * and is identified by UWVMROS1_65edcc278c4e21355c62408ff310598b3dbdf03ed426e3da0f2ee0bc6910e649.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_1_mycobot_communication_MycobotGripperStatus
{
    /** @brief Declared field Status; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mycobot_communication/MycobotGripperStatus.Status: bool.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mycobot_communicationMycobotGripperStatus; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t Status;
} roswasmc_bounded_1_mycobot_communication_MycobotGripperStatus;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTGRIPPERSTATUS_MAX_WIRE_BYTES 1u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTGRIPPERSTATUS_MIN_WIRE_BYTES 1u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTGRIPPERSTATUS_CODEC_IDENTITY                                                                          \
     "UWVMROS1_65edcc278c4e21355c62408ff310598b3dbdf03ed426e3da0f2ee0bc6910e649"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate every field of mycobot_communication/MycobotGripperStatus.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline int
    roswasmc_bounded_1_mycobot_communication_MycobotGripperStatus_valid(roswasmc_bounded_1_mycobot_communication_MycobotGripperStatus const* value)
{
    if(!value)
        return 0;
    if(value->Status > 1)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the complete active canonical extent of mycobot_communication/MycobotGripperStatus.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline size_t
    roswasmc_bounded_1_mycobot_communication_MycobotGripperStatus_wire_size(roswasmc_bounded_1_mycobot_communication_MycobotGripperStatus const* value)
{
    size_t n = 0;
    (void)value;
    n += 1;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Append all fields of mycobot_communication/MycobotGripperStatus to an internal canonical buffer.
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
    roswasmc_bounded_1_mycobot_communication_MycobotGripperStatus_write_fields(roswasmc_bounded_1_mycobot_communication_MycobotGripperStatus const* value,
                                                                               unsigned char* p,
                                                                               size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->Status, 1);
    *offset += 1;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Decode the full ordered field prefix of mycobot_communication/MycobotGripperStatus.
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
    roswasmc_bounded_1_mycobot_communication_MycobotGripperStatus_read_fields(unsigned char const* p,
                                                                              size_t n,
                                                                              size_t* offset,
                                                                              roswasmc_bounded_1_mycobot_communication_MycobotGripperStatus* value)
{
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->Status, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_1_mycobot_communication_MycobotGripperStatus_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode the complete mycobot_communication/MycobotGripperStatus record transactionally.
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
    roswasmc_bounded_1_mycobot_communication_MycobotGripperStatus_encode(roswasmc_bounded_1_mycobot_communication_MycobotGripperStatus const* value,
                                                                         void* output,
                                                                         size_t capacity,
                                                                         size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_mycobot_communication_MycobotGripperStatus_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_mycobot_communication_MycobotGripperStatus_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_mycobot_communication_MycobotGripperStatus_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete mycobot_communication/MycobotGripperStatus record transactionally.
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
    roswasmc_bounded_1_mycobot_communication_MycobotGripperStatus_decode(void const* input,
                                                                         size_t length,
                                                                         roswasmc_bounded_1_mycobot_communication_MycobotGripperStatus* value)
{
    roswasmc_bounded_1_mycobot_communication_MycobotGripperStatus next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mycobot_communication_MycobotGripperStatus);
    size_t offset = 0;
    if(!value || (length && !input) || length < 1u || length > 1u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_mycobot_communication_MycobotGripperStatus_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTPUMPSTATUS)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTPUMPSTATUS_0 != 0x3839a80aUL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTPUMPSTATUS_1 != 0x0d0c62f9UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTPUMPSTATUS_2 != 0x9356b781UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTPUMPSTATUS_3 != 0x3ff86c9bUL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTPUMPSTATUS_4 != 0x5df41c49UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTPUMPSTATUS_5 != 0x7086983dUL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTPUMPSTATUS_6 != 0x59fef00dUL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTPUMPSTATUS_7 != 0xbbeb76bfUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTPUMPSTATUS 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTPUMPSTATUS_0 0x3839a80aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTPUMPSTATUS_1 0x0d0c62f9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTPUMPSTATUS_2 0x9356b781UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTPUMPSTATUS_3 0x3ff86c9bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTPUMPSTATUS_4 0x5df41c49UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTPUMPSTATUS_5 0x7086983dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTPUMPSTATUS_6 0x59fef00dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTPUMPSTATUS_7 0xbbeb76bfUL

/** @brief Complete ROS1 mycobot_communication/MycobotPumpStatus value; no field projects away native data. */
/**
 * @brief Complete ROS 1 mycobot_communication/MycobotPumpStatus value.
 * @details All 3 declared fields are retained in source order. The canonical representation occupies 3..3 bytes
 * and is identified by UWVMROS1_0c0cb3c0fe97b9f9c65769a09f505ff6c27a60723598d656cd5f16255f36bfbd.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_1_mycobot_communication_MycobotPumpStatus
{
    /** @brief Declared field Status; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mycobot_communication/MycobotPumpStatus.Status: bool.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mycobot_communicationMycobotPumpStatus; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t Status;
    /** @brief Declared field Pin1; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mycobot_communication/MycobotPumpStatus.Pin1: int8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mycobot_communicationMycobotPumpStatus; share/platform/ros/rs/API-CONTRACT.md
     */
    int8_t Pin1;
    /** @brief Declared field Pin2; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mycobot_communication/MycobotPumpStatus.Pin2: int8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mycobot_communicationMycobotPumpStatus; share/platform/ros/rs/API-CONTRACT.md
     */
    int8_t Pin2;
} roswasmc_bounded_1_mycobot_communication_MycobotPumpStatus;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTPUMPSTATUS_MAX_WIRE_BYTES 3u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTPUMPSTATUS_MIN_WIRE_BYTES 3u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTPUMPSTATUS_CODEC_IDENTITY "UWVMROS1_0c0cb3c0fe97b9f9c65769a09f505ff6c27a60723598d656cd5f16255f36bfbd"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate every field of mycobot_communication/MycobotPumpStatus.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline int roswasmc_bounded_1_mycobot_communication_MycobotPumpStatus_valid(roswasmc_bounded_1_mycobot_communication_MycobotPumpStatus const* value)
{
    if(!value)
        return 0;
    if(value->Status > 1)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the complete active canonical extent of mycobot_communication/MycobotPumpStatus.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline size_t
    roswasmc_bounded_1_mycobot_communication_MycobotPumpStatus_wire_size(roswasmc_bounded_1_mycobot_communication_MycobotPumpStatus const* value)
{
    size_t n = 0;
    (void)value;
    n += 1;
    n += 1;
    n += 1;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Append all fields of mycobot_communication/MycobotPumpStatus to an internal canonical buffer.
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
    roswasmc_bounded_1_mycobot_communication_MycobotPumpStatus_write_fields(roswasmc_bounded_1_mycobot_communication_MycobotPumpStatus const* value,
                                                                            unsigned char* p,
                                                                            size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->Status, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->Pin1, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->Pin2, 1);
    *offset += 1;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Decode the full ordered field prefix of mycobot_communication/MycobotPumpStatus.
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
static inline int roswasmc_bounded_1_mycobot_communication_MycobotPumpStatus_read_fields(unsigned char const* p,
                                                                                         size_t n,
                                                                                         size_t* offset,
                                                                                         roswasmc_bounded_1_mycobot_communication_MycobotPumpStatus* value)
{
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->Status, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->Pin1, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->Pin2, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_1_mycobot_communication_MycobotPumpStatus_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode the complete mycobot_communication/MycobotPumpStatus record transactionally.
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
    roswasmc_bounded_1_mycobot_communication_MycobotPumpStatus_encode(roswasmc_bounded_1_mycobot_communication_MycobotPumpStatus const* value,
                                                                      void* output,
                                                                      size_t capacity,
                                                                      size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_mycobot_communication_MycobotPumpStatus_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_mycobot_communication_MycobotPumpStatus_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_mycobot_communication_MycobotPumpStatus_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete mycobot_communication/MycobotPumpStatus record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] input Immutable complete canonical body, disjoint from value.
 * @param[in] length Exact input byte count; trailing bytes are refused.
 * @param[out] value Caller-owned complete record; unchanged on every refusal.
 * @return Status 0 on complete success, otherwise 22; no partial record is exposed.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline uint32_t roswasmc_bounded_1_mycobot_communication_MycobotPumpStatus_decode(void const* input,
                                                                                         size_t length,
                                                                                         roswasmc_bounded_1_mycobot_communication_MycobotPumpStatus* value)
{
    roswasmc_bounded_1_mycobot_communication_MycobotPumpStatus next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mycobot_communication_MycobotPumpStatus);
    size_t offset = 0;
    if(!value || (length && !input) || length < 3u || length > 3u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_mycobot_communication_MycobotPumpStatus_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTSETANGLES)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTSETANGLES_0 != 0x8ebd7f64UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTSETANGLES_1 != 0xcf53e6d4UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTSETANGLES_2 != 0xf57e1566UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTSETANGLES_3 != 0x224b007cUL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTSETANGLES_4 != 0x19552a90UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTSETANGLES_5 != 0xfa13d385UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTSETANGLES_6 != 0x21554a60UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTSETANGLES_7 != 0x1300f7abUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTSETANGLES 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTSETANGLES_0 0x8ebd7f64UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTSETANGLES_1 0xcf53e6d4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTSETANGLES_2 0xf57e1566UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTSETANGLES_3 0x224b007cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTSETANGLES_4 0x19552a90UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTSETANGLES_5 0xfa13d385UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTSETANGLES_6 0x21554a60UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTSETANGLES_7 0x1300f7abUL

/** @brief Complete ROS1 mycobot_communication/MycobotSetAngles value; no field projects away native data. */
/**
 * @brief Complete ROS 1 mycobot_communication/MycobotSetAngles value.
 * @details All 7 declared fields are retained in source order. The canonical representation occupies 25..25
 * bytes and is identified by UWVMROS1_0844a6cf5033b27ad5062741c939a7cfff63edeba34f7e56c8178e1fab85b334.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_1_mycobot_communication_MycobotSetAngles
{
    /** @brief Declared field joint_1; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mycobot_communication/MycobotSetAngles.joint_1: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mycobot_communicationMycobotSetAngles; share/platform/ros/rs/API-CONTRACT.md
     */
    float joint_1;
    /** @brief Declared field joint_2; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mycobot_communication/MycobotSetAngles.joint_2: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mycobot_communicationMycobotSetAngles; share/platform/ros/rs/API-CONTRACT.md
     */
    float joint_2;
    /** @brief Declared field joint_3; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mycobot_communication/MycobotSetAngles.joint_3: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mycobot_communicationMycobotSetAngles; share/platform/ros/rs/API-CONTRACT.md
     */
    float joint_3;
    /** @brief Declared field joint_4; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mycobot_communication/MycobotSetAngles.joint_4: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mycobot_communicationMycobotSetAngles; share/platform/ros/rs/API-CONTRACT.md
     */
    float joint_4;
    /** @brief Declared field joint_5; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mycobot_communication/MycobotSetAngles.joint_5: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mycobot_communicationMycobotSetAngles; share/platform/ros/rs/API-CONTRACT.md
     */
    float joint_5;
    /** @brief Declared field joint_6; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mycobot_communication/MycobotSetAngles.joint_6: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mycobot_communicationMycobotSetAngles; share/platform/ros/rs/API-CONTRACT.md
     */
    float joint_6;
    /** @brief Declared field speed; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mycobot_communication/MycobotSetAngles.speed: int8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mycobot_communicationMycobotSetAngles; share/platform/ros/rs/API-CONTRACT.md
     */
    int8_t speed;
} roswasmc_bounded_1_mycobot_communication_MycobotSetAngles;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTSETANGLES_MAX_WIRE_BYTES 25u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTSETANGLES_MIN_WIRE_BYTES 25u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTSETANGLES_CODEC_IDENTITY "UWVMROS1_0844a6cf5033b27ad5062741c939a7cfff63edeba34f7e56c8178e1fab85b334"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate every field of mycobot_communication/MycobotSetAngles.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline int roswasmc_bounded_1_mycobot_communication_MycobotSetAngles_valid(roswasmc_bounded_1_mycobot_communication_MycobotSetAngles const* value)
{
    if(!value)
        return 0;
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->joint_1, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->joint_2, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->joint_3, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->joint_4, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->joint_5, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->joint_6, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the complete active canonical extent of mycobot_communication/MycobotSetAngles.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline size_t roswasmc_bounded_1_mycobot_communication_MycobotSetAngles_wire_size(roswasmc_bounded_1_mycobot_communication_MycobotSetAngles const* value)
{
    size_t n = 0;
    (void)value;
    n += 4;
    n += 4;
    n += 4;
    n += 4;
    n += 4;
    n += 4;
    n += 1;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Append all fields of mycobot_communication/MycobotSetAngles to an internal canonical buffer.
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
    roswasmc_bounded_1_mycobot_communication_MycobotSetAngles_write_fields(roswasmc_bounded_1_mycobot_communication_MycobotSetAngles const* value,
                                                                           unsigned char* p,
                                                                           size_t* offset)
{
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->joint_1, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->joint_2, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->joint_3, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->joint_4, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->joint_5, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->joint_6, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    uwvm_bounded_put(p + *offset, (uint64_t)value->speed, 1);
    *offset += 1;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Decode the full ordered field prefix of mycobot_communication/MycobotSetAngles.
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
static inline int roswasmc_bounded_1_mycobot_communication_MycobotSetAngles_read_fields(unsigned char const* p,
                                                                                        size_t n,
                                                                                        size_t* offset,
                                                                                        roswasmc_bounded_1_mycobot_communication_MycobotSetAngles* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->joint_1, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->joint_2, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->joint_3, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->joint_4, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->joint_5, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->joint_6, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->speed, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_1_mycobot_communication_MycobotSetAngles_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode the complete mycobot_communication/MycobotSetAngles record transactionally.
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
static inline uint32_t roswasmc_bounded_1_mycobot_communication_MycobotSetAngles_encode(roswasmc_bounded_1_mycobot_communication_MycobotSetAngles const* value,
                                                                                        void* output,
                                                                                        size_t capacity,
                                                                                        size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_mycobot_communication_MycobotSetAngles_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_mycobot_communication_MycobotSetAngles_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_mycobot_communication_MycobotSetAngles_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete mycobot_communication/MycobotSetAngles record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] input Immutable complete canonical body, disjoint from value.
 * @param[in] length Exact input byte count; trailing bytes are refused.
 * @param[out] value Caller-owned complete record; unchanged on every refusal.
 * @return Status 0 on complete success, otherwise 22; no partial record is exposed.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline uint32_t roswasmc_bounded_1_mycobot_communication_MycobotSetAngles_decode(void const* input,
                                                                                        size_t length,
                                                                                        roswasmc_bounded_1_mycobot_communication_MycobotSetAngles* value)
{
    roswasmc_bounded_1_mycobot_communication_MycobotSetAngles next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mycobot_communication_MycobotSetAngles);
    size_t offset = 0;
    if(!value || (length && !input) || length < 25u || length > 25u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_mycobot_communication_MycobotSetAngles_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTSETCOORDS)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTSETCOORDS_0 != 0x52f2f9f6UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTSETCOORDS_1 != 0x2c6a4218UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTSETCOORDS_2 != 0x2ad1549cUL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTSETCOORDS_3 != 0xfac05b97UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTSETCOORDS_4 != 0xb4205525UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTSETCOORDS_5 != 0x47008401UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTSETCOORDS_6 != 0xcc8a0f55UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTSETCOORDS_7 != 0x517a82f3UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTSETCOORDS 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTSETCOORDS_0 0x52f2f9f6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTSETCOORDS_1 0x2c6a4218UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTSETCOORDS_2 0x2ad1549cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTSETCOORDS_3 0xfac05b97UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTSETCOORDS_4 0xb4205525UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTSETCOORDS_5 0x47008401UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTSETCOORDS_6 0xcc8a0f55UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTSETCOORDS_7 0x517a82f3UL

/** @brief Complete ROS1 mycobot_communication/MycobotSetCoords value; no field projects away native data. */
/**
 * @brief Complete ROS 1 mycobot_communication/MycobotSetCoords value.
 * @details All 8 declared fields are retained in source order. The canonical representation occupies 26..26
 * bytes and is identified by UWVMROS1_39376ad94c0c9b213703a373b6a3b12fd0dad0ec20ff312143d30099842747a9.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_1_mycobot_communication_MycobotSetCoords
{
    /** @brief Declared field x; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mycobot_communication/MycobotSetCoords.x: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mycobot_communicationMycobotSetCoords; share/platform/ros/rs/API-CONTRACT.md
     */
    float x;
    /** @brief Declared field y; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mycobot_communication/MycobotSetCoords.y: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mycobot_communicationMycobotSetCoords; share/platform/ros/rs/API-CONTRACT.md
     */
    float y;
    /** @brief Declared field z; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mycobot_communication/MycobotSetCoords.z: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mycobot_communicationMycobotSetCoords; share/platform/ros/rs/API-CONTRACT.md
     */
    float z;
    /** @brief Declared field rx; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mycobot_communication/MycobotSetCoords.rx: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mycobot_communicationMycobotSetCoords; share/platform/ros/rs/API-CONTRACT.md
     */
    float rx;
    /** @brief Declared field ry; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mycobot_communication/MycobotSetCoords.ry: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mycobot_communicationMycobotSetCoords; share/platform/ros/rs/API-CONTRACT.md
     */
    float ry;
    /** @brief Declared field rz; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mycobot_communication/MycobotSetCoords.rz: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mycobot_communicationMycobotSetCoords; share/platform/ros/rs/API-CONTRACT.md
     */
    float rz;
    /** @brief Declared field speed; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mycobot_communication/MycobotSetCoords.speed: int8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mycobot_communicationMycobotSetCoords; share/platform/ros/rs/API-CONTRACT.md
     */
    int8_t speed;
    /** @brief Declared field model; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mycobot_communication/MycobotSetCoords.model: int8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mycobot_communicationMycobotSetCoords; share/platform/ros/rs/API-CONTRACT.md
     */
    int8_t model;
} roswasmc_bounded_1_mycobot_communication_MycobotSetCoords;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTSETCOORDS_MAX_WIRE_BYTES 26u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTSETCOORDS_MIN_WIRE_BYTES 26u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTSETCOORDS_CODEC_IDENTITY "UWVMROS1_39376ad94c0c9b213703a373b6a3b12fd0dad0ec20ff312143d30099842747a9"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate every field of mycobot_communication/MycobotSetCoords.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline int roswasmc_bounded_1_mycobot_communication_MycobotSetCoords_valid(roswasmc_bounded_1_mycobot_communication_MycobotSetCoords const* value)
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
        uwvm_bounded_copy(&bits, &value->rx, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->ry, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->rz, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the complete active canonical extent of mycobot_communication/MycobotSetCoords.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline size_t roswasmc_bounded_1_mycobot_communication_MycobotSetCoords_wire_size(roswasmc_bounded_1_mycobot_communication_MycobotSetCoords const* value)
{
    size_t n = 0;
    (void)value;
    n += 4;
    n += 4;
    n += 4;
    n += 4;
    n += 4;
    n += 4;
    n += 1;
    n += 1;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Append all fields of mycobot_communication/MycobotSetCoords to an internal canonical buffer.
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
    roswasmc_bounded_1_mycobot_communication_MycobotSetCoords_write_fields(roswasmc_bounded_1_mycobot_communication_MycobotSetCoords const* value,
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
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->rz, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    uwvm_bounded_put(p + *offset, (uint64_t)value->speed, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->model, 1);
    *offset += 1;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Decode the full ordered field prefix of mycobot_communication/MycobotSetCoords.
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
static inline int roswasmc_bounded_1_mycobot_communication_MycobotSetCoords_read_fields(unsigned char const* p,
                                                                                        size_t n,
                                                                                        size_t* offset,
                                                                                        roswasmc_bounded_1_mycobot_communication_MycobotSetCoords* value)
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
        uwvm_bounded_copy(&value->rx, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->ry, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->rz, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->speed, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->model, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_1_mycobot_communication_MycobotSetCoords_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode the complete mycobot_communication/MycobotSetCoords record transactionally.
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
static inline uint32_t roswasmc_bounded_1_mycobot_communication_MycobotSetCoords_encode(roswasmc_bounded_1_mycobot_communication_MycobotSetCoords const* value,
                                                                                        void* output,
                                                                                        size_t capacity,
                                                                                        size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_mycobot_communication_MycobotSetCoords_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_mycobot_communication_MycobotSetCoords_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_mycobot_communication_MycobotSetCoords_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete mycobot_communication/MycobotSetCoords record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] input Immutable complete canonical body, disjoint from value.
 * @param[in] length Exact input byte count; trailing bytes are refused.
 * @param[out] value Caller-owned complete record; unchanged on every refusal.
 * @return Status 0 on complete success, otherwise 22; no partial record is exposed.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline uint32_t roswasmc_bounded_1_mycobot_communication_MycobotSetCoords_decode(void const* input,
                                                                                        size_t length,
                                                                                        roswasmc_bounded_1_mycobot_communication_MycobotSetCoords* value)
{
    roswasmc_bounded_1_mycobot_communication_MycobotSetCoords next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mycobot_communication_MycobotSetCoords);
    size_t offset = 0;
    if(!value || (length && !input) || length < 26u || length > 26u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_mycobot_communication_MycobotSetCoords_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETANGLESREQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETANGLESREQUEST_0 != 0x84cb9353UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETANGLESREQUEST_1 != 0xf8a234a9UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETANGLESREQUEST_2 != 0x5f2b8942UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETANGLESREQUEST_3 != 0x02371d24UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETANGLESREQUEST_4 != 0xf2a1f709UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETANGLESREQUEST_5 != 0x499d4a7bUL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETANGLESREQUEST_6 != 0x4817f9cdUL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETANGLESREQUEST_7 != 0x37d2c92dUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETANGLESREQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETANGLESREQUEST_0 0x84cb9353UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETANGLESREQUEST_1 0xf8a234a9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETANGLESREQUEST_2 0x5f2b8942UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETANGLESREQUEST_3 0x02371d24UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETANGLESREQUEST_4 0xf2a1f709UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETANGLESREQUEST_5 0x499d4a7bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETANGLESREQUEST_6 0x4817f9cdUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETANGLESREQUEST_7 0x37d2c92dUL

/** @brief Complete ROS1 mycobot_communication/GetAnglesRequest value; no field projects away native data. */
/**
 * @brief Complete ROS 1 mycobot_communication/GetAnglesRequest value.
 * @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes
 * and is identified by UWVMROS1_8915949f81b788e5797f3bc4935e33e9e9eae82c5db3a1211129e7ef03cd2c54.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_1_mycobot_communication_GetAnglesRequest
{
    /** @brief Local C layout placeholder; empty native component has exactly zero canonical bytes. */
    unsigned char local_empty_placeholder;
} roswasmc_bounded_1_mycobot_communication_GetAnglesRequest;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETANGLESREQUEST_MAX_WIRE_BYTES 0u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETANGLESREQUEST_MIN_WIRE_BYTES 0u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETANGLESREQUEST_CODEC_IDENTITY "UWVMROS1_8915949f81b788e5797f3bc4935e33e9e9eae82c5db3a1211129e7ef03cd2c54"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate every field of mycobot_communication/GetAnglesRequest.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline int roswasmc_bounded_1_mycobot_communication_GetAnglesRequest_valid(roswasmc_bounded_1_mycobot_communication_GetAnglesRequest const* value)
{
    if(!value)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the complete active canonical extent of mycobot_communication/GetAnglesRequest.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline size_t roswasmc_bounded_1_mycobot_communication_GetAnglesRequest_wire_size(roswasmc_bounded_1_mycobot_communication_GetAnglesRequest const* value)
{
    size_t n = 0;
    (void)value;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Append all fields of mycobot_communication/GetAnglesRequest to an internal canonical buffer.
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
    roswasmc_bounded_1_mycobot_communication_GetAnglesRequest_write_fields(roswasmc_bounded_1_mycobot_communication_GetAnglesRequest const* value,
                                                                           unsigned char* p,
                                                                           size_t* offset)
{
    (void)value;
    (void)p;
    (void)offset;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Decode the full ordered field prefix of mycobot_communication/GetAnglesRequest.
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
static inline int roswasmc_bounded_1_mycobot_communication_GetAnglesRequest_read_fields(unsigned char const* p,
                                                                                        size_t n,
                                                                                        size_t* offset,
                                                                                        roswasmc_bounded_1_mycobot_communication_GetAnglesRequest* value)
{
    (void)p;
    (void)n;
    (void)offset;
    return roswasmc_bounded_1_mycobot_communication_GetAnglesRequest_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode the complete mycobot_communication/GetAnglesRequest record transactionally.
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
static inline uint32_t roswasmc_bounded_1_mycobot_communication_GetAnglesRequest_encode(roswasmc_bounded_1_mycobot_communication_GetAnglesRequest const* value,
                                                                                        void* output,
                                                                                        size_t capacity,
                                                                                        size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_mycobot_communication_GetAnglesRequest_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_mycobot_communication_GetAnglesRequest_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_mycobot_communication_GetAnglesRequest_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete mycobot_communication/GetAnglesRequest record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] input Immutable complete canonical body, disjoint from value.
 * @param[in] length Exact input byte count; trailing bytes are refused.
 * @param[out] value Caller-owned complete record; unchanged on every refusal.
 * @return Status 0 on complete success, otherwise 22; no partial record is exposed.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline uint32_t roswasmc_bounded_1_mycobot_communication_GetAnglesRequest_decode(void const* input,
                                                                                        size_t length,
                                                                                        roswasmc_bounded_1_mycobot_communication_GetAnglesRequest* value)
{
    roswasmc_bounded_1_mycobot_communication_GetAnglesRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mycobot_communication_GetAnglesRequest);
    size_t offset = 0;
    if(!value || (length && !input) || length < 0u || length > 0u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_mycobot_communication_GetAnglesRequest_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETANGLESRESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETANGLESRESPONSE_0 != 0x51700b34UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETANGLESRESPONSE_1 != 0xe59c3d97UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETANGLESRESPONSE_2 != 0x38fc5a52UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETANGLESRESPONSE_3 != 0x2f3edc97UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETANGLESRESPONSE_4 != 0xef4a1089UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETANGLESRESPONSE_5 != 0x3b4cef90UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETANGLESRESPONSE_6 != 0xc4188bb6UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETANGLESRESPONSE_7 != 0x35254fa5UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETANGLESRESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETANGLESRESPONSE_0 0x51700b34UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETANGLESRESPONSE_1 0xe59c3d97UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETANGLESRESPONSE_2 0x38fc5a52UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETANGLESRESPONSE_3 0x2f3edc97UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETANGLESRESPONSE_4 0xef4a1089UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETANGLESRESPONSE_5 0x3b4cef90UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETANGLESRESPONSE_6 0xc4188bb6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETANGLESRESPONSE_7 0x35254fa5UL

/** @brief Complete ROS1 mycobot_communication/GetAnglesResponse value; no field projects away native data. */
/**
 * @brief Complete ROS 1 mycobot_communication/GetAnglesResponse value.
 * @details All 6 declared fields are retained in source order. The canonical representation occupies 24..24
 * bytes and is identified by UWVMROS1_482e6b845d6913ab7ea12580a395caf0a9815b56f985eb3a0553263fb7fd4ff3.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_1_mycobot_communication_GetAnglesResponse
{
    /** @brief Declared field joint_1; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mycobot_communication/GetAnglesResponse.joint_1: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mycobot_communicationGetAnglesResponse; share/platform/ros/rs/API-CONTRACT.md
     */
    float joint_1;
    /** @brief Declared field joint_2; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mycobot_communication/GetAnglesResponse.joint_2: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mycobot_communicationGetAnglesResponse; share/platform/ros/rs/API-CONTRACT.md
     */
    float joint_2;
    /** @brief Declared field joint_3; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mycobot_communication/GetAnglesResponse.joint_3: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mycobot_communicationGetAnglesResponse; share/platform/ros/rs/API-CONTRACT.md
     */
    float joint_3;
    /** @brief Declared field joint_4; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mycobot_communication/GetAnglesResponse.joint_4: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mycobot_communicationGetAnglesResponse; share/platform/ros/rs/API-CONTRACT.md
     */
    float joint_4;
    /** @brief Declared field joint_5; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mycobot_communication/GetAnglesResponse.joint_5: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mycobot_communicationGetAnglesResponse; share/platform/ros/rs/API-CONTRACT.md
     */
    float joint_5;
    /** @brief Declared field joint_6; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mycobot_communication/GetAnglesResponse.joint_6: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mycobot_communicationGetAnglesResponse; share/platform/ros/rs/API-CONTRACT.md
     */
    float joint_6;
} roswasmc_bounded_1_mycobot_communication_GetAnglesResponse;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETANGLESRESPONSE_MAX_WIRE_BYTES 24u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETANGLESRESPONSE_MIN_WIRE_BYTES 24u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETANGLESRESPONSE_CODEC_IDENTITY "UWVMROS1_482e6b845d6913ab7ea12580a395caf0a9815b56f985eb3a0553263fb7fd4ff3"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate every field of mycobot_communication/GetAnglesResponse.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline int roswasmc_bounded_1_mycobot_communication_GetAnglesResponse_valid(roswasmc_bounded_1_mycobot_communication_GetAnglesResponse const* value)
{
    if(!value)
        return 0;
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->joint_1, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->joint_2, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->joint_3, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->joint_4, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->joint_5, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->joint_6, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the complete active canonical extent of mycobot_communication/GetAnglesResponse.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline size_t
    roswasmc_bounded_1_mycobot_communication_GetAnglesResponse_wire_size(roswasmc_bounded_1_mycobot_communication_GetAnglesResponse const* value)
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
 * @brief Append all fields of mycobot_communication/GetAnglesResponse to an internal canonical buffer.
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
    roswasmc_bounded_1_mycobot_communication_GetAnglesResponse_write_fields(roswasmc_bounded_1_mycobot_communication_GetAnglesResponse const* value,
                                                                            unsigned char* p,
                                                                            size_t* offset)
{
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->joint_1, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->joint_2, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->joint_3, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->joint_4, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->joint_5, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->joint_6, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Decode the full ordered field prefix of mycobot_communication/GetAnglesResponse.
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
static inline int roswasmc_bounded_1_mycobot_communication_GetAnglesResponse_read_fields(unsigned char const* p,
                                                                                         size_t n,
                                                                                         size_t* offset,
                                                                                         roswasmc_bounded_1_mycobot_communication_GetAnglesResponse* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->joint_1, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->joint_2, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->joint_3, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->joint_4, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->joint_5, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->joint_6, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_1_mycobot_communication_GetAnglesResponse_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode the complete mycobot_communication/GetAnglesResponse record transactionally.
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
    roswasmc_bounded_1_mycobot_communication_GetAnglesResponse_encode(roswasmc_bounded_1_mycobot_communication_GetAnglesResponse const* value,
                                                                      void* output,
                                                                      size_t capacity,
                                                                      size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_mycobot_communication_GetAnglesResponse_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_mycobot_communication_GetAnglesResponse_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_mycobot_communication_GetAnglesResponse_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete mycobot_communication/GetAnglesResponse record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] input Immutable complete canonical body, disjoint from value.
 * @param[in] length Exact input byte count; trailing bytes are refused.
 * @param[out] value Caller-owned complete record; unchanged on every refusal.
 * @return Status 0 on complete success, otherwise 22; no partial record is exposed.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline uint32_t roswasmc_bounded_1_mycobot_communication_GetAnglesResponse_decode(void const* input,
                                                                                         size_t length,
                                                                                         roswasmc_bounded_1_mycobot_communication_GetAnglesResponse* value)
{
    roswasmc_bounded_1_mycobot_communication_GetAnglesResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mycobot_communication_GetAnglesResponse);
    size_t offset = 0;
    if(!value || (length && !input) || length < 24u || length > 24u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_mycobot_communication_GetAnglesResponse_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETCOORDSREQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETCOORDSREQUEST_0 != 0xe0318365UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETCOORDSREQUEST_1 != 0xf7521454UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETCOORDSREQUEST_2 != 0x77ffe275UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETCOORDSREQUEST_3 != 0xdd660b62UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETCOORDSREQUEST_4 != 0xcb3fc378UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETCOORDSREQUEST_5 != 0x2151eec2UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETCOORDSREQUEST_6 != 0x75c50e38UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETCOORDSREQUEST_7 != 0xef7e2ad0UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETCOORDSREQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETCOORDSREQUEST_0 0xe0318365UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETCOORDSREQUEST_1 0xf7521454UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETCOORDSREQUEST_2 0x77ffe275UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETCOORDSREQUEST_3 0xdd660b62UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETCOORDSREQUEST_4 0xcb3fc378UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETCOORDSREQUEST_5 0x2151eec2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETCOORDSREQUEST_6 0x75c50e38UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETCOORDSREQUEST_7 0xef7e2ad0UL

/** @brief Complete ROS1 mycobot_communication/GetCoordsRequest value; no field projects away native data. */
/**
 * @brief Complete ROS 1 mycobot_communication/GetCoordsRequest value.
 * @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes
 * and is identified by UWVMROS1_54acc83a24f2f62d8ba9c14b1cea1703cb6097360720550cc438671282d45876.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_1_mycobot_communication_GetCoordsRequest
{
    /** @brief Local C layout placeholder; empty native component has exactly zero canonical bytes. */
    unsigned char local_empty_placeholder;
} roswasmc_bounded_1_mycobot_communication_GetCoordsRequest;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETCOORDSREQUEST_MAX_WIRE_BYTES 0u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETCOORDSREQUEST_MIN_WIRE_BYTES 0u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETCOORDSREQUEST_CODEC_IDENTITY "UWVMROS1_54acc83a24f2f62d8ba9c14b1cea1703cb6097360720550cc438671282d45876"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate every field of mycobot_communication/GetCoordsRequest.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline int roswasmc_bounded_1_mycobot_communication_GetCoordsRequest_valid(roswasmc_bounded_1_mycobot_communication_GetCoordsRequest const* value)
{
    if(!value)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the complete active canonical extent of mycobot_communication/GetCoordsRequest.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline size_t roswasmc_bounded_1_mycobot_communication_GetCoordsRequest_wire_size(roswasmc_bounded_1_mycobot_communication_GetCoordsRequest const* value)
{
    size_t n = 0;
    (void)value;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Append all fields of mycobot_communication/GetCoordsRequest to an internal canonical buffer.
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
    roswasmc_bounded_1_mycobot_communication_GetCoordsRequest_write_fields(roswasmc_bounded_1_mycobot_communication_GetCoordsRequest const* value,
                                                                           unsigned char* p,
                                                                           size_t* offset)
{
    (void)value;
    (void)p;
    (void)offset;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Decode the full ordered field prefix of mycobot_communication/GetCoordsRequest.
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
static inline int roswasmc_bounded_1_mycobot_communication_GetCoordsRequest_read_fields(unsigned char const* p,
                                                                                        size_t n,
                                                                                        size_t* offset,
                                                                                        roswasmc_bounded_1_mycobot_communication_GetCoordsRequest* value)
{
    (void)p;
    (void)n;
    (void)offset;
    return roswasmc_bounded_1_mycobot_communication_GetCoordsRequest_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode the complete mycobot_communication/GetCoordsRequest record transactionally.
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
static inline uint32_t roswasmc_bounded_1_mycobot_communication_GetCoordsRequest_encode(roswasmc_bounded_1_mycobot_communication_GetCoordsRequest const* value,
                                                                                        void* output,
                                                                                        size_t capacity,
                                                                                        size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_mycobot_communication_GetCoordsRequest_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_mycobot_communication_GetCoordsRequest_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_mycobot_communication_GetCoordsRequest_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete mycobot_communication/GetCoordsRequest record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] input Immutable complete canonical body, disjoint from value.
 * @param[in] length Exact input byte count; trailing bytes are refused.
 * @param[out] value Caller-owned complete record; unchanged on every refusal.
 * @return Status 0 on complete success, otherwise 22; no partial record is exposed.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline uint32_t roswasmc_bounded_1_mycobot_communication_GetCoordsRequest_decode(void const* input,
                                                                                        size_t length,
                                                                                        roswasmc_bounded_1_mycobot_communication_GetCoordsRequest* value)
{
    roswasmc_bounded_1_mycobot_communication_GetCoordsRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mycobot_communication_GetCoordsRequest);
    size_t offset = 0;
    if(!value || (length && !input) || length < 0u || length > 0u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_mycobot_communication_GetCoordsRequest_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETCOORDSRESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETCOORDSRESPONSE_0 != 0x99aad75eUL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETCOORDSRESPONSE_1 != 0x786a1813UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETCOORDSRESPONSE_2 != 0x4248507eUL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETCOORDSRESPONSE_3 != 0xfe0c73faUL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETCOORDSRESPONSE_4 != 0x5134a5faUL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETCOORDSRESPONSE_5 != 0x0e2a9a64UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETCOORDSRESPONSE_6 != 0x7a10e5f2UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETCOORDSRESPONSE_7 != 0x709437bbUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETCOORDSRESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETCOORDSRESPONSE_0 0x99aad75eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETCOORDSRESPONSE_1 0x786a1813UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETCOORDSRESPONSE_2 0x4248507eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETCOORDSRESPONSE_3 0xfe0c73faUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETCOORDSRESPONSE_4 0x5134a5faUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETCOORDSRESPONSE_5 0x0e2a9a64UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETCOORDSRESPONSE_6 0x7a10e5f2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETCOORDSRESPONSE_7 0x709437bbUL

/** @brief Complete ROS1 mycobot_communication/GetCoordsResponse value; no field projects away native data. */
/**
 * @brief Complete ROS 1 mycobot_communication/GetCoordsResponse value.
 * @details All 6 declared fields are retained in source order. The canonical representation occupies 24..24
 * bytes and is identified by UWVMROS1_275b9bec563bb8578112b3680400523000a08a8e194044164e5334336b73d107.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_1_mycobot_communication_GetCoordsResponse
{
    /** @brief Declared field x; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mycobot_communication/GetCoordsResponse.x: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mycobot_communicationGetCoordsResponse; share/platform/ros/rs/API-CONTRACT.md
     */
    float x;
    /** @brief Declared field y; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mycobot_communication/GetCoordsResponse.y: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mycobot_communicationGetCoordsResponse; share/platform/ros/rs/API-CONTRACT.md
     */
    float y;
    /** @brief Declared field z; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mycobot_communication/GetCoordsResponse.z: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mycobot_communicationGetCoordsResponse; share/platform/ros/rs/API-CONTRACT.md
     */
    float z;
    /** @brief Declared field rx; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mycobot_communication/GetCoordsResponse.rx: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mycobot_communicationGetCoordsResponse; share/platform/ros/rs/API-CONTRACT.md
     */
    float rx;
    /** @brief Declared field ry; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mycobot_communication/GetCoordsResponse.ry: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mycobot_communicationGetCoordsResponse; share/platform/ros/rs/API-CONTRACT.md
     */
    float ry;
    /** @brief Declared field rz; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mycobot_communication/GetCoordsResponse.rz: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mycobot_communicationGetCoordsResponse; share/platform/ros/rs/API-CONTRACT.md
     */
    float rz;
} roswasmc_bounded_1_mycobot_communication_GetCoordsResponse;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETCOORDSRESPONSE_MAX_WIRE_BYTES 24u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETCOORDSRESPONSE_MIN_WIRE_BYTES 24u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETCOORDSRESPONSE_CODEC_IDENTITY "UWVMROS1_275b9bec563bb8578112b3680400523000a08a8e194044164e5334336b73d107"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate every field of mycobot_communication/GetCoordsResponse.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline int roswasmc_bounded_1_mycobot_communication_GetCoordsResponse_valid(roswasmc_bounded_1_mycobot_communication_GetCoordsResponse const* value)
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
        uwvm_bounded_copy(&bits, &value->rx, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->ry, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->rz, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the complete active canonical extent of mycobot_communication/GetCoordsResponse.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline size_t
    roswasmc_bounded_1_mycobot_communication_GetCoordsResponse_wire_size(roswasmc_bounded_1_mycobot_communication_GetCoordsResponse const* value)
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
 * @brief Append all fields of mycobot_communication/GetCoordsResponse to an internal canonical buffer.
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
    roswasmc_bounded_1_mycobot_communication_GetCoordsResponse_write_fields(roswasmc_bounded_1_mycobot_communication_GetCoordsResponse const* value,
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
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->rz, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Decode the full ordered field prefix of mycobot_communication/GetCoordsResponse.
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
static inline int roswasmc_bounded_1_mycobot_communication_GetCoordsResponse_read_fields(unsigned char const* p,
                                                                                         size_t n,
                                                                                         size_t* offset,
                                                                                         roswasmc_bounded_1_mycobot_communication_GetCoordsResponse* value)
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
        uwvm_bounded_copy(&value->rx, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->ry, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->rz, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_1_mycobot_communication_GetCoordsResponse_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode the complete mycobot_communication/GetCoordsResponse record transactionally.
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
    roswasmc_bounded_1_mycobot_communication_GetCoordsResponse_encode(roswasmc_bounded_1_mycobot_communication_GetCoordsResponse const* value,
                                                                      void* output,
                                                                      size_t capacity,
                                                                      size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_mycobot_communication_GetCoordsResponse_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_mycobot_communication_GetCoordsResponse_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_mycobot_communication_GetCoordsResponse_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete mycobot_communication/GetCoordsResponse record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] input Immutable complete canonical body, disjoint from value.
 * @param[in] length Exact input byte count; trailing bytes are refused.
 * @param[out] value Caller-owned complete record; unchanged on every refusal.
 * @return Status 0 on complete success, otherwise 22; no partial record is exposed.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline uint32_t roswasmc_bounded_1_mycobot_communication_GetCoordsResponse_decode(void const* input,
                                                                                         size_t length,
                                                                                         roswasmc_bounded_1_mycobot_communication_GetCoordsResponse* value)
{
    roswasmc_bounded_1_mycobot_communication_GetCoordsResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mycobot_communication_GetCoordsResponse);
    size_t offset = 0;
    if(!value || (length && !input) || length < 24u || length > 24u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_mycobot_communication_GetCoordsResponse_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GRIPPERSTATUSREQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GRIPPERSTATUSREQUEST_0 != 0xf0a0c6b6UL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GRIPPERSTATUSREQUEST_1 != 0x535fc4dcUL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GRIPPERSTATUSREQUEST_2 != 0x65a86059UL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GRIPPERSTATUSREQUEST_3 != 0xd56975c0UL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GRIPPERSTATUSREQUEST_4 != 0x5a4f684bUL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GRIPPERSTATUSREQUEST_5 != 0x0f576f94UL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GRIPPERSTATUSREQUEST_6 != 0xb41f31bfUL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GRIPPERSTATUSREQUEST_7 != 0x8b4f873bUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GRIPPERSTATUSREQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GRIPPERSTATUSREQUEST_0 0xf0a0c6b6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GRIPPERSTATUSREQUEST_1 0x535fc4dcUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GRIPPERSTATUSREQUEST_2 0x65a86059UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GRIPPERSTATUSREQUEST_3 0xd56975c0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GRIPPERSTATUSREQUEST_4 0x5a4f684bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GRIPPERSTATUSREQUEST_5 0x0f576f94UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GRIPPERSTATUSREQUEST_6 0xb41f31bfUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GRIPPERSTATUSREQUEST_7 0x8b4f873bUL

/** @brief Complete ROS1 mycobot_communication/GripperStatusRequest value; no field projects away native data. */
/**
 * @brief Complete ROS 1 mycobot_communication/GripperStatusRequest value.
 * @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1 bytes
 * and is identified by UWVMROS1_d2c94d1906d311981c72642d82bbea634cfed4eac8c0aef41219bf4f382d4585.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_1_mycobot_communication_GripperStatusRequest
{
    /** @brief Declared field Status; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mycobot_communication/GripperStatusRequest.Status: bool.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mycobot_communicationGripperStatusRequest; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t Status;
} roswasmc_bounded_1_mycobot_communication_GripperStatusRequest;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GRIPPERSTATUSREQUEST_MAX_WIRE_BYTES 1u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GRIPPERSTATUSREQUEST_MIN_WIRE_BYTES 1u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GRIPPERSTATUSREQUEST_CODEC_IDENTITY                                                                          \
     "UWVMROS1_d2c94d1906d311981c72642d82bbea634cfed4eac8c0aef41219bf4f382d4585"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate every field of mycobot_communication/GripperStatusRequest.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline int
    roswasmc_bounded_1_mycobot_communication_GripperStatusRequest_valid(roswasmc_bounded_1_mycobot_communication_GripperStatusRequest const* value)
{
    if(!value)
        return 0;
    if(value->Status > 1)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the complete active canonical extent of mycobot_communication/GripperStatusRequest.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline size_t
    roswasmc_bounded_1_mycobot_communication_GripperStatusRequest_wire_size(roswasmc_bounded_1_mycobot_communication_GripperStatusRequest const* value)
{
    size_t n = 0;
    (void)value;
    n += 1;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Append all fields of mycobot_communication/GripperStatusRequest to an internal canonical buffer.
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
    roswasmc_bounded_1_mycobot_communication_GripperStatusRequest_write_fields(roswasmc_bounded_1_mycobot_communication_GripperStatusRequest const* value,
                                                                               unsigned char* p,
                                                                               size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->Status, 1);
    *offset += 1;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Decode the full ordered field prefix of mycobot_communication/GripperStatusRequest.
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
    roswasmc_bounded_1_mycobot_communication_GripperStatusRequest_read_fields(unsigned char const* p,
                                                                              size_t n,
                                                                              size_t* offset,
                                                                              roswasmc_bounded_1_mycobot_communication_GripperStatusRequest* value)
{
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->Status, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_1_mycobot_communication_GripperStatusRequest_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode the complete mycobot_communication/GripperStatusRequest record transactionally.
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
    roswasmc_bounded_1_mycobot_communication_GripperStatusRequest_encode(roswasmc_bounded_1_mycobot_communication_GripperStatusRequest const* value,
                                                                         void* output,
                                                                         size_t capacity,
                                                                         size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_mycobot_communication_GripperStatusRequest_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_mycobot_communication_GripperStatusRequest_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_mycobot_communication_GripperStatusRequest_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete mycobot_communication/GripperStatusRequest record transactionally.
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
    roswasmc_bounded_1_mycobot_communication_GripperStatusRequest_decode(void const* input,
                                                                         size_t length,
                                                                         roswasmc_bounded_1_mycobot_communication_GripperStatusRequest* value)
{
    roswasmc_bounded_1_mycobot_communication_GripperStatusRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mycobot_communication_GripperStatusRequest);
    size_t offset = 0;
    if(!value || (length && !input) || length < 1u || length > 1u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_mycobot_communication_GripperStatusRequest_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GRIPPERSTATUSRESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GRIPPERSTATUSRESPONSE_0 != 0x89230a54UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GRIPPERSTATUSRESPONSE_1 != 0x516d1b56UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GRIPPERSTATUSRESPONSE_2 != 0xc2daf927UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GRIPPERSTATUSRESPONSE_3 != 0x20b8c071UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GRIPPERSTATUSRESPONSE_4 != 0xe3713958UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GRIPPERSTATUSRESPONSE_5 != 0x8947b8c7UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GRIPPERSTATUSRESPONSE_6 != 0x74c17892UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GRIPPERSTATUSRESPONSE_7 != 0xc87d1090UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GRIPPERSTATUSRESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GRIPPERSTATUSRESPONSE_0 0x89230a54UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GRIPPERSTATUSRESPONSE_1 0x516d1b56UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GRIPPERSTATUSRESPONSE_2 0xc2daf927UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GRIPPERSTATUSRESPONSE_3 0x20b8c071UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GRIPPERSTATUSRESPONSE_4 0xe3713958UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GRIPPERSTATUSRESPONSE_5 0x8947b8c7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GRIPPERSTATUSRESPONSE_6 0x74c17892UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GRIPPERSTATUSRESPONSE_7 0xc87d1090UL

/** @brief Complete ROS1 mycobot_communication/GripperStatusResponse value; no field projects away native data. */
/**
 * @brief Complete ROS 1 mycobot_communication/GripperStatusResponse value.
 * @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1 bytes
 * and is identified by UWVMROS1_3a75c0d75882836971ed4c51e50c7b88778fcfeadf9b30df211d5055eb767664.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_1_mycobot_communication_GripperStatusResponse
{
    /** @brief Declared field Flag; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mycobot_communication/GripperStatusResponse.Flag: bool.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mycobot_communicationGripperStatusResponse; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t Flag;
} roswasmc_bounded_1_mycobot_communication_GripperStatusResponse;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GRIPPERSTATUSRESPONSE_MAX_WIRE_BYTES 1u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GRIPPERSTATUSRESPONSE_MIN_WIRE_BYTES 1u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GRIPPERSTATUSRESPONSE_CODEC_IDENTITY                                                                         \
     "UWVMROS1_3a75c0d75882836971ed4c51e50c7b88778fcfeadf9b30df211d5055eb767664"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate every field of mycobot_communication/GripperStatusResponse.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline int
    roswasmc_bounded_1_mycobot_communication_GripperStatusResponse_valid(roswasmc_bounded_1_mycobot_communication_GripperStatusResponse const* value)
{
    if(!value)
        return 0;
    if(value->Flag > 1)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the complete active canonical extent of mycobot_communication/GripperStatusResponse.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline size_t
    roswasmc_bounded_1_mycobot_communication_GripperStatusResponse_wire_size(roswasmc_bounded_1_mycobot_communication_GripperStatusResponse const* value)
{
    size_t n = 0;
    (void)value;
    n += 1;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Append all fields of mycobot_communication/GripperStatusResponse to an internal canonical buffer.
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
    roswasmc_bounded_1_mycobot_communication_GripperStatusResponse_write_fields(roswasmc_bounded_1_mycobot_communication_GripperStatusResponse const* value,
                                                                                unsigned char* p,
                                                                                size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->Flag, 1);
    *offset += 1;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Decode the full ordered field prefix of mycobot_communication/GripperStatusResponse.
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
    roswasmc_bounded_1_mycobot_communication_GripperStatusResponse_read_fields(unsigned char const* p,
                                                                               size_t n,
                                                                               size_t* offset,
                                                                               roswasmc_bounded_1_mycobot_communication_GripperStatusResponse* value)
{
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->Flag, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_1_mycobot_communication_GripperStatusResponse_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode the complete mycobot_communication/GripperStatusResponse record transactionally.
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
    roswasmc_bounded_1_mycobot_communication_GripperStatusResponse_encode(roswasmc_bounded_1_mycobot_communication_GripperStatusResponse const* value,
                                                                          void* output,
                                                                          size_t capacity,
                                                                          size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_mycobot_communication_GripperStatusResponse_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_mycobot_communication_GripperStatusResponse_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_mycobot_communication_GripperStatusResponse_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete mycobot_communication/GripperStatusResponse record transactionally.
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
    roswasmc_bounded_1_mycobot_communication_GripperStatusResponse_decode(void const* input,
                                                                          size_t length,
                                                                          roswasmc_bounded_1_mycobot_communication_GripperStatusResponse* value)
{
    roswasmc_bounded_1_mycobot_communication_GripperStatusResponse next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mycobot_communication_GripperStatusResponse);
    size_t offset = 0;
    if(!value || (length && !input) || length < 1u || length > 1u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_mycobot_communication_GripperStatusResponse_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_PUMPSTATUSREQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_PUMPSTATUSREQUEST_0 != 0x6912826eUL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_PUMPSTATUSREQUEST_1 != 0xd0057643UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_PUMPSTATUSREQUEST_2 != 0x8d2c1833UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_PUMPSTATUSREQUEST_3 != 0x6db0f040UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_PUMPSTATUSREQUEST_4 != 0xe9663078UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_PUMPSTATUSREQUEST_5 != 0x9b502e2aUL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_PUMPSTATUSREQUEST_6 != 0x11e9ab5bUL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_PUMPSTATUSREQUEST_7 != 0xade7cd90UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_PUMPSTATUSREQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_PUMPSTATUSREQUEST_0 0x6912826eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_PUMPSTATUSREQUEST_1 0xd0057643UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_PUMPSTATUSREQUEST_2 0x8d2c1833UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_PUMPSTATUSREQUEST_3 0x6db0f040UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_PUMPSTATUSREQUEST_4 0xe9663078UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_PUMPSTATUSREQUEST_5 0x9b502e2aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_PUMPSTATUSREQUEST_6 0x11e9ab5bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_PUMPSTATUSREQUEST_7 0xade7cd90UL

/** @brief Complete ROS1 mycobot_communication/PumpStatusRequest value; no field projects away native data. */
/**
 * @brief Complete ROS 1 mycobot_communication/PumpStatusRequest value.
 * @details All 3 declared fields are retained in source order. The canonical representation occupies 3..3 bytes
 * and is identified by UWVMROS1_561f4bb1f74832111672bbfed1ef1266a91914fb1034437199f730f55324c65c.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_1_mycobot_communication_PumpStatusRequest
{
    /** @brief Declared field Status; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mycobot_communication/PumpStatusRequest.Status: bool.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mycobot_communicationPumpStatusRequest; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t Status;
    /** @brief Declared field Pin1; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mycobot_communication/PumpStatusRequest.Pin1: int8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mycobot_communicationPumpStatusRequest; share/platform/ros/rs/API-CONTRACT.md
     */
    int8_t Pin1;
    /** @brief Declared field Pin2; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mycobot_communication/PumpStatusRequest.Pin2: int8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mycobot_communicationPumpStatusRequest; share/platform/ros/rs/API-CONTRACT.md
     */
    int8_t Pin2;
} roswasmc_bounded_1_mycobot_communication_PumpStatusRequest;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_PUMPSTATUSREQUEST_MAX_WIRE_BYTES 3u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_PUMPSTATUSREQUEST_MIN_WIRE_BYTES 3u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_PUMPSTATUSREQUEST_CODEC_IDENTITY "UWVMROS1_561f4bb1f74832111672bbfed1ef1266a91914fb1034437199f730f55324c65c"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate every field of mycobot_communication/PumpStatusRequest.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline int roswasmc_bounded_1_mycobot_communication_PumpStatusRequest_valid(roswasmc_bounded_1_mycobot_communication_PumpStatusRequest const* value)
{
    if(!value)
        return 0;
    if(value->Status > 1)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the complete active canonical extent of mycobot_communication/PumpStatusRequest.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline size_t
    roswasmc_bounded_1_mycobot_communication_PumpStatusRequest_wire_size(roswasmc_bounded_1_mycobot_communication_PumpStatusRequest const* value)
{
    size_t n = 0;
    (void)value;
    n += 1;
    n += 1;
    n += 1;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Append all fields of mycobot_communication/PumpStatusRequest to an internal canonical buffer.
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
    roswasmc_bounded_1_mycobot_communication_PumpStatusRequest_write_fields(roswasmc_bounded_1_mycobot_communication_PumpStatusRequest const* value,
                                                                            unsigned char* p,
                                                                            size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->Status, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->Pin1, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->Pin2, 1);
    *offset += 1;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Decode the full ordered field prefix of mycobot_communication/PumpStatusRequest.
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
static inline int roswasmc_bounded_1_mycobot_communication_PumpStatusRequest_read_fields(unsigned char const* p,
                                                                                         size_t n,
                                                                                         size_t* offset,
                                                                                         roswasmc_bounded_1_mycobot_communication_PumpStatusRequest* value)
{
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->Status, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->Pin1, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->Pin2, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_1_mycobot_communication_PumpStatusRequest_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode the complete mycobot_communication/PumpStatusRequest record transactionally.
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
    roswasmc_bounded_1_mycobot_communication_PumpStatusRequest_encode(roswasmc_bounded_1_mycobot_communication_PumpStatusRequest const* value,
                                                                      void* output,
                                                                      size_t capacity,
                                                                      size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_mycobot_communication_PumpStatusRequest_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_mycobot_communication_PumpStatusRequest_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_mycobot_communication_PumpStatusRequest_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete mycobot_communication/PumpStatusRequest record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] input Immutable complete canonical body, disjoint from value.
 * @param[in] length Exact input byte count; trailing bytes are refused.
 * @param[out] value Caller-owned complete record; unchanged on every refusal.
 * @return Status 0 on complete success, otherwise 22; no partial record is exposed.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline uint32_t roswasmc_bounded_1_mycobot_communication_PumpStatusRequest_decode(void const* input,
                                                                                         size_t length,
                                                                                         roswasmc_bounded_1_mycobot_communication_PumpStatusRequest* value)
{
    roswasmc_bounded_1_mycobot_communication_PumpStatusRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mycobot_communication_PumpStatusRequest);
    size_t offset = 0;
    if(!value || (length && !input) || length < 3u || length > 3u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_mycobot_communication_PumpStatusRequest_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_PUMPSTATUSRESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_PUMPSTATUSRESPONSE_0 != 0xe242567fUL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_PUMPSTATUSRESPONSE_1 != 0xc9910fb6UL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_PUMPSTATUSRESPONSE_2 != 0x29eafb20UL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_PUMPSTATUSRESPONSE_3 != 0xebe6072cUL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_PUMPSTATUSRESPONSE_4 != 0xdd5698ffUL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_PUMPSTATUSRESPONSE_5 != 0x679a03eeUL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_PUMPSTATUSRESPONSE_6 != 0x9f774ddbUL ||                                                  \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_PUMPSTATUSRESPONSE_7 != 0x8b38baf2UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_PUMPSTATUSRESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_PUMPSTATUSRESPONSE_0 0xe242567fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_PUMPSTATUSRESPONSE_1 0xc9910fb6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_PUMPSTATUSRESPONSE_2 0x29eafb20UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_PUMPSTATUSRESPONSE_3 0xebe6072cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_PUMPSTATUSRESPONSE_4 0xdd5698ffUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_PUMPSTATUSRESPONSE_5 0x679a03eeUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_PUMPSTATUSRESPONSE_6 0x9f774ddbUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_PUMPSTATUSRESPONSE_7 0x8b38baf2UL

/** @brief Complete ROS1 mycobot_communication/PumpStatusResponse value; no field projects away native data. */
/**
 * @brief Complete ROS 1 mycobot_communication/PumpStatusResponse value.
 * @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1 bytes
 * and is identified by UWVMROS1_b5a1672fe12d2e2131034bb6da8751130b64ef6d48ea48ac0a046c506da452dd.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_1_mycobot_communication_PumpStatusResponse
{
    /** @brief Declared field Flag; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mycobot_communication/PumpStatusResponse.Flag: bool.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mycobot_communicationPumpStatusResponse; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t Flag;
} roswasmc_bounded_1_mycobot_communication_PumpStatusResponse;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_PUMPSTATUSRESPONSE_MAX_WIRE_BYTES 1u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_PUMPSTATUSRESPONSE_MIN_WIRE_BYTES 1u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_PUMPSTATUSRESPONSE_CODEC_IDENTITY "UWVMROS1_b5a1672fe12d2e2131034bb6da8751130b64ef6d48ea48ac0a046c506da452dd"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate every field of mycobot_communication/PumpStatusResponse.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline int roswasmc_bounded_1_mycobot_communication_PumpStatusResponse_valid(roswasmc_bounded_1_mycobot_communication_PumpStatusResponse const* value)
{
    if(!value)
        return 0;
    if(value->Flag > 1)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the complete active canonical extent of mycobot_communication/PumpStatusResponse.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline size_t
    roswasmc_bounded_1_mycobot_communication_PumpStatusResponse_wire_size(roswasmc_bounded_1_mycobot_communication_PumpStatusResponse const* value)
{
    size_t n = 0;
    (void)value;
    n += 1;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Append all fields of mycobot_communication/PumpStatusResponse to an internal canonical buffer.
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
    roswasmc_bounded_1_mycobot_communication_PumpStatusResponse_write_fields(roswasmc_bounded_1_mycobot_communication_PumpStatusResponse const* value,
                                                                             unsigned char* p,
                                                                             size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->Flag, 1);
    *offset += 1;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Decode the full ordered field prefix of mycobot_communication/PumpStatusResponse.
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
static inline int roswasmc_bounded_1_mycobot_communication_PumpStatusResponse_read_fields(unsigned char const* p,
                                                                                          size_t n,
                                                                                          size_t* offset,
                                                                                          roswasmc_bounded_1_mycobot_communication_PumpStatusResponse* value)
{
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->Flag, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_1_mycobot_communication_PumpStatusResponse_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode the complete mycobot_communication/PumpStatusResponse record transactionally.
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
    roswasmc_bounded_1_mycobot_communication_PumpStatusResponse_encode(roswasmc_bounded_1_mycobot_communication_PumpStatusResponse const* value,
                                                                       void* output,
                                                                       size_t capacity,
                                                                       size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_mycobot_communication_PumpStatusResponse_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_mycobot_communication_PumpStatusResponse_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_mycobot_communication_PumpStatusResponse_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete mycobot_communication/PumpStatusResponse record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] input Immutable complete canonical body, disjoint from value.
 * @param[in] length Exact input byte count; trailing bytes are refused.
 * @param[out] value Caller-owned complete record; unchanged on every refusal.
 * @return Status 0 on complete success, otherwise 22; no partial record is exposed.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline uint32_t roswasmc_bounded_1_mycobot_communication_PumpStatusResponse_decode(void const* input,
                                                                                          size_t length,
                                                                                          roswasmc_bounded_1_mycobot_communication_PumpStatusResponse* value)
{
    roswasmc_bounded_1_mycobot_communication_PumpStatusResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mycobot_communication_PumpStatusResponse);
    size_t offset = 0;
    if(!value || (length && !input) || length < 1u || length > 1u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_mycobot_communication_PumpStatusResponse_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETANGLESREQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETANGLESREQUEST_0 != 0xc57df085UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETANGLESREQUEST_1 != 0x0b854775UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETANGLESREQUEST_2 != 0xa698dfcaUL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETANGLESREQUEST_3 != 0xe03fa427UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETANGLESREQUEST_4 != 0x93d913a5UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETANGLESREQUEST_5 != 0xf0f7b5cbUL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETANGLESREQUEST_6 != 0x1e7efb07UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETANGLESREQUEST_7 != 0xd2e9fafbUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETANGLESREQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETANGLESREQUEST_0 0xc57df085UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETANGLESREQUEST_1 0x0b854775UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETANGLESREQUEST_2 0xa698dfcaUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETANGLESREQUEST_3 0xe03fa427UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETANGLESREQUEST_4 0x93d913a5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETANGLESREQUEST_5 0xf0f7b5cbUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETANGLESREQUEST_6 0x1e7efb07UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETANGLESREQUEST_7 0xd2e9fafbUL

/** @brief Complete ROS1 mycobot_communication/SetAnglesRequest value; no field projects away native data. */
/**
 * @brief Complete ROS 1 mycobot_communication/SetAnglesRequest value.
 * @details All 7 declared fields are retained in source order. The canonical representation occupies 25..25
 * bytes and is identified by UWVMROS1_10bcf04e47b743a985ffefc61dff4522f3718d2ac7170960c8ae6857aaa11cbd.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_1_mycobot_communication_SetAnglesRequest
{
    /** @brief Declared field joint_1; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mycobot_communication/SetAnglesRequest.joint_1: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mycobot_communicationSetAnglesRequest; share/platform/ros/rs/API-CONTRACT.md
     */
    float joint_1;
    /** @brief Declared field joint_2; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mycobot_communication/SetAnglesRequest.joint_2: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mycobot_communicationSetAnglesRequest; share/platform/ros/rs/API-CONTRACT.md
     */
    float joint_2;
    /** @brief Declared field joint_3; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mycobot_communication/SetAnglesRequest.joint_3: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mycobot_communicationSetAnglesRequest; share/platform/ros/rs/API-CONTRACT.md
     */
    float joint_3;
    /** @brief Declared field joint_4; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mycobot_communication/SetAnglesRequest.joint_4: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mycobot_communicationSetAnglesRequest; share/platform/ros/rs/API-CONTRACT.md
     */
    float joint_4;
    /** @brief Declared field joint_5; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mycobot_communication/SetAnglesRequest.joint_5: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mycobot_communicationSetAnglesRequest; share/platform/ros/rs/API-CONTRACT.md
     */
    float joint_5;
    /** @brief Declared field joint_6; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mycobot_communication/SetAnglesRequest.joint_6: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mycobot_communicationSetAnglesRequest; share/platform/ros/rs/API-CONTRACT.md
     */
    float joint_6;
    /** @brief Declared field speed; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mycobot_communication/SetAnglesRequest.speed: int8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mycobot_communicationSetAnglesRequest; share/platform/ros/rs/API-CONTRACT.md
     */
    int8_t speed;
} roswasmc_bounded_1_mycobot_communication_SetAnglesRequest;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETANGLESREQUEST_MAX_WIRE_BYTES 25u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETANGLESREQUEST_MIN_WIRE_BYTES 25u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETANGLESREQUEST_CODEC_IDENTITY "UWVMROS1_10bcf04e47b743a985ffefc61dff4522f3718d2ac7170960c8ae6857aaa11cbd"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate every field of mycobot_communication/SetAnglesRequest.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline int roswasmc_bounded_1_mycobot_communication_SetAnglesRequest_valid(roswasmc_bounded_1_mycobot_communication_SetAnglesRequest const* value)
{
    if(!value)
        return 0;
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->joint_1, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->joint_2, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->joint_3, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->joint_4, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->joint_5, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->joint_6, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the complete active canonical extent of mycobot_communication/SetAnglesRequest.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline size_t roswasmc_bounded_1_mycobot_communication_SetAnglesRequest_wire_size(roswasmc_bounded_1_mycobot_communication_SetAnglesRequest const* value)
{
    size_t n = 0;
    (void)value;
    n += 4;
    n += 4;
    n += 4;
    n += 4;
    n += 4;
    n += 4;
    n += 1;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Append all fields of mycobot_communication/SetAnglesRequest to an internal canonical buffer.
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
    roswasmc_bounded_1_mycobot_communication_SetAnglesRequest_write_fields(roswasmc_bounded_1_mycobot_communication_SetAnglesRequest const* value,
                                                                           unsigned char* p,
                                                                           size_t* offset)
{
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->joint_1, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->joint_2, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->joint_3, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->joint_4, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->joint_5, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->joint_6, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    uwvm_bounded_put(p + *offset, (uint64_t)value->speed, 1);
    *offset += 1;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Decode the full ordered field prefix of mycobot_communication/SetAnglesRequest.
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
static inline int roswasmc_bounded_1_mycobot_communication_SetAnglesRequest_read_fields(unsigned char const* p,
                                                                                        size_t n,
                                                                                        size_t* offset,
                                                                                        roswasmc_bounded_1_mycobot_communication_SetAnglesRequest* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->joint_1, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->joint_2, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->joint_3, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->joint_4, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->joint_5, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->joint_6, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->speed, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_1_mycobot_communication_SetAnglesRequest_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode the complete mycobot_communication/SetAnglesRequest record transactionally.
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
static inline uint32_t roswasmc_bounded_1_mycobot_communication_SetAnglesRequest_encode(roswasmc_bounded_1_mycobot_communication_SetAnglesRequest const* value,
                                                                                        void* output,
                                                                                        size_t capacity,
                                                                                        size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_mycobot_communication_SetAnglesRequest_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_mycobot_communication_SetAnglesRequest_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_mycobot_communication_SetAnglesRequest_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete mycobot_communication/SetAnglesRequest record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] input Immutable complete canonical body, disjoint from value.
 * @param[in] length Exact input byte count; trailing bytes are refused.
 * @param[out] value Caller-owned complete record; unchanged on every refusal.
 * @return Status 0 on complete success, otherwise 22; no partial record is exposed.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline uint32_t roswasmc_bounded_1_mycobot_communication_SetAnglesRequest_decode(void const* input,
                                                                                        size_t length,
                                                                                        roswasmc_bounded_1_mycobot_communication_SetAnglesRequest* value)
{
    roswasmc_bounded_1_mycobot_communication_SetAnglesRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mycobot_communication_SetAnglesRequest);
    size_t offset = 0;
    if(!value || (length && !input) || length < 25u || length > 25u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_mycobot_communication_SetAnglesRequest_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETANGLESRESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETANGLESRESPONSE_0 != 0x520a65bcUL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETANGLESRESPONSE_1 != 0x8f2e8f53UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETANGLESRESPONSE_2 != 0x0c223c9eUL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETANGLESRESPONSE_3 != 0xaaab5f5aUL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETANGLESRESPONSE_4 != 0x1ffa3ed6UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETANGLESRESPONSE_5 != 0xfe35ad57UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETANGLESRESPONSE_6 != 0x331313dbUL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETANGLESRESPONSE_7 != 0x49b53eceUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETANGLESRESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETANGLESRESPONSE_0 0x520a65bcUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETANGLESRESPONSE_1 0x8f2e8f53UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETANGLESRESPONSE_2 0x0c223c9eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETANGLESRESPONSE_3 0xaaab5f5aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETANGLESRESPONSE_4 0x1ffa3ed6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETANGLESRESPONSE_5 0xfe35ad57UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETANGLESRESPONSE_6 0x331313dbUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETANGLESRESPONSE_7 0x49b53eceUL

/** @brief Complete ROS1 mycobot_communication/SetAnglesResponse value; no field projects away native data. */
/**
 * @brief Complete ROS 1 mycobot_communication/SetAnglesResponse value.
 * @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1 bytes
 * and is identified by UWVMROS1_d407051eb285975d89ad71f39aede021fb564aecca0e0744126c9a599fe396b2.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_1_mycobot_communication_SetAnglesResponse
{
    /** @brief Declared field Flag; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mycobot_communication/SetAnglesResponse.Flag: bool.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mycobot_communicationSetAnglesResponse; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t Flag;
} roswasmc_bounded_1_mycobot_communication_SetAnglesResponse;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETANGLESRESPONSE_MAX_WIRE_BYTES 1u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETANGLESRESPONSE_MIN_WIRE_BYTES 1u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETANGLESRESPONSE_CODEC_IDENTITY "UWVMROS1_d407051eb285975d89ad71f39aede021fb564aecca0e0744126c9a599fe396b2"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate every field of mycobot_communication/SetAnglesResponse.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline int roswasmc_bounded_1_mycobot_communication_SetAnglesResponse_valid(roswasmc_bounded_1_mycobot_communication_SetAnglesResponse const* value)
{
    if(!value)
        return 0;
    if(value->Flag > 1)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the complete active canonical extent of mycobot_communication/SetAnglesResponse.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline size_t
    roswasmc_bounded_1_mycobot_communication_SetAnglesResponse_wire_size(roswasmc_bounded_1_mycobot_communication_SetAnglesResponse const* value)
{
    size_t n = 0;
    (void)value;
    n += 1;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Append all fields of mycobot_communication/SetAnglesResponse to an internal canonical buffer.
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
    roswasmc_bounded_1_mycobot_communication_SetAnglesResponse_write_fields(roswasmc_bounded_1_mycobot_communication_SetAnglesResponse const* value,
                                                                            unsigned char* p,
                                                                            size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->Flag, 1);
    *offset += 1;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Decode the full ordered field prefix of mycobot_communication/SetAnglesResponse.
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
static inline int roswasmc_bounded_1_mycobot_communication_SetAnglesResponse_read_fields(unsigned char const* p,
                                                                                         size_t n,
                                                                                         size_t* offset,
                                                                                         roswasmc_bounded_1_mycobot_communication_SetAnglesResponse* value)
{
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->Flag, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_1_mycobot_communication_SetAnglesResponse_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode the complete mycobot_communication/SetAnglesResponse record transactionally.
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
    roswasmc_bounded_1_mycobot_communication_SetAnglesResponse_encode(roswasmc_bounded_1_mycobot_communication_SetAnglesResponse const* value,
                                                                      void* output,
                                                                      size_t capacity,
                                                                      size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_mycobot_communication_SetAnglesResponse_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_mycobot_communication_SetAnglesResponse_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_mycobot_communication_SetAnglesResponse_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete mycobot_communication/SetAnglesResponse record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] input Immutable complete canonical body, disjoint from value.
 * @param[in] length Exact input byte count; trailing bytes are refused.
 * @param[out] value Caller-owned complete record; unchanged on every refusal.
 * @return Status 0 on complete success, otherwise 22; no partial record is exposed.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline uint32_t roswasmc_bounded_1_mycobot_communication_SetAnglesResponse_decode(void const* input,
                                                                                         size_t length,
                                                                                         roswasmc_bounded_1_mycobot_communication_SetAnglesResponse* value)
{
    roswasmc_bounded_1_mycobot_communication_SetAnglesResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mycobot_communication_SetAnglesResponse);
    size_t offset = 0;
    if(!value || (length && !input) || length < 1u || length > 1u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_mycobot_communication_SetAnglesResponse_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETCOORDSREQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETCOORDSREQUEST_0 != 0xc325aa7bUL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETCOORDSREQUEST_1 != 0x063fc872UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETCOORDSREQUEST_2 != 0x49e784cbUL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETCOORDSREQUEST_3 != 0xdc469e62UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETCOORDSREQUEST_4 != 0x1f35eb18UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETCOORDSREQUEST_5 != 0x9380dd03UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETCOORDSREQUEST_6 != 0x3261ba5dUL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETCOORDSREQUEST_7 != 0xf279811fUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETCOORDSREQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETCOORDSREQUEST_0 0xc325aa7bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETCOORDSREQUEST_1 0x063fc872UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETCOORDSREQUEST_2 0x49e784cbUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETCOORDSREQUEST_3 0xdc469e62UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETCOORDSREQUEST_4 0x1f35eb18UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETCOORDSREQUEST_5 0x9380dd03UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETCOORDSREQUEST_6 0x3261ba5dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETCOORDSREQUEST_7 0xf279811fUL

/** @brief Complete ROS1 mycobot_communication/SetCoordsRequest value; no field projects away native data. */
/**
 * @brief Complete ROS 1 mycobot_communication/SetCoordsRequest value.
 * @details All 8 declared fields are retained in source order. The canonical representation occupies 26..26
 * bytes and is identified by UWVMROS1_7a59a4e31eca60caea9f82142225c890a136c60a9e4c821e9463e89139945f7a.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_1_mycobot_communication_SetCoordsRequest
{
    /** @brief Declared field x; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mycobot_communication/SetCoordsRequest.x: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mycobot_communicationSetCoordsRequest; share/platform/ros/rs/API-CONTRACT.md
     */
    float x;
    /** @brief Declared field y; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mycobot_communication/SetCoordsRequest.y: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mycobot_communicationSetCoordsRequest; share/platform/ros/rs/API-CONTRACT.md
     */
    float y;
    /** @brief Declared field z; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mycobot_communication/SetCoordsRequest.z: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mycobot_communicationSetCoordsRequest; share/platform/ros/rs/API-CONTRACT.md
     */
    float z;
    /** @brief Declared field rx; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mycobot_communication/SetCoordsRequest.rx: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mycobot_communicationSetCoordsRequest; share/platform/ros/rs/API-CONTRACT.md
     */
    float rx;
    /** @brief Declared field ry; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mycobot_communication/SetCoordsRequest.ry: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mycobot_communicationSetCoordsRequest; share/platform/ros/rs/API-CONTRACT.md
     */
    float ry;
    /** @brief Declared field rz; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mycobot_communication/SetCoordsRequest.rz: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mycobot_communicationSetCoordsRequest; share/platform/ros/rs/API-CONTRACT.md
     */
    float rz;
    /** @brief Declared field speed; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mycobot_communication/SetCoordsRequest.speed: int8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mycobot_communicationSetCoordsRequest; share/platform/ros/rs/API-CONTRACT.md
     */
    int8_t speed;
    /** @brief Declared field model; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mycobot_communication/SetCoordsRequest.model: int8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mycobot_communicationSetCoordsRequest; share/platform/ros/rs/API-CONTRACT.md
     */
    int8_t model;
} roswasmc_bounded_1_mycobot_communication_SetCoordsRequest;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETCOORDSREQUEST_MAX_WIRE_BYTES 26u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETCOORDSREQUEST_MIN_WIRE_BYTES 26u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETCOORDSREQUEST_CODEC_IDENTITY "UWVMROS1_7a59a4e31eca60caea9f82142225c890a136c60a9e4c821e9463e89139945f7a"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate every field of mycobot_communication/SetCoordsRequest.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline int roswasmc_bounded_1_mycobot_communication_SetCoordsRequest_valid(roswasmc_bounded_1_mycobot_communication_SetCoordsRequest const* value)
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
        uwvm_bounded_copy(&bits, &value->rx, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->ry, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->rz, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the complete active canonical extent of mycobot_communication/SetCoordsRequest.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline size_t roswasmc_bounded_1_mycobot_communication_SetCoordsRequest_wire_size(roswasmc_bounded_1_mycobot_communication_SetCoordsRequest const* value)
{
    size_t n = 0;
    (void)value;
    n += 4;
    n += 4;
    n += 4;
    n += 4;
    n += 4;
    n += 4;
    n += 1;
    n += 1;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Append all fields of mycobot_communication/SetCoordsRequest to an internal canonical buffer.
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
    roswasmc_bounded_1_mycobot_communication_SetCoordsRequest_write_fields(roswasmc_bounded_1_mycobot_communication_SetCoordsRequest const* value,
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
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->rz, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    uwvm_bounded_put(p + *offset, (uint64_t)value->speed, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->model, 1);
    *offset += 1;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Decode the full ordered field prefix of mycobot_communication/SetCoordsRequest.
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
static inline int roswasmc_bounded_1_mycobot_communication_SetCoordsRequest_read_fields(unsigned char const* p,
                                                                                        size_t n,
                                                                                        size_t* offset,
                                                                                        roswasmc_bounded_1_mycobot_communication_SetCoordsRequest* value)
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
        uwvm_bounded_copy(&value->rx, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->ry, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->rz, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->speed, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->model, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_1_mycobot_communication_SetCoordsRequest_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode the complete mycobot_communication/SetCoordsRequest record transactionally.
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
static inline uint32_t roswasmc_bounded_1_mycobot_communication_SetCoordsRequest_encode(roswasmc_bounded_1_mycobot_communication_SetCoordsRequest const* value,
                                                                                        void* output,
                                                                                        size_t capacity,
                                                                                        size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_mycobot_communication_SetCoordsRequest_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_mycobot_communication_SetCoordsRequest_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_mycobot_communication_SetCoordsRequest_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete mycobot_communication/SetCoordsRequest record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] input Immutable complete canonical body, disjoint from value.
 * @param[in] length Exact input byte count; trailing bytes are refused.
 * @param[out] value Caller-owned complete record; unchanged on every refusal.
 * @return Status 0 on complete success, otherwise 22; no partial record is exposed.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline uint32_t roswasmc_bounded_1_mycobot_communication_SetCoordsRequest_decode(void const* input,
                                                                                        size_t length,
                                                                                        roswasmc_bounded_1_mycobot_communication_SetCoordsRequest* value)
{
    roswasmc_bounded_1_mycobot_communication_SetCoordsRequest next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mycobot_communication_SetCoordsRequest);
    size_t offset = 0;
    if(!value || (length && !input) || length < 26u || length > 26u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_mycobot_communication_SetCoordsRequest_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETCOORDSRESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETCOORDSRESPONSE_0 != 0x2e1dd4dbUL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETCOORDSRESPONSE_1 != 0x58f521c5UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETCOORDSRESPONSE_2 != 0xcac362a0UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETCOORDSRESPONSE_3 != 0xc5b0eea8UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETCOORDSRESPONSE_4 != 0x8fa48db8UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETCOORDSRESPONSE_5 != 0x77991699UL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETCOORDSRESPONSE_6 != 0xaea08e1cUL ||                                                   \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETCOORDSRESPONSE_7 != 0x212b57b7UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETCOORDSRESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETCOORDSRESPONSE_0 0x2e1dd4dbUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETCOORDSRESPONSE_1 0x58f521c5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETCOORDSRESPONSE_2 0xcac362a0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETCOORDSRESPONSE_3 0xc5b0eea8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETCOORDSRESPONSE_4 0x8fa48db8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETCOORDSRESPONSE_5 0x77991699UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETCOORDSRESPONSE_6 0xaea08e1cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETCOORDSRESPONSE_7 0x212b57b7UL

/** @brief Complete ROS1 mycobot_communication/SetCoordsResponse value; no field projects away native data. */
/**
 * @brief Complete ROS 1 mycobot_communication/SetCoordsResponse value.
 * @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1 bytes
 * and is identified by UWVMROS1_1a936a95cb1bfd0a9158342618c40c587af58388abf3b679eb4bad2518aec6af.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_1_mycobot_communication_SetCoordsResponse
{
    /** @brief Declared field Flag; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mycobot_communication/SetCoordsResponse.Flag: bool.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mycobot_communicationSetCoordsResponse; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t Flag;
} roswasmc_bounded_1_mycobot_communication_SetCoordsResponse;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETCOORDSRESPONSE_MAX_WIRE_BYTES 1u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETCOORDSRESPONSE_MIN_WIRE_BYTES 1u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETCOORDSRESPONSE_CODEC_IDENTITY "UWVMROS1_1a936a95cb1bfd0a9158342618c40c587af58388abf3b679eb4bad2518aec6af"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate every field of mycobot_communication/SetCoordsResponse.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline int roswasmc_bounded_1_mycobot_communication_SetCoordsResponse_valid(roswasmc_bounded_1_mycobot_communication_SetCoordsResponse const* value)
{
    if(!value)
        return 0;
    if(value->Flag > 1)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the complete active canonical extent of mycobot_communication/SetCoordsResponse.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline size_t
    roswasmc_bounded_1_mycobot_communication_SetCoordsResponse_wire_size(roswasmc_bounded_1_mycobot_communication_SetCoordsResponse const* value)
{
    size_t n = 0;
    (void)value;
    n += 1;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Append all fields of mycobot_communication/SetCoordsResponse to an internal canonical buffer.
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
    roswasmc_bounded_1_mycobot_communication_SetCoordsResponse_write_fields(roswasmc_bounded_1_mycobot_communication_SetCoordsResponse const* value,
                                                                            unsigned char* p,
                                                                            size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->Flag, 1);
    *offset += 1;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Decode the full ordered field prefix of mycobot_communication/SetCoordsResponse.
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
static inline int roswasmc_bounded_1_mycobot_communication_SetCoordsResponse_read_fields(unsigned char const* p,
                                                                                         size_t n,
                                                                                         size_t* offset,
                                                                                         roswasmc_bounded_1_mycobot_communication_SetCoordsResponse* value)
{
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->Flag, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_1_mycobot_communication_SetCoordsResponse_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode the complete mycobot_communication/SetCoordsResponse record transactionally.
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
    roswasmc_bounded_1_mycobot_communication_SetCoordsResponse_encode(roswasmc_bounded_1_mycobot_communication_SetCoordsResponse const* value,
                                                                      void* output,
                                                                      size_t capacity,
                                                                      size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_mycobot_communication_SetCoordsResponse_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_mycobot_communication_SetCoordsResponse_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_mycobot_communication_SetCoordsResponse_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete mycobot_communication/SetCoordsResponse record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] input Immutable complete canonical body, disjoint from value.
 * @param[in] length Exact input byte count; trailing bytes are refused.
 * @param[out] value Caller-owned complete record; unchanged on every refusal.
 * @return Status 0 on complete success, otherwise 22; no partial record is exposed.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline uint32_t roswasmc_bounded_1_mycobot_communication_SetCoordsResponse_decode(void const* input,
                                                                                         size_t length,
                                                                                         roswasmc_bounded_1_mycobot_communication_SetCoordsResponse* value)
{
    roswasmc_bounded_1_mycobot_communication_SetCoordsResponse next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mycobot_communication_SetCoordsResponse);
    size_t offset = 0;
    if(!value || (length && !input) || length < 1u || length > 1u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_mycobot_communication_SetCoordsResponse_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALANGLES)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALANGLES_0 != 0x1763dd87UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALANGLES_1 != 0x26469e6dUL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALANGLES_2 != 0xd332b10aUL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALANGLES_3 != 0x98adf312UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALANGLES_4 != 0xf9f7ca5aUL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALANGLES_5 != 0xa0abd68aUL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALANGLES_6 != 0x6b9ac20fUL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALANGLES_7 != 0xd5f09c12UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALANGLES 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALANGLES_0 0x1763dd87UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALANGLES_1 0x26469e6dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALANGLES_2 0xd332b10aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALANGLES_3 0x98adf312UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALANGLES_4 0xf9f7ca5aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALANGLES_5 0xa0abd68aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALANGLES_6 0x6b9ac20fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALANGLES_7 0xd5f09c12UL

/** @brief Complete ROS1 mypalletizer_communication/MypalAngles value; no field projects away native data. */
/**
 * @brief Complete ROS 1 mypalletizer_communication/MypalAngles value.
 * @details All 4 declared fields are retained in source order. The canonical representation occupies 16..16
 * bytes and is identified by UWVMROS1_1d45a33e05e948c1b58988c84afe359138c896119f82da0d737377f0272892d9.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_1_mypalletizer_communication_MypalAngles
{
    /** @brief Declared field joint_1; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mypalletizer_communication/MypalAngles.joint_1: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mypalletizer_communicationMypalAngles; share/platform/ros/rs/API-CONTRACT.md
     */
    float joint_1;
    /** @brief Declared field joint_2; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mypalletizer_communication/MypalAngles.joint_2: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mypalletizer_communicationMypalAngles; share/platform/ros/rs/API-CONTRACT.md
     */
    float joint_2;
    /** @brief Declared field joint_3; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mypalletizer_communication/MypalAngles.joint_3: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mypalletizer_communicationMypalAngles; share/platform/ros/rs/API-CONTRACT.md
     */
    float joint_3;
    /** @brief Declared field joint_4; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mypalletizer_communication/MypalAngles.joint_4: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mypalletizer_communicationMypalAngles; share/platform/ros/rs/API-CONTRACT.md
     */
    float joint_4;
} roswasmc_bounded_1_mypalletizer_communication_MypalAngles;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALANGLES_MAX_WIRE_BYTES 16u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALANGLES_MIN_WIRE_BYTES 16u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALANGLES_CODEC_IDENTITY "UWVMROS1_1d45a33e05e948c1b58988c84afe359138c896119f82da0d737377f0272892d9"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate every field of mypalletizer_communication/MypalAngles.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline int roswasmc_bounded_1_mypalletizer_communication_MypalAngles_valid(roswasmc_bounded_1_mypalletizer_communication_MypalAngles const* value)
{
    if(!value)
        return 0;
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->joint_1, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->joint_2, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->joint_3, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->joint_4, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the complete active canonical extent of mypalletizer_communication/MypalAngles.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline size_t roswasmc_bounded_1_mypalletizer_communication_MypalAngles_wire_size(roswasmc_bounded_1_mypalletizer_communication_MypalAngles const* value)
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
 * @brief Append all fields of mypalletizer_communication/MypalAngles to an internal canonical buffer.
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
    roswasmc_bounded_1_mypalletizer_communication_MypalAngles_write_fields(roswasmc_bounded_1_mypalletizer_communication_MypalAngles const* value,
                                                                           unsigned char* p,
                                                                           size_t* offset)
{
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->joint_1, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->joint_2, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->joint_3, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->joint_4, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Decode the full ordered field prefix of mypalletizer_communication/MypalAngles.
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
static inline int roswasmc_bounded_1_mypalletizer_communication_MypalAngles_read_fields(unsigned char const* p,
                                                                                        size_t n,
                                                                                        size_t* offset,
                                                                                        roswasmc_bounded_1_mypalletizer_communication_MypalAngles* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->joint_1, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->joint_2, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->joint_3, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->joint_4, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_1_mypalletizer_communication_MypalAngles_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode the complete mypalletizer_communication/MypalAngles record transactionally.
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
static inline uint32_t roswasmc_bounded_1_mypalletizer_communication_MypalAngles_encode(roswasmc_bounded_1_mypalletizer_communication_MypalAngles const* value,
                                                                                        void* output,
                                                                                        size_t capacity,
                                                                                        size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_mypalletizer_communication_MypalAngles_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_mypalletizer_communication_MypalAngles_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_mypalletizer_communication_MypalAngles_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete mypalletizer_communication/MypalAngles record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] input Immutable complete canonical body, disjoint from value.
 * @param[in] length Exact input byte count; trailing bytes are refused.
 * @param[out] value Caller-owned complete record; unchanged on every refusal.
 * @return Status 0 on complete success, otherwise 22; no partial record is exposed.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline uint32_t roswasmc_bounded_1_mypalletizer_communication_MypalAngles_decode(void const* input,
                                                                                        size_t length,
                                                                                        roswasmc_bounded_1_mypalletizer_communication_MypalAngles* value)
{
    roswasmc_bounded_1_mypalletizer_communication_MypalAngles next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mypalletizer_communication_MypalAngles);
    size_t offset = 0;
    if(!value || (length && !input) || length < 16u || length > 16u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_mypalletizer_communication_MypalAngles_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALCOORDS)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALCOORDS_0 != 0x550a65dfUL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALCOORDS_1 != 0xf35bab31UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALCOORDS_2 != 0x4af8f91eUL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALCOORDS_3 != 0xca6d4919UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALCOORDS_4 != 0x6f890254UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALCOORDS_5 != 0x08e5977eUL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALCOORDS_6 != 0xd334a213UL ||                                                    \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALCOORDS_7 != 0xce393483UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALCOORDS 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALCOORDS_0 0x550a65dfUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALCOORDS_1 0xf35bab31UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALCOORDS_2 0x4af8f91eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALCOORDS_3 0xca6d4919UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALCOORDS_4 0x6f890254UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALCOORDS_5 0x08e5977eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALCOORDS_6 0xd334a213UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALCOORDS_7 0xce393483UL

/** @brief Complete ROS1 mypalletizer_communication/MypalCoords value; no field projects away native data. */
/**
 * @brief Complete ROS 1 mypalletizer_communication/MypalCoords value.
 * @details All 4 declared fields are retained in source order. The canonical representation occupies 16..16
 * bytes and is identified by UWVMROS1_c542d1a1a71224901044bc38ca2934021d811417c7c6937ca194995f67e59b80.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_1_mypalletizer_communication_MypalCoords
{
    /** @brief Declared field x; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mypalletizer_communication/MypalCoords.x: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mypalletizer_communicationMypalCoords; share/platform/ros/rs/API-CONTRACT.md
     */
    float x;
    /** @brief Declared field y; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mypalletizer_communication/MypalCoords.y: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mypalletizer_communicationMypalCoords; share/platform/ros/rs/API-CONTRACT.md
     */
    float y;
    /** @brief Declared field z; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mypalletizer_communication/MypalCoords.z: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mypalletizer_communicationMypalCoords; share/platform/ros/rs/API-CONTRACT.md
     */
    float z;
    /** @brief Declared field rx; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mypalletizer_communication/MypalCoords.rx: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mypalletizer_communicationMypalCoords; share/platform/ros/rs/API-CONTRACT.md
     */
    float rx;
} roswasmc_bounded_1_mypalletizer_communication_MypalCoords;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALCOORDS_MAX_WIRE_BYTES 16u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALCOORDS_MIN_WIRE_BYTES 16u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALCOORDS_CODEC_IDENTITY "UWVMROS1_c542d1a1a71224901044bc38ca2934021d811417c7c6937ca194995f67e59b80"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate every field of mypalletizer_communication/MypalCoords.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline int roswasmc_bounded_1_mypalletizer_communication_MypalCoords_valid(roswasmc_bounded_1_mypalletizer_communication_MypalCoords const* value)
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
        uwvm_bounded_copy(&bits, &value->rx, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the complete active canonical extent of mypalletizer_communication/MypalCoords.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline size_t roswasmc_bounded_1_mypalletizer_communication_MypalCoords_wire_size(roswasmc_bounded_1_mypalletizer_communication_MypalCoords const* value)
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
 * @brief Append all fields of mypalletizer_communication/MypalCoords to an internal canonical buffer.
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
    roswasmc_bounded_1_mypalletizer_communication_MypalCoords_write_fields(roswasmc_bounded_1_mypalletizer_communication_MypalCoords const* value,
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
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->rx, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Decode the full ordered field prefix of mypalletizer_communication/MypalCoords.
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
static inline int roswasmc_bounded_1_mypalletizer_communication_MypalCoords_read_fields(unsigned char const* p,
                                                                                        size_t n,
                                                                                        size_t* offset,
                                                                                        roswasmc_bounded_1_mypalletizer_communication_MypalCoords* value)
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
        uwvm_bounded_copy(&value->rx, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_1_mypalletizer_communication_MypalCoords_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode the complete mypalletizer_communication/MypalCoords record transactionally.
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
static inline uint32_t roswasmc_bounded_1_mypalletizer_communication_MypalCoords_encode(roswasmc_bounded_1_mypalletizer_communication_MypalCoords const* value,
                                                                                        void* output,
                                                                                        size_t capacity,
                                                                                        size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_mypalletizer_communication_MypalCoords_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_mypalletizer_communication_MypalCoords_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_mypalletizer_communication_MypalCoords_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete mypalletizer_communication/MypalCoords record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] input Immutable complete canonical body, disjoint from value.
 * @param[in] length Exact input byte count; trailing bytes are refused.
 * @param[out] value Caller-owned complete record; unchanged on every refusal.
 * @return Status 0 on complete success, otherwise 22; no partial record is exposed.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline uint32_t roswasmc_bounded_1_mypalletizer_communication_MypalCoords_decode(void const* input,
                                                                                        size_t length,
                                                                                        roswasmc_bounded_1_mypalletizer_communication_MypalCoords* value)
{
    roswasmc_bounded_1_mypalletizer_communication_MypalCoords next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mypalletizer_communication_MypalCoords);
    size_t offset = 0;
    if(!value || (length && !input) || length < 16u || length > 16u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_mypalletizer_communication_MypalCoords_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALGRIPPERSTATUS)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALGRIPPERSTATUS_0 != 0x1fbc9682UL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALGRIPPERSTATUS_1 != 0xe5be67a7UL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALGRIPPERSTATUS_2 != 0x513a81efUL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALGRIPPERSTATUS_3 != 0x0df98fcaUL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALGRIPPERSTATUS_4 != 0xbb985598UL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALGRIPPERSTATUS_5 != 0xd093cf95UL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALGRIPPERSTATUS_6 != 0xd8dda226UL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALGRIPPERSTATUS_7 != 0x67b8b003UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALGRIPPERSTATUS 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALGRIPPERSTATUS_0 0x1fbc9682UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALGRIPPERSTATUS_1 0xe5be67a7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALGRIPPERSTATUS_2 0x513a81efUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALGRIPPERSTATUS_3 0x0df98fcaUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALGRIPPERSTATUS_4 0xbb985598UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALGRIPPERSTATUS_5 0xd093cf95UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALGRIPPERSTATUS_6 0xd8dda226UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALGRIPPERSTATUS_7 0x67b8b003UL

/** @brief Complete ROS1 mypalletizer_communication/MypalGripperStatus value; no field projects away native data. */
/**
 * @brief Complete ROS 1 mypalletizer_communication/MypalGripperStatus value.
 * @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1 bytes
 * and is identified by UWVMROS1_e37f608d4499ab2ed49618fc244831d274fadb23bd408d42619e3f8409ad2ee6.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_1_mypalletizer_communication_MypalGripperStatus
{
    /** @brief Declared field Status; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mypalletizer_communication/MypalGripperStatus.Status: bool.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mypalletizer_communicationMypalGripperStatus; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t Status;
} roswasmc_bounded_1_mypalletizer_communication_MypalGripperStatus;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALGRIPPERSTATUS_MAX_WIRE_BYTES 1u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALGRIPPERSTATUS_MIN_WIRE_BYTES 1u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALGRIPPERSTATUS_CODEC_IDENTITY                                                                       \
     "UWVMROS1_e37f608d4499ab2ed49618fc244831d274fadb23bd408d42619e3f8409ad2ee6"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate every field of mypalletizer_communication/MypalGripperStatus.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline int
    roswasmc_bounded_1_mypalletizer_communication_MypalGripperStatus_valid(roswasmc_bounded_1_mypalletizer_communication_MypalGripperStatus const* value)
{
    if(!value)
        return 0;
    if(value->Status > 1)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the complete active canonical extent of mypalletizer_communication/MypalGripperStatus.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline size_t
    roswasmc_bounded_1_mypalletizer_communication_MypalGripperStatus_wire_size(roswasmc_bounded_1_mypalletizer_communication_MypalGripperStatus const* value)
{
    size_t n = 0;
    (void)value;
    n += 1;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Append all fields of mypalletizer_communication/MypalGripperStatus to an internal canonical buffer.
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
    roswasmc_bounded_1_mypalletizer_communication_MypalGripperStatus_write_fields(roswasmc_bounded_1_mypalletizer_communication_MypalGripperStatus const* value,
                                                                                  unsigned char* p,
                                                                                  size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->Status, 1);
    *offset += 1;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Decode the full ordered field prefix of mypalletizer_communication/MypalGripperStatus.
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
    roswasmc_bounded_1_mypalletizer_communication_MypalGripperStatus_read_fields(unsigned char const* p,
                                                                                 size_t n,
                                                                                 size_t* offset,
                                                                                 roswasmc_bounded_1_mypalletizer_communication_MypalGripperStatus* value)
{
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->Status, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_1_mypalletizer_communication_MypalGripperStatus_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode the complete mypalletizer_communication/MypalGripperStatus record transactionally.
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
    roswasmc_bounded_1_mypalletizer_communication_MypalGripperStatus_encode(roswasmc_bounded_1_mypalletizer_communication_MypalGripperStatus const* value,
                                                                            void* output,
                                                                            size_t capacity,
                                                                            size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_mypalletizer_communication_MypalGripperStatus_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_mypalletizer_communication_MypalGripperStatus_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_mypalletizer_communication_MypalGripperStatus_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete mypalletizer_communication/MypalGripperStatus record transactionally.
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
    roswasmc_bounded_1_mypalletizer_communication_MypalGripperStatus_decode(void const* input,
                                                                            size_t length,
                                                                            roswasmc_bounded_1_mypalletizer_communication_MypalGripperStatus* value)
{
    roswasmc_bounded_1_mypalletizer_communication_MypalGripperStatus next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mypalletizer_communication_MypalGripperStatus);
    size_t offset = 0;
    if(!value || (length && !input) || length < 1u || length > 1u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_mypalletizer_communication_MypalGripperStatus_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALPUMPSTATUS)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALPUMPSTATUS_0 != 0x91fca384UL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALPUMPSTATUS_1 != 0xebc03df3UL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALPUMPSTATUS_2 != 0xee5be740UL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALPUMPSTATUS_3 != 0x1280c9d9UL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALPUMPSTATUS_4 != 0xe9a80a02UL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALPUMPSTATUS_5 != 0xb2e5f9c4UL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALPUMPSTATUS_6 != 0x73f64588UL ||                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALPUMPSTATUS_7 != 0x1823ec34UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALPUMPSTATUS 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALPUMPSTATUS_0 0x91fca384UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALPUMPSTATUS_1 0xebc03df3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALPUMPSTATUS_2 0xee5be740UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALPUMPSTATUS_3 0x1280c9d9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALPUMPSTATUS_4 0xe9a80a02UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALPUMPSTATUS_5 0xb2e5f9c4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALPUMPSTATUS_6 0x73f64588UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALPUMPSTATUS_7 0x1823ec34UL

/** @brief Complete ROS1 mypalletizer_communication/MypalPumpStatus value; no field projects away native data. */
/**
 * @brief Complete ROS 1 mypalletizer_communication/MypalPumpStatus value.
 * @details All 3 declared fields are retained in source order. The canonical representation occupies 3..3 bytes
 * and is identified by UWVMROS1_cdf79e610b5d49b7f73857e02c64688a71517f2fe8e3a96739b16a53ad4d0ebc.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_1_mypalletizer_communication_MypalPumpStatus
{
    /** @brief Declared field Status; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mypalletizer_communication/MypalPumpStatus.Status: bool.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mypalletizer_communicationMypalPumpStatus; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t Status;
    /** @brief Declared field Pin1; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mypalletizer_communication/MypalPumpStatus.Pin1: int8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mypalletizer_communicationMypalPumpStatus; share/platform/ros/rs/API-CONTRACT.md
     */
    int8_t Pin1;
    /** @brief Declared field Pin2; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mypalletizer_communication/MypalPumpStatus.Pin2: int8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mypalletizer_communicationMypalPumpStatus; share/platform/ros/rs/API-CONTRACT.md
     */
    int8_t Pin2;
} roswasmc_bounded_1_mypalletizer_communication_MypalPumpStatus;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALPUMPSTATUS_MAX_WIRE_BYTES 3u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALPUMPSTATUS_MIN_WIRE_BYTES 3u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALPUMPSTATUS_CODEC_IDENTITY                                                                          \
     "UWVMROS1_cdf79e610b5d49b7f73857e02c64688a71517f2fe8e3a96739b16a53ad4d0ebc"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate every field of mypalletizer_communication/MypalPumpStatus.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline int
    roswasmc_bounded_1_mypalletizer_communication_MypalPumpStatus_valid(roswasmc_bounded_1_mypalletizer_communication_MypalPumpStatus const* value)
{
    if(!value)
        return 0;
    if(value->Status > 1)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the complete active canonical extent of mypalletizer_communication/MypalPumpStatus.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline size_t
    roswasmc_bounded_1_mypalletizer_communication_MypalPumpStatus_wire_size(roswasmc_bounded_1_mypalletizer_communication_MypalPumpStatus const* value)
{
    size_t n = 0;
    (void)value;
    n += 1;
    n += 1;
    n += 1;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Append all fields of mypalletizer_communication/MypalPumpStatus to an internal canonical buffer.
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
    roswasmc_bounded_1_mypalletizer_communication_MypalPumpStatus_write_fields(roswasmc_bounded_1_mypalletizer_communication_MypalPumpStatus const* value,
                                                                               unsigned char* p,
                                                                               size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->Status, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->Pin1, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->Pin2, 1);
    *offset += 1;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Decode the full ordered field prefix of mypalletizer_communication/MypalPumpStatus.
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
    roswasmc_bounded_1_mypalletizer_communication_MypalPumpStatus_read_fields(unsigned char const* p,
                                                                              size_t n,
                                                                              size_t* offset,
                                                                              roswasmc_bounded_1_mypalletizer_communication_MypalPumpStatus* value)
{
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->Status, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->Pin1, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->Pin2, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_1_mypalletizer_communication_MypalPumpStatus_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode the complete mypalletizer_communication/MypalPumpStatus record transactionally.
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
    roswasmc_bounded_1_mypalletizer_communication_MypalPumpStatus_encode(roswasmc_bounded_1_mypalletizer_communication_MypalPumpStatus const* value,
                                                                         void* output,
                                                                         size_t capacity,
                                                                         size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_mypalletizer_communication_MypalPumpStatus_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_mypalletizer_communication_MypalPumpStatus_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_mypalletizer_communication_MypalPumpStatus_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete mypalletizer_communication/MypalPumpStatus record transactionally.
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
    roswasmc_bounded_1_mypalletizer_communication_MypalPumpStatus_decode(void const* input,
                                                                         size_t length,
                                                                         roswasmc_bounded_1_mypalletizer_communication_MypalPumpStatus* value)
{
    roswasmc_bounded_1_mypalletizer_communication_MypalPumpStatus next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mypalletizer_communication_MypalPumpStatus);
    size_t offset = 0;
    if(!value || (length && !input) || length < 3u || length > 3u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_mypalletizer_communication_MypalPumpStatus_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALSETANGLES)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALSETANGLES_0 != 0xd8e1abffUL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALSETANGLES_1 != 0x374d03d4UL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALSETANGLES_2 != 0x21f39fd9UL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALSETANGLES_3 != 0x838081f4UL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALSETANGLES_4 != 0x4344c09aUL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALSETANGLES_5 != 0x3e1a06d4UL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALSETANGLES_6 != 0xde77cea2UL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALSETANGLES_7 != 0x57d93985UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALSETANGLES 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALSETANGLES_0 0xd8e1abffUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALSETANGLES_1 0x374d03d4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALSETANGLES_2 0x21f39fd9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALSETANGLES_3 0x838081f4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALSETANGLES_4 0x4344c09aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALSETANGLES_5 0x3e1a06d4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALSETANGLES_6 0xde77cea2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALSETANGLES_7 0x57d93985UL

/** @brief Complete ROS1 mypalletizer_communication/MypalSetAngles value; no field projects away native data. */
/**
 * @brief Complete ROS 1 mypalletizer_communication/MypalSetAngles value.
 * @details All 5 declared fields are retained in source order. The canonical representation occupies 17..17
 * bytes and is identified by UWVMROS1_8d11ba2c705bd577a329a01d039b831162742efe790c93b6c2c2631699d04f98.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_1_mypalletizer_communication_MypalSetAngles
{
    /** @brief Declared field joint_1; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mypalletizer_communication/MypalSetAngles.joint_1: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mypalletizer_communicationMypalSetAngles; share/platform/ros/rs/API-CONTRACT.md
     */
    float joint_1;
    /** @brief Declared field joint_2; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mypalletizer_communication/MypalSetAngles.joint_2: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mypalletizer_communicationMypalSetAngles; share/platform/ros/rs/API-CONTRACT.md
     */
    float joint_2;
    /** @brief Declared field joint_3; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mypalletizer_communication/MypalSetAngles.joint_3: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mypalletizer_communicationMypalSetAngles; share/platform/ros/rs/API-CONTRACT.md
     */
    float joint_3;
    /** @brief Declared field joint_4; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mypalletizer_communication/MypalSetAngles.joint_4: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mypalletizer_communicationMypalSetAngles; share/platform/ros/rs/API-CONTRACT.md
     */
    float joint_4;
    /** @brief Declared field speed; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mypalletizer_communication/MypalSetAngles.speed: int8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mypalletizer_communicationMypalSetAngles; share/platform/ros/rs/API-CONTRACT.md
     */
    int8_t speed;
} roswasmc_bounded_1_mypalletizer_communication_MypalSetAngles;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALSETANGLES_MAX_WIRE_BYTES 17u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALSETANGLES_MIN_WIRE_BYTES 17u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALSETANGLES_CODEC_IDENTITY "UWVMROS1_8d11ba2c705bd577a329a01d039b831162742efe790c93b6c2c2631699d04f98"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate every field of mypalletizer_communication/MypalSetAngles.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline int roswasmc_bounded_1_mypalletizer_communication_MypalSetAngles_valid(roswasmc_bounded_1_mypalletizer_communication_MypalSetAngles const* value)
{
    if(!value)
        return 0;
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->joint_1, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->joint_2, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->joint_3, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->joint_4, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the complete active canonical extent of mypalletizer_communication/MypalSetAngles.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline size_t
    roswasmc_bounded_1_mypalletizer_communication_MypalSetAngles_wire_size(roswasmc_bounded_1_mypalletizer_communication_MypalSetAngles const* value)
{
    size_t n = 0;
    (void)value;
    n += 4;
    n += 4;
    n += 4;
    n += 4;
    n += 1;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Append all fields of mypalletizer_communication/MypalSetAngles to an internal canonical buffer.
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
    roswasmc_bounded_1_mypalletizer_communication_MypalSetAngles_write_fields(roswasmc_bounded_1_mypalletizer_communication_MypalSetAngles const* value,
                                                                              unsigned char* p,
                                                                              size_t* offset)
{
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->joint_1, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->joint_2, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->joint_3, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->joint_4, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    uwvm_bounded_put(p + *offset, (uint64_t)value->speed, 1);
    *offset += 1;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Decode the full ordered field prefix of mypalletizer_communication/MypalSetAngles.
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
static inline int roswasmc_bounded_1_mypalletizer_communication_MypalSetAngles_read_fields(unsigned char const* p,
                                                                                           size_t n,
                                                                                           size_t* offset,
                                                                                           roswasmc_bounded_1_mypalletizer_communication_MypalSetAngles* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->joint_1, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->joint_2, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->joint_3, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->joint_4, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->speed, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_1_mypalletizer_communication_MypalSetAngles_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode the complete mypalletizer_communication/MypalSetAngles record transactionally.
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
    roswasmc_bounded_1_mypalletizer_communication_MypalSetAngles_encode(roswasmc_bounded_1_mypalletizer_communication_MypalSetAngles const* value,
                                                                        void* output,
                                                                        size_t capacity,
                                                                        size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_mypalletizer_communication_MypalSetAngles_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_mypalletizer_communication_MypalSetAngles_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_mypalletizer_communication_MypalSetAngles_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete mypalletizer_communication/MypalSetAngles record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] input Immutable complete canonical body, disjoint from value.
 * @param[in] length Exact input byte count; trailing bytes are refused.
 * @param[out] value Caller-owned complete record; unchanged on every refusal.
 * @return Status 0 on complete success, otherwise 22; no partial record is exposed.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline uint32_t roswasmc_bounded_1_mypalletizer_communication_MypalSetAngles_decode(void const* input,
                                                                                           size_t length,
                                                                                           roswasmc_bounded_1_mypalletizer_communication_MypalSetAngles* value)
{
    roswasmc_bounded_1_mypalletizer_communication_MypalSetAngles next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mypalletizer_communication_MypalSetAngles);
    size_t offset = 0;
    if(!value || (length && !input) || length < 17u || length > 17u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_mypalletizer_communication_MypalSetAngles_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALSETCOORDS)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALSETCOORDS_0 != 0x31eb23c8UL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALSETCOORDS_1 != 0xb3e590d6UL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALSETCOORDS_2 != 0x2f512e9aUL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALSETCOORDS_3 != 0xece367b6UL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALSETCOORDS_4 != 0xd8baf9d1UL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALSETCOORDS_5 != 0x17464a94UL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALSETCOORDS_6 != 0x515fac00UL ||                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALSETCOORDS_7 != 0xf3fcc08eUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALSETCOORDS 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALSETCOORDS_0 0x31eb23c8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALSETCOORDS_1 0xb3e590d6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALSETCOORDS_2 0x2f512e9aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALSETCOORDS_3 0xece367b6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALSETCOORDS_4 0xd8baf9d1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALSETCOORDS_5 0x17464a94UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALSETCOORDS_6 0x515fac00UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALSETCOORDS_7 0xf3fcc08eUL

/** @brief Complete ROS1 mypalletizer_communication/MypalSetCoords value; no field projects away native data. */
/**
 * @brief Complete ROS 1 mypalletizer_communication/MypalSetCoords value.
 * @details All 6 declared fields are retained in source order. The canonical representation occupies 18..18
 * bytes and is identified by UWVMROS1_51a2d485c8d2252f184eb27724e88c1ae06002d54454bd8ebf31962a79f7c448.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_1_mypalletizer_communication_MypalSetCoords
{
    /** @brief Declared field x; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mypalletizer_communication/MypalSetCoords.x: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mypalletizer_communicationMypalSetCoords; share/platform/ros/rs/API-CONTRACT.md
     */
    float x;
    /** @brief Declared field y; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mypalletizer_communication/MypalSetCoords.y: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mypalletizer_communicationMypalSetCoords; share/platform/ros/rs/API-CONTRACT.md
     */
    float y;
    /** @brief Declared field z; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mypalletizer_communication/MypalSetCoords.z: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mypalletizer_communicationMypalSetCoords; share/platform/ros/rs/API-CONTRACT.md
     */
    float z;
    /** @brief Declared field rx; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mypalletizer_communication/MypalSetCoords.rx: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mypalletizer_communicationMypalSetCoords; share/platform/ros/rs/API-CONTRACT.md
     */
    float rx;
    /** @brief Declared field speed; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mypalletizer_communication/MypalSetCoords.speed: int8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mypalletizer_communicationMypalSetCoords; share/platform/ros/rs/API-CONTRACT.md
     */
    int8_t speed;
    /** @brief Declared field model; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mypalletizer_communication/MypalSetCoords.model: int8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mypalletizer_communicationMypalSetCoords; share/platform/ros/rs/API-CONTRACT.md
     */
    int8_t model;
} roswasmc_bounded_1_mypalletizer_communication_MypalSetCoords;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALSETCOORDS_MAX_WIRE_BYTES 18u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALSETCOORDS_MIN_WIRE_BYTES 18u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALSETCOORDS_CODEC_IDENTITY "UWVMROS1_51a2d485c8d2252f184eb27724e88c1ae06002d54454bd8ebf31962a79f7c448"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate every field of mypalletizer_communication/MypalSetCoords.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline int roswasmc_bounded_1_mypalletizer_communication_MypalSetCoords_valid(roswasmc_bounded_1_mypalletizer_communication_MypalSetCoords const* value)
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
        uwvm_bounded_copy(&bits, &value->rx, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the complete active canonical extent of mypalletizer_communication/MypalSetCoords.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline size_t
    roswasmc_bounded_1_mypalletizer_communication_MypalSetCoords_wire_size(roswasmc_bounded_1_mypalletizer_communication_MypalSetCoords const* value)
{
    size_t n = 0;
    (void)value;
    n += 4;
    n += 4;
    n += 4;
    n += 4;
    n += 1;
    n += 1;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Append all fields of mypalletizer_communication/MypalSetCoords to an internal canonical buffer.
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
    roswasmc_bounded_1_mypalletizer_communication_MypalSetCoords_write_fields(roswasmc_bounded_1_mypalletizer_communication_MypalSetCoords const* value,
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
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->rx, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    uwvm_bounded_put(p + *offset, (uint64_t)value->speed, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->model, 1);
    *offset += 1;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Decode the full ordered field prefix of mypalletizer_communication/MypalSetCoords.
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
static inline int roswasmc_bounded_1_mypalletizer_communication_MypalSetCoords_read_fields(unsigned char const* p,
                                                                                           size_t n,
                                                                                           size_t* offset,
                                                                                           roswasmc_bounded_1_mypalletizer_communication_MypalSetCoords* value)
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
        uwvm_bounded_copy(&value->rx, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->speed, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->model, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_1_mypalletizer_communication_MypalSetCoords_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode the complete mypalletizer_communication/MypalSetCoords record transactionally.
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
    roswasmc_bounded_1_mypalletizer_communication_MypalSetCoords_encode(roswasmc_bounded_1_mypalletizer_communication_MypalSetCoords const* value,
                                                                        void* output,
                                                                        size_t capacity,
                                                                        size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_mypalletizer_communication_MypalSetCoords_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_mypalletizer_communication_MypalSetCoords_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_mypalletizer_communication_MypalSetCoords_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete mypalletizer_communication/MypalSetCoords record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] input Immutable complete canonical body, disjoint from value.
 * @param[in] length Exact input byte count; trailing bytes are refused.
 * @param[out] value Caller-owned complete record; unchanged on every refusal.
 * @return Status 0 on complete success, otherwise 22; no partial record is exposed.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline uint32_t roswasmc_bounded_1_mypalletizer_communication_MypalSetCoords_decode(void const* input,
                                                                                           size_t length,
                                                                                           roswasmc_bounded_1_mypalletizer_communication_MypalSetCoords* value)
{
    roswasmc_bounded_1_mypalletizer_communication_MypalSetCoords next = UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mypalletizer_communication_MypalSetCoords);
    size_t offset = 0;
    if(!value || (length && !input) || length < 18u || length > 18u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_mypalletizer_communication_MypalSetCoords_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETANGLESREQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETANGLESREQUEST_0 != 0x15a7fabfUL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETANGLESREQUEST_1 != 0xf1aaabd4UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETANGLESREQUEST_2 != 0x8b4f6651UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETANGLESREQUEST_3 != 0x617bec21UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETANGLESREQUEST_4 != 0x3b496444UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETANGLESREQUEST_5 != 0x963cc291UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETANGLESREQUEST_6 != 0x284210d2UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETANGLESREQUEST_7 != 0xc49773cbUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETANGLESREQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETANGLESREQUEST_0 0x15a7fabfUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETANGLESREQUEST_1 0xf1aaabd4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETANGLESREQUEST_2 0x8b4f6651UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETANGLESREQUEST_3 0x617bec21UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETANGLESREQUEST_4 0x3b496444UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETANGLESREQUEST_5 0x963cc291UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETANGLESREQUEST_6 0x284210d2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETANGLESREQUEST_7 0xc49773cbUL

/** @brief Complete ROS1 mypalletizer_communication/GetAnglesRequest value; no field projects away native data. */
/**
 * @brief Complete ROS 1 mypalletizer_communication/GetAnglesRequest value.
 * @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes
 * and is identified by UWVMROS1_d0412d8ccc8f724f2a0660d20e24a39f6445f0cb433e775058b6b092fde65de8.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_1_mypalletizer_communication_GetAnglesRequest
{
    /** @brief Local C layout placeholder; empty native component has exactly zero canonical bytes. */
    unsigned char local_empty_placeholder;
} roswasmc_bounded_1_mypalletizer_communication_GetAnglesRequest;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETANGLESREQUEST_MAX_WIRE_BYTES 0u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETANGLESREQUEST_MIN_WIRE_BYTES 0u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETANGLESREQUEST_CODEC_IDENTITY                                                                         \
     "UWVMROS1_d0412d8ccc8f724f2a0660d20e24a39f6445f0cb433e775058b6b092fde65de8"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate every field of mypalletizer_communication/GetAnglesRequest.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline int
    roswasmc_bounded_1_mypalletizer_communication_GetAnglesRequest_valid(roswasmc_bounded_1_mypalletizer_communication_GetAnglesRequest const* value)
{
    if(!value)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the complete active canonical extent of mypalletizer_communication/GetAnglesRequest.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline size_t
    roswasmc_bounded_1_mypalletizer_communication_GetAnglesRequest_wire_size(roswasmc_bounded_1_mypalletizer_communication_GetAnglesRequest const* value)
{
    size_t n = 0;
    (void)value;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Append all fields of mypalletizer_communication/GetAnglesRequest to an internal canonical buffer.
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
    roswasmc_bounded_1_mypalletizer_communication_GetAnglesRequest_write_fields(roswasmc_bounded_1_mypalletizer_communication_GetAnglesRequest const* value,
                                                                                unsigned char* p,
                                                                                size_t* offset)
{
    (void)value;
    (void)p;
    (void)offset;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Decode the full ordered field prefix of mypalletizer_communication/GetAnglesRequest.
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
    roswasmc_bounded_1_mypalletizer_communication_GetAnglesRequest_read_fields(unsigned char const* p,
                                                                               size_t n,
                                                                               size_t* offset,
                                                                               roswasmc_bounded_1_mypalletizer_communication_GetAnglesRequest* value)
{
    (void)p;
    (void)n;
    (void)offset;
    return roswasmc_bounded_1_mypalletizer_communication_GetAnglesRequest_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode the complete mypalletizer_communication/GetAnglesRequest record transactionally.
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
    roswasmc_bounded_1_mypalletizer_communication_GetAnglesRequest_encode(roswasmc_bounded_1_mypalletizer_communication_GetAnglesRequest const* value,
                                                                          void* output,
                                                                          size_t capacity,
                                                                          size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_mypalletizer_communication_GetAnglesRequest_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_mypalletizer_communication_GetAnglesRequest_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_mypalletizer_communication_GetAnglesRequest_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete mypalletizer_communication/GetAnglesRequest record transactionally.
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
    roswasmc_bounded_1_mypalletizer_communication_GetAnglesRequest_decode(void const* input,
                                                                          size_t length,
                                                                          roswasmc_bounded_1_mypalletizer_communication_GetAnglesRequest* value)
{
    roswasmc_bounded_1_mypalletizer_communication_GetAnglesRequest next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mypalletizer_communication_GetAnglesRequest);
    size_t offset = 0;
    if(!value || (length && !input) || length < 0u || length > 0u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_mypalletizer_communication_GetAnglesRequest_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETANGLESRESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETANGLESRESPONSE_0 != 0x35955b02UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETANGLESRESPONSE_1 != 0xda2bdd9eUL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETANGLESRESPONSE_2 != 0xa41b65dcUL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETANGLESRESPONSE_3 != 0xeef661b4UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETANGLESRESPONSE_4 != 0x201df7e5UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETANGLESRESPONSE_5 != 0xa6d08f72UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETANGLESRESPONSE_6 != 0x6bef2665UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETANGLESRESPONSE_7 != 0xa7a6a52aUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETANGLESRESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETANGLESRESPONSE_0 0x35955b02UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETANGLESRESPONSE_1 0xda2bdd9eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETANGLESRESPONSE_2 0xa41b65dcUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETANGLESRESPONSE_3 0xeef661b4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETANGLESRESPONSE_4 0x201df7e5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETANGLESRESPONSE_5 0xa6d08f72UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETANGLESRESPONSE_6 0x6bef2665UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETANGLESRESPONSE_7 0xa7a6a52aUL

/** @brief Complete ROS1 mypalletizer_communication/GetAnglesResponse value; no field projects away native data. */
/**
 * @brief Complete ROS 1 mypalletizer_communication/GetAnglesResponse value.
 * @details All 4 declared fields are retained in source order. The canonical representation occupies 16..16
 * bytes and is identified by UWVMROS1_cb5a18aec2420c030d8193eb40d25691a2491b98606a7722156984e82f77f745.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_1_mypalletizer_communication_GetAnglesResponse
{
    /** @brief Declared field joint_1; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mypalletizer_communication/GetAnglesResponse.joint_1: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mypalletizer_communicationGetAnglesResponse; share/platform/ros/rs/API-CONTRACT.md
     */
    float joint_1;
    /** @brief Declared field joint_2; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mypalletizer_communication/GetAnglesResponse.joint_2: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mypalletizer_communicationGetAnglesResponse; share/platform/ros/rs/API-CONTRACT.md
     */
    float joint_2;
    /** @brief Declared field joint_3; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mypalletizer_communication/GetAnglesResponse.joint_3: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mypalletizer_communicationGetAnglesResponse; share/platform/ros/rs/API-CONTRACT.md
     */
    float joint_3;
    /** @brief Declared field joint_4; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mypalletizer_communication/GetAnglesResponse.joint_4: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mypalletizer_communicationGetAnglesResponse; share/platform/ros/rs/API-CONTRACT.md
     */
    float joint_4;
} roswasmc_bounded_1_mypalletizer_communication_GetAnglesResponse;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETANGLESRESPONSE_MAX_WIRE_BYTES 16u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETANGLESRESPONSE_MIN_WIRE_BYTES 16u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETANGLESRESPONSE_CODEC_IDENTITY                                                                        \
     "UWVMROS1_cb5a18aec2420c030d8193eb40d25691a2491b98606a7722156984e82f77f745"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate every field of mypalletizer_communication/GetAnglesResponse.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline int
    roswasmc_bounded_1_mypalletizer_communication_GetAnglesResponse_valid(roswasmc_bounded_1_mypalletizer_communication_GetAnglesResponse const* value)
{
    if(!value)
        return 0;
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->joint_1, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->joint_2, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->joint_3, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->joint_4, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the complete active canonical extent of mypalletizer_communication/GetAnglesResponse.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline size_t
    roswasmc_bounded_1_mypalletizer_communication_GetAnglesResponse_wire_size(roswasmc_bounded_1_mypalletizer_communication_GetAnglesResponse const* value)
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
 * @brief Append all fields of mypalletizer_communication/GetAnglesResponse to an internal canonical buffer.
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
    roswasmc_bounded_1_mypalletizer_communication_GetAnglesResponse_write_fields(roswasmc_bounded_1_mypalletizer_communication_GetAnglesResponse const* value,
                                                                                 unsigned char* p,
                                                                                 size_t* offset)
{
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->joint_1, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->joint_2, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->joint_3, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->joint_4, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Decode the full ordered field prefix of mypalletizer_communication/GetAnglesResponse.
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
    roswasmc_bounded_1_mypalletizer_communication_GetAnglesResponse_read_fields(unsigned char const* p,
                                                                                size_t n,
                                                                                size_t* offset,
                                                                                roswasmc_bounded_1_mypalletizer_communication_GetAnglesResponse* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->joint_1, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->joint_2, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->joint_3, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->joint_4, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_1_mypalletizer_communication_GetAnglesResponse_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode the complete mypalletizer_communication/GetAnglesResponse record transactionally.
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
    roswasmc_bounded_1_mypalletizer_communication_GetAnglesResponse_encode(roswasmc_bounded_1_mypalletizer_communication_GetAnglesResponse const* value,
                                                                           void* output,
                                                                           size_t capacity,
                                                                           size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_mypalletizer_communication_GetAnglesResponse_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_mypalletizer_communication_GetAnglesResponse_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_mypalletizer_communication_GetAnglesResponse_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete mypalletizer_communication/GetAnglesResponse record transactionally.
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
    roswasmc_bounded_1_mypalletizer_communication_GetAnglesResponse_decode(void const* input,
                                                                           size_t length,
                                                                           roswasmc_bounded_1_mypalletizer_communication_GetAnglesResponse* value)
{
    roswasmc_bounded_1_mypalletizer_communication_GetAnglesResponse next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mypalletizer_communication_GetAnglesResponse);
    size_t offset = 0;
    if(!value || (length && !input) || length < 16u || length > 16u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_mypalletizer_communication_GetAnglesResponse_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETCOORDSREQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETCOORDSREQUEST_0 != 0x22e3f5aaUL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETCOORDSREQUEST_1 != 0x48134657UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETCOORDSREQUEST_2 != 0x2387183aUL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETCOORDSREQUEST_3 != 0xd7261b69UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETCOORDSREQUEST_4 != 0x61f0aad8UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETCOORDSREQUEST_5 != 0xc61a4461UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETCOORDSREQUEST_6 != 0x0d125da4UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETCOORDSREQUEST_7 != 0xd5578dbaUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETCOORDSREQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETCOORDSREQUEST_0 0x22e3f5aaUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETCOORDSREQUEST_1 0x48134657UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETCOORDSREQUEST_2 0x2387183aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETCOORDSREQUEST_3 0xd7261b69UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETCOORDSREQUEST_4 0x61f0aad8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETCOORDSREQUEST_5 0xc61a4461UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETCOORDSREQUEST_6 0x0d125da4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETCOORDSREQUEST_7 0xd5578dbaUL

/** @brief Complete ROS1 mypalletizer_communication/GetCoordsRequest value; no field projects away native data. */
/**
 * @brief Complete ROS 1 mypalletizer_communication/GetCoordsRequest value.
 * @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes
 * and is identified by UWVMROS1_47d45419f14ce576d9e8c2bb288c7b67bb161115e7b99a2c4752d09cbb8087b8.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_1_mypalletizer_communication_GetCoordsRequest
{
    /** @brief Local C layout placeholder; empty native component has exactly zero canonical bytes. */
    unsigned char local_empty_placeholder;
} roswasmc_bounded_1_mypalletizer_communication_GetCoordsRequest;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETCOORDSREQUEST_MAX_WIRE_BYTES 0u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETCOORDSREQUEST_MIN_WIRE_BYTES 0u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETCOORDSREQUEST_CODEC_IDENTITY                                                                         \
     "UWVMROS1_47d45419f14ce576d9e8c2bb288c7b67bb161115e7b99a2c4752d09cbb8087b8"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate every field of mypalletizer_communication/GetCoordsRequest.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline int
    roswasmc_bounded_1_mypalletizer_communication_GetCoordsRequest_valid(roswasmc_bounded_1_mypalletizer_communication_GetCoordsRequest const* value)
{
    if(!value)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the complete active canonical extent of mypalletizer_communication/GetCoordsRequest.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline size_t
    roswasmc_bounded_1_mypalletizer_communication_GetCoordsRequest_wire_size(roswasmc_bounded_1_mypalletizer_communication_GetCoordsRequest const* value)
{
    size_t n = 0;
    (void)value;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Append all fields of mypalletizer_communication/GetCoordsRequest to an internal canonical buffer.
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
    roswasmc_bounded_1_mypalletizer_communication_GetCoordsRequest_write_fields(roswasmc_bounded_1_mypalletizer_communication_GetCoordsRequest const* value,
                                                                                unsigned char* p,
                                                                                size_t* offset)
{
    (void)value;
    (void)p;
    (void)offset;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Decode the full ordered field prefix of mypalletizer_communication/GetCoordsRequest.
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
    roswasmc_bounded_1_mypalletizer_communication_GetCoordsRequest_read_fields(unsigned char const* p,
                                                                               size_t n,
                                                                               size_t* offset,
                                                                               roswasmc_bounded_1_mypalletizer_communication_GetCoordsRequest* value)
{
    (void)p;
    (void)n;
    (void)offset;
    return roswasmc_bounded_1_mypalletizer_communication_GetCoordsRequest_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode the complete mypalletizer_communication/GetCoordsRequest record transactionally.
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
    roswasmc_bounded_1_mypalletizer_communication_GetCoordsRequest_encode(roswasmc_bounded_1_mypalletizer_communication_GetCoordsRequest const* value,
                                                                          void* output,
                                                                          size_t capacity,
                                                                          size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_mypalletizer_communication_GetCoordsRequest_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_mypalletizer_communication_GetCoordsRequest_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_mypalletizer_communication_GetCoordsRequest_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete mypalletizer_communication/GetCoordsRequest record transactionally.
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
    roswasmc_bounded_1_mypalletizer_communication_GetCoordsRequest_decode(void const* input,
                                                                          size_t length,
                                                                          roswasmc_bounded_1_mypalletizer_communication_GetCoordsRequest* value)
{
    roswasmc_bounded_1_mypalletizer_communication_GetCoordsRequest next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mypalletizer_communication_GetCoordsRequest);
    size_t offset = 0;
    if(!value || (length && !input) || length < 0u || length > 0u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_mypalletizer_communication_GetCoordsRequest_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETCOORDSRESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETCOORDSRESPONSE_0 != 0x7bc8327fUL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETCOORDSRESPONSE_1 != 0x8b12eeaaUL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETCOORDSRESPONSE_2 != 0x3283abdfUL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETCOORDSRESPONSE_3 != 0xd293a71aUL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETCOORDSRESPONSE_4 != 0x7d213a40UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETCOORDSRESPONSE_5 != 0x7e228677UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETCOORDSRESPONSE_6 != 0xb6ec0653UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETCOORDSRESPONSE_7 != 0x36993446UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETCOORDSRESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETCOORDSRESPONSE_0 0x7bc8327fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETCOORDSRESPONSE_1 0x8b12eeaaUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETCOORDSRESPONSE_2 0x3283abdfUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETCOORDSRESPONSE_3 0xd293a71aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETCOORDSRESPONSE_4 0x7d213a40UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETCOORDSRESPONSE_5 0x7e228677UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETCOORDSRESPONSE_6 0xb6ec0653UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETCOORDSRESPONSE_7 0x36993446UL

/** @brief Complete ROS1 mypalletizer_communication/GetCoordsResponse value; no field projects away native data. */
/**
 * @brief Complete ROS 1 mypalletizer_communication/GetCoordsResponse value.
 * @details All 4 declared fields are retained in source order. The canonical representation occupies 16..16
 * bytes and is identified by UWVMROS1_7fdad367484b5f89c812c2513e99373844dcd160a115e326fb1c597f221b53fb.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_1_mypalletizer_communication_GetCoordsResponse
{
    /** @brief Declared field x; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mypalletizer_communication/GetCoordsResponse.x: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mypalletizer_communicationGetCoordsResponse; share/platform/ros/rs/API-CONTRACT.md
     */
    float x;
    /** @brief Declared field y; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mypalletizer_communication/GetCoordsResponse.y: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mypalletizer_communicationGetCoordsResponse; share/platform/ros/rs/API-CONTRACT.md
     */
    float y;
    /** @brief Declared field z; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mypalletizer_communication/GetCoordsResponse.z: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mypalletizer_communicationGetCoordsResponse; share/platform/ros/rs/API-CONTRACT.md
     */
    float z;
    /** @brief Declared field rx; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mypalletizer_communication/GetCoordsResponse.rx: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mypalletizer_communicationGetCoordsResponse; share/platform/ros/rs/API-CONTRACT.md
     */
    float rx;
} roswasmc_bounded_1_mypalletizer_communication_GetCoordsResponse;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETCOORDSRESPONSE_MAX_WIRE_BYTES 16u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETCOORDSRESPONSE_MIN_WIRE_BYTES 16u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETCOORDSRESPONSE_CODEC_IDENTITY                                                                        \
     "UWVMROS1_7fdad367484b5f89c812c2513e99373844dcd160a115e326fb1c597f221b53fb"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate every field of mypalletizer_communication/GetCoordsResponse.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline int
    roswasmc_bounded_1_mypalletizer_communication_GetCoordsResponse_valid(roswasmc_bounded_1_mypalletizer_communication_GetCoordsResponse const* value)
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
        uwvm_bounded_copy(&bits, &value->rx, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the complete active canonical extent of mypalletizer_communication/GetCoordsResponse.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline size_t
    roswasmc_bounded_1_mypalletizer_communication_GetCoordsResponse_wire_size(roswasmc_bounded_1_mypalletizer_communication_GetCoordsResponse const* value)
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
 * @brief Append all fields of mypalletizer_communication/GetCoordsResponse to an internal canonical buffer.
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
    roswasmc_bounded_1_mypalletizer_communication_GetCoordsResponse_write_fields(roswasmc_bounded_1_mypalletizer_communication_GetCoordsResponse const* value,
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
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->rx, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Decode the full ordered field prefix of mypalletizer_communication/GetCoordsResponse.
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
    roswasmc_bounded_1_mypalletizer_communication_GetCoordsResponse_read_fields(unsigned char const* p,
                                                                                size_t n,
                                                                                size_t* offset,
                                                                                roswasmc_bounded_1_mypalletizer_communication_GetCoordsResponse* value)
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
        uwvm_bounded_copy(&value->rx, &bits, 4);
    }
    *offset += 4;
    return roswasmc_bounded_1_mypalletizer_communication_GetCoordsResponse_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode the complete mypalletizer_communication/GetCoordsResponse record transactionally.
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
    roswasmc_bounded_1_mypalletizer_communication_GetCoordsResponse_encode(roswasmc_bounded_1_mypalletizer_communication_GetCoordsResponse const* value,
                                                                           void* output,
                                                                           size_t capacity,
                                                                           size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_mypalletizer_communication_GetCoordsResponse_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_mypalletizer_communication_GetCoordsResponse_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_mypalletizer_communication_GetCoordsResponse_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete mypalletizer_communication/GetCoordsResponse record transactionally.
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
    roswasmc_bounded_1_mypalletizer_communication_GetCoordsResponse_decode(void const* input,
                                                                           size_t length,
                                                                           roswasmc_bounded_1_mypalletizer_communication_GetCoordsResponse* value)
{
    roswasmc_bounded_1_mypalletizer_communication_GetCoordsResponse next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mypalletizer_communication_GetCoordsResponse);
    size_t offset = 0;
    if(!value || (length && !input) || length < 16u || length > 16u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_mypalletizer_communication_GetCoordsResponse_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GRIPPERSTATUSREQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GRIPPERSTATUSREQUEST_0 != 0x543f7704UL ||                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GRIPPERSTATUSREQUEST_1 != 0x8fa8d365UL ||                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GRIPPERSTATUSREQUEST_2 != 0xb6532aa8UL ||                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GRIPPERSTATUSREQUEST_3 != 0xf09c5dd6UL ||                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GRIPPERSTATUSREQUEST_4 != 0xf5c043daUL ||                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GRIPPERSTATUSREQUEST_5 != 0xba54e2a7UL ||                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GRIPPERSTATUSREQUEST_6 != 0xd411490eUL ||                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GRIPPERSTATUSREQUEST_7 != 0x32a83b82UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GRIPPERSTATUSREQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GRIPPERSTATUSREQUEST_0 0x543f7704UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GRIPPERSTATUSREQUEST_1 0x8fa8d365UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GRIPPERSTATUSREQUEST_2 0xb6532aa8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GRIPPERSTATUSREQUEST_3 0xf09c5dd6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GRIPPERSTATUSREQUEST_4 0xf5c043daUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GRIPPERSTATUSREQUEST_5 0xba54e2a7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GRIPPERSTATUSREQUEST_6 0xd411490eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GRIPPERSTATUSREQUEST_7 0x32a83b82UL

/** @brief Complete ROS1 mypalletizer_communication/GripperStatusRequest value; no field projects away native data. */
/**
 * @brief Complete ROS 1 mypalletizer_communication/GripperStatusRequest value.
 * @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1 bytes
 * and is identified by UWVMROS1_48d661f8fd6adfcf1703123464fcfb9351f8f831c0779ffad103a63bcf7ea709.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_1_mypalletizer_communication_GripperStatusRequest
{
    /** @brief Declared field Status; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mypalletizer_communication/GripperStatusRequest.Status: bool.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mypalletizer_communicationGripperStatusRequest; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t Status;
} roswasmc_bounded_1_mypalletizer_communication_GripperStatusRequest;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GRIPPERSTATUSREQUEST_MAX_WIRE_BYTES 1u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GRIPPERSTATUSREQUEST_MIN_WIRE_BYTES 1u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GRIPPERSTATUSREQUEST_CODEC_IDENTITY                                                                     \
     "UWVMROS1_48d661f8fd6adfcf1703123464fcfb9351f8f831c0779ffad103a63bcf7ea709"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate every field of mypalletizer_communication/GripperStatusRequest.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline int
    roswasmc_bounded_1_mypalletizer_communication_GripperStatusRequest_valid(roswasmc_bounded_1_mypalletizer_communication_GripperStatusRequest const* value)
{
    if(!value)
        return 0;
    if(value->Status > 1)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the complete active canonical extent of mypalletizer_communication/GripperStatusRequest.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline size_t roswasmc_bounded_1_mypalletizer_communication_GripperStatusRequest_wire_size(
    roswasmc_bounded_1_mypalletizer_communication_GripperStatusRequest const* value)
{
    size_t n = 0;
    (void)value;
    n += 1;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Append all fields of mypalletizer_communication/GripperStatusRequest to an internal canonical buffer.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete prevalidated immutable record.
 * @param[out] p Sufficient exclusive output storage established by the public encoder.
 * @param[in,out] offset Exclusive initialized writer cursor.
 * @return No value; internal caller guarantees the measured capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline void roswasmc_bounded_1_mypalletizer_communication_GripperStatusRequest_write_fields(
    roswasmc_bounded_1_mypalletizer_communication_GripperStatusRequest const* value,
    unsigned char* p,
    size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->Status, 1);
    *offset += 1;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Decode the full ordered field prefix of mypalletizer_communication/GripperStatusRequest.
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
    roswasmc_bounded_1_mypalletizer_communication_GripperStatusRequest_read_fields(unsigned char const* p,
                                                                                   size_t n,
                                                                                   size_t* offset,
                                                                                   roswasmc_bounded_1_mypalletizer_communication_GripperStatusRequest* value)
{
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->Status, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_1_mypalletizer_communication_GripperStatusRequest_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode the complete mypalletizer_communication/GripperStatusRequest record transactionally.
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
    roswasmc_bounded_1_mypalletizer_communication_GripperStatusRequest_encode(roswasmc_bounded_1_mypalletizer_communication_GripperStatusRequest const* value,
                                                                              void* output,
                                                                              size_t capacity,
                                                                              size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_mypalletizer_communication_GripperStatusRequest_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_mypalletizer_communication_GripperStatusRequest_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_mypalletizer_communication_GripperStatusRequest_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete mypalletizer_communication/GripperStatusRequest record transactionally.
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
    roswasmc_bounded_1_mypalletizer_communication_GripperStatusRequest_decode(void const* input,
                                                                              size_t length,
                                                                              roswasmc_bounded_1_mypalletizer_communication_GripperStatusRequest* value)
{
    roswasmc_bounded_1_mypalletizer_communication_GripperStatusRequest next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mypalletizer_communication_GripperStatusRequest);
    size_t offset = 0;
    if(!value || (length && !input) || length < 1u || length > 1u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_mypalletizer_communication_GripperStatusRequest_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GRIPPERSTATUSRESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GRIPPERSTATUSRESPONSE_0 != 0xe095267cUL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GRIPPERSTATUSRESPONSE_1 != 0x4ed3c207UL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GRIPPERSTATUSRESPONSE_2 != 0x441cfcf1UL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GRIPPERSTATUSRESPONSE_3 != 0x148852fdUL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GRIPPERSTATUSRESPONSE_4 != 0x29f58c3dUL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GRIPPERSTATUSRESPONSE_5 != 0xc7905859UL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GRIPPERSTATUSRESPONSE_6 != 0x5653a583UL ||                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GRIPPERSTATUSRESPONSE_7 != 0x50b20841UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GRIPPERSTATUSRESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GRIPPERSTATUSRESPONSE_0 0xe095267cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GRIPPERSTATUSRESPONSE_1 0x4ed3c207UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GRIPPERSTATUSRESPONSE_2 0x441cfcf1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GRIPPERSTATUSRESPONSE_3 0x148852fdUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GRIPPERSTATUSRESPONSE_4 0x29f58c3dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GRIPPERSTATUSRESPONSE_5 0xc7905859UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GRIPPERSTATUSRESPONSE_6 0x5653a583UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GRIPPERSTATUSRESPONSE_7 0x50b20841UL

/** @brief Complete ROS1 mypalletizer_communication/GripperStatusResponse value; no field projects away native data. */
/**
 * @brief Complete ROS 1 mypalletizer_communication/GripperStatusResponse value.
 * @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1 bytes
 * and is identified by UWVMROS1_00ab8ceb190b588a9420c2e044da64857cfdb76e709e40e57835ab5732074e2b.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_1_mypalletizer_communication_GripperStatusResponse
{
    /** @brief Declared field Flag; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mypalletizer_communication/GripperStatusResponse.Flag: bool.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mypalletizer_communicationGripperStatusResponse; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t Flag;
} roswasmc_bounded_1_mypalletizer_communication_GripperStatusResponse;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GRIPPERSTATUSRESPONSE_MAX_WIRE_BYTES 1u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GRIPPERSTATUSRESPONSE_MIN_WIRE_BYTES 1u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GRIPPERSTATUSRESPONSE_CODEC_IDENTITY                                                                    \
     "UWVMROS1_00ab8ceb190b588a9420c2e044da64857cfdb76e709e40e57835ab5732074e2b"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate every field of mypalletizer_communication/GripperStatusResponse.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline int
    roswasmc_bounded_1_mypalletizer_communication_GripperStatusResponse_valid(roswasmc_bounded_1_mypalletizer_communication_GripperStatusResponse const* value)
{
    if(!value)
        return 0;
    if(value->Flag > 1)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the complete active canonical extent of mypalletizer_communication/GripperStatusResponse.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline size_t roswasmc_bounded_1_mypalletizer_communication_GripperStatusResponse_wire_size(
    roswasmc_bounded_1_mypalletizer_communication_GripperStatusResponse const* value)
{
    size_t n = 0;
    (void)value;
    n += 1;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Append all fields of mypalletizer_communication/GripperStatusResponse to an internal canonical buffer.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete prevalidated immutable record.
 * @param[out] p Sufficient exclusive output storage established by the public encoder.
 * @param[in,out] offset Exclusive initialized writer cursor.
 * @return No value; internal caller guarantees the measured capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline void roswasmc_bounded_1_mypalletizer_communication_GripperStatusResponse_write_fields(
    roswasmc_bounded_1_mypalletizer_communication_GripperStatusResponse const* value,
    unsigned char* p,
    size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->Flag, 1);
    *offset += 1;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Decode the full ordered field prefix of mypalletizer_communication/GripperStatusResponse.
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
    roswasmc_bounded_1_mypalletizer_communication_GripperStatusResponse_read_fields(unsigned char const* p,
                                                                                    size_t n,
                                                                                    size_t* offset,
                                                                                    roswasmc_bounded_1_mypalletizer_communication_GripperStatusResponse* value)
{
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->Flag, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_1_mypalletizer_communication_GripperStatusResponse_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode the complete mypalletizer_communication/GripperStatusResponse record transactionally.
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
    roswasmc_bounded_1_mypalletizer_communication_GripperStatusResponse_encode(roswasmc_bounded_1_mypalletizer_communication_GripperStatusResponse const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_mypalletizer_communication_GripperStatusResponse_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_mypalletizer_communication_GripperStatusResponse_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_mypalletizer_communication_GripperStatusResponse_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete mypalletizer_communication/GripperStatusResponse record transactionally.
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
    roswasmc_bounded_1_mypalletizer_communication_GripperStatusResponse_decode(void const* input,
                                                                               size_t length,
                                                                               roswasmc_bounded_1_mypalletizer_communication_GripperStatusResponse* value)
{
    roswasmc_bounded_1_mypalletizer_communication_GripperStatusResponse next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mypalletizer_communication_GripperStatusResponse);
    size_t offset = 0;
    if(!value || (length && !input) || length < 1u || length > 1u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_mypalletizer_communication_GripperStatusResponse_read_fields((unsigned char const*)input, length, &offset, &next) ||
       offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_PUMPSTATUSREQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_PUMPSTATUSREQUEST_0 != 0x6765b9f7UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_PUMPSTATUSREQUEST_1 != 0xea2be5ccUL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_PUMPSTATUSREQUEST_2 != 0x180d98fbUL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_PUMPSTATUSREQUEST_3 != 0x947b0877UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_PUMPSTATUSREQUEST_4 != 0xf26e9dbfUL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_PUMPSTATUSREQUEST_5 != 0x92b7973dUL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_PUMPSTATUSREQUEST_6 != 0xb9b1909dUL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_PUMPSTATUSREQUEST_7 != 0x80c51778UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_PUMPSTATUSREQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_PUMPSTATUSREQUEST_0 0x6765b9f7UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_PUMPSTATUSREQUEST_1 0xea2be5ccUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_PUMPSTATUSREQUEST_2 0x180d98fbUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_PUMPSTATUSREQUEST_3 0x947b0877UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_PUMPSTATUSREQUEST_4 0xf26e9dbfUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_PUMPSTATUSREQUEST_5 0x92b7973dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_PUMPSTATUSREQUEST_6 0xb9b1909dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_PUMPSTATUSREQUEST_7 0x80c51778UL

/** @brief Complete ROS1 mypalletizer_communication/PumpStatusRequest value; no field projects away native data. */
/**
 * @brief Complete ROS 1 mypalletizer_communication/PumpStatusRequest value.
 * @details All 3 declared fields are retained in source order. The canonical representation occupies 3..3 bytes
 * and is identified by UWVMROS1_6dd70636864c4450a066c1d75e67643331fac4c3e1625bce1b94c85ce7a35636.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_1_mypalletizer_communication_PumpStatusRequest
{
    /** @brief Declared field Status; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mypalletizer_communication/PumpStatusRequest.Status: bool.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mypalletizer_communicationPumpStatusRequest; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t Status;
    /** @brief Declared field Pin1; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mypalletizer_communication/PumpStatusRequest.Pin1: int8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mypalletizer_communicationPumpStatusRequest; share/platform/ros/rs/API-CONTRACT.md
     */
    int8_t Pin1;
    /** @brief Declared field Pin2; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mypalletizer_communication/PumpStatusRequest.Pin2: int8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mypalletizer_communicationPumpStatusRequest; share/platform/ros/rs/API-CONTRACT.md
     */
    int8_t Pin2;
} roswasmc_bounded_1_mypalletizer_communication_PumpStatusRequest;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_PUMPSTATUSREQUEST_MAX_WIRE_BYTES 3u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_PUMPSTATUSREQUEST_MIN_WIRE_BYTES 3u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_PUMPSTATUSREQUEST_CODEC_IDENTITY                                                                        \
     "UWVMROS1_6dd70636864c4450a066c1d75e67643331fac4c3e1625bce1b94c85ce7a35636"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate every field of mypalletizer_communication/PumpStatusRequest.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline int
    roswasmc_bounded_1_mypalletizer_communication_PumpStatusRequest_valid(roswasmc_bounded_1_mypalletizer_communication_PumpStatusRequest const* value)
{
    if(!value)
        return 0;
    if(value->Status > 1)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the complete active canonical extent of mypalletizer_communication/PumpStatusRequest.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline size_t
    roswasmc_bounded_1_mypalletizer_communication_PumpStatusRequest_wire_size(roswasmc_bounded_1_mypalletizer_communication_PumpStatusRequest const* value)
{
    size_t n = 0;
    (void)value;
    n += 1;
    n += 1;
    n += 1;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Append all fields of mypalletizer_communication/PumpStatusRequest to an internal canonical buffer.
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
    roswasmc_bounded_1_mypalletizer_communication_PumpStatusRequest_write_fields(roswasmc_bounded_1_mypalletizer_communication_PumpStatusRequest const* value,
                                                                                 unsigned char* p,
                                                                                 size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->Status, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->Pin1, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->Pin2, 1);
    *offset += 1;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Decode the full ordered field prefix of mypalletizer_communication/PumpStatusRequest.
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
    roswasmc_bounded_1_mypalletizer_communication_PumpStatusRequest_read_fields(unsigned char const* p,
                                                                                size_t n,
                                                                                size_t* offset,
                                                                                roswasmc_bounded_1_mypalletizer_communication_PumpStatusRequest* value)
{
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->Status, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->Pin1, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->Pin2, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_1_mypalletizer_communication_PumpStatusRequest_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode the complete mypalletizer_communication/PumpStatusRequest record transactionally.
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
    roswasmc_bounded_1_mypalletizer_communication_PumpStatusRequest_encode(roswasmc_bounded_1_mypalletizer_communication_PumpStatusRequest const* value,
                                                                           void* output,
                                                                           size_t capacity,
                                                                           size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_mypalletizer_communication_PumpStatusRequest_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_mypalletizer_communication_PumpStatusRequest_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_mypalletizer_communication_PumpStatusRequest_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete mypalletizer_communication/PumpStatusRequest record transactionally.
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
    roswasmc_bounded_1_mypalletizer_communication_PumpStatusRequest_decode(void const* input,
                                                                           size_t length,
                                                                           roswasmc_bounded_1_mypalletizer_communication_PumpStatusRequest* value)
{
    roswasmc_bounded_1_mypalletizer_communication_PumpStatusRequest next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mypalletizer_communication_PumpStatusRequest);
    size_t offset = 0;
    if(!value || (length && !input) || length < 3u || length > 3u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_mypalletizer_communication_PumpStatusRequest_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_PUMPSTATUSRESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_PUMPSTATUSRESPONSE_0 != 0x4c9519ccUL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_PUMPSTATUSRESPONSE_1 != 0x487589feUL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_PUMPSTATUSRESPONSE_2 != 0x92ffe59dUL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_PUMPSTATUSRESPONSE_3 != 0x42da4660UL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_PUMPSTATUSRESPONSE_4 != 0x870fd955UL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_PUMPSTATUSRESPONSE_5 != 0xd3e0ba40UL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_PUMPSTATUSRESPONSE_6 != 0x4d063ca4UL ||                                             \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_PUMPSTATUSRESPONSE_7 != 0x47f71b9fUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_PUMPSTATUSRESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_PUMPSTATUSRESPONSE_0 0x4c9519ccUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_PUMPSTATUSRESPONSE_1 0x487589feUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_PUMPSTATUSRESPONSE_2 0x92ffe59dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_PUMPSTATUSRESPONSE_3 0x42da4660UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_PUMPSTATUSRESPONSE_4 0x870fd955UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_PUMPSTATUSRESPONSE_5 0xd3e0ba40UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_PUMPSTATUSRESPONSE_6 0x4d063ca4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_PUMPSTATUSRESPONSE_7 0x47f71b9fUL

/** @brief Complete ROS1 mypalletizer_communication/PumpStatusResponse value; no field projects away native data. */
/**
 * @brief Complete ROS 1 mypalletizer_communication/PumpStatusResponse value.
 * @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1 bytes
 * and is identified by UWVMROS1_c2503f89c84c49db8dab2ac9f847ba9d09434d366fd8916a7d5f30ea161bb4c5.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_1_mypalletizer_communication_PumpStatusResponse
{
    /** @brief Declared field Flag; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mypalletizer_communication/PumpStatusResponse.Flag: bool.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mypalletizer_communicationPumpStatusResponse; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t Flag;
} roswasmc_bounded_1_mypalletizer_communication_PumpStatusResponse;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_PUMPSTATUSRESPONSE_MAX_WIRE_BYTES 1u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_PUMPSTATUSRESPONSE_MIN_WIRE_BYTES 1u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_PUMPSTATUSRESPONSE_CODEC_IDENTITY                                                                       \
     "UWVMROS1_c2503f89c84c49db8dab2ac9f847ba9d09434d366fd8916a7d5f30ea161bb4c5"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate every field of mypalletizer_communication/PumpStatusResponse.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline int
    roswasmc_bounded_1_mypalletizer_communication_PumpStatusResponse_valid(roswasmc_bounded_1_mypalletizer_communication_PumpStatusResponse const* value)
{
    if(!value)
        return 0;
    if(value->Flag > 1)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the complete active canonical extent of mypalletizer_communication/PumpStatusResponse.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline size_t
    roswasmc_bounded_1_mypalletizer_communication_PumpStatusResponse_wire_size(roswasmc_bounded_1_mypalletizer_communication_PumpStatusResponse const* value)
{
    size_t n = 0;
    (void)value;
    n += 1;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Append all fields of mypalletizer_communication/PumpStatusResponse to an internal canonical buffer.
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
    roswasmc_bounded_1_mypalletizer_communication_PumpStatusResponse_write_fields(roswasmc_bounded_1_mypalletizer_communication_PumpStatusResponse const* value,
                                                                                  unsigned char* p,
                                                                                  size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->Flag, 1);
    *offset += 1;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Decode the full ordered field prefix of mypalletizer_communication/PumpStatusResponse.
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
    roswasmc_bounded_1_mypalletizer_communication_PumpStatusResponse_read_fields(unsigned char const* p,
                                                                                 size_t n,
                                                                                 size_t* offset,
                                                                                 roswasmc_bounded_1_mypalletizer_communication_PumpStatusResponse* value)
{
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->Flag, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_1_mypalletizer_communication_PumpStatusResponse_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode the complete mypalletizer_communication/PumpStatusResponse record transactionally.
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
    roswasmc_bounded_1_mypalletizer_communication_PumpStatusResponse_encode(roswasmc_bounded_1_mypalletizer_communication_PumpStatusResponse const* value,
                                                                            void* output,
                                                                            size_t capacity,
                                                                            size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_mypalletizer_communication_PumpStatusResponse_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_mypalletizer_communication_PumpStatusResponse_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_mypalletizer_communication_PumpStatusResponse_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete mypalletizer_communication/PumpStatusResponse record transactionally.
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
    roswasmc_bounded_1_mypalletizer_communication_PumpStatusResponse_decode(void const* input,
                                                                            size_t length,
                                                                            roswasmc_bounded_1_mypalletizer_communication_PumpStatusResponse* value)
{
    roswasmc_bounded_1_mypalletizer_communication_PumpStatusResponse next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mypalletizer_communication_PumpStatusResponse);
    size_t offset = 0;
    if(!value || (length && !input) || length < 1u || length > 1u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_mypalletizer_communication_PumpStatusResponse_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETANGLESREQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETANGLESREQUEST_0 != 0x9683e1faUL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETANGLESREQUEST_1 != 0x9a6b16f3UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETANGLESREQUEST_2 != 0x48fac503UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETANGLESREQUEST_3 != 0xc4d8653cUL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETANGLESREQUEST_4 != 0x4abd3acdUL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETANGLESREQUEST_5 != 0x9e2e98b0UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETANGLESREQUEST_6 != 0xd40214dfUL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETANGLESREQUEST_7 != 0x70bc3068UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETANGLESREQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETANGLESREQUEST_0 0x9683e1faUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETANGLESREQUEST_1 0x9a6b16f3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETANGLESREQUEST_2 0x48fac503UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETANGLESREQUEST_3 0xc4d8653cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETANGLESREQUEST_4 0x4abd3acdUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETANGLESREQUEST_5 0x9e2e98b0UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETANGLESREQUEST_6 0xd40214dfUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETANGLESREQUEST_7 0x70bc3068UL

/** @brief Complete ROS1 mypalletizer_communication/SetAnglesRequest value; no field projects away native data. */
/**
 * @brief Complete ROS 1 mypalletizer_communication/SetAnglesRequest value.
 * @details All 5 declared fields are retained in source order. The canonical representation occupies 17..17
 * bytes and is identified by UWVMROS1_32072510c6deddb3f372b5f300068ea457916a4e0397b30951e421a1da641d5d.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_1_mypalletizer_communication_SetAnglesRequest
{
    /** @brief Declared field joint_1; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mypalletizer_communication/SetAnglesRequest.joint_1: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mypalletizer_communicationSetAnglesRequest; share/platform/ros/rs/API-CONTRACT.md
     */
    float joint_1;
    /** @brief Declared field joint_2; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mypalletizer_communication/SetAnglesRequest.joint_2: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mypalletizer_communicationSetAnglesRequest; share/platform/ros/rs/API-CONTRACT.md
     */
    float joint_2;
    /** @brief Declared field joint_3; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mypalletizer_communication/SetAnglesRequest.joint_3: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mypalletizer_communicationSetAnglesRequest; share/platform/ros/rs/API-CONTRACT.md
     */
    float joint_3;
    /** @brief Declared field joint_4; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mypalletizer_communication/SetAnglesRequest.joint_4: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mypalletizer_communicationSetAnglesRequest; share/platform/ros/rs/API-CONTRACT.md
     */
    float joint_4;
    /** @brief Declared field speed; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mypalletizer_communication/SetAnglesRequest.speed: int8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mypalletizer_communicationSetAnglesRequest; share/platform/ros/rs/API-CONTRACT.md
     */
    int8_t speed;
} roswasmc_bounded_1_mypalletizer_communication_SetAnglesRequest;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETANGLESREQUEST_MAX_WIRE_BYTES 17u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETANGLESREQUEST_MIN_WIRE_BYTES 17u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETANGLESREQUEST_CODEC_IDENTITY                                                                         \
     "UWVMROS1_32072510c6deddb3f372b5f300068ea457916a4e0397b30951e421a1da641d5d"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate every field of mypalletizer_communication/SetAnglesRequest.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline int
    roswasmc_bounded_1_mypalletizer_communication_SetAnglesRequest_valid(roswasmc_bounded_1_mypalletizer_communication_SetAnglesRequest const* value)
{
    if(!value)
        return 0;
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->joint_1, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->joint_2, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->joint_3, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->joint_4, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the complete active canonical extent of mypalletizer_communication/SetAnglesRequest.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline size_t
    roswasmc_bounded_1_mypalletizer_communication_SetAnglesRequest_wire_size(roswasmc_bounded_1_mypalletizer_communication_SetAnglesRequest const* value)
{
    size_t n = 0;
    (void)value;
    n += 4;
    n += 4;
    n += 4;
    n += 4;
    n += 1;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Append all fields of mypalletizer_communication/SetAnglesRequest to an internal canonical buffer.
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
    roswasmc_bounded_1_mypalletizer_communication_SetAnglesRequest_write_fields(roswasmc_bounded_1_mypalletizer_communication_SetAnglesRequest const* value,
                                                                                unsigned char* p,
                                                                                size_t* offset)
{
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->joint_1, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->joint_2, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->joint_3, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->joint_4, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    uwvm_bounded_put(p + *offset, (uint64_t)value->speed, 1);
    *offset += 1;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Decode the full ordered field prefix of mypalletizer_communication/SetAnglesRequest.
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
    roswasmc_bounded_1_mypalletizer_communication_SetAnglesRequest_read_fields(unsigned char const* p,
                                                                               size_t n,
                                                                               size_t* offset,
                                                                               roswasmc_bounded_1_mypalletizer_communication_SetAnglesRequest* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->joint_1, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->joint_2, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->joint_3, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->joint_4, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->speed, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_1_mypalletizer_communication_SetAnglesRequest_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode the complete mypalletizer_communication/SetAnglesRequest record transactionally.
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
    roswasmc_bounded_1_mypalletizer_communication_SetAnglesRequest_encode(roswasmc_bounded_1_mypalletizer_communication_SetAnglesRequest const* value,
                                                                          void* output,
                                                                          size_t capacity,
                                                                          size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_mypalletizer_communication_SetAnglesRequest_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_mypalletizer_communication_SetAnglesRequest_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_mypalletizer_communication_SetAnglesRequest_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete mypalletizer_communication/SetAnglesRequest record transactionally.
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
    roswasmc_bounded_1_mypalletizer_communication_SetAnglesRequest_decode(void const* input,
                                                                          size_t length,
                                                                          roswasmc_bounded_1_mypalletizer_communication_SetAnglesRequest* value)
{
    roswasmc_bounded_1_mypalletizer_communication_SetAnglesRequest next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mypalletizer_communication_SetAnglesRequest);
    size_t offset = 0;
    if(!value || (length && !input) || length < 17u || length > 17u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_mypalletizer_communication_SetAnglesRequest_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETANGLESRESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETANGLESRESPONSE_0 != 0x62e21f6cUL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETANGLESRESPONSE_1 != 0xd9de1be2UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETANGLESRESPONSE_2 != 0x9b3d8357UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETANGLESRESPONSE_3 != 0x7724d1f1UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETANGLESRESPONSE_4 != 0x012398e1UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETANGLESRESPONSE_5 != 0x3ae690eeUL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETANGLESRESPONSE_6 != 0x1e8c6e40UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETANGLESRESPONSE_7 != 0x56a64ec5UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETANGLESRESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETANGLESRESPONSE_0 0x62e21f6cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETANGLESRESPONSE_1 0xd9de1be2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETANGLESRESPONSE_2 0x9b3d8357UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETANGLESRESPONSE_3 0x7724d1f1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETANGLESRESPONSE_4 0x012398e1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETANGLESRESPONSE_5 0x3ae690eeUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETANGLESRESPONSE_6 0x1e8c6e40UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETANGLESRESPONSE_7 0x56a64ec5UL

/** @brief Complete ROS1 mypalletizer_communication/SetAnglesResponse value; no field projects away native data. */
/**
 * @brief Complete ROS 1 mypalletizer_communication/SetAnglesResponse value.
 * @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1 bytes
 * and is identified by UWVMROS1_1472b47adc3171a9f1938e52bc937af6dd6bb720d33e163b70ae066a89a3211c.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_1_mypalletizer_communication_SetAnglesResponse
{
    /** @brief Declared field Flag; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mypalletizer_communication/SetAnglesResponse.Flag: bool.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mypalletizer_communicationSetAnglesResponse; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t Flag;
} roswasmc_bounded_1_mypalletizer_communication_SetAnglesResponse;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETANGLESRESPONSE_MAX_WIRE_BYTES 1u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETANGLESRESPONSE_MIN_WIRE_BYTES 1u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETANGLESRESPONSE_CODEC_IDENTITY                                                                        \
     "UWVMROS1_1472b47adc3171a9f1938e52bc937af6dd6bb720d33e163b70ae066a89a3211c"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate every field of mypalletizer_communication/SetAnglesResponse.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline int
    roswasmc_bounded_1_mypalletizer_communication_SetAnglesResponse_valid(roswasmc_bounded_1_mypalletizer_communication_SetAnglesResponse const* value)
{
    if(!value)
        return 0;
    if(value->Flag > 1)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the complete active canonical extent of mypalletizer_communication/SetAnglesResponse.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline size_t
    roswasmc_bounded_1_mypalletizer_communication_SetAnglesResponse_wire_size(roswasmc_bounded_1_mypalletizer_communication_SetAnglesResponse const* value)
{
    size_t n = 0;
    (void)value;
    n += 1;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Append all fields of mypalletizer_communication/SetAnglesResponse to an internal canonical buffer.
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
    roswasmc_bounded_1_mypalletizer_communication_SetAnglesResponse_write_fields(roswasmc_bounded_1_mypalletizer_communication_SetAnglesResponse const* value,
                                                                                 unsigned char* p,
                                                                                 size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->Flag, 1);
    *offset += 1;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Decode the full ordered field prefix of mypalletizer_communication/SetAnglesResponse.
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
    roswasmc_bounded_1_mypalletizer_communication_SetAnglesResponse_read_fields(unsigned char const* p,
                                                                                size_t n,
                                                                                size_t* offset,
                                                                                roswasmc_bounded_1_mypalletizer_communication_SetAnglesResponse* value)
{
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->Flag, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_1_mypalletizer_communication_SetAnglesResponse_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode the complete mypalletizer_communication/SetAnglesResponse record transactionally.
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
    roswasmc_bounded_1_mypalletizer_communication_SetAnglesResponse_encode(roswasmc_bounded_1_mypalletizer_communication_SetAnglesResponse const* value,
                                                                           void* output,
                                                                           size_t capacity,
                                                                           size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_mypalletizer_communication_SetAnglesResponse_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_mypalletizer_communication_SetAnglesResponse_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_mypalletizer_communication_SetAnglesResponse_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete mypalletizer_communication/SetAnglesResponse record transactionally.
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
    roswasmc_bounded_1_mypalletizer_communication_SetAnglesResponse_decode(void const* input,
                                                                           size_t length,
                                                                           roswasmc_bounded_1_mypalletizer_communication_SetAnglesResponse* value)
{
    roswasmc_bounded_1_mypalletizer_communication_SetAnglesResponse next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mypalletizer_communication_SetAnglesResponse);
    size_t offset = 0;
    if(!value || (length && !input) || length < 1u || length > 1u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_mypalletizer_communication_SetAnglesResponse_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETCOORDSREQUEST)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETCOORDSREQUEST_0 != 0x32740b1eUL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETCOORDSREQUEST_1 != 0xc0122241UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETCOORDSREQUEST_2 != 0x3f164fe6UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETCOORDSREQUEST_3 != 0x2f5dc979UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETCOORDSREQUEST_4 != 0x55ab2f27UL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETCOORDSREQUEST_5 != 0xf7f8a79eUL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETCOORDSREQUEST_6 != 0x94e6083fUL ||                                               \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETCOORDSREQUEST_7 != 0x44b050adUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETCOORDSREQUEST 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETCOORDSREQUEST_0 0x32740b1eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETCOORDSREQUEST_1 0xc0122241UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETCOORDSREQUEST_2 0x3f164fe6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETCOORDSREQUEST_3 0x2f5dc979UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETCOORDSREQUEST_4 0x55ab2f27UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETCOORDSREQUEST_5 0xf7f8a79eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETCOORDSREQUEST_6 0x94e6083fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETCOORDSREQUEST_7 0x44b050adUL

/** @brief Complete ROS1 mypalletizer_communication/SetCoordsRequest value; no field projects away native data. */
/**
 * @brief Complete ROS 1 mypalletizer_communication/SetCoordsRequest value.
 * @details All 6 declared fields are retained in source order. The canonical representation occupies 18..18
 * bytes and is identified by UWVMROS1_2d608cac1a7129ca5cd68ff52170ed40258cb6d199f4842a268a1d7570f9bda1.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_1_mypalletizer_communication_SetCoordsRequest
{
    /** @brief Declared field x; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mypalletizer_communication/SetCoordsRequest.x: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mypalletizer_communicationSetCoordsRequest; share/platform/ros/rs/API-CONTRACT.md
     */
    float x;
    /** @brief Declared field y; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mypalletizer_communication/SetCoordsRequest.y: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mypalletizer_communicationSetCoordsRequest; share/platform/ros/rs/API-CONTRACT.md
     */
    float y;
    /** @brief Declared field z; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mypalletizer_communication/SetCoordsRequest.z: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mypalletizer_communicationSetCoordsRequest; share/platform/ros/rs/API-CONTRACT.md
     */
    float z;
    /** @brief Declared field rx; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mypalletizer_communication/SetCoordsRequest.rx: float32.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mypalletizer_communicationSetCoordsRequest; share/platform/ros/rs/API-CONTRACT.md
     */
    float rx;
    /** @brief Declared field speed; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mypalletizer_communication/SetCoordsRequest.speed: int8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mypalletizer_communicationSetCoordsRequest; share/platform/ros/rs/API-CONTRACT.md
     */
    int8_t speed;
    /** @brief Declared field model; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mypalletizer_communication/SetCoordsRequest.model: int8.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mypalletizer_communicationSetCoordsRequest; share/platform/ros/rs/API-CONTRACT.md
     */
    int8_t model;
} roswasmc_bounded_1_mypalletizer_communication_SetCoordsRequest;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETCOORDSREQUEST_MAX_WIRE_BYTES 18u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETCOORDSREQUEST_MIN_WIRE_BYTES 18u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETCOORDSREQUEST_CODEC_IDENTITY                                                                         \
     "UWVMROS1_2d608cac1a7129ca5cd68ff52170ed40258cb6d199f4842a268a1d7570f9bda1"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate every field of mypalletizer_communication/SetCoordsRequest.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline int
    roswasmc_bounded_1_mypalletizer_communication_SetCoordsRequest_valid(roswasmc_bounded_1_mypalletizer_communication_SetCoordsRequest const* value)
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
        uwvm_bounded_copy(&bits, &value->rx, 4);
        if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
            return 0;
    }
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the complete active canonical extent of mypalletizer_communication/SetCoordsRequest.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline size_t
    roswasmc_bounded_1_mypalletizer_communication_SetCoordsRequest_wire_size(roswasmc_bounded_1_mypalletizer_communication_SetCoordsRequest const* value)
{
    size_t n = 0;
    (void)value;
    n += 4;
    n += 4;
    n += 4;
    n += 4;
    n += 1;
    n += 1;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Append all fields of mypalletizer_communication/SetCoordsRequest to an internal canonical buffer.
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
    roswasmc_bounded_1_mypalletizer_communication_SetCoordsRequest_write_fields(roswasmc_bounded_1_mypalletizer_communication_SetCoordsRequest const* value,
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
    {
        uint32_t bits;
        uwvm_bounded_copy(&bits, &value->rx, 4);
        uwvm_bounded_put(p + *offset, bits, 4);
        *offset += 4;
    }
    uwvm_bounded_put(p + *offset, (uint64_t)value->speed, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->model, 1);
    *offset += 1;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Decode the full ordered field prefix of mypalletizer_communication/SetCoordsRequest.
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
    roswasmc_bounded_1_mypalletizer_communication_SetCoordsRequest_read_fields(unsigned char const* p,
                                                                               size_t n,
                                                                               size_t* offset,
                                                                               roswasmc_bounded_1_mypalletizer_communication_SetCoordsRequest* value)
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
        uwvm_bounded_copy(&value->rx, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->speed, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->model, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_1_mypalletizer_communication_SetCoordsRequest_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode the complete mypalletizer_communication/SetCoordsRequest record transactionally.
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
    roswasmc_bounded_1_mypalletizer_communication_SetCoordsRequest_encode(roswasmc_bounded_1_mypalletizer_communication_SetCoordsRequest const* value,
                                                                          void* output,
                                                                          size_t capacity,
                                                                          size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_mypalletizer_communication_SetCoordsRequest_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_mypalletizer_communication_SetCoordsRequest_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_mypalletizer_communication_SetCoordsRequest_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete mypalletizer_communication/SetCoordsRequest record transactionally.
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
    roswasmc_bounded_1_mypalletizer_communication_SetCoordsRequest_decode(void const* input,
                                                                          size_t length,
                                                                          roswasmc_bounded_1_mypalletizer_communication_SetCoordsRequest* value)
{
    roswasmc_bounded_1_mypalletizer_communication_SetCoordsRequest next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mypalletizer_communication_SetCoordsRequest);
    size_t offset = 0;
    if(!value || (length && !input) || length < 18u || length > 18u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_mypalletizer_communication_SetCoordsRequest_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETCOORDSRESPONSE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETCOORDSRESPONSE_0 != 0xeb003a8bUL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETCOORDSRESPONSE_1 != 0x68ebffb3UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETCOORDSRESPONSE_2 != 0xbde9c8b5UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETCOORDSRESPONSE_3 != 0xd52e96ccUL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETCOORDSRESPONSE_4 != 0x9a0e349eUL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETCOORDSRESPONSE_5 != 0xd1a51686UL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETCOORDSRESPONSE_6 != 0x5b2ec80eUL ||                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETCOORDSRESPONSE_7 != 0x860f7888UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETCOORDSRESPONSE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETCOORDSRESPONSE_0 0xeb003a8bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETCOORDSRESPONSE_1 0x68ebffb3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETCOORDSRESPONSE_2 0xbde9c8b5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETCOORDSRESPONSE_3 0xd52e96ccUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETCOORDSRESPONSE_4 0x9a0e349eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETCOORDSRESPONSE_5 0xd1a51686UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETCOORDSRESPONSE_6 0x5b2ec80eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETCOORDSRESPONSE_7 0x860f7888UL

/** @brief Complete ROS1 mypalletizer_communication/SetCoordsResponse value; no field projects away native data. */
/**
 * @brief Complete ROS 1 mypalletizer_communication/SetCoordsResponse value.
 * @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1 bytes
 * and is identified by UWVMROS1_86900f8772e9609e1d2b882b6ab613ce9609be6c589e5b9574a57b8749231308.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_1_mypalletizer_communication_SetCoordsResponse
{
    /** @brief Declared field Flag; canonical capacity is part of CODEC_IDENTITY. */
    /**
     * @brief mypalletizer_communication/SetCoordsResponse.Flag: bool.
     * @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
     * original field position and signedness; invalid bounds fail instead of truncating the value.
     * @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
     * frame conversion or normalization.
     * @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
     * allocator ownership follow the enclosing decode function.
     * @see Ros1Mypalletizer_communicationSetCoordsResponse; share/platform/ros/rs/API-CONTRACT.md
     */
    uint8_t Flag;
} roswasmc_bounded_1_mypalletizer_communication_SetCoordsResponse;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETCOORDSRESPONSE_MAX_WIRE_BYTES 1u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETCOORDSRESPONSE_MIN_WIRE_BYTES 1u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETCOORDSRESPONSE_CODEC_IDENTITY                                                                        \
     "UWVMROS1_86900f8772e9609e1d2b882b6ab613ce9609be6c589e5b9574a57b8749231308"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate every field of mypalletizer_communication/SetCoordsResponse.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline int
    roswasmc_bounded_1_mypalletizer_communication_SetCoordsResponse_valid(roswasmc_bounded_1_mypalletizer_communication_SetCoordsResponse const* value)
{
    if(!value)
        return 0;
    if(value->Flag > 1)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the complete active canonical extent of mypalletizer_communication/SetCoordsResponse.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline size_t
    roswasmc_bounded_1_mypalletizer_communication_SetCoordsResponse_wire_size(roswasmc_bounded_1_mypalletizer_communication_SetCoordsResponse const* value)
{
    size_t n = 0;
    (void)value;
    n += 1;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Append all fields of mypalletizer_communication/SetCoordsResponse to an internal canonical buffer.
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
    roswasmc_bounded_1_mypalletizer_communication_SetCoordsResponse_write_fields(roswasmc_bounded_1_mypalletizer_communication_SetCoordsResponse const* value,
                                                                                 unsigned char* p,
                                                                                 size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->Flag, 1);
    *offset += 1;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Decode the full ordered field prefix of mypalletizer_communication/SetCoordsResponse.
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
    roswasmc_bounded_1_mypalletizer_communication_SetCoordsResponse_read_fields(unsigned char const* p,
                                                                                size_t n,
                                                                                size_t* offset,
                                                                                roswasmc_bounded_1_mypalletizer_communication_SetCoordsResponse* value)
{
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->Flag, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_1_mypalletizer_communication_SetCoordsResponse_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode the complete mypalletizer_communication/SetCoordsResponse record transactionally.
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
    roswasmc_bounded_1_mypalletizer_communication_SetCoordsResponse_encode(roswasmc_bounded_1_mypalletizer_communication_SetCoordsResponse const* value,
                                                                           void* output,
                                                                           size_t capacity,
                                                                           size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_mypalletizer_communication_SetCoordsResponse_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_mypalletizer_communication_SetCoordsResponse_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_mypalletizer_communication_SetCoordsResponse_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete mypalletizer_communication/SetCoordsResponse record transactionally.
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
    roswasmc_bounded_1_mypalletizer_communication_SetCoordsResponse_decode(void const* input,
                                                                           size_t length,
                                                                           roswasmc_bounded_1_mypalletizer_communication_SetCoordsResponse* value)
{
    roswasmc_bounded_1_mypalletizer_communication_SetCoordsResponse next =
        UWVM_BOUNDED_ZERO_VALUE(roswasmc_bounded_1_mypalletizer_communication_SetCoordsResponse);
    size_t offset = 0;
    if(!value || (length && !input) || length < 1u || length > 1u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_mypalletizer_communication_SetCoordsResponse_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#undef UWVM_BOUNDED_ASSERT
#endif
