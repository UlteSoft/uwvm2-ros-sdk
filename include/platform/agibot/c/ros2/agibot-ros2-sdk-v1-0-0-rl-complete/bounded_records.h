/**
 * @file bounded_records.h
 * @brief Full agibot c codecs and original record metadata.
 * @details Complete agibot ros2_sdk_v1_0_0_rl values in c. 19 original records retain 71 fields and 19 interface
 * descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native definitions.
 * Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the profile API
 * manual under document/platform/agibot/en_US/catalog/.
 */
/** @file Generated bounded-v2 canonical values; no native ROS serialization or authority.
 * Every dynamic field has inline caller-owned capacity. Encode validates and measures
 * the full value before writes; decode commits one temporary only after full validation.
 * Supply distinct record, byte and size-output storage; overlap is explicitly refused.
 * Empty Service/Action components use a C layout dummy that is never a wire field. */
#ifndef UWVM_ROS_BOUNDED_RECORDS_390A9B7EEA36FC6A67AF6CA14D16073F7369A774ADCA4E980BE7C1B5C400CA24
#define UWVM_ROS_BOUNDED_RECORDS_390A9B7EEA36FC6A67AF6CA14D16073F7369A774ADCA4E980BE7C1B5C400CA24
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
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_DOMAINERRORSTATE)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_DOMAINERRORSTATE_0 != 0xdbd21af8UL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_DOMAINERRORSTATE_1 != 0x830ccf82UL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_DOMAINERRORSTATE_2 != 0xa01c8608UL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_DOMAINERRORSTATE_3 != 0x28f8a684UL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_DOMAINERRORSTATE_4 != 0xedef425bUL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_DOMAINERRORSTATE_5 != 0x23e89698UL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_DOMAINERRORSTATE_6 != 0xab960663UL ||                                                           \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_DOMAINERRORSTATE_7 != 0x696ba287UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_DOMAINERRORSTATE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_DOMAINERRORSTATE_0 0xdbd21af8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_DOMAINERRORSTATE_1 0x830ccf82UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_DOMAINERRORSTATE_2 0xa01c8608UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_DOMAINERRORSTATE_3 0x28f8a684UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_DOMAINERRORSTATE_4 0xedef425bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_DOMAINERRORSTATE_5 0x23e89698UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_DOMAINERRORSTATE_6 0xab960663UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_DOMAINERRORSTATE_7 0x696ba287UL

/** Complete ROS2 aimdk_msgs/msg/DomainErrorState value; no field projects away native data. */
typedef struct roswasmc_bounded_2_aimdk_msgs_msg_DomainErrorState
{
    /** Declared field value; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t value;
} roswasmc_bounded_2_aimdk_msgs_msg_DomainErrorState;

# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_DOMAINERRORSTATE_MAX_WIRE_BYTES 1u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_DOMAINERRORSTATE_MIN_WIRE_BYTES 1u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_DOMAINERRORSTATE_CODEC_IDENTITY "UWVMROS1_b8ba44e26d3df3c4c71f1ca9d4e91e967c8d8e1d95042ac7433a9a3294e9e231"
/** Original scalar constant NONE=0x00; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_DOMAINERRORSTATE_NONE UINT32_C(0)
/** Original scalar constant DAMPING=0x01; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_DOMAINERRORSTATE_DAMPING UINT32_C(1)
/** Original scalar constant POWERDOWN=0x02; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_DOMAINERRORSTATE_POWERDOWN UINT32_C(2)
/** Original scalar constant DISABLE=0x03; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_DOMAINERRORSTATE_DISABLE UINT32_C(3)
/** Original scalar constant DISCONNECT=0x04; no instance/wire field. */
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_DOMAINERRORSTATE_DISCONNECT UINT32_C(4)

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_aimdk_msgs_msg_DomainErrorState_valid(roswasmc_bounded_2_aimdk_msgs_msg_DomainErrorState const* value)
{
    if(!value)
        return 0;
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_aimdk_msgs_msg_DomainErrorState_wire_size(roswasmc_bounded_2_aimdk_msgs_msg_DomainErrorState const* value)
{
    size_t n = 0;
    n += 1;
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_aimdk_msgs_msg_DomainErrorState_write_fields(roswasmc_bounded_2_aimdk_msgs_msg_DomainErrorState const* value,
                                                                                   unsigned char* p,
                                                                                   size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->value, 1);
    *offset += 1;
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_aimdk_msgs_msg_DomainErrorState_read_fields(unsigned char const* p,
                                                                                 size_t n,
                                                                                 size_t* offset,
                                                                                 roswasmc_bounded_2_aimdk_msgs_msg_DomainErrorState* value)
{
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->value, &bits, 1);
    }
    *offset += 1;
    return roswasmc_bounded_2_aimdk_msgs_msg_DomainErrorState_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_aimdk_msgs_msg_DomainErrorState_encode(roswasmc_bounded_2_aimdk_msgs_msg_DomainErrorState const* value,
                                                                                 void* output,
                                                                                 size_t capacity,
                                                                                 size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_aimdk_msgs_msg_DomainErrorState_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_aimdk_msgs_msg_DomainErrorState_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_aimdk_msgs_msg_DomainErrorState_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_aimdk_msgs_msg_DomainErrorState_decode(void const* input, size_t length, roswasmc_bounded_2_aimdk_msgs_msg_DomainErrorState* value)
{
    roswasmc_bounded_2_aimdk_msgs_msg_DomainErrorState next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 1u || length > 1u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_DomainErrorState_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
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
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTSTATE_0 != 0xd7e91123UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTSTATE_1 != 0x276752f9UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTSTATE_2 != 0x543f5817UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTSTATE_3 != 0xe3b44851UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTSTATE_4 != 0x55d5f0e1UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTSTATE_5 != 0x145c0d88UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTSTATE_6 != 0x127c2e52UL ||                                                                 \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTSTATE_7 != 0x2f849853UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTSTATE 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTSTATE_0 0xd7e91123UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTSTATE_1 0x276752f9UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTSTATE_2 0x543f5817UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTSTATE_3 0xe3b44851UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTSTATE_4 0x55d5f0e1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTSTATE_5 0x145c0d88UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTSTATE_6 0x127c2e52UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTSTATE_7 0x2f849853UL

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
    /** Declared field error_code; canonical capacity is part of CODEC_IDENTITY. */
    uint16_t error_code;
} roswasmc_bounded_2_aimdk_msgs_msg_JointState;

# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTSTATE_MAX_WIRE_BYTES 158u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTSTATE_MIN_WIRE_BYTES 30u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTSTATE_CODEC_IDENTITY "UWVMROS1_00a7d9637f691d224a78c967343dd16161b29e12ca6f9fafadc0af5d7e405a53"

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
    n += 2;
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
    uwvm_bounded_put(p + *offset, (uint64_t)value->error_code, 2);
    *offset += 2;
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
    if(*offset > n || n - *offset < 2)
        return 0;
    {
        uint16_t bits = (uint16_t)uwvm_bounded_get(p + *offset, 2);
        uwvm_bounded_copy(&value->error_code, &bits, 2);
    }
    *offset += 2;
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
    if(!value || (length && !input) || length < 30u || length > 158u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_JointState_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTSTATEARRAY)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTSTATEARRAY_0 != 0x669a01c2UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTSTATEARRAY_1 != 0xa788876bUL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTSTATEARRAY_2 != 0xe8d642f5UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTSTATEARRAY_3 != 0x65a20f02UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTSTATEARRAY_4 != 0x1ec32724UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTSTATEARRAY_5 != 0xada1a1a5UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTSTATEARRAY_6 != 0xfa12c629UL ||                                                            \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTSTATEARRAY_7 != 0xd4369064UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTSTATEARRAY 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTSTATEARRAY_0 0x669a01c2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTSTATEARRAY_1 0xa788876bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTSTATEARRAY_2 0xe8d642f5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTSTATEARRAY_3 0x65a20f02UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTSTATEARRAY_4 0x1ec32724UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTSTATEARRAY_5 0xada1a1a5UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTSTATEARRAY_6 0xfa12c629UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTSTATEARRAY_7 0xd4369064UL

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
    /** Declared field state; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_DomainErrorState state;
    /** Declared field joints; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_JointStateArray_joints_sequence joints;
} roswasmc_bounded_2_aimdk_msgs_msg_JointStateArray;

# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTSTATEARRAY_MAX_WIRE_BYTES 10269u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTSTATEARRAY_MIN_WIRE_BYTES 29u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_JOINTSTATEARRAY_CODEC_IDENTITY "UWVMROS1_4768076ae2f8c344f4030e7ca926d311e7706042187a2f9864a8a63f289f297e"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_aimdk_msgs_msg_JointStateArray_valid(roswasmc_bounded_2_aimdk_msgs_msg_JointStateArray const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_MessageHeader_valid(&value->header))
        return 0;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_DomainErrorState_valid(&value->state))
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
    n += roswasmc_bounded_2_aimdk_msgs_msg_DomainErrorState_wire_size(&value->state);
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
    roswasmc_bounded_2_aimdk_msgs_msg_DomainErrorState_write_fields(&value->state, p, offset);
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
    if(!roswasmc_bounded_2_aimdk_msgs_msg_DomainErrorState_read_fields(p, n, offset, &value->state))
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
    if(!value || (length && !input) || length < 29u || length > 10269u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_JointStateArray_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MODULECHANNELINFO)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MODULECHANNELINFO_0 != 0x98e0b060UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MODULECHANNELINFO_1 != 0x2d63379bUL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MODULECHANNELINFO_2 != 0xc0b1798fUL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MODULECHANNELINFO_3 != 0x78486264UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MODULECHANNELINFO_4 != 0x87b52737UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MODULECHANNELINFO_5 != 0xed42894cUL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MODULECHANNELINFO_6 != 0x67a96e61UL ||                                                          \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MODULECHANNELINFO_7 != 0xc58a48e0UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MODULECHANNELINFO 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MODULECHANNELINFO_0 0x98e0b060UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MODULECHANNELINFO_1 0x2d63379bUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MODULECHANNELINFO_2 0xc0b1798fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MODULECHANNELINFO_3 0x78486264UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MODULECHANNELINFO_4 0x87b52737UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MODULECHANNELINFO_5 0xed42894cUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MODULECHANNELINFO_6 0x67a96e61UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MODULECHANNELINFO_7 0xc58a48e0UL

/** UTF-8 byte storage for aimdk_msgs/msg/ModuleChannelInfo.name; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_aimdk_msgs_msg_ModuleChannelInfo_name_text;

/** UTF-8 byte storage for aimdk_msgs/msg/ModuleChannelInfo.type; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_aimdk_msgs_msg_ModuleChannelInfo_type_text;

/** UTF-8 byte storage for aimdk_msgs/msg/ModuleChannelInfo.backends; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[64];
} roswasmc_bounded_2_aimdk_msgs_msg_ModuleChannelInfo_backends_text;

/** At most4 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_2_aimdk_msgs_msg_ModuleChannelInfo_backends_text data[4];
} roswasmc_bounded_2_aimdk_msgs_msg_ModuleChannelInfo_backends_sequence;

/** Complete ROS2 aimdk_msgs/msg/ModuleChannelInfo value; no field projects away native data. */
typedef struct roswasmc_bounded_2_aimdk_msgs_msg_ModuleChannelInfo
{
    /** Declared field name; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_ModuleChannelInfo_name_text name;
    /** Declared field type; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_ModuleChannelInfo_type_text type;
    /** Declared field frequency; canonical capacity is part of CODEC_IDENTITY. */
    double frequency;
    /** Declared field min_time_diff; canonical capacity is part of CODEC_IDENTITY. */
    double min_time_diff;
    /** Declared field max_time_diff; canonical capacity is part of CODEC_IDENTITY. */
    double max_time_diff;
    /** Declared field std_dev; canonical capacity is part of CODEC_IDENTITY. */
    double std_dev;
    /** Declared field window_size; canonical capacity is part of CODEC_IDENTITY. */
    int32_t window_size;
    /** Declared field timeout_threshold; canonical capacity is part of CODEC_IDENTITY. */
    double timeout_threshold;
    /** Declared field is_active; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t is_active;
    /** Declared field is_timeout; canonical capacity is part of CODEC_IDENTITY. */
    uint8_t is_timeout;
    /** Declared field backends; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_ModuleChannelInfo_backends_sequence backends;
} roswasmc_bounded_2_aimdk_msgs_msg_ModuleChannelInfo;

# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MODULECHANNELINFO_MAX_WIRE_BYTES 586u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MODULECHANNELINFO_MIN_WIRE_BYTES 58u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MODULECHANNELINFO_CODEC_IDENTITY "UWVMROS1_d6cfacaf7cd28f18d14ef270b868b354e896f937181c8d29279e1eac21990696"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_aimdk_msgs_msg_ModuleChannelInfo_valid(roswasmc_bounded_2_aimdk_msgs_msg_ModuleChannelInfo const* value)
{
    if(!value)
        return 0;
    if(value->name.size > 128u || !uwvm_bounded_utf8(value->name.data, value->name.size))
        return 0;
    if(value->type.size > 128u || !uwvm_bounded_utf8(value->type.data, value->type.size))
        return 0;
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->frequency, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
            return 0;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->min_time_diff, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
            return 0;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->max_time_diff, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
            return 0;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->std_dev, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
            return 0;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->timeout_threshold, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
            return 0;
    }
    if(value->is_active > 1)
        return 0;
    if(value->is_timeout > 1)
        return 0;
    if(value->backends.size > 4u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->backends.size; ++i)
        {
            if(value->backends.data[i].size > 64u || !uwvm_bounded_utf8(value->backends.data[i].data, value->backends.data[i].size))
                return 0;
        }
    }
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_aimdk_msgs_msg_ModuleChannelInfo_wire_size(roswasmc_bounded_2_aimdk_msgs_msg_ModuleChannelInfo const* value)
{
    size_t n = 0;
    n += 4 + value->name.size;
    n += 4 + value->type.size;
    n += 8;
    n += 8;
    n += 8;
    n += 8;
    n += 4;
    n += 8;
    n += 1;
    n += 1;
    n += 4;
    if(value->backends.size > 4u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->backends.size; ++i)
        {
            n += 4 + value->backends.data[i].size;
        }
    }
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_aimdk_msgs_msg_ModuleChannelInfo_write_fields(roswasmc_bounded_2_aimdk_msgs_msg_ModuleChannelInfo const* value,
                                                                                    unsigned char* p,
                                                                                    size_t* offset)
{
    uwvm_bounded_put(p + *offset, value->name.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->name.data, value->name.size);
    *offset += value->name.size;
    uwvm_bounded_put(p + *offset, value->type.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->type.data, value->type.size);
    *offset += value->type.size;
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->frequency, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->min_time_diff, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->max_time_diff, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->std_dev, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    uwvm_bounded_put(p + *offset, (uint64_t)value->window_size, 4);
    *offset += 4;
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->timeout_threshold, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    uwvm_bounded_put(p + *offset, (uint64_t)value->is_active, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, (uint64_t)value->is_timeout, 1);
    *offset += 1;
    uwvm_bounded_put(p + *offset, value->backends.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->backends.size; ++i)
        {
            uwvm_bounded_put(p + *offset, value->backends.data[i].size, 4);
            *offset += 4;
            uwvm_bounded_copy(p + *offset, value->backends.data[i].data, value->backends.data[i].size);
            *offset += value->backends.data[i].size;
        }
    }
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_aimdk_msgs_msg_ModuleChannelInfo_read_fields(unsigned char const* p,
                                                                                  size_t n,
                                                                                  size_t* offset,
                                                                                  roswasmc_bounded_2_aimdk_msgs_msg_ModuleChannelInfo* value)
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
    value->type.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->type.size > 128u || value->type.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->type.data, p + *offset, value->type.size);
    *offset += value->type.size;
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->frequency, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->min_time_diff, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->max_time_diff, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->std_dev, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->window_size, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->timeout_threshold, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->is_active, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 1)
        return 0;
    {
        uint8_t bits = (uint8_t)uwvm_bounded_get(p + *offset, 1);
        uwvm_bounded_copy(&value->is_timeout, &bits, 1);
    }
    *offset += 1;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->backends.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->backends.size > 4u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->backends.size; ++i)
        {
            if(*offset > n || n - *offset < 4)
                return 0;
            value->backends.data[i].size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
            *offset += 4;
            if(value->backends.data[i].size > 64u || value->backends.data[i].size > n - *offset)
                return 0;
            uwvm_bounded_copy(value->backends.data[i].data, p + *offset, value->backends.data[i].size);
            *offset += value->backends.data[i].size;
        }
    }
    return roswasmc_bounded_2_aimdk_msgs_msg_ModuleChannelInfo_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_aimdk_msgs_msg_ModuleChannelInfo_encode(roswasmc_bounded_2_aimdk_msgs_msg_ModuleChannelInfo const* value,
                                                                                  void* output,
                                                                                  size_t capacity,
                                                                                  size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_aimdk_msgs_msg_ModuleChannelInfo_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_aimdk_msgs_msg_ModuleChannelInfo_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_aimdk_msgs_msg_ModuleChannelInfo_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_aimdk_msgs_msg_ModuleChannelInfo_decode(void const* input, size_t length, roswasmc_bounded_2_aimdk_msgs_msg_ModuleChannelInfo* value)
{
    roswasmc_bounded_2_aimdk_msgs_msg_ModuleChannelInfo next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 58u || length > 586u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_ModuleChannelInfo_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MODULERPCINFO)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MODULERPCINFO_0 != 0x37d2cbe6UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MODULERPCINFO_1 != 0x8c5e7e90UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MODULERPCINFO_2 != 0xf212ea51UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MODULERPCINFO_3 != 0xe032247fUL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MODULERPCINFO_4 != 0xd21f0c64UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MODULERPCINFO_5 != 0xa298ca94UL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MODULERPCINFO_6 != 0x4b43328eUL ||                                                              \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MODULERPCINFO_7 != 0x43ee6325UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MODULERPCINFO 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MODULERPCINFO_0 0x37d2cbe6UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MODULERPCINFO_1 0x8c5e7e90UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MODULERPCINFO_2 0xf212ea51UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MODULERPCINFO_3 0xe032247fUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MODULERPCINFO_4 0xd21f0c64UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MODULERPCINFO_5 0xa298ca94UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MODULERPCINFO_6 0x4b43328eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MODULERPCINFO_7 0x43ee6325UL

/** UTF-8 byte storage for aimdk_msgs/msg/ModuleRpcInfo.name; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_aimdk_msgs_msg_ModuleRpcInfo_name_text;

/** UTF-8 byte storage for aimdk_msgs/msg/ModuleRpcInfo.req_type; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_aimdk_msgs_msg_ModuleRpcInfo_req_type_text;

/** UTF-8 byte storage for aimdk_msgs/msg/ModuleRpcInfo.res_type; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_aimdk_msgs_msg_ModuleRpcInfo_res_type_text;

/** UTF-8 byte storage for aimdk_msgs/msg/ModuleRpcInfo.backends; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[64];
} roswasmc_bounded_2_aimdk_msgs_msg_ModuleRpcInfo_backends_text;

/** At most4 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_2_aimdk_msgs_msg_ModuleRpcInfo_backends_text data[4];
} roswasmc_bounded_2_aimdk_msgs_msg_ModuleRpcInfo_backends_sequence;

/** Complete ROS2 aimdk_msgs/msg/ModuleRpcInfo value; no field projects away native data. */
typedef struct roswasmc_bounded_2_aimdk_msgs_msg_ModuleRpcInfo
{
    /** Declared field name; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_ModuleRpcInfo_name_text name;
    /** Declared field req_type; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_ModuleRpcInfo_req_type_text req_type;
    /** Declared field res_type; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_ModuleRpcInfo_res_type_text res_type;
    /** Declared field backends; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_ModuleRpcInfo_backends_sequence backends;
} roswasmc_bounded_2_aimdk_msgs_msg_ModuleRpcInfo;

# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MODULERPCINFO_MAX_WIRE_BYTES 672u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MODULERPCINFO_MIN_WIRE_BYTES 16u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MODULERPCINFO_CODEC_IDENTITY "UWVMROS1_e06e5cd98eaa4f17cebd95db53f6aa175cdc3682f3912f365947f8f8950d02d8"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_aimdk_msgs_msg_ModuleRpcInfo_valid(roswasmc_bounded_2_aimdk_msgs_msg_ModuleRpcInfo const* value)
{
    if(!value)
        return 0;
    if(value->name.size > 128u || !uwvm_bounded_utf8(value->name.data, value->name.size))
        return 0;
    if(value->req_type.size > 128u || !uwvm_bounded_utf8(value->req_type.data, value->req_type.size))
        return 0;
    if(value->res_type.size > 128u || !uwvm_bounded_utf8(value->res_type.data, value->res_type.size))
        return 0;
    if(value->backends.size > 4u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->backends.size; ++i)
        {
            if(value->backends.data[i].size > 64u || !uwvm_bounded_utf8(value->backends.data[i].data, value->backends.data[i].size))
                return 0;
        }
    }
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_aimdk_msgs_msg_ModuleRpcInfo_wire_size(roswasmc_bounded_2_aimdk_msgs_msg_ModuleRpcInfo const* value)
{
    size_t n = 0;
    n += 4 + value->name.size;
    n += 4 + value->req_type.size;
    n += 4 + value->res_type.size;
    n += 4;
    if(value->backends.size > 4u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->backends.size; ++i)
        {
            n += 4 + value->backends.data[i].size;
        }
    }
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_aimdk_msgs_msg_ModuleRpcInfo_write_fields(roswasmc_bounded_2_aimdk_msgs_msg_ModuleRpcInfo const* value, unsigned char* p, size_t* offset)
{
    uwvm_bounded_put(p + *offset, value->name.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->name.data, value->name.size);
    *offset += value->name.size;
    uwvm_bounded_put(p + *offset, value->req_type.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->req_type.data, value->req_type.size);
    *offset += value->req_type.size;
    uwvm_bounded_put(p + *offset, value->res_type.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->res_type.data, value->res_type.size);
    *offset += value->res_type.size;
    uwvm_bounded_put(p + *offset, value->backends.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->backends.size; ++i)
        {
            uwvm_bounded_put(p + *offset, value->backends.data[i].size, 4);
            *offset += 4;
            uwvm_bounded_copy(p + *offset, value->backends.data[i].data, value->backends.data[i].size);
            *offset += value->backends.data[i].size;
        }
    }
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_aimdk_msgs_msg_ModuleRpcInfo_read_fields(unsigned char const* p,
                                                                              size_t n,
                                                                              size_t* offset,
                                                                              roswasmc_bounded_2_aimdk_msgs_msg_ModuleRpcInfo* value)
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
    value->req_type.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->req_type.size > 128u || value->req_type.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->req_type.data, p + *offset, value->req_type.size);
    *offset += value->req_type.size;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->res_type.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->res_type.size > 128u || value->res_type.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->res_type.data, p + *offset, value->res_type.size);
    *offset += value->res_type.size;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->backends.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->backends.size > 4u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->backends.size; ++i)
        {
            if(*offset > n || n - *offset < 4)
                return 0;
            value->backends.data[i].size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
            *offset += 4;
            if(value->backends.data[i].size > 64u || value->backends.data[i].size > n - *offset)
                return 0;
            uwvm_bounded_copy(value->backends.data[i].data, p + *offset, value->backends.data[i].size);
            *offset += value->backends.data[i].size;
        }
    }
    return roswasmc_bounded_2_aimdk_msgs_msg_ModuleRpcInfo_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_aimdk_msgs_msg_ModuleRpcInfo_encode(roswasmc_bounded_2_aimdk_msgs_msg_ModuleRpcInfo const* value,
                                                                              void* output,
                                                                              size_t capacity,
                                                                              size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_aimdk_msgs_msg_ModuleRpcInfo_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_aimdk_msgs_msg_ModuleRpcInfo_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_aimdk_msgs_msg_ModuleRpcInfo_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_aimdk_msgs_msg_ModuleRpcInfo_decode(void const* input, size_t length, roswasmc_bounded_2_aimdk_msgs_msg_ModuleRpcInfo* value)
{
    roswasmc_bounded_2_aimdk_msgs_msg_ModuleRpcInfo next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 16u || length > 672u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_ModuleRpcInfo_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MODULERESOURCEINFO)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MODULERESOURCEINFO_0 != 0x89d77626UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MODULERESOURCEINFO_1 != 0x897632daUL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MODULERESOURCEINFO_2 != 0xd85a9e95UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MODULERESOURCEINFO_3 != 0xa83835b2UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MODULERESOURCEINFO_4 != 0x0adc8926UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MODULERESOURCEINFO_5 != 0xfd19c465UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MODULERESOURCEINFO_6 != 0xf0fe56d1UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MODULERESOURCEINFO_7 != 0x6e7df5f5UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MODULERESOURCEINFO 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MODULERESOURCEINFO_0 0x89d77626UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MODULERESOURCEINFO_1 0x897632daUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MODULERESOURCEINFO_2 0xd85a9e95UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MODULERESOURCEINFO_3 0xa83835b2UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MODULERESOURCEINFO_4 0x0adc8926UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MODULERESOURCEINFO_5 0xfd19c465UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MODULERESOURCEINFO_6 0xf0fe56d1UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MODULERESOURCEINFO_7 0x6e7df5f5UL

/** UTF-8 byte storage for aimdk_msgs/msg/ModuleResourceInfo.module_name; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_aimdk_msgs_msg_ModuleResourceInfo_module_name_text;

/** At most2 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_2_aimdk_msgs_msg_ModuleRpcInfo data[2];
} roswasmc_bounded_2_aimdk_msgs_msg_ModuleResourceInfo_rpc_clients_sequence;

/** At most2 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_2_aimdk_msgs_msg_ModuleRpcInfo data[2];
} roswasmc_bounded_2_aimdk_msgs_msg_ModuleResourceInfo_rpc_services_sequence;

/** At most2 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_2_aimdk_msgs_msg_ModuleChannelInfo data[2];
} roswasmc_bounded_2_aimdk_msgs_msg_ModuleResourceInfo_pub_channels_sequence;

/** At most2 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_2_aimdk_msgs_msg_ModuleChannelInfo data[2];
} roswasmc_bounded_2_aimdk_msgs_msg_ModuleResourceInfo_sub_channels_sequence;

/** Complete ROS2 aimdk_msgs/msg/ModuleResourceInfo value; no field projects away native data. */
typedef struct roswasmc_bounded_2_aimdk_msgs_msg_ModuleResourceInfo
{
    /** Declared field module_name; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_ModuleResourceInfo_module_name_text module_name;
    /** Declared field rpc_clients; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_ModuleResourceInfo_rpc_clients_sequence rpc_clients;
    /** Declared field rpc_services; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_ModuleResourceInfo_rpc_services_sequence rpc_services;
    /** Declared field pub_channels; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_ModuleResourceInfo_pub_channels_sequence pub_channels;
    /** Declared field sub_channels; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_ModuleResourceInfo_sub_channels_sequence sub_channels;
} roswasmc_bounded_2_aimdk_msgs_msg_ModuleResourceInfo;

# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MODULERESOURCEINFO_MAX_WIRE_BYTES 5180u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MODULERESOURCEINFO_MIN_WIRE_BYTES 20u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_MODULERESOURCEINFO_CODEC_IDENTITY "UWVMROS1_de2a3067e5bff40e7bd9949ce9923b6be34c8f822f74a036402a9253717aaa8f"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_aimdk_msgs_msg_ModuleResourceInfo_valid(roswasmc_bounded_2_aimdk_msgs_msg_ModuleResourceInfo const* value)
{
    if(!value)
        return 0;
    if(value->module_name.size > 128u || !uwvm_bounded_utf8(value->module_name.data, value->module_name.size))
        return 0;
    if(value->rpc_clients.size > 2u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->rpc_clients.size; ++i)
        {
            if(!roswasmc_bounded_2_aimdk_msgs_msg_ModuleRpcInfo_valid(&value->rpc_clients.data[i]))
                return 0;
        }
    }
    if(value->rpc_services.size > 2u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->rpc_services.size; ++i)
        {
            if(!roswasmc_bounded_2_aimdk_msgs_msg_ModuleRpcInfo_valid(&value->rpc_services.data[i]))
                return 0;
        }
    }
    if(value->pub_channels.size > 2u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->pub_channels.size; ++i)
        {
            if(!roswasmc_bounded_2_aimdk_msgs_msg_ModuleChannelInfo_valid(&value->pub_channels.data[i]))
                return 0;
        }
    }
    if(value->sub_channels.size > 2u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->sub_channels.size; ++i)
        {
            if(!roswasmc_bounded_2_aimdk_msgs_msg_ModuleChannelInfo_valid(&value->sub_channels.data[i]))
                return 0;
        }
    }
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_aimdk_msgs_msg_ModuleResourceInfo_wire_size(roswasmc_bounded_2_aimdk_msgs_msg_ModuleResourceInfo const* value)
{
    size_t n = 0;
    n += 4 + value->module_name.size;
    n += 4;
    if(value->rpc_clients.size > 2u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->rpc_clients.size; ++i)
        {
            n += roswasmc_bounded_2_aimdk_msgs_msg_ModuleRpcInfo_wire_size(&value->rpc_clients.data[i]);
        }
    }
    n += 4;
    if(value->rpc_services.size > 2u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->rpc_services.size; ++i)
        {
            n += roswasmc_bounded_2_aimdk_msgs_msg_ModuleRpcInfo_wire_size(&value->rpc_services.data[i]);
        }
    }
    n += 4;
    if(value->pub_channels.size > 2u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->pub_channels.size; ++i)
        {
            n += roswasmc_bounded_2_aimdk_msgs_msg_ModuleChannelInfo_wire_size(&value->pub_channels.data[i]);
        }
    }
    n += 4;
    if(value->sub_channels.size > 2u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->sub_channels.size; ++i)
        {
            n += roswasmc_bounded_2_aimdk_msgs_msg_ModuleChannelInfo_wire_size(&value->sub_channels.data[i]);
        }
    }
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_aimdk_msgs_msg_ModuleResourceInfo_write_fields(roswasmc_bounded_2_aimdk_msgs_msg_ModuleResourceInfo const* value,
                                                                                     unsigned char* p,
                                                                                     size_t* offset)
{
    uwvm_bounded_put(p + *offset, value->module_name.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->module_name.data, value->module_name.size);
    *offset += value->module_name.size;
    uwvm_bounded_put(p + *offset, value->rpc_clients.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->rpc_clients.size; ++i)
        {
            roswasmc_bounded_2_aimdk_msgs_msg_ModuleRpcInfo_write_fields(&value->rpc_clients.data[i], p, offset);
        }
    }
    uwvm_bounded_put(p + *offset, value->rpc_services.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->rpc_services.size; ++i)
        {
            roswasmc_bounded_2_aimdk_msgs_msg_ModuleRpcInfo_write_fields(&value->rpc_services.data[i], p, offset);
        }
    }
    uwvm_bounded_put(p + *offset, value->pub_channels.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->pub_channels.size; ++i)
        {
            roswasmc_bounded_2_aimdk_msgs_msg_ModuleChannelInfo_write_fields(&value->pub_channels.data[i], p, offset);
        }
    }
    uwvm_bounded_put(p + *offset, value->sub_channels.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->sub_channels.size; ++i)
        {
            roswasmc_bounded_2_aimdk_msgs_msg_ModuleChannelInfo_write_fields(&value->sub_channels.data[i], p, offset);
        }
    }
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_aimdk_msgs_msg_ModuleResourceInfo_read_fields(unsigned char const* p,
                                                                                   size_t n,
                                                                                   size_t* offset,
                                                                                   roswasmc_bounded_2_aimdk_msgs_msg_ModuleResourceInfo* value)
{
    if(*offset > n || n - *offset < 4)
        return 0;
    value->module_name.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->module_name.size > 128u || value->module_name.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->module_name.data, p + *offset, value->module_name.size);
    *offset += value->module_name.size;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->rpc_clients.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->rpc_clients.size > 2u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->rpc_clients.size; ++i)
        {
            if(!roswasmc_bounded_2_aimdk_msgs_msg_ModuleRpcInfo_read_fields(p, n, offset, &value->rpc_clients.data[i]))
                return 0;
        }
    }
    if(*offset > n || n - *offset < 4)
        return 0;
    value->rpc_services.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->rpc_services.size > 2u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->rpc_services.size; ++i)
        {
            if(!roswasmc_bounded_2_aimdk_msgs_msg_ModuleRpcInfo_read_fields(p, n, offset, &value->rpc_services.data[i]))
                return 0;
        }
    }
    if(*offset > n || n - *offset < 4)
        return 0;
    value->pub_channels.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->pub_channels.size > 2u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->pub_channels.size; ++i)
        {
            if(!roswasmc_bounded_2_aimdk_msgs_msg_ModuleChannelInfo_read_fields(p, n, offset, &value->pub_channels.data[i]))
                return 0;
        }
    }
    if(*offset > n || n - *offset < 4)
        return 0;
    value->sub_channels.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->sub_channels.size > 2u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->sub_channels.size; ++i)
        {
            if(!roswasmc_bounded_2_aimdk_msgs_msg_ModuleChannelInfo_read_fields(p, n, offset, &value->sub_channels.data[i]))
                return 0;
        }
    }
    return roswasmc_bounded_2_aimdk_msgs_msg_ModuleResourceInfo_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_aimdk_msgs_msg_ModuleResourceInfo_encode(roswasmc_bounded_2_aimdk_msgs_msg_ModuleResourceInfo const* value,
                                                                                   void* output,
                                                                                   size_t capacity,
                                                                                   size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_aimdk_msgs_msg_ModuleResourceInfo_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_aimdk_msgs_msg_ModuleResourceInfo_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_aimdk_msgs_msg_ModuleResourceInfo_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_aimdk_msgs_msg_ModuleResourceInfo_decode(void const* input, size_t length, roswasmc_bounded_2_aimdk_msgs_msg_ModuleResourceInfo* value)
{
    roswasmc_bounded_2_aimdk_msgs_msg_ModuleResourceInfo next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 20u || length > 5180u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_ModuleResourceInfo_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_THREADRESOURCEINFO)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_THREADRESOURCEINFO_0 != 0xae004285UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_THREADRESOURCEINFO_1 != 0x1b99fb87UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_THREADRESOURCEINFO_2 != 0x458c7e3eUL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_THREADRESOURCEINFO_3 != 0x1cd4cb03UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_THREADRESOURCEINFO_4 != 0xe17d8642UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_THREADRESOURCEINFO_5 != 0x0f708b7aUL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_THREADRESOURCEINFO_6 != 0x0d3c1716UL ||                                                         \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_THREADRESOURCEINFO_7 != 0x0485a74bUL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_THREADRESOURCEINFO 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_THREADRESOURCEINFO_0 0xae004285UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_THREADRESOURCEINFO_1 0x1b99fb87UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_THREADRESOURCEINFO_2 0x458c7e3eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_THREADRESOURCEINFO_3 0x1cd4cb03UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_THREADRESOURCEINFO_4 0xe17d8642UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_THREADRESOURCEINFO_5 0x0f708b7aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_THREADRESOURCEINFO_6 0x0d3c1716UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_THREADRESOURCEINFO_7 0x0485a74bUL

/** UTF-8 byte storage for aimdk_msgs/msg/ThreadResourceInfo.thread_name; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_aimdk_msgs_msg_ThreadResourceInfo_thread_name_text;

/** UTF-8 byte storage for aimdk_msgs/msg/ThreadResourceInfo.cpu_sched_policy; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_aimdk_msgs_msg_ThreadResourceInfo_cpu_sched_policy_text;

/** At most16 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    int32_t data[16];
} roswasmc_bounded_2_aimdk_msgs_msg_ThreadResourceInfo_bounding_cpus_sequence;

/** Complete ROS2 aimdk_msgs/msg/ThreadResourceInfo value; no field projects away native data. */
typedef struct roswasmc_bounded_2_aimdk_msgs_msg_ThreadResourceInfo
{
    /** Declared field thread_id; canonical capacity is part of CODEC_IDENTITY. */
    uint64_t thread_id;
    /** Declared field thread_name; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_ThreadResourceInfo_thread_name_text thread_name;
    /** Declared field cpu_usage_ratio; canonical capacity is part of CODEC_IDENTITY. */
    double cpu_usage_ratio;
    /** Declared field cpu_sched_policy; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_ThreadResourceInfo_cpu_sched_policy_text cpu_sched_policy;
    /** Declared field cpu_sched_priority; canonical capacity is part of CODEC_IDENTITY. */
    int32_t cpu_sched_priority;
    /** Declared field bounding_cpus; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_ThreadResourceInfo_bounding_cpus_sequence bounding_cpus;
} roswasmc_bounded_2_aimdk_msgs_msg_ThreadResourceInfo;

# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_THREADRESOURCEINFO_MAX_WIRE_BYTES 352u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_THREADRESOURCEINFO_MIN_WIRE_BYTES 32u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_THREADRESOURCEINFO_CODEC_IDENTITY "UWVMROS1_7232a79e41b62d823fd87d761df60759839543aedbe5fa338fb46816687a0a15"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_aimdk_msgs_msg_ThreadResourceInfo_valid(roswasmc_bounded_2_aimdk_msgs_msg_ThreadResourceInfo const* value)
{
    if(!value)
        return 0;
    if(value->thread_name.size > 128u || !uwvm_bounded_utf8(value->thread_name.data, value->thread_name.size))
        return 0;
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->cpu_usage_ratio, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
            return 0;
    }
    if(value->cpu_sched_policy.size > 128u || !uwvm_bounded_utf8(value->cpu_sched_policy.data, value->cpu_sched_policy.size))
        return 0;
    if(value->bounding_cpus.size > 16u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->bounding_cpus.size; ++i)
        {
        }
    }
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_aimdk_msgs_msg_ThreadResourceInfo_wire_size(roswasmc_bounded_2_aimdk_msgs_msg_ThreadResourceInfo const* value)
{
    size_t n = 0;
    n += 8;
    n += 4 + value->thread_name.size;
    n += 8;
    n += 4 + value->cpu_sched_policy.size;
    n += 4;
    n += 4;
    if(value->bounding_cpus.size > 16u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->bounding_cpus.size; ++i)
        {
            n += 4;
        }
    }
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_aimdk_msgs_msg_ThreadResourceInfo_write_fields(roswasmc_bounded_2_aimdk_msgs_msg_ThreadResourceInfo const* value,
                                                                                     unsigned char* p,
                                                                                     size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->thread_id, 8);
    *offset += 8;
    uwvm_bounded_put(p + *offset, value->thread_name.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->thread_name.data, value->thread_name.size);
    *offset += value->thread_name.size;
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->cpu_usage_ratio, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    uwvm_bounded_put(p + *offset, value->cpu_sched_policy.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->cpu_sched_policy.data, value->cpu_sched_policy.size);
    *offset += value->cpu_sched_policy.size;
    uwvm_bounded_put(p + *offset, (uint64_t)value->cpu_sched_priority, 4);
    *offset += 4;
    uwvm_bounded_put(p + *offset, value->bounding_cpus.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->bounding_cpus.size; ++i)
        {
            uwvm_bounded_put(p + *offset, (uint64_t)value->bounding_cpus.data[i], 4);
            *offset += 4;
        }
    }
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_aimdk_msgs_msg_ThreadResourceInfo_read_fields(unsigned char const* p,
                                                                                   size_t n,
                                                                                   size_t* offset,
                                                                                   roswasmc_bounded_2_aimdk_msgs_msg_ThreadResourceInfo* value)
{
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->thread_id, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->thread_name.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->thread_name.size > 128u || value->thread_name.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->thread_name.data, p + *offset, value->thread_name.size);
    *offset += value->thread_name.size;
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->cpu_usage_ratio, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->cpu_sched_policy.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->cpu_sched_policy.size > 128u || value->cpu_sched_policy.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->cpu_sched_policy.data, p + *offset, value->cpu_sched_policy.size);
    *offset += value->cpu_sched_policy.size;
    if(*offset > n || n - *offset < 4)
        return 0;
    {
        uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
        uwvm_bounded_copy(&value->cpu_sched_priority, &bits, 4);
    }
    *offset += 4;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->bounding_cpus.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->bounding_cpus.size > 16u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->bounding_cpus.size; ++i)
        {
            if(*offset > n || n - *offset < 4)
                return 0;
            {
                uint32_t bits = (uint32_t)uwvm_bounded_get(p + *offset, 4);
                uwvm_bounded_copy(&value->bounding_cpus.data[i], &bits, 4);
            }
            *offset += 4;
        }
    }
    return roswasmc_bounded_2_aimdk_msgs_msg_ThreadResourceInfo_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_aimdk_msgs_msg_ThreadResourceInfo_encode(roswasmc_bounded_2_aimdk_msgs_msg_ThreadResourceInfo const* value,
                                                                                   void* output,
                                                                                   size_t capacity,
                                                                                   size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_aimdk_msgs_msg_ThreadResourceInfo_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_aimdk_msgs_msg_ThreadResourceInfo_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_aimdk_msgs_msg_ThreadResourceInfo_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_aimdk_msgs_msg_ThreadResourceInfo_decode(void const* input, size_t length, roswasmc_bounded_2_aimdk_msgs_msg_ThreadResourceInfo* value)
{
    roswasmc_bounded_2_aimdk_msgs_msg_ThreadResourceInfo next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 32u || length > 352u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_ThreadResourceInfo_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PROCESSRESOURCEINFO)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PROCESSRESOURCEINFO_0 != 0x7a530362UL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PROCESSRESOURCEINFO_1 != 0x548b7f76UL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PROCESSRESOURCEINFO_2 != 0xb73d41bdUL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PROCESSRESOURCEINFO_3 != 0x6d7b1917UL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PROCESSRESOURCEINFO_4 != 0xdcd2f578UL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PROCESSRESOURCEINFO_5 != 0xe24f523eUL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PROCESSRESOURCEINFO_6 != 0xfdc69047UL ||                                                        \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PROCESSRESOURCEINFO_7 != 0x251761f9UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PROCESSRESOURCEINFO 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PROCESSRESOURCEINFO_0 0x7a530362UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PROCESSRESOURCEINFO_1 0x548b7f76UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PROCESSRESOURCEINFO_2 0xb73d41bdUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PROCESSRESOURCEINFO_3 0x6d7b1917UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PROCESSRESOURCEINFO_4 0xdcd2f578UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PROCESSRESOURCEINFO_5 0xe24f523eUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PROCESSRESOURCEINFO_6 0xfdc69047UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PROCESSRESOURCEINFO_7 0x251761f9UL

/** UTF-8 byte storage for aimdk_msgs/msg/ProcessResourceInfo.process_name; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_aimdk_msgs_msg_ProcessResourceInfo_process_name_text;

/** At most4 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_2_aimdk_msgs_msg_ThreadResourceInfo data[4];
} roswasmc_bounded_2_aimdk_msgs_msg_ProcessResourceInfo_threads_sequence;

/** Complete ROS2 aimdk_msgs/msg/ProcessResourceInfo value; no field projects away native data. */
typedef struct roswasmc_bounded_2_aimdk_msgs_msg_ProcessResourceInfo
{
    /** Declared field process_id; canonical capacity is part of CODEC_IDENTITY. */
    uint64_t process_id;
    /** Declared field process_name; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_ProcessResourceInfo_process_name_text process_name;
    /** Declared field process_mem_usage; canonical capacity is part of CODEC_IDENTITY. */
    uint64_t process_mem_usage;
    /** Declared field process_mem_usage_ratio; canonical capacity is part of CODEC_IDENTITY. */
    double process_mem_usage_ratio;
    /** Declared field process_cpu_usage_ratio; canonical capacity is part of CODEC_IDENTITY. */
    double process_cpu_usage_ratio;
    /** Declared field thread_count; canonical capacity is part of CODEC_IDENTITY. */
    uint64_t thread_count;
    /** Declared field threads; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_ProcessResourceInfo_threads_sequence threads;
} roswasmc_bounded_2_aimdk_msgs_msg_ProcessResourceInfo;

# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PROCESSRESOURCEINFO_MAX_WIRE_BYTES 1584u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PROCESSRESOURCEINFO_MIN_WIRE_BYTES 48u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PROCESSRESOURCEINFO_CODEC_IDENTITY "UWVMROS1_90b5f60525abc33814dfc7e3f7e6af23c7f43a232d74a904bd06f20d27ef9550"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_aimdk_msgs_msg_ProcessResourceInfo_valid(roswasmc_bounded_2_aimdk_msgs_msg_ProcessResourceInfo const* value)
{
    if(!value)
        return 0;
    if(value->process_name.size > 128u || !uwvm_bounded_utf8(value->process_name.data, value->process_name.size))
        return 0;
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->process_mem_usage_ratio, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
            return 0;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->process_cpu_usage_ratio, 8);
        if((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
            return 0;
    }
    if(value->threads.size > 4u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->threads.size; ++i)
        {
            if(!roswasmc_bounded_2_aimdk_msgs_msg_ThreadResourceInfo_valid(&value->threads.data[i]))
                return 0;
        }
    }
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_aimdk_msgs_msg_ProcessResourceInfo_wire_size(roswasmc_bounded_2_aimdk_msgs_msg_ProcessResourceInfo const* value)
{
    size_t n = 0;
    n += 8;
    n += 4 + value->process_name.size;
    n += 8;
    n += 8;
    n += 8;
    n += 8;
    n += 4;
    if(value->threads.size > 4u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->threads.size; ++i)
        {
            n += roswasmc_bounded_2_aimdk_msgs_msg_ThreadResourceInfo_wire_size(&value->threads.data[i]);
        }
    }
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void roswasmc_bounded_2_aimdk_msgs_msg_ProcessResourceInfo_write_fields(roswasmc_bounded_2_aimdk_msgs_msg_ProcessResourceInfo const* value,
                                                                                      unsigned char* p,
                                                                                      size_t* offset)
{
    uwvm_bounded_put(p + *offset, (uint64_t)value->process_id, 8);
    *offset += 8;
    uwvm_bounded_put(p + *offset, value->process_name.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->process_name.data, value->process_name.size);
    *offset += value->process_name.size;
    uwvm_bounded_put(p + *offset, (uint64_t)value->process_mem_usage, 8);
    *offset += 8;
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->process_mem_usage_ratio, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    {
        uint64_t bits;
        uwvm_bounded_copy(&bits, &value->process_cpu_usage_ratio, 8);
        uwvm_bounded_put(p + *offset, bits, 8);
        *offset += 8;
    }
    uwvm_bounded_put(p + *offset, (uint64_t)value->thread_count, 8);
    *offset += 8;
    uwvm_bounded_put(p + *offset, value->threads.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->threads.size; ++i)
        {
            roswasmc_bounded_2_aimdk_msgs_msg_ThreadResourceInfo_write_fields(&value->threads.data[i], p, offset);
        }
    }
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_aimdk_msgs_msg_ProcessResourceInfo_read_fields(unsigned char const* p,
                                                                                    size_t n,
                                                                                    size_t* offset,
                                                                                    roswasmc_bounded_2_aimdk_msgs_msg_ProcessResourceInfo* value)
{
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->process_id, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->process_name.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->process_name.size > 128u || value->process_name.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->process_name.data, p + *offset, value->process_name.size);
    *offset += value->process_name.size;
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->process_mem_usage, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->process_mem_usage_ratio, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->process_cpu_usage_ratio, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 8)
        return 0;
    {
        uint64_t bits = (uint64_t)uwvm_bounded_get(p + *offset, 8);
        uwvm_bounded_copy(&value->thread_count, &bits, 8);
    }
    *offset += 8;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->threads.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->threads.size > 4u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->threads.size; ++i)
        {
            if(!roswasmc_bounded_2_aimdk_msgs_msg_ThreadResourceInfo_read_fields(p, n, offset, &value->threads.data[i]))
                return 0;
        }
    }
    return roswasmc_bounded_2_aimdk_msgs_msg_ProcessResourceInfo_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_aimdk_msgs_msg_ProcessResourceInfo_encode(roswasmc_bounded_2_aimdk_msgs_msg_ProcessResourceInfo const* value,
                                                                                    void* output,
                                                                                    size_t capacity,
                                                                                    size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_aimdk_msgs_msg_ProcessResourceInfo_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_aimdk_msgs_msg_ProcessResourceInfo_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_aimdk_msgs_msg_ProcessResourceInfo_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_aimdk_msgs_msg_ProcessResourceInfo_decode(void const* input, size_t length, roswasmc_bounded_2_aimdk_msgs_msg_ProcessResourceInfo* value)
{
    roswasmc_bounded_2_aimdk_msgs_msg_ProcessResourceInfo next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 48u || length > 1584u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_ProcessResourceInfo_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#if defined(UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PROCESSINFO)
# if UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PROCESSINFO_0 != 0x2ac9608dUL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PROCESSINFO_1 != 0x56d3f274UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PROCESSINFO_2 != 0xcfb5711aUL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PROCESSINFO_3 != 0x2ee458a8UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PROCESSINFO_4 != 0xe27be2f3UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PROCESSINFO_5 != 0x2c63b90aUL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PROCESSINFO_6 != 0xce1a9a84UL ||                                                                \
     UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PROCESSINFO_7 != 0x7aff7a29UL
#  error "Conflicting same-name bounded record/interface ABI profiles"
# endif
#else
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PROCESSINFO 1
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PROCESSINFO_0 0x2ac9608dUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PROCESSINFO_1 0x56d3f274UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PROCESSINFO_2 0xcfb5711aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PROCESSINFO_3 0x2ee458a8UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PROCESSINFO_4 0xe27be2f3UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PROCESSINFO_5 0x2c63b90aUL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PROCESSINFO_6 0xce1a9a84UL
# define UWVM_ROS_BOUNDED_RECORD_ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PROCESSINFO_7 0x7aff7a29UL

/** UTF-8 byte storage for aimdk_msgs/msg/ProcessInfo.app_name; size excludes padding/terminators. */
typedef struct
{
    uint32_t size;
    unsigned char data[128];
} roswasmc_bounded_2_aimdk_msgs_msg_ProcessInfo_app_name_text;

/** At most2 initialized logical elements; unused capacity is never serialized. */
typedef struct
{
    uint32_t size;
    roswasmc_bounded_2_aimdk_msgs_msg_ModuleResourceInfo data[2];
} roswasmc_bounded_2_aimdk_msgs_msg_ProcessInfo_modules_sequence;

/** Complete ROS2 aimdk_msgs/msg/ProcessInfo value; no field projects away native data. */
typedef struct roswasmc_bounded_2_aimdk_msgs_msg_ProcessInfo
{
    /** Declared field header; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_MessageHeader header;
    /** Declared field app_name; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_ProcessInfo_app_name_text app_name;
    /** Declared field resource; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_ProcessResourceInfo resource;
    /** Declared field modules; canonical capacity is part of CODEC_IDENTITY. */
    roswasmc_bounded_2_aimdk_msgs_msg_ProcessInfo_modules_sequence modules;
} roswasmc_bounded_2_aimdk_msgs_msg_ProcessInfo;

# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PROCESSINFO_MAX_WIRE_BYTES 12232u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PROCESSINFO_MIN_WIRE_BYTES 80u
# define ROSWASMC_BOUNDED_2_AIMDK_MSGS_MSG_PROCESSINFO_CODEC_IDENTITY "UWVMROS1_190d10dc74d66eecf65495e2795525b4f6016bb3efde2f16310e54287e703996"

/** Validate every initialized field without allocation, writes or ROS calls. */
static inline int roswasmc_bounded_2_aimdk_msgs_msg_ProcessInfo_valid(roswasmc_bounded_2_aimdk_msgs_msg_ProcessInfo const* value)
{
    if(!value)
        return 0;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_MessageHeader_valid(&value->header))
        return 0;
    if(value->app_name.size > 128u || !uwvm_bounded_utf8(value->app_name.data, value->app_name.size))
        return 0;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_ProcessResourceInfo_valid(&value->resource))
        return 0;
    if(value->modules.size > 2u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->modules.size; ++i)
        {
            if(!roswasmc_bounded_2_aimdk_msgs_msg_ModuleResourceInfo_valid(&value->modules.data[i]))
                return 0;
        }
    }
    return 1;
}

/** Return exact active-prefix wire size; the full value must already be valid. */
static inline size_t roswasmc_bounded_2_aimdk_msgs_msg_ProcessInfo_wire_size(roswasmc_bounded_2_aimdk_msgs_msg_ProcessInfo const* value)
{
    size_t n = 0;
    n += roswasmc_bounded_2_aimdk_msgs_msg_MessageHeader_wire_size(&value->header);
    n += 4 + value->app_name.size;
    n += roswasmc_bounded_2_aimdk_msgs_msg_ProcessResourceInfo_wire_size(&value->resource);
    n += 4;
    if(value->modules.size > 2u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->modules.size; ++i)
        {
            n += roswasmc_bounded_2_aimdk_msgs_msg_ModuleResourceInfo_wire_size(&value->modules.data[i]);
        }
    }
    return n;
}

/** Internal writer enters only after full validation, capacity and overlap checks. */
static inline void
    roswasmc_bounded_2_aimdk_msgs_msg_ProcessInfo_write_fields(roswasmc_bounded_2_aimdk_msgs_msg_ProcessInfo const* value, unsigned char* p, size_t* offset)
{
    roswasmc_bounded_2_aimdk_msgs_msg_MessageHeader_write_fields(&value->header, p, offset);
    uwvm_bounded_put(p + *offset, value->app_name.size, 4);
    *offset += 4;
    uwvm_bounded_copy(p + *offset, value->app_name.data, value->app_name.size);
    *offset += value->app_name.size;
    roswasmc_bounded_2_aimdk_msgs_msg_ProcessResourceInfo_write_fields(&value->resource, p, offset);
    uwvm_bounded_put(p + *offset, value->modules.size, 4);
    *offset += 4;
    {
        size_t i;
        for(i = 0; i < value->modules.size; ++i)
        {
            roswasmc_bounded_2_aimdk_msgs_msg_ModuleResourceInfo_write_fields(&value->modules.data[i], p, offset);
        }
    }
}

/** Internal reader fills only the public decoder temporary and checks every cursor move. */
static inline int roswasmc_bounded_2_aimdk_msgs_msg_ProcessInfo_read_fields(unsigned char const* p,
                                                                            size_t n,
                                                                            size_t* offset,
                                                                            roswasmc_bounded_2_aimdk_msgs_msg_ProcessInfo* value)
{
    if(!roswasmc_bounded_2_aimdk_msgs_msg_MessageHeader_read_fields(p, n, offset, &value->header))
        return 0;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->app_name.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->app_name.size > 128u || value->app_name.size > n - *offset)
        return 0;
    uwvm_bounded_copy(value->app_name.data, p + *offset, value->app_name.size);
    *offset += value->app_name.size;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_ProcessResourceInfo_read_fields(p, n, offset, &value->resource))
        return 0;
    if(*offset > n || n - *offset < 4)
        return 0;
    value->modules.size = (uint32_t)uwvm_bounded_get(p + *offset, 4);
    *offset += 4;
    if(value->modules.size > 2u)
        return 0;
    {
        size_t i;
        for(i = 0; i < value->modules.size; ++i)
        {
            if(!roswasmc_bounded_2_aimdk_msgs_msg_ModuleResourceInfo_read_fields(p, n, offset, &value->modules.data[i]))
                return 0;
        }
    }
    return roswasmc_bounded_2_aimdk_msgs_msg_ProcessInfo_valid(value);
}

/** Encode transactionally: preserve output/length on invalid values or insufficient capacity. */
static inline uint32_t roswasmc_bounded_2_aimdk_msgs_msg_ProcessInfo_encode(roswasmc_bounded_2_aimdk_msgs_msg_ProcessInfo const* value,
                                                                            void* output,
                                                                            size_t capacity,
                                                                            size_t* length)
{
    size_t n, offset = 0;
    if(!length || !roswasmc_bounded_2_aimdk_msgs_msg_ProcessInfo_valid(value))
        return UWVM_BOUNDED_INVALID;
    n = roswasmc_bounded_2_aimdk_msgs_msg_ProcessInfo_wire_size(value);
    if(capacity < n)
        return UWVM_BOUNDED_TOO_LARGE;
    if((n && !output) || uwvm_bounded_overlap(value, sizeof *value, output, n) || uwvm_bounded_overlap(length, sizeof *length, output, n) ||
       uwvm_bounded_overlap(length, sizeof *length, value, sizeof *value))
        return UWVM_BOUNDED_INVALID;
    roswasmc_bounded_2_aimdk_msgs_msg_ProcessInfo_write_fields(value, (unsigned char*)output, &offset);
    *length = offset;
    return 0;
}

/** Decode exact bytes into a temporary; refused/truncated/trailing input leaves value unchanged. */
static inline uint32_t
    roswasmc_bounded_2_aimdk_msgs_msg_ProcessInfo_decode(void const* input, size_t length, roswasmc_bounded_2_aimdk_msgs_msg_ProcessInfo* value)
{
    roswasmc_bounded_2_aimdk_msgs_msg_ProcessInfo next = {0};
    size_t offset = 0;
    if(!value || (length && !input) || length < 80u || length > 12232u || uwvm_bounded_overlap(value, sizeof *value, input, length))
        return UWVM_BOUNDED_INVALID;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_ProcessInfo_read_fields((unsigned char const*)input, length, &offset, &next) || offset != length)
        return UWVM_BOUNDED_INVALID;
    *value = next;
    return 0;
}
#endif
#undef UWVM_BOUNDED_ASSERT
#endif
