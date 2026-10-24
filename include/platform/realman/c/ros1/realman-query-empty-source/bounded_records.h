/** @brief @file Generated bounded-v2 canonical values; no native ROS serialization or authority.
 * Every dynamic field has inline caller-owned capacity. Encode validates and measures
 * the full value before writes; decode commits one temporary only after full validation.
 * Supply distinct record, byte and size-output storage; overlap is explicitly refused.
 * Empty Service/Action components use a C layout dummy that is never a wire field. */
#ifndef UWVM_ROS_BOUNDED_RECORDS_DBCEA0C4BE75F37F2EE9BA4C051021BAAF938AED4F967A6BC45F4F51DA538CDE
#define UWVM_ROS_BOUNDED_RECORDS_DBCEA0C4BE75F37F2EE9BA4C051021BAAF938AED4F967A6BC45F4F51DA538CDE
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
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_MSGS_EMPTY)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_MSGS_EMPTY_0 != 0xdb848aa4UL ||                                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_MSGS_EMPTY_1 != 0x42ee7293UL ||                                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_MSGS_EMPTY_2 != 0xec04da96UL ||                                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_MSGS_EMPTY_3 != 0x9494a486UL ||                                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_MSGS_EMPTY_4 != 0xb691e6deUL ||                                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_MSGS_EMPTY_5 != 0x5575157eUL ||                                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_MSGS_EMPTY_6 != 0x8042e954UL ||                                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_MSGS_EMPTY_7 != 0x35d8050bUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_MSGS_EMPTY 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_MSGS_EMPTY_0 0xdb848aa4UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_MSGS_EMPTY_1 0x42ee7293UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_MSGS_EMPTY_2 0xec04da96UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_MSGS_EMPTY_3 0x9494a486UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_MSGS_EMPTY_4 0xb691e6deUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_MSGS_EMPTY_5 0x5575157eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_MSGS_EMPTY_6 0x8042e954UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_1_STD_MSGS_EMPTY_7 0x35d8050bUL

/** @brief Complete ROS1 std_msgs/Empty value; no field projects away native data. */
/**
 * @brief Complete ROS 1 std_msgs/Empty value.
 * @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes
 * and is identified by UWVMROS1_f54b7880aaea96d2bf731438bf8008205b6b4708a00e2bb7435927cf79318b85.
 * @native No native identity is established by this source record.
 * @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
 * subscriber, service or Action owner.
 * @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
 * readers/writers must not be shared during a call.
 * @permissions None for construction or pure encoding; transport needs a separate exact grant.
 * @version The selected finite schema profile fixes field order, bounds and constants.
 * @see share/platform/ros/rs/API-CONTRACT.md
 */
typedef struct roswasmc_bounded_1_std_msgs_Empty
{
    /** @brief Local C layout placeholder; empty native component has exactly zero canonical bytes. */
    unsigned char local_empty_placeholder;
} roswasmc_bounded_1_std_msgs_Empty;

/**
 * @brief Maximum complete canonical record extent in bytes.
 * @details A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport
 * reservation.
 */
# define ROSWASMC_BOUNDED_1_STD_MSGS_EMPTY_MAX_WIRE_BYTES 0u
/**
 * @brief Minimum complete canonical record extent in bytes.
 * @details Decoders reject shorter bodies before exposing any successful original record.
 */
# define ROSWASMC_BOUNDED_1_STD_MSGS_EMPTY_MIN_WIRE_BYTES 0u
/**
 * @brief Exact complete finite canonical codec identity.
 * @details Binds every original field, order, width, shape, and quota. This is distinct from the independently
 * observed native ROS type identity.
 */
# define ROSWASMC_BOUNDED_1_STD_MSGS_EMPTY_CODEC_IDENTITY "UWVMROS1_f54b7880aaea96d2bf731438bf8008205b6b4708a00e2bb7435927cf79318b85"

/** @brief Validate every initialized field without allocation, writes or ROS calls. */
/**
 * @brief Validate every field of std_msgs/Empty.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete immutable record; NULL is refused.
 * @return Nonzero only when all active fields satisfy the finite canonical profile.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline int roswasmc_bounded_1_std_msgs_Empty_valid(roswasmc_bounded_1_std_msgs_Empty const* value)
{
    if(!value)
        return 0;
    return 1;
}

/** @brief Return exact active-prefix wire size; the full value must already be valid. */
/**
 * @brief Measure the complete active canonical extent of std_msgs/Empty.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete already validated record, borrowed through return.
 * @return Exact initialized wire byte count; native structure padding is excluded.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline size_t roswasmc_bounded_1_std_msgs_Empty_wire_size(roswasmc_bounded_1_std_msgs_Empty const* value)
{
    (void)value;
    size_t n = 0;
    return n;
}

/** @brief Internal writer enters only after full validation, capacity and overlap checks. */
/**
 * @brief Append all fields of std_msgs/Empty to an internal canonical buffer.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] value Complete prevalidated immutable record.
 * @param[out] p Sufficient exclusive output storage established by the public encoder.
 * @param[in,out] offset Exclusive initialized writer cursor.
 * @return No value; internal caller guarantees the measured capacity.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline void roswasmc_bounded_1_std_msgs_Empty_write_fields(roswasmc_bounded_1_std_msgs_Empty const* value, unsigned char* p, size_t* offset)
{
    (void)value;
    (void)p;
    (void)offset;
}

/** @brief Internal reader fills only the public decoder temporary and checks every cursor move. */
/**
 * @brief Decode the full ordered field prefix of std_msgs/Empty.
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
static inline int roswasmc_bounded_1_std_msgs_Empty_read_fields(unsigned char const* p, size_t n, size_t* offset, roswasmc_bounded_1_std_msgs_Empty* value)
{
    (void)p;
    (void)n;
    (void)offset;
    return roswasmc_bounded_1_std_msgs_Empty_valid(value);
}

/** @brief Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
/**
 * @brief Encode the complete std_msgs/Empty record transactionally.
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
static inline uint32_t roswasmc_bounded_1_std_msgs_Empty_encode(roswasmc_bounded_1_std_msgs_Empty const* value, void* output, size_t capacity, size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_1_std_msgs_Empty_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_1_std_msgs_Empty_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_1_std_msgs_Empty_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** @brief Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
/**
 * @brief Decode exactly one complete std_msgs/Empty record transactionally.
 * @details Preserve the original declared field order, widths, signedness and finite bounds. This pure
 * synchronous codec performs no ROS operation or allocation. Caller owns every buffer and inline record;
 * serialize mutation.
 * @param[in] input Immutable complete canonical body, disjoint from value.
 * @param[in] length Exact input byte count; trailing bytes are refused.
 * @param[out] value Caller-owned complete record; unchanged on every refusal.
 * @return Status 0 on complete success, otherwise 22; no partial record is exposed.
 * @ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.
 */
static inline uint32_t roswasmc_bounded_1_std_msgs_Empty_decode(void const* input, size_t length, roswasmc_bounded_1_std_msgs_Empty* value)
{
    roswasmc_bounded_1_std_msgs_Empty next = UWVM_ROS_C_ZERO_INITIALIZER;
    size_t offset = 0;
    if(!value || (length && !input) || length < 0u || length > 0u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_1_std_msgs_Empty_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#undef UWVM_BOUNDED_ASSERT
#endif
